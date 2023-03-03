FROM nginx
COPY fcgiwrap.conf /etc/nginx/
COPY default.conf /etc/nginx/conf.d/
COPY teste.cgi /usr/lib/cgi-bin/
COPY comandos.sh /
COPY kubeconfig /kubeconfig/

RUN  apt-get update && apt-get install fcgiwrap -y && \
     apt-get install spawn-fcgi && \
     mv /usr/sbin/fcgiwrap /usr/bin/ && \
     apt install dos2unix && \
     dos2unix /usr/lib/cgi-bin/teste.cgi && \
     dos2unix /comandos.sh && \
     chmod +x comandos.sh

ENV KUBECONFIG=/kubeconfig/teste-desafio.yaml
EXPOSE 80

ENTRYPOINT ["/bin/bash", "./comandos.sh"]
