LOCAL_PATH := $(my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES:= \
	libpkip_mock.c \

LOCAL_MODULE := libpkip

include $(BUILD_SHARED_LIBRARY)
