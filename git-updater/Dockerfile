FROM alpine/git:2.40.1

WORKDIR /git-sync
COPY . .

RUN apk add bash

ENTRYPOINT ["./git-sync.sh"]
