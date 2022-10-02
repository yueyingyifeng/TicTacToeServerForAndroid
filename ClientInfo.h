#pragma once
#include <string>
using std::string;

//保存客户端IP与socket
class ClientInfo
{
	string ip;
	int socket;
	string name;
public:
	ClientInfo();
	ClientInfo(int socket, string ip, string names);
	string getIp();
	int getSocket();
	string getName();
	void setName(string name);
};

