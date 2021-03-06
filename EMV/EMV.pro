#-------------------------------------------------
#
# Project created by QtCreator 2017-06-09T12:30:35
#
#-------------------------------------------------
# message($$QMAKESPEC)

QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = EMV
TEMPLATE = app

CONFIG += c++11

#For promoting widget in emv.ui
INCLUDEPATH += Widgets/

macx {
    DEFINES += NO_EARTHWORM

    #QMAKE_RPATHDIR += @executable_path/../Frameworks
    #QMAKE_LFLAGS += -rpath @excutable_path/../Frameworks

    INCLUDEPATH += /Users/alexm/lib/include/
    INCLUDEPATH += /Users/alexm/local/Library/Frameworks/libzmq.framework/Versions/4.2.1/Headers


    LIBS += -L/Users/alexm/lib/ -lmarblewidget-qt5.0.27.1
    LIBS += -L/Users/alexm/local/lib/ -lzmq-static
 #   LIBS += -L/Users/alexm/local/Library/Frameworks/libzmq.framework/Versions -lzmq-static.a
}

SOURCES += main.cpp\
        emv.cpp \
    mapwidget.cpp \
    MarbleLayers/archpaintlayer.cpp \
    MarbleLayers/eventlayer.cpp \
    QuakeML/quakemlreader.cpp \
    QuakeML/quakemlevent.cpp \
    Dialogs/fdsnrequestdialog.cpp \
    Dialogs/connectdialog.cpp \
    Widgets/quakemltable.cpp \
    emv_slots.cpp \
    Dialogs/earthwormsettings.cpp \
    EWC/earthwormsite.cpp \
    earthwormzmqworker.cpp

HEADERS  += emv.h \
    mapwidget.h \
    MarbleLayers/archcolors.h \
    MarbleLayers/archpaintlayer.h \
    MarbleLayers/eventlayer.h \
    QuakeML/quakemlreader.h \
    QuakeML/quakemlevent.h \
    Dialogs/fdsnrequestdialog.h \
    Dialogs/connectdialog.h \
    Widgets/quakemltable.h \
    Dialogs/earthwormsettings.h \
    EWC/earthwormsite.h \
    earthwormzmqworker.h

FORMS    += emv.ui \
    Dialogs/fdsnrequestdialog.ui \
    Dialogs/connectdialog.ui \
    Dialogs/earthwormsettings.ui

RESOURCES += \
    Embedded/emvresources.qrc

unix:!macx {
    LIBS +=   -L/usr/local/lib -lmarblewidget-qt5 -lzmq
}

# ---- EarthWorm Injection ----

#unix:!macx {

#linux-g++:DEFINES += _LINUX
#linux-g++-64:DEFINES += _LINUX

#SOURCES += EarthWorm/src/data_exchange/import_generic/import_generic.c \
#    EarthWorm/src/libsrc/unix/socket_ew.c \
#    EarthWorm/src/libsrc/util/socket_ew_common.c \
##    EarthWorm/src/libsrc/util/read_arc.c \
#    EWC/EarthWormComp.cpp \
#    EWC/EarthWormHacks.cpp

#HEADERS += EWC/EarthWormComp.h \
#    EWC/EarthWormHacks.h

#INCLUDEPATH += EarthWorm/include

#LIBS += -L$$_PRO_FILE_PWD_/EarthWorm/lib -lew -lew_mt

#}

DISTFILES += \
    Notes.txt \
    Embedded/Files/StationList.txt \
    Embedded/Files/StationList2.txt \
    import_generic.d




