QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    srcpp/filemanip.cpp \
    srcpp/heroselection.cpp \
    srcpp/main.cpp \
    srcpp/mainwindow.cpp

HEADERS += \
    include/Random.h \
    include/filemanip.h \
    include/heroselection.h \
    include/mainwindow.h

FORMS += \
    forms/heroselection.ui \
    forms/mainwindow.ui

TRANSLATIONS += \
    Butcher_Circus_Randomizer_ru_RU.ts
CONFIG += lrelease
CONFIG += embed_translations

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    resources.qrc
