#include "ClientInfo.h"

ClientInfo::ClientInfo(int socket, string ip, string name)
{
	this->socket	= socket;
	this->ip		= ip;
	this->name		= name;
}

ClientInfo::ClientInfo()
{
	this->socket = -1;
	this->ip	 = "null";
	this->name	 = "err";
}

string ClientInfo::getIp()
{
	return ip;
}

int ClientInfo::getSocket()
{
	return socket;
}

string ClientInfo::getName()
{
	return name;
}

void ClientInfo::setName(string name)
{
	this->name = name;
}

