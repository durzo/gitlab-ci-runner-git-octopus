FROM alpine:latest
MAINTAINER Jordan Tomkinson <jordan@moodle.com>
RUN apk --no-cache add bash git python python-dev py-pip py-setuptools openssh-client make perl
RUN pip install --upgrade s3cmd
RUN git clone https://github.com/lesfurets/git-octopus /tmp/git-octopus
RUN cd /tmp/git-octopus && make install
RUN echo "[default]" > ~/.s3cfg
RUN echo "access_key =" >> ~/.s3cfg
RUN echo "secret_key =" >> ~/.s3cfg
RUN echo "security_token =" >> ~/.s3cfg
RUN mkdir ~/.ssh && chmod 700 ~/.ssh
