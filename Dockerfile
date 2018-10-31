FROM centos:centos7

RUN yum install -y epel-release

RUN yum install -y zeromq-devel gcc gcc-c++ automake autoconf libtool make git

WORKDIR /root

ADD https://nodejs.org/download/release/v8.12.0/node-v8.12.0-linux-x64.tar.gz /root 

RUN tar --strip-components 1 -xzvf node-v* -C /usr/local

RUN git clone https://github.com/zhousi666/discuzD.git

WORKDIR /root/discuzD

# npm install  --由于chromedriver安装过程中可能出错(国内被墙)，所以替换成以下命令
RUN npm install chromedriver --chromedriver_cdnurl=http://cdn.npm.taobao.org/dist/chromedriver

ENTRYPOINT ["npm","start"]
