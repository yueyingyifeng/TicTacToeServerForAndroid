# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

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

# Include any dependencies generated for this target.
include CMakeFiles/tTT_server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tTT_server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tTT_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tTT_server.dir/flags.make

CMakeFiles/tTT_server.dir/main.cpp.o: CMakeFiles/tTT_server.dir/flags.make
CMakeFiles/tTT_server.dir/main.cpp.o: main.cpp
CMakeFiles/tTT_server.dir/main.cpp.o: CMakeFiles/tTT_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yueyingyifeng/projects/Tictactoe_server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tTT_server.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tTT_server.dir/main.cpp.o -MF CMakeFiles/tTT_server.dir/main.cpp.o.d -o CMakeFiles/tTT_server.dir/main.cpp.o -c /home/yueyingyifeng/projects/Tictactoe_server/main.cpp

CMakeFiles/tTT_server.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tTT_server.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yueyingyifeng/projects/Tictactoe_server/main.cpp > CMakeFiles/tTT_server.dir/main.cpp.i

CMakeFiles/tTT_server.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tTT_server.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yueyingyifeng/projects/Tictactoe_server/main.cpp -o CMakeFiles/tTT_server.dir/main.cpp.s

CMakeFiles/tTT_server.dir/Server.cpp.o: CMakeFiles/tTT_server.dir/flags.make
CMakeFiles/tTT_server.dir/Server.cpp.o: Server.cpp
CMakeFiles/tTT_server.dir/Server.cpp.o: CMakeFiles/tTT_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yueyingyifeng/projects/Tictactoe_server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tTT_server.dir/Server.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tTT_server.dir/Server.cpp.o -MF CMakeFiles/tTT_server.dir/Server.cpp.o.d -o CMakeFiles/tTT_server.dir/Server.cpp.o -c /home/yueyingyifeng/projects/Tictactoe_server/Server.cpp

CMakeFiles/tTT_server.dir/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tTT_server.dir/Server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yueyingyifeng/projects/Tictactoe_server/Server.cpp > CMakeFiles/tTT_server.dir/Server.cpp.i

CMakeFiles/tTT_server.dir/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tTT_server.dir/Server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yueyingyifeng/projects/Tictactoe_server/Server.cpp -o CMakeFiles/tTT_server.dir/Server.cpp.s

CMakeFiles/tTT_server.dir/Room.cpp.o: CMakeFiles/tTT_server.dir/flags.make
CMakeFiles/tTT_server.dir/Room.cpp.o: Room.cpp
CMakeFiles/tTT_server.dir/Room.cpp.o: CMakeFiles/tTT_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yueyingyifeng/projects/Tictactoe_server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/tTT_server.dir/Room.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tTT_server.dir/Room.cpp.o -MF CMakeFiles/tTT_server.dir/Room.cpp.o.d -o CMakeFiles/tTT_server.dir/Room.cpp.o -c /home/yueyingyifeng/projects/Tictactoe_server/Room.cpp

CMakeFiles/tTT_server.dir/Room.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tTT_server.dir/Room.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yueyingyifeng/projects/Tictactoe_server/Room.cpp > CMakeFiles/tTT_server.dir/Room.cpp.i

CMakeFiles/tTT_server.dir/Room.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tTT_server.dir/Room.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yueyingyifeng/projects/Tictactoe_server/Room.cpp -o CMakeFiles/tTT_server.dir/Room.cpp.s

CMakeFiles/tTT_server.dir/Command.cpp.o: CMakeFiles/tTT_server.dir/flags.make
CMakeFiles/tTT_server.dir/Command.cpp.o: Command.cpp
CMakeFiles/tTT_server.dir/Command.cpp.o: CMakeFiles/tTT_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yueyingyifeng/projects/Tictactoe_server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/tTT_server.dir/Command.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tTT_server.dir/Command.cpp.o -MF CMakeFiles/tTT_server.dir/Command.cpp.o.d -o CMakeFiles/tTT_server.dir/Command.cpp.o -c /home/yueyingyifeng/projects/Tictactoe_server/Command.cpp

CMakeFiles/tTT_server.dir/Command.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tTT_server.dir/Command.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yueyingyifeng/projects/Tictactoe_server/Command.cpp > CMakeFiles/tTT_server.dir/Command.cpp.i

CMakeFiles/tTT_server.dir/Command.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tTT_server.dir/Command.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yueyingyifeng/projects/Tictactoe_server/Command.cpp -o CMakeFiles/tTT_server.dir/Command.cpp.s

CMakeFiles/tTT_server.dir/ClientInfo.cpp.o: CMakeFiles/tTT_server.dir/flags.make
CMakeFiles/tTT_server.dir/ClientInfo.cpp.o: ClientInfo.cpp
CMakeFiles/tTT_server.dir/ClientInfo.cpp.o: CMakeFiles/tTT_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yueyingyifeng/projects/Tictactoe_server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/tTT_server.dir/ClientInfo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tTT_server.dir/ClientInfo.cpp.o -MF CMakeFiles/tTT_server.dir/ClientInfo.cpp.o.d -o CMakeFiles/tTT_server.dir/ClientInfo.cpp.o -c /home/yueyingyifeng/projects/Tictactoe_server/ClientInfo.cpp

CMakeFiles/tTT_server.dir/ClientInfo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tTT_server.dir/ClientInfo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yueyingyifeng/projects/Tictactoe_server/ClientInfo.cpp > CMakeFiles/tTT_server.dir/ClientInfo.cpp.i

CMakeFiles/tTT_server.dir/ClientInfo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tTT_server.dir/ClientInfo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yueyingyifeng/projects/Tictactoe_server/ClientInfo.cpp -o CMakeFiles/tTT_server.dir/ClientInfo.cpp.s

# Object files for target tTT_server
tTT_server_OBJECTS = \
"CMakeFiles/tTT_server.dir/main.cpp.o" \
"CMakeFiles/tTT_server.dir/Server.cpp.o" \
"CMakeFiles/tTT_server.dir/Room.cpp.o" \
"CMakeFiles/tTT_server.dir/Command.cpp.o" \
"CMakeFiles/tTT_server.dir/ClientInfo.cpp.o"

# External object files for target tTT_server
tTT_server_EXTERNAL_OBJECTS =

tTT_server: CMakeFiles/tTT_server.dir/main.cpp.o
tTT_server: CMakeFiles/tTT_server.dir/Server.cpp.o
tTT_server: CMakeFiles/tTT_server.dir/Room.cpp.o
tTT_server: CMakeFiles/tTT_server.dir/Command.cpp.o
tTT_server: CMakeFiles/tTT_server.dir/ClientInfo.cpp.o
tTT_server: CMakeFiles/tTT_server.dir/build.make
tTT_server: CMakeFiles/tTT_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yueyingyifeng/projects/Tictactoe_server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable tTT_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tTT_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tTT_server.dir/build: tTT_server
.PHONY : CMakeFiles/tTT_server.dir/build

CMakeFiles/tTT_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tTT_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tTT_server.dir/clean

CMakeFiles/tTT_server.dir/depend:
	cd /home/yueyingyifeng/projects/Tictactoe_server && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yueyingyifeng/projects/Tictactoe_server /home/yueyingyifeng/projects/Tictactoe_server /home/yueyingyifeng/projects/Tictactoe_server /home/yueyingyifeng/projects/Tictactoe_server /home/yueyingyifeng/projects/Tictactoe_server/CMakeFiles/tTT_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tTT_server.dir/depend

