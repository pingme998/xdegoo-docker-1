FROM ubuntu:latest
RUN apt update
RUN apt install python3.9 -y
RUN apt install pip3 -y
RUN apt install git -y
RUN git clone https://github.com/bernd-wechner/Degoo
RUN pip3 install -r /Degoo/requ*
RUN python3 /Degoo/build.py
