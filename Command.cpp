#include "Command.h"

cmdType Command::analyzeRecv(string code)
{
	char cmdtype = code.at(0);
	switch (cmdtype)
	{
		/*case '1':
			return cmdType::Client_name;*/
	case '1':
		return cmdType::Client_vector2;
	case '2':
		return cmdType::Client_join;
	case '3':
		return cmdType::Client_create;
	case '4':
		return cmdType::Client_whoFirst;
	case '9':
		return cmdType::Client_close;
	default:
		return cmdType::Error;
	}
}

int Command::getJoinSock(string code)
{
	return atoi(code.substr(1, code.length() - 1).c_str());
}
