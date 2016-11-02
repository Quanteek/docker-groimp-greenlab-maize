FROM quanteek/groimp:1.4.2
MAINTAINER quanteek

#Running
WORKDIR /home/user01
COPY maize_greenlab.gsz /home/user01/
RUN echo "java -jar /home/user01/GroIMP-1.4.2/app/core.jar --headless \$1 \$2 \"maize_greenlab.gsz\"" > run.sh
