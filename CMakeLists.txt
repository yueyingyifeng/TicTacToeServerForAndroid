cmake_minimum_required (VERSION 3.16)
project(Tictactoe_server)

find_package(Threads)
set(CMAKE_CXX_STANDARD 14)

set( server
	./main.cpp
	./Server.cpp
	./Server.h
	./Room.cpp
	./Room.h
	./Command.cpp
	./Command.h
	./ClientInfo.cpp
	./ClientInfo.h
)

add_executable(tTT_server ${server})

target_link_libraries(tTT_server ${CMAKE_THREAD_LIBS_INIT})
