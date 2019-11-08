
TEMPLATE = lib

QMAKE_CXXFLAGS += -std=c++11

DEFINES += DO_LIB_DEBUG

SOURCES += \
    $${PWD}/../../../src/libs/dllmain_preload_for_log_correction.cpp
