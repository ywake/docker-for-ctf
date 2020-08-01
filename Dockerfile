FROM ubuntu:18.04

LABEL maintainer="ywake42 <ywake@student.42tokyo.jp>"

RUN	apt update &&\
	apt install -y vim git \
	# 'strings' 'objdump'etc
	binutils \
	# 'hexdump'
	bsdmainutils \
	# 'exiftool'
	exiftool \
	# 'zipinfo'etc
	unzip \
	# 'tcpdump'
	tcpdump \
	# 'curl'
	curl \
	# 'gdb'
	gdb &&\
	# 'gdb-peda'
	git clone https://github.com/longld/peda.git ~/peda &&\
	echo "source ~/peda/peda.py" >> ~/.gdbinit
