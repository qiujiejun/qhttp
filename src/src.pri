QT       += core network
QT       -= gui

DEFINES       *= QHTTP_MEMORY_LOG=0
win32:DEFINES *= QHTTP_EXPORT

INCLUDEPATH +=  . $$PWD/../src $$PWD/../3rdparty

# Joyent http_parser
SOURCES  += $$PWD/../3rdparty/http-parser/http_parser.c
HEADERS  += $$PWD/../3rdparty/http-parser/http_parser.h

SOURCES  += \
    $$PWD/qhttpabstracts.cpp \
	$$PWD/qhttpserverconnection.cpp \
	$$PWD/qhttpserverrequest.cpp \
	$$PWD/qhttpserverresponse.cpp \
	$$PWD/qhttpserver.cpp

HEADERS  += \
    $$PWD/qhttpfwd.hpp \
	$$PWD/qhttpabstracts.hpp \
	$$PWD/qhttpserverconnection.hpp \
	$$PWD/qhttpserverrequest.hpp \
	$$PWD/qhttpserverresponse.hpp \
	$$PWD/qhttpserver.hpp

contains(DEFINES, QHTTP_HAS_CLIENT) {
    SOURCES += \
	    $$PWD/qhttpclientrequest.cpp \
		$$PWD/qhttpclientresponse.cpp \
		$$PWD/qhttpclient.cpp

    HEADERS += \
	    $$PWD/qhttpclient.hpp \
		$$PWD/qhttpclientresponse.hpp \
		$$PWD/qhttpclientrequest.hpp
}
