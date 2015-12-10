FROM java:7
ENV FOO bar
WORKDIR /home/root/javahelloworld
COPY src /home/root/javahelloworld/src
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
