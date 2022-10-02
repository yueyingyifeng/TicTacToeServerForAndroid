#include "Room.h"

Room::Room(ClientInfo* clientA, ClientInfo* clientB)
{
	this->clientA = clientA;
	this->clientB = clientB;
}


Room::Room()
{
	this->clientB = nullptr;
	this->clientA = nullptr;
}

Room::Room(ClientInfo* host)
{
	this->clientA = host;
	this->clientB = nullptr;
}

ClientInfo* Room::getClientA()
{
	return clientA;
}

ClientInfo* Room::getClientB()
{
	return clientB;
}

void Room::setClientA(ClientInfo* client)
{
	clientA = client;
}

void Room::setClientB(ClientInfo* client)
{
	clientB = client;
}
