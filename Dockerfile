FROM maven:3-amazoncorretto-11

RUN yum update --security -y
RUN yum install -y git jq unzip
RUN curl -LO "https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip"
RUN unzip ./aws-sam-cli-linux-x86_64.zip -d sam-installation
RUN ./sam-installation/install
