```yaml
  whitesource:
    image:   r.cfcr.io/todaywasawesome/todaywasawesome/whitesource-scan:master
    stage: "scan"
#     environment:
#       - API_KEY="133d53e55a9b4e01ae0b835cef8fa9dbb155254aa22f491d8a21149c435f1872"
#       - projectName="Hugo"
#       - CONFIG_FILE_PATH="${{CF_VOLUME_PATH}}/hugo/wss-unified-agent.config"
#       - DIRECTORY="${{CF_VOLUME_PATH}}/hugo"
    commands:
      - java -jar /bin/wss-unified-agent.jar -apiKey '133d53e55a9b4e01ae0b835cef8fa9dbb155254aa22f491d8a21149c435f1872' -product 'Hugo' -project 'Hugo' -c "${{CF_VOLUME_PATH}}/hugo/wss-unified-agent.config" -d "${{CF_VOLUME_PATH}}/hugo"
```