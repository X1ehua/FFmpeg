cmake_minimum_required(VERSION 3.20)
project(ffmpeg)

include_directories( .. /usr/local/include/SDL2)
file(GLOB HEADERS ../libavutil/*.h ../libavcodec/*.h ../libavformat/*.h)

add_executable(ffmpeg
    cmdutils.c
    ffmpeg.c
    ffmpeg_hw.c
    ffmpeg_opt.c
    ffmpeg_filter.c
)

find_library(util     NAMES avutil     HINTS "${CMAKE_CURRENT_SOURCE_DIR}/../libavutil")
find_library(codec    NAMES avcodec    HINTS "${CMAKE_CURRENT_SOURCE_DIR}/../libavcodec")
find_library(format   NAMES avformat   HINTS "${CMAKE_CURRENT_SOURCE_DIR}/../libavformat")
find_library(filter   NAMES avfilter   HINTS "${CMAKE_CURRENT_SOURCE_DIR}/../libavfilter")
find_library(scale    NAMES swscale    HINTS "${CMAKE_CURRENT_SOURCE_DIR}/../libswscale")
find_library(resample NAMES swresample HINTS "${CMAKE_CURRENT_SOURCE_DIR}/../libswresample")

find_library(libz    z)
find_library(libcurl curl)
find_library(libx264 x264)
find_library(CoreFoundationFramework CoreFoundation)
find_library(CoreGraphics CoreGraphics)
find_library(CoreText     CoreText)
find_library(CoreImage    CoreImage)
find_library(OpenGL       OpenGL)
find_library(AppKit       AppKit)

message(">> libx264: ${libx264}")

target_link_libraries(ffmpeg
    ${codec}
    ${format}
    ${filter}
    ${util}
    ${resample}
    ${scale}
    ${libz}
    ${libcurl}
    ${CoreFoundationFramework}
    /usr/local/Cellar/x264/lib/libx264.dylib
#   ${CoreGraphics} ${CoreText} ${CoreImage} ${AppKit} ${OpenGL}
)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror=format")
