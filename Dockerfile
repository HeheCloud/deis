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
