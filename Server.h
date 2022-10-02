#pragma once
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>

#include <thread>

#include <iostream>

#include <cstring>
#include <string>
#include <vector>
#include <algorithm>

#include "ClientInfo.h"
#include "Room.h"
#include "Command.h"



using std::cout;
using std::cerr;
using std::cin;
using std::endl;

using std::thread;
using std::ref;

using std::string;
using std::vector;

//服务器类，对客户端连接进行管理
class Server
{
	int servSock;					//服务器sock
	vector<ClientInfo*> clientList;	//客户端们的sock
	vector<Room*> rooms;
							//保存房间内容，每个元素应是 名字.sock

	const char* ip = "0.0.0.0";
	const int port = 26119;

	bool isClose = false;

	//错误信息输出
	void error(string msg);
	//运行时报错
	void runtimeError(string msg);
	//向客户端发送信息
	void Send(int clieSock,string msg);
	//接收客户端信息
	string Recv(int clieSock);
	//对服务器的控制
	void servControl(string cmd);
	//序列化（字符串化）房间内容
	string serializeRoomList();
	//加入房间,sockB加入sockA
	void joinRoom(int sockA, int sockB);
	//创建房间
	void createRoom(int sock);
	//游戏开始——开始转发消息 此函数是线程函数，通常被一个房间内的两名玩家（两个线程）调用，故第二个参数需要知道当前线程是谁的
	//true为主方调用，false客方调用
	void gamePlay(Room* room,bool who);
	//通过sock寻找ClientInfo
	ClientInfo* serachClientInfoBySock(int sock);
	//通过sock寻找房主
	Room* serachRoomClientBySock(int sock);
	//关闭客户端sock并从列表中移除
	void removeClientBySock(int sock);
	//通过房主的socket关闭一个房间
	void removeRoomByHostSock(int host);
public:
	Server();
	//开启监听
	void Listen();
	//等待客户端连接,当客户端连接后，获取sock，ip，名字
	ClientInfo* waitingClient();
	//启动服务器
	void start();

	//关闭服务器
	void closeServer();
	//服务器是否关闭
	bool doesServerClose();
};

