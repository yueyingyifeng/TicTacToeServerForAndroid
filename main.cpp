#include "Server.h"

int main()
{
    Server server;
    server.Listen();

    server.start();

    server.closeServer();
    return 0;
}