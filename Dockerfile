FROM wiiulegacy/core:0.1

MAINTAINER Maschell <maschell@gmx.de>

RUN rm -rf $DEVKITPRO/portlibs

RUN git clone https://github.com/dimok789/libiosuhax && cd libiosuhax && git checkout v0.3
WORKDIR libiosuhax

RUN make && make install && \
	cp -r ${DEVKITPRO}/portlibs /artifacts

WORKDIR /artifacts
RUN find .
