FROM ubuntu:18.04

LABEL maintainer="ywake42 <ywake@student.42tokyo.jp>"

RUN	apt-get update \
&&	apt-get install -y vim git curl\
	# 'ifconfig'etc
	net-tools \
	# 'nc'
	netcat \
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
	# 'john the ripper'
	john \
	# 'gdb'
	gdb
# 'gdb-peda'
RUN	git clone https://github.com/longld/peda.git ~/peda \
&&	echo "source ~/peda/peda.py" >> ~/.gdbinit
# rockyou.txt
RUN	mkdir /usr/share/wordlists \
&&	curl -L -o /usr/share/wordlists/rockyou.txt https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt

