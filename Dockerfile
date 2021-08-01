FROM ubuntu:latest
RUN apt update
RUN apt install python3.9 -y
RUN apt install pip -y
RUN apt install git -y
RUN git clone https://github.com/bernd-wechner/Degoo
WORKDIR /Degoo2
RUN git clone https://github.com/IAMSDR/Degoo
RUN pip install -r /Degoo/requ*
RUN python3 /Degoo/build.py
RUN python3 /Degoo2/Degoo/build.py
