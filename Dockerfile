FROM openjdk:8-jdk

RUN apt-get update && apt-get install -y rsync && rm -rf /var/lib/apt/lists/*

COPY assets /minecraft
WORKDIR /minecraft
VOLUME ["/minecraft/config", "/minecraft/world"]

CMD java -Xmx3G -Xms3G -Dfml.queryResult=confirm -jar forge-1.12.2-14.23.2.2611-universal.jar nogui
