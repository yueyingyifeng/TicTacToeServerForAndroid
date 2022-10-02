#pragma once
#include "ClientInfo.h"
//房间类，保存两个ClientInfo，用于互相通信
//clientA一般是房主
class Room
{
	ClientInfo* clientA;
	ClientInfo* clientB;
public:
	Room();
	Room(ClientInfo* host);
	Room(ClientInfo* clientA,ClientInfo* clientB);
	ClientInfo* getClientA();
	ClientInfo* getClientB();

	void setClientA(ClientInfo* client);
	void setClientB(ClientInfo* client);

};

