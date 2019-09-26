FROM whitesourcedocker/whitesource-scan:1.2.1

ADD https://github.com/whitesource/unified-agent-distribution/releases/latest/download/wss-unified-agent.jar /bin/wss-unified-agent.jar
ADD https://github.com/whitesource/unified-agent-distribution/raw/master/standAlone/wss-unified-agent.config /bin/wss-unified-agent.config

CMD java -jar wss-unified-agent.jar "$@"
