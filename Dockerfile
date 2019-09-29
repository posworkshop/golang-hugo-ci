FROM circleci/golang:1.12.5

RUN wget -O /tmp/hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v0.58.3/hugo_0.58.3_Linux-64bit.tar.gz

RUN sudo tar -C /usr/bin --extract --file=/tmp/hugo.tar.gz hugo

RUN curl https://htmltest.wjdp.uk | sudo bash -s -- -b /usr/local/bin
