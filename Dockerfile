FROM whitesourcedocker/whitesource-scan:1.2.1

COPY wss-unified-agent.jar wss-unified-agent.jar
COPY wss_agent.sh wss_agent.sh

CMD wss_agent.sh -c wss-unified-agent.config -apiKey $apiKey -project $projectName -d $scanFolderName
