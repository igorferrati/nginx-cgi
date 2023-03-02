FROM nginx
RUN  apt-get update && apt-get install nginx fcgiwrap -y && apt-get install spawn-fcgi && mv /usr/sbin/fcgiwrap /usr/bin/
WORKDIR /
COPY fcgiwrap.conf /etc/nginx/
COPY default.conf /etc/nginx/conf.d/default.conf
COPY teste.cgi /usr/lib/cgi-bin/
COPY comandos.sh .
RUN chmod +x comandos.sh
ENTRYPOINT [ "./comandos.sh" ]
