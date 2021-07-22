FROM ubuntu:latest
RUN apt update
RUN apt install python3.9
RUN apt install pip3
RUN apt install git
RUN git clone https://github.com/bernd-wechner/Degoo
RUN pip3 install -r /Degoo/requ*
RUN python3 /Degoo/build.py
