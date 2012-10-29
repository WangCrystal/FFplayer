LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := -D__STDC_CONSTANT_MACROS

LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/../libffmpeg \
    $(LOCAL_PATH)/../include

LOCAL_SRC_FILES += \
    PacketQueue.cpp \
    output.cpp \
    MediaPlayer.cpp \
    DecoderAudio.cpp \
    DecoderVideo.cpp \
    Thread.cpp
    
#LOCAL_STATIC_LIBRARIES := libavcodec libavformat libavutil libpostproc libswscale

LOCAL_MODULE := libmediaplayer

include $(BUILD_STATIC_LIBRARY)
