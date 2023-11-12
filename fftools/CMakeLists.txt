cmake_minimum_required(VERSION 3.20)
project(ffmpeg)

include_directories(
    ..
    ../libavcodec
    ../libavformat
    ../libavfilter
    ../libavutils
    ../libresample
    ../libswscale
)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror=format")

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

find_library(libz z)
find_library(libcurl curl)
find_library(CoreFoundationFramework CoreFoundation)

message(">> libcurl: ${libcurl}")

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
)
