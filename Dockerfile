FROM quanteek/groimp:1.4.2
MAINTAINER quanteek

#Running
WORKDIR /home/user01
COPY maize_greenlab.gsz /home/user01/
COPY run.sh /home/user01/