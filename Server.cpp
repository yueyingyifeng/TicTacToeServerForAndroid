#include "Server.h"
//-------------private-------------------//

void Server::error(string msg)
{
	cerr << __TIMESTAMP__ << " " << msg << ": " << strerror(errno);
	isClose = true;
}

void Server::runtimeError(string msg)
{
	cerr << __TIMESTAMP__ << " " << msg << endl;
}

void Server::Send(int clieSock, string msg)
{
	msg += '\n';
	char* buffer = (char*)msg.c_str();
	cout << endl << __TIMESTAMP__ << " 发送数据给 " << clieSock << " 内容: " << buffer;
	send(clieSock, buffer, strlen(buffer), 0);
	cout << endl << __TIMESTAMP__ << " 发送完毕" << endl;
}

string Server::Recv(int clieSock)
{
	char* buffer = new char;
	int len = recv(clieSock, buffer, 0xff, 0);
	cout << endl << __TIMESTAMP__ << " socket: " << clieSock << " 接收数据为：" << buffer
		<< "长度: " << len << endl;
	cout << __TIMESTAMP__ << " 接收完毕" << endl;
	return buffer;
}

void Server::servControl(string cmd)
{
	if (cmd == "stop") {
		isClose = true;
		cout << __TIMESTAMP__ << " 关闭服务器... " << endl;
	}
	else if (cmd == "list") {
		cout << __TIMESTAMP__ << " 服务器在线人数: " << clientList.size() << endl;
	}
	else if (cmd == "rooms") {
		cout << __TIMESTAMP__ << "  服务器房间列表（序列化):" << endl
			<< serializeRoomList() << endl;
	}
	else if(cmd == "cleanPlayers"){
		clientList.clear();
		cout << __TIMESTAMP__ << " 服务器内玩家列表已被清空" << endl;
	}
	else if(cmd == "cleanRooms"){
		rooms.clear();
		cout << __TIMESTAMP__ << " 服务器内房间列表已被清空" << endl;
	}
	else if (cmd == "help" || cmd == "?") {
		cout << __TIMESTAMP__ << "------help------" << endl
			<< "\t关闭服务器 stop"		<< endl
			<< "\t清空玩家列表 cleanPlayers" << endl
			<< "\t清空房间列表 cleanRooms" << endl
			<< "\t查看在线人数 list"		 << endl
			<< "\t查看房间 rooms"   	    << endl
			<< "\t帮助 help 或 ?"		    << endl;
	}
	else {
		cout << __TIMESTAMP__ << " 未知指令,输入help或?来查看指令列表" << endl;
	}
}

string Server::serializeRoomList()
{
	string result;
	int len = rooms.size();
	for (int n{}; n < len; n++) {
		result += rooms[n]->getClientA()->getName() + string(".") + std::to_string(rooms[n]->getClientA()->getSocket()) + string(",");
	}
	return result;
}

void Server::joinRoom(int sockA, int sockB)
{
	//接收并转发玩家内容
	thread([this, sockA,sockB]() {							//#线程3-1，客方加入主方房间，进行转发通信  [9/23/2022 yueyi]	

		cout << __TIMESTAMP__ << " 客户端" << sockB << "加入房间" << sockA << endl;
		Room* room = serachRoomClientBySock(sockA);//寻找房主A
		if (room == nullptr) {
			runtimeError("加入的房间不存在!");
			cerr << __LINE__ << endl;
			return;
		}
		room->setClientB(serachClientInfoBySock(sockB));//B加入房间

		gamePlay(room,false);//客方false
	}).detach();
}

void Server::createRoom(int sock)
{
	//接收并转发房主内容
	thread([this,sock]() {							//#线程3-2，主方创建房间，等待客方加入，进行转发通信  [9/23/2022 yueyi]	
		cout << __TIMESTAMP__ << " 客户端创建房间" << sock << endl;
		ClientInfo* host = serachClientInfoBySock(sock); //搜索该sock的客户端信息，待会创建房间时当房主
		if (host == nullptr) {
			runtimeError(" 创建的客户端不存在!");
			cerr << __LINE__ << endl;
			return;
		} 

		Room* room = new Room(host);	//创建房间
		rooms.push_back(room);			//添加房间到列表
		cout << __TIMESTAMP__ << " 客户端创建房间成功,进入游戏等待" << room->getClientA()->getSocket() << endl;
		gamePlay(room,true);//主方true
	}).detach();
}

void Server::gamePlay(Room* room,bool who) {
	cout << __TIMESTAMP__ << " 房主等待玩家加入中,name: " << room->getClientA()->getName() << endl;
	bool isLevel = false;
	int host = -1;
	int guest = -1;
	//等待所有人到齐
	while (true) {
		if (room->getClientA() && room->getClientB()) {
			host = room->getClientA()->getSocket();
			guest = room->getClientB()->getSocket();
			break;
		}
	}
	
	removeRoomByHostSock(host);
	cout << __TIMESTAMP__ << " 游戏开始,host: " << room->getClientA()->getName() << " guest: " << room->getClientB()->getName() << endl; 
	//通知玩家们游戏开始
	if(who){
		Send(host,string("2") + room->getClientB()->getName());//加入方需要告知房主自己的名字
	}
	else{
		Send(guest,string("2") + room->getClientA()->getName());//加入方需要告知房主自己的名字
	}
	cout << __TIMESTAMP__ << " 已通知游戏开始" << endl;
	while (!isLevel) {
		string recv = "";
		if(who){//房主的
			recv = Recv(host);	//接收主方的数据
		}
		else{
			recv = Recv(guest);	//接收客方的数据
		}
		cout << __TIMESTAMP__ << " 要转发的数据为：" << recv << endl;
		switch (Command::analyzeRecv(recv))
		{
			case cmdType::Client_whoFirst:
			case cmdType::Client_vector2:
				if(who){
				cout << __TIMESTAMP__ << " 主方转发给客方坐标" << endl;
					Send(guest, recv);		//转发给客方的数据
				}
				else{
				cout << __TIMESTAMP__ << " 客方转发给主方坐标" << endl;
					Send(host, recv);		//转发给主方的数据
				}
				break;
			case cmdType::Client_close://客户端离开，对局结束
				cout << __TIMESTAMP__ << " 有人离开，对局结束并告知对方" << endl;
				isLevel = true;
				removeClientBySock(host);
				removeClientBySock(guest);
				removeRoomByHostSock(host);
				Send(host, recv);		//告知对方自己离开
				break;
			case cmdType::Error:
			default:
				runtimeError("客户端指令错误");
				cerr << __LINE__ << endl;
				break;
		}
	}
}

ClientInfo* Server::serachClientInfoBySock(int sock)
{
	for (ClientInfo* c : clientList) {
		if (c->getSocket() == sock) {
			return c;
		}
	}
	return nullptr;
}

Room* Server::serachRoomClientBySock(int sock)
{
	for (Room* c : rooms) {
		if (c->getClientA()->getSocket() == sock) {
			return c;
		}
	}
	return nullptr;
}

//-------------public--------------------//
Server::Server() {
	cout << __TIMESTAMP__ << " 服务器启动----------" << endl;
	servSock = socket(AF_INET, SOCK_STREAM, 0);
	sockaddr_in addr;
	addr.sin_family = AF_INET;
	addr.sin_addr.s_addr = inet_addr(ip);
	addr.sin_port = htons(port);

	if (bind(servSock, (sockaddr*)&addr, sizeof(addr)) == -1) {
		error("绑定失败");
	}

	clientList	= vector<ClientInfo*>();
	isClose		= false;
}

void Server::Listen()
{
	if (listen(servSock, 32) == -1) {
		error("监听失败");
	}
}

ClientInfo* Server::waitingClient()
{
	sockaddr_in addr = {};
	socklen_t clieAddrLen = sizeof(sockaddr_in);
	int sock = accept(servSock, (sockaddr*)&addr, &clieAddrLen);

	//发送房间列表给客户端
	Send(sock, string("0") + serializeRoomList());
	if (sock == -1) {
		error("接收失败");
		return new ClientInfo(sock, "null","err");
	}
	string clientName = Recv(sock).substr(1); //接收客户端的名字
	clientName.erase( std::remove(clientName.begin(),clientName.end(),'\n'),clientName.end() );
	ClientInfo* client = new ClientInfo(sock, inet_ntoa(addr.sin_addr), clientName);

	cout << endl << __TIMESTAMP__ << " 客户端连接----------" << endl
		<< "name  : " << client->getName() << endl
		<< "socket: " << client->getSocket() << endl
		<< "IP    : " << client->getIp() << endl
		<< "---------------------------------------------" << endl;

	return client;
}

void Server::removeClientBySock(int sock)
{
	for (vector<ClientInfo*>::iterator it = clientList.begin(); it != clientList.end(); it++) {
		if ((*it)->getSocket() == sock) {
			clientList.erase(it);
			it--;
			close(sock);
		}
	}
}

void Server::removeRoomByHostSock(int host){
	for(auto it = rooms.begin(); it != rooms.end(); it++){
		if((*it)->getClientA()->getSocket() == host){
			rooms.erase(it);
			it--;
		}
	}
}

void Server::start()									//#线程0，主线程，用于控制服务器的操作  [9/23/2022 yueyi]
{
	if (isClose) {
		return;
	}
	//accept 客户端请求线程
	thread([this](){									//#线程1，专门用来接收客户端的连接并记录 [9/23/2022 yueyi]
		while (!isClose) {
			//等待客户端连接 接收成功会发送房间列表，以及接收用户名字
			ClientInfo* client = waitingClient();//阻塞处，直到有客户端连接

			//添加客户端信息
			clientList.push_back(client);

			//开启一个线程等待客户端操作
			int sock = client->getSocket();
			thread([this,&sock]() {						//#线程2，等待连接上的客户端操作，是加入还是创建（或退出） [9/23/2022 yueyi]
				cout << __TIMESTAMP__ << " 等待客户端操作" << sock << endl;
				string result = Recv(sock);				//等待客户端操作， 加入还是创建,2加入，3创建
				cmdType type = Command::analyzeRecv(result);
				switch (type)
				{
				case cmdType::Client_join:
					joinRoom(
						Command::getJoinSock(result),	//目标客户端的sock A
						sock							//当前客户端的sock B 加入 A
					);
					break;
				case cmdType::Client_create:
					createRoom(sock);
					break;
				case cmdType::Client_close:
					removeClientBySock(sock);
					break;
				case cmdType::Error:
				default:
					runtimeError("客户端指令错误");
					cerr << __LINE__ << endl;
					break;
				}
			}).detach();//#线程2,等待连接上的客户端操作
		}//while
	}).detach();//#线程1,接收客户端

	

	while (!isClose) {
		string buffer;
		cout << "TicTacToe Server >";
		cin >> buffer;
		servControl(buffer);
	}
}

void Server::closeServer()
{
	isClose = true;
	cout << __TIMESTAMP__ << " 服务器关闭----------" << endl;
	close(servSock);
}

bool Server::doesServerClose()
{
	return isClose;
}
