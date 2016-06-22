FROM java:7
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENV FOO bar
ENV FOO2 bar2
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
