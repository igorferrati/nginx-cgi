#!/bin/bash
echo "content-type: text/html"
echo
echo "<html lang="pt-br">"
echo "<head> <meta http-equiv="refresh" content="20">"
    echo "<meta charset="UTF-8">"
    echo "<meta http-equiv="X-UA-Compatible" content="IE=edge">"
    echo "<meta name="viewport" content="width=device-width, initial-scale=1.0">"
    echo "<title>Desafio #1 CGI</title>"
echo "</head>"
echo "<body>"
    echo "<h2> Desafio 1 - CGI </h2>"
    export KUBECONFIG=kubeconfig/teste-desafio.yaml
    kubectl  get ns
echo "</body>"
echo "</html>"
