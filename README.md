# TicTacToeServerForAndroid

这是一个为 Android 井字棋游戏应用设计的服务器端程序，使用 C++ 开发，支持多客户端连接和实时对战功能。

## 项目简介

TicTacToeServerForAndroid 是一个基于 TCP/IP 协议的游戏服务器，为 Android 平台上的井字棋游戏提供后端支持。服务器负责处理客户端连接、游戏匹配、游戏状态同步以及胜负判定等核心功能。

## 功能特点

- 多客户端并发连接支持
- 实时游戏状态同步
- 玩家匹配系统
- 游戏进程管理
- 胜负判定逻辑

## 技术栈

- C++ 语言开发
- 基于 Socket 编程
- 多线程并发处理
- Linux 系统环境

## 安装与使用

### 环境要求

- Linux 操作系统
- GCC 编译器
- CMake 工具

### 编译步骤

```bash
git clone https://github.com/yourusername/TicTacToeServerForAndroid.git
cd TicTacToeServerForAndroid
make
```

### 运行服务器

```bash
./tictactoe_server
```

## 客户端连接

Android 客户端可以通过以下方式连接到服务器：

1. 配置服务器 IP 地址和端口
2. 建立 TCP 连接
3. 按照协议规范发送和接收数据

## 通信协议

服务器和客户端之间的通信采用自定义的简单文本协议，主要包括以下几种消息类型：

- 连接请求
- 游戏匹配
- 游戏操作
- 游戏状态更新
- 游戏结果通知

## 贡献指南

欢迎提交 Issue 和 Pull Request 来完善这个项目。
