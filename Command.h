#pragma once
#include <string>
using std::string;
/*
* 数据传输规定：
* 第一位决定传输类型
* 服务端发送客户端指令：
* 0 发送房间列表，第二位内容：,号隔开，放上名字 .号隔开，放上在服务器中的sock
    如 0yyyf.123,abcd.21,efg.32
* 1 为坐标，第二位内容：,号隔开，放上数字 如 111 表示坐标(1,1) 九宫格不可能有负数或十位数
* 2 为游戏开始
* 
* 客户端发送服务端指令：
* 0 发送自己的名字 如 0yyyf  --移除
* 1 发送坐标 同服务端 
* 2 加入房间 第二位内容: 目标sock
* 3 创建房间
* 4 房主先的命令  41表示房主先，40表示房主后 并表示游戏开始
* 
* 9 客户端关闭
*/

enum class cmdType {
	//Client_name,        //客户端告知自己的名字 --移除

	Client_join,        //客户端请求加入
	Client_create,      //客户端请求创建
	Client_whoFirst,    //客户端谁先谁后

	Client_vector2,     //客户端发送坐标

	Client_close,       //客户端退出

	Error               //错误信息
};

//解析客户端发来的数据
class Command
{
    Command() = delete;
public:
    //解析指令 返回指令的类型
    static cmdType analyzeRecv(string code);
    //解析加入房间指令 返回一个sock
    static int getJoinSock(string code);
};


