# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/wlic/z/cmake-3.20.6-linux-x86_64/bin/cmake

# The command to remove a file.
RM = /home/wlic/z/cmake-3.20.6-linux-x86_64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yueyingyifeng/projects/Tictactoe_server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yueyingyifeng/projects/Tictactoe_server

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/home/wlic/z/cmake-3.20.6-linux-x86_64/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/home/wlic/z/cmake-3.20.6-linux-x86_64/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/yueyingyifeng/projects/Tictactoe_server/CMakeFiles /home/yueyingyifeng/projects/Tictactoe_server//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/yueyingyifeng/projects/Tictactoe_server/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named tTT_server

# Build rule for target.
tTT_server: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 tTT_server
.PHONY : tTT_server

# fast build rule for target.
tTT_server/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tTT_server.dir/build.make CMakeFiles/tTT_server.dir/build
.PHONY : tTT_server/fast

ClientInfo.o: ClientInfo.cpp.o
.PHONY : ClientInfo.o

# target to build an object file
ClientInfo.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tTT_server.dir/build.make CMakeFiles/tTT_server.dir/ClientInfo.cpp.o
.PHONY : ClientInfo.cpp.o

ClientInfo.i: ClientInfo.cpp.i
.PHONY : ClientInfo.i

# target to preprocess a source file
ClientInfo.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tTT_server.dir/build.make CMakeFiles/tTT_server.dir/ClientInfo.cpp.i
.PHONY : ClientInfo.cpp.i

ClientInfo.s: ClientInfo.cpp.s
.PHONY : ClientInfo.s

# target to generate assembly for a file
ClientInfo.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tTT_server.dir/build.make CMakeFiles/tTT_server.dir/ClientInfo.cpp.s
.PHONY : ClientInfo.cpp.s

Command.o: Command.cpp.o
.PHONY : Command.o

# target to build an object file
Command.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tTT_server.dir/build.make CMakeFiles/tTT_server.dir/Command.cpp.o
.PHONY : Command.cpp.o

Command.i: Command.cpp.i
.PHONY : Command.i

# target to preprocess a source file
Command.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tTT_server.dir/build.make CMakeFiles/tTT_server.dir/Command.cpp.i
.PHONY : Command.cpp.i

Command.s: Command.cpp.s
.PHONY : Command.s

# target to generate assembly for a file
Command.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tTT_server.dir/build.make CMakeFiles/tTT_server.dir/Command.cpp.s
.PHONY : Command.cpp.s

Room.o: Room.cpp.o
.PHONY : Room.o

# target to build an object file
Room.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tTT_server.dir/build.make CMakeFiles/tTT_server.dir/Room.cpp.o
.PHONY : Room.cpp.o

Room.i: Room.cpp.i
.PHONY : Room.i

# target to preprocess a source file
Room.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tTT_server.dir/build.make CMakeFiles/tTT_server.dir/Room.cpp.i
.PHONY : Room.cpp.i

Room.s: Room.cpp.s
.PHONY : Room.s

# target to generate assembly for a file
Room.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tTT_server.dir/build.make CMakeFiles/tTT_server.dir/Room.cpp.s
.PHONY : Room.cpp.s

Server.o: Server.cpp.o
.PHONY : Server.o

# target to build an object file
Server.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tTT_server.dir/build.make CMakeFiles/tTT_server.dir/Server.cpp.o
.PHONY : Server.cpp.o

Server.i: Server.cpp.i
.PHONY : Server.i

# target to preprocess a source file
Server.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tTT_server.dir/build.make CMakeFiles/tTT_server.dir/Server.cpp.i
.PHONY : Server.cpp.i

Server.s: Server.cpp.s
.PHONY : Server.s

# target to generate assembly for a file
Server.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tTT_server.dir/build.make CMakeFiles/tTT_server.dir/Server.cpp.s
.PHONY : Server.cpp.s

main.o: main.cpp.o
.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tTT_server.dir/build.make CMakeFiles/tTT_server.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i
.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tTT_server.dir/build.make CMakeFiles/tTT_server.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s
.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tTT_server.dir/build.make CMakeFiles/tTT_server.dir/main.cpp.s
.PHONY : main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... tTT_server"
	@echo "... ClientInfo.o"
	@echo "... ClientInfo.i"
	@echo "... ClientInfo.s"
	@echo "... Command.o"
	@echo "... Command.i"
	@echo "... Command.s"
	@echo "... Room.o"
	@echo "... Room.i"
	@echo "... Room.s"
	@echo "... Server.o"
	@echo "... Server.i"
	@echo "... Server.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

