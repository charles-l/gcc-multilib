FROM buildpack-deps:wily
MAINTAINER nc <chuckiels2011@gmail.com>

RUN dpkg --add-architecture i386
RUN apt-get update && apt-get install -y \
	g++-multilib \
	gcc-multilib \
	libc6-dev-i386 \
	zlib1g-dev \
	zlib1g-dev:i386 \
	gdb \
	chicken-bin \
	entr
RUN chicken-install posix fmt
RUN mkdir -p /out
