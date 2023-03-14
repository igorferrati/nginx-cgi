FROM nginx
COPY fcgiwrap.conf /etc/nginx/
COPY default.conf /etc/nginx/conf.d/
COPY teste.cgi /usr/lib/cgi-bin/
COPY comandos.sh /
COPY kubeconfig /

RUN  apt-get update && apt-get install fcgiwrap -y && \
     apt-get install spawn-fcgi && \
     mv /usr/sbin/fcgiwrap /usr/bin/ && \
     curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
     install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl && \
     chmod +x comandos.sh
     
ENV KUBECONFIG=/kubeconfig/kubeconfig.yaml

EXPOSE 80

ENTRYPOINT ["/bin/bash", "./comandos.sh"]
