
# docker image is like a snape shoot of a linux machine with any software and files install into it

#gcc cross compiler
FROM randomdude/gcc-cross-x86_64-elf


RUN apt-get  update
RUN apt-get upgrade -y
RUN apt-get install -y nasm

#for grub package to work
RUN apt-get install -y xorriso
# for building our final iso file  
RUN apt-get install -y grub-pc-bin
RUN apt-get install -y  grub-common

# giving access to files 
VOLUME /roo/env
#set as starting folder
WORKDIR /root/env

# docker build Buildenv -t cjos-buildenv
#-t for tag name

#spinning up an instance known as container using
#linux: docker run --rm -it -v $pwd:/root/env cjos-buildenv  
#windows: docker run --rm -it -v %cd%:/root/env cjos-buildenv  