# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.5/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/rodrigo/Documents/utfpr/opencv/pdi/primeira_aula

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/rodrigo/Documents/utfpr/opencv/pdi/primeira_aula/build

# Include any dependencies generated for this target.
include CMakeFiles/primeira_aula.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/primeira_aula.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/primeira_aula.dir/flags.make

CMakeFiles/primeira_aula.dir/main.cpp.o: CMakeFiles/primeira_aula.dir/flags.make
CMakeFiles/primeira_aula.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rodrigo/Documents/utfpr/opencv/pdi/primeira_aula/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/primeira_aula.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/primeira_aula.dir/main.cpp.o -c /Users/rodrigo/Documents/utfpr/opencv/pdi/primeira_aula/main.cpp

CMakeFiles/primeira_aula.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/primeira_aula.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rodrigo/Documents/utfpr/opencv/pdi/primeira_aula/main.cpp > CMakeFiles/primeira_aula.dir/main.cpp.i

CMakeFiles/primeira_aula.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/primeira_aula.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rodrigo/Documents/utfpr/opencv/pdi/primeira_aula/main.cpp -o CMakeFiles/primeira_aula.dir/main.cpp.s

# Object files for target primeira_aula
primeira_aula_OBJECTS = \
"CMakeFiles/primeira_aula.dir/main.cpp.o"

# External object files for target primeira_aula
primeira_aula_EXTERNAL_OBJECTS =

primeira_aula: CMakeFiles/primeira_aula.dir/main.cpp.o
primeira_aula: CMakeFiles/primeira_aula.dir/build.make
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_gapi.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_stitching.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_aruco.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_bgsegm.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_bioinspired.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_ccalib.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_dnn_objdetect.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_dnn_superres.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_dpm.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_face.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_fuzzy.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_hfs.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_img_hash.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_line_descriptor.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_quality.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_reg.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_rgbd.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_saliency.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_stereo.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_structured_light.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_superres.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_surface_matching.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_tracking.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_videostab.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_xfeatures2d.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_xobjdetect.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_xphoto.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_shape.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_highgui.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_datasets.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_plot.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_text.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_dnn.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_ml.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_phase_unwrapping.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_optflow.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_ximgproc.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_video.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_videoio.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_imgcodecs.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_objdetect.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_calib3d.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_features2d.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_flann.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_photo.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_imgproc.4.2.0.dylib
primeira_aula: /Users/rodrigo/Documents/utfpr/opencv/install/lib/libopencv_core.4.2.0.dylib
primeira_aula: CMakeFiles/primeira_aula.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/rodrigo/Documents/utfpr/opencv/pdi/primeira_aula/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable primeira_aula"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/primeira_aula.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/primeira_aula.dir/build: primeira_aula

.PHONY : CMakeFiles/primeira_aula.dir/build

CMakeFiles/primeira_aula.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/primeira_aula.dir/cmake_clean.cmake
.PHONY : CMakeFiles/primeira_aula.dir/clean

CMakeFiles/primeira_aula.dir/depend:
	cd /Users/rodrigo/Documents/utfpr/opencv/pdi/primeira_aula/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rodrigo/Documents/utfpr/opencv/pdi/primeira_aula /Users/rodrigo/Documents/utfpr/opencv/pdi/primeira_aula /Users/rodrigo/Documents/utfpr/opencv/pdi/primeira_aula/build /Users/rodrigo/Documents/utfpr/opencv/pdi/primeira_aula/build /Users/rodrigo/Documents/utfpr/opencv/pdi/primeira_aula/build/CMakeFiles/primeira_aula.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/primeira_aula.dir/depend

