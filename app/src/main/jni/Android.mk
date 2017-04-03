LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

OPENCV_CAMERA_MODULES:=on
OPENCV_INSTALL_MODULES:=on

include /Users/yifanyang/Downloads/OpenCV-android-sdk/sdk/native/jni/OpenCV.mk

LOCAL_SRC_FILES := xfeatures2d_init.cpp sift.cpp surf.cpp freak.cpp
LOCAL_LDLIBS += -llog -ldl
LOCAL_MODULE := xfeatures2d

include $(BUILD_SHARED_LIBRARY)
