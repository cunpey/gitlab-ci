FROM node:10.16.1-alpine
RUN apk update -q &&  apk add --no-cache bash -q && apk add --no-cache openssh -q && apk add --no-cache lftp -q && apk add --no-cache tzdata -q && apk add --no-cache xclip -q && apk add --no-cache git -q &&  apk add --no-cache curl -q && apk add --no-cache zip -q &&  apk add --no-cache jq -q
RUN mkdir /root/.ssh/
RUN touch /root/.ssh/known_hosts
CMD ["/bin/bash"]
