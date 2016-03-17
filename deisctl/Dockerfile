FROM daocloud.io/library/golang:1.5

# Install FPM for packaging
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -qy file bzip2
# RUN mkdir -p /go/src/github.com/deis
# RUN cd /go/src/github.com/deis
# RUN git clone https://github.com/CloudSide/deis.git

ENV GOPATH /go
WORKDIR /go/src/github.com/deis/deis
ADD . /go/src/github.com/deis/deis
RUN go get github.com/tools/godep
RUN make -C deisctl installer
# RUN curl -H "Content-Type: application/octet-stream" -T "client/deis-cli-1.13.0-dev-linux-amd64.run" "http://sinacloud.net/hehe/deiscli/deis-cli-1.13.0-dev-linux-amd64.run?KID=sina,re5k9pAuLShG6tVcXOFr&Expires=3629120410&ssig=vIcXLO4q35" -v
# CMD ["/go/src/github.com/tutumcloud/tutum-agent"]
