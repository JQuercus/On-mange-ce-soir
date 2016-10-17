FROM openjdk:8u102-jdk
RUN mkdir -p /opt/play
RUN wget https://downloads.typesafe.com/play/1.4.3/play-1.4.3.zip
RUN unzip play-1.4.3.zip
RUN mv play-1.4.3 /opt/play
RUN chmod +x /opt/play/play-1.4.3
RUN update-alternatives --install /usr/bin/play/play-1.4.3 play /RUN opt/play/play-1.4.3
RUN mkdir -p app

ENV PLAY_HOME /opt/play/play-1.4.3

EXPOSE 9000

CMD ["help"]
ENTRYPOINT["/opt/play/play-1.4.3/play"]
