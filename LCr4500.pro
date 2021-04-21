#-------------------------------------------------
#
# Project created by QtCreator 2013-03-01T11:12:33
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = LightCrafter4500
TEMPLATE = app


SOURCES +=  main.cpp\
            mainwindow.cpp \
            dlpc350_common.cpp \
            dlpc350_usb.cpp \
            dlpc350_api.cpp \
            dlpc350_BMPParser.cpp \
            dlpc350_firmware.cpp

HEADERS  += mainwindow.h \
            dlpc350_usb.h \
            dlpc350_api.h \
            dlpc350_BMPParser.h \
            dlpc350_firmware.h \
            dlpc350_version.h \
            dlpc350_common.h \
            dlpc350_flashDevice.h \
            Helper.h \
            dlpc350_error.h

INCLUDEPATH += "hidapi-master\\hidapi"

FORMS    += mainwindow.ui

RESOURCES += Lcr2.qrc

# Icons
macx{
ICON = icons/LCr4500.icns
}

win32{
RC_FILE = icons\LCr4500.rc
}

win32:CONFIG(release, debug|release): LIBS += -L../GUI/hidapi-master/windows/release/ -lhidapi
else:win32:CONFIG(debug, debug|release): LIBS += -L../GUI/hidapi-master/windows/debug/ -lhidapi
macx: SOURCES += ../GUI/hidapi-master/mac/hid.c
unix: !macx: SOURCES += hidapi-master/linux/hid.c

macx: LIBS += -framework CoreFoundation -framework IOkit
win32: LIBS += -lSetupAPI
unix: !macx: LIBS += -lusb-1.0 -ludev

INCLUDEPATH += ../GUI/hidapi-master/hidapi
DEPENDPATH += ../GUI/hidapi-master/hidapi

OTHER_FILES +=  icons\LCr4500.rc \
                icons\LCr4500.ico
