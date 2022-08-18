FROM alpine:3.15.4
MAINTAINER Jordan Tomkinson <jordan@moodle.com>
RUN apk update
RUN apk --no-cache add bash git python3 python3-dev py-pip py-setuptools openssh-client make perl php7-cli jq postgresql-client
RUN apk --no-cache add php7-bcmath php7-bz2 php7-cli php7-common php7-curl php7-gd php7-gmp php7-igbinary php7-intl php7-json php7-ldap php7-mbstring php7-opcache php7-pgsql php7-redis php7-soap php7-xml php7-xmlrpc php7-xsl php7-yaml php7-zip php7-ctype
RUN pip install --upgrade s3cmd
RUN git clone https://github.com/lesfurets/git-octopus /tmp/git-octopus
RUN cd /tmp/git-octopus && make install
RUN echo "[default]" > ~/.s3cfg
RUN echo "access_key =" >> ~/.s3cfg
RUN echo "secret_key =" >> ~/.s3cfg
RUN echo "security_token =" >> ~/.s3cfg
RUN mkdir ~/.ssh && chmod 700 ~/.ssh
