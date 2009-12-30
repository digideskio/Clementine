# -------------------------------------------------
# Project created by QtCreator 2009-12-15T18:38:35
# -------------------------------------------------
QT += sql \
    network \
    opengl \
    xml
TARGET = tangerine
TEMPLATE = app
SOURCES += main.cpp \
    mainwindow.cpp \
    player.cpp \
    library.cpp \
    librarybackend.cpp \
    playlist.cpp \
    playlistitem.cpp \
    enginebase.cpp \
    analyzers/baranalyzer.cpp \
    analyzers/analyzerbase.cpp \
    fht.cpp \
    analyzers/blockanalyzer.cpp \
    xine-engine.cpp \
    xine-scope.c \
    sliderwidget.cpp \
    playlistview.cpp \
    backgroundthread.cpp \
    librarywatcher.cpp \
    song.cpp \
    songplaylistitem.cpp \
    libraryview.cpp \
    libraryconfig.cpp \
    systemtrayicon.cpp \
    libraryquery.cpp \
    fileview.cpp \
    fileviewlist.cpp \
    playlistheader.cpp \
    radioitem.cpp \
    radioservice.cpp \
    lastfmservice.cpp \
    radiomodel.cpp \
    lastfmconfig.cpp \
    busyindicator.cpp \
    radioplaylistitem.cpp \
    radioloadingindicator.cpp \
    radioview.cpp \
    lastfmstationdialog.cpp
HEADERS += mainwindow.h \
    player.h \
    library.h \
    librarybackend.h \
    playlist.h \
    playlistitem.h \
    enginebase.h \
    engine_fwd.h \
    analyzers/baranalyzer.h \
    analyzers/analyzerbase.h \
    fht.h \
    analyzers/blockanalyzer.h \
    xine-engine.h \
    xine-scope.h \
    sliderwidget.h \
    playlistview.h \
    backgroundthread.h \
    librarywatcher.h \
    directory.h \
    song.h \
    songmimedata.h \
    songplaylistitem.h \
    libraryview.h \
    libraryitem.h \
    libraryconfig.h \
    systemtrayicon.h \
    libraryquery.h \
    fileview.h \
    fileviewlist.h \
    playlistheader.h \
    simpletreeitem.h \
    radioitem.h \
    radioservice.h \
    lastfmservice.h \
    simpletreemodel.h \
    radiomodel.h \
    lastfmconfig.h \
    busyindicator.h \
    radiomimedata.h \
    radioplaylistitem.h \
    radioloadingindicator.h \
    radioview.h \
    lastfmstationdialog.h
FORMS += mainwindow.ui \
    libraryconfig.ui \
    fileview.ui \
    lastfmconfig.ui \
    radioloadingindicator.ui \
    lastfmstationdialog.ui
RESOURCES += ../data/data.qrc
OTHER_FILES += ../data/schema.sql \
    ../data/mainwindow.css
LIBS += -llastfm
!win32 { 
    QMAKE_CXXFLAGS += $$system(taglib-config --cflags)
    LIBS += $$system(taglib-config --libs)
    QMAKE_CXXFLAGS += $$system(xine-config --cflags)
    LIBS += $$system(xine-config --libs)
}
win32 { 
    INCLUDEPATH += C:/msys/1.0/local/include \
        C:/msys/1.0/local/include/taglib
    LIBS += -Lc:/msys/1.0/local/lib \
        -Lc:/msys/1.0/local/bin \
        -ltag \
        -lxine \
        -lpthreadGC2
}
