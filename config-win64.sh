./configure --prefix=./output \
    --target-os=win64 --arch=x86_64 --cc=/usr/bin/gcc --enable-cross-compile \
    --disable-securetransport --disable-gnutls \
    --enable-asm --enable-inline-asm --disable-optimizations --enable-debug --disable-small \
    --enable-x86asm --enable-gpl --disable-nonfree --enable-runtime-cpudetect \
    --disable-gray --disable-swscale-alpha --disable-programs --disable-ffmpeg \
    --disable-ffplay --disable-ffprobe --disable-ffserver --disable-doc --disable-htmlpages \
    --disable-manpages --disable-podpages --disable-txtpages --disable-avdevice \
    --enable-avcodec --enable-avformat --enable-avutil --enable-swresample --enable-swscale \
    --disable-postproc --enable-avfilter --disable-avresample --enable-network --disable-d3d11va \
    --disable-dxva2 --disable-vaapi --disable-vda --disable-vdpau --disable-videotoolbox \
    --disable-filters --enable-filter=aformat \
                      --enable-filter=anull \
                      --enable-filter=atrim \
                      --enable-filter=null \
                      --enable-filter=format \
                      --enable-filter=hflip \
                      --enable-filter=vflip \
                      --enable-filter=trim \
                      --enable-filter=transpose \
    --disable-encoders --enable-encoder=png --enable-libx264 --enable-encoder=libx264 \
                       --enable-encoder=aac \
    --disable-decoders --enable-decoder=aac \
    --enable-decoder=aac_latm --enable-decoder=flv --enable-decoder=h264 --enable-decoder=mp3* \
    --enable-decoder=vp6f --enable-decoder=flac --enable-decoder=hevc --enable-decoder=vp8 \
    --enable-decoder=vp9 --disable-hwaccels --disable-muxers --enable-muxer=mp4 --disable-demuxers \
    --enable-demuxer=aac --enable-demuxer=concat --enable-demuxer=data --enable-demuxer=flv \
    --enable-demuxer=hls --enable-demuxer=live_flv --enable-demuxer=mov --enable-demuxer=mp3 \
    --enable-demuxer=mpegps --enable-demuxer=mpegts --enable-demuxer=mpegvideo \
    --enable-demuxer=flac --enable-demuxer=hevc --enable-demuxer=webm_dash_manifest \
    --disable-parsers --enable-parser=aac --enable-parser=aac_latm --enable-parser=h264 \
    --enable-parser=flac --enable-parser=hevc --enable-bsfs --disable-bsf=chomp --disable-bsf=dca_core \
    --disable-bsf=dump_extradata --disable-bsf=hevc_mp4toannexb --disable-bsf=imx_dump_header \
    --disable-bsf=mjpeg2jpeg --disable-bsf=mjpega_dump_header --disable-bsf=mov2textsub \
    --disable-bsf=mp3_header_decompress --disable-bsf=mpeg4_unpack_bframes --disable-bsf=noise \
    --disable-bsf=remove_extradata --disable-bsf=text2movsub --disable-bsf=vp9_superframe \
    --enable-protocols --enable-protocol=async --disable-protocol=bluray --disable-protocol=concat \
    --disable-protocol=crypto --disable-protocol=ffrtmpcrypt --enable-protocol=ffrtmphttp \
    --disable-protocol=gopher --disable-protocol=icecast --disable-protocol=librtmp* \
    --disable-protocol=libssh --disable-protocol=md5 --disable-protocol=mmsh --disable-protocol=mmst \
    --disable-protocol=rtmp* --enable-protocol=rtmp --enable-protocol=rtmpt --disable-protocol=rtp \
    --disable-protocol=sctp --disable-protocol=srtp --disable-protocol=subfile --disable-protocol=unix \
    --disable-devices --disable-iconv --disable-audiotoolbox --disable-videotoolbox \
    --disable-linux-perf --disable-bzlib --enable-pic \
    --extra-cflags="-O0 -Wall -pipe -std=c99 -ffast-math -fstrict-aliasing -Werror=strict-aliasing \
                    -Id:/misc/x264" \
    --extra-ldflags="-Ld:/misc/x264 -lx264"

    # -Werror=format -Id:/misc/x264 -Id:/misc/lame-3.99.5/include" \
    # --extra-ldflags="-Ld:/misc/x264 -lx264 -Ld:/misc/lame-3.99.5/ -lmp3lame"

# original from ijk-ffmpeg
# ./configure --arch=aarch64 --enable-yasm --disable-gpl --disable-nonfree --enable-runtime-cpudetect --disable-gray --disable-swscale-alpha --disable-programs --disable-ffmpeg --disable-ffplay --disable-ffprobe --disable-ffserver --disable-doc --disable-htmlpages --disable-manpages --disable-podpages --disable-txtpages --disable-avdevice --enable-avcodec --enable-avformat --enable-avutil --enable-swresample --enable-swscale --disable-postproc --enable-avfilter --disable-avresample --enable-network --disable-d3d11va --disable-dxva2 --disable-vaapi --disable-vda --disable-vdpau --disable-videotoolbox --disable-encoders --enable-encoder=png --disable-decoders --enable-decoder=aac --enable-decoder=aac_latm --enable-decoder=flv --enable-decoder=h264 --enable-decoder=mp3* --enable-decoder=vp6f --enable-decoder=flac --enable-decoder=hevc --enable-decoder=vp8 --enable-decoder=vp9 --disable-hwaccels --disable-muxers --enable-muxer=mp4 --disable-demuxers --enable-demuxer=aac --enable-demuxer=concat --enable-demuxer=data --enable-demuxer=flv --enable-demuxer=hls --enable-demuxer=live_flv --enable-demuxer=mov --enable-demuxer=mp3 --enable-demuxer=mpegps --enable-demuxer=mpegts --enable-demuxer=mpegvideo --enable-demuxer=flac --enable-demuxer=hevc --enable-demuxer=webm_dash_manifest --disable-parsers --enable-parser=aac --enable-parser=aac_latm --enable-parser=h264 --enable-parser=flac --enable-parser=hevc --enable-bsfs --disable-bsf=chomp --disable-bsf=dca_core --disable-bsf=dump_extradata --disable-bsf=hevc_mp4toannexb --disable-bsf=imx_dump_header --disable-bsf=mjpeg2jpeg --disable-bsf=mjpega_dump_header --disable-bsf=mov2textsub --disable-bsf=mp3_header_decompress --disable-bsf=mpeg4_unpack_bframes --disable-bsf=noise --disable-bsf=remove_extradata --disable-bsf=text2movsub --disable-bsf=vp9_superframe --enable-protocols --enable-protocol=async --disable-protocol=bluray --disable-protocol=concat --disable-protocol=crypto --disable-protocol=ffrtmpcrypt --enable-protocol=ffrtmphttp --disable-protocol=gopher --disable-protocol=icecast --disable-protocol=librtmp* --disable-protocol=libssh --disable-protocol=md5 --disable-protocol=mmsh --disable-protocol=mmst --disable-protocol=rtmp* --enable-protocol=rtmp --enable-protocol=rtmpt --disable-protocol=rtp --disable-protocol=sctp --disable-protocol=srtp --disable-protocol=subfile --disable-protocol=unix --disable-devices --disable-filters --disable-iconv --disable-audiotoolbox --disable-videotoolbox --disable-linux-perf --disable-bzlib --prefix=/Users/eric/ijk/android/contrib/build/ffmpeg-arm64/output --cross-prefix=aarch64-linux-android- --enable-cross-compile --target-os=linux --enable-pic --enable-asm --enable-inline-asm --disable-optimizations --enable-debug --disable-small --extra-cflags=-O0 -Wall -pipe     -std=c99     -ffast-math     -fstrict-aliasing -Werror=strict-aliasing -Werror=format     -Wno-psabi -Wa,--noexecstack     -DANDROID -DNDEBUG  --extra-ldflags=
