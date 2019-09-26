FROM whitesourcedocker/whitesource-scan:1.2.1

ADD https://github.com/whitesource/unified-agent-distribution/releases/latest/download/wss-unified-agent.jar /bin/wss-unified-agent.jar

CMD java -jar wss-unified-agent.jar "$@"
