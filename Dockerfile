FROM golang


RUN apt-get update && apt-get install -y unzip git \
    && rm -rf /var/lib/apt/lists/*

RUN go get golang.org/x/tools/cmd/present

WORKDIR /
RUN git clone https://github.com/fjukstad/uit-present.git
RUN git clone https://github.com/fjukstad/talks.git 

RUN mkdir /tmp/talks
WORKDIR /tmp/talks

RUN chmod +x /talks/tools/repo-man.sh
CMD /talks/tools/repo-man.sh https://github.com/fjukstad/talks/archive/master.zip /uit-present
