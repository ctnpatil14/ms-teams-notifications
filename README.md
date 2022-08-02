# ms-teams-notifications
Repository.sh  for Github Actions to send notification to MS Teams
### `Entrypoint.sh` 
this file is used to execute the actual actions using CURL to post the msg passed on to the script as an input to MS teams channel URI for the same is also provided as input 

### example 

entrypoint.sh MS_TEAMS_WEBHOOK_URL MESSAGE

## Dockerfile 
This file is used to invoke the action within the container based on the top with 'FROM'

FROM ubuntu:20.04
RUN apt-get-update -y && apt-get-install curl -y
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
