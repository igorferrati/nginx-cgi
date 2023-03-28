# NGINX Common Gateway Interface

* Consiste na criação de um servidor nginx cgi para mostrar informações dinâmicas de um cluster.

## Docker Image
### Passo 1

* Criação de todas depêndencias em ambiente conteineinerizado;
* Configurações da imagem nginx para cgi;
* Conexão com cluster.

## Helloword
### Passo 2

* Confinguração fastcgi na imagem nginx;
* Criação do arquivo teste.cgi;
* Através de script apresentar "hello world" em ```localhost/cgi-bin/teste.cgi```.

---

# Aplicando em Kubernetes

* Estudo para utilizar a imagem em kubernetes.

### Passo 1 

* Otimização da imagem;
* Criação de Cluster;
* Utilização helm;

### Passo 2

* Criação de RBAC;
* Instalação via Helm.
