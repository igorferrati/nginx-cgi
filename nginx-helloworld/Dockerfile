FROM nginx
COPY fcgiwrap.conf /etc/nginx/
COPY default.conf /etc/nginx/conf.d/
COPY teste.cgi /usr/lib/cgi-bin/
COPY comandos.sh /

RUN  apt-get update && apt-get install fcgiwrap -y && \
     apt-get install spawn-fcgi && \
     mv /usr/sbin/fcgiwrap /usr/bin/ && \
     apt install dos2unix && \
     dos2unix /usr/lib/cgi-bin/teste.cgi

RUN chmod +x comandos.sh

ENTRYPOINT ["/bin/bash", "./comandos.sh"]

