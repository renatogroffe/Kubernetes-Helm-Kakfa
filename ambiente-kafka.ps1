# Documentação do Helm
# https://helm.sh/docs/

helm version

helm repo list

helm repo add bitnami https://charts.bitnami.com/bitnami

helm repo list

# Para remover um repositório:
# helm repo remove bitnami

kubectl create namespace groffe-testes-kafka

# Documentação com configurações para instalação do Kafka:
# https://github.com/bitnami/charts/tree/master/bitnami/kafka

helm install groffe-broker-kafka --set externalAccess.enabled=true,externalAccess.service.type=LoadBalancer,externalAccess.service.port=19092,externalAccess.autoDiscovery.enabled=true,serviceAccount.create=true,rbac.create=true bitnami/kafka -n groffe-testes-kafka

# Para desinstalar:
# helm uninstall groffe-broker-kafka -n groffe-testes-kafka

helm list -n groffe-testes-kafka

kubectl get pods -n groffe-testes-kafka

kubectl get services -n groffe-testes-kafka

# Projeto utilizado para envio de mensagens a um tópico do Kafka
# https://github.com/renatogroffe/DotNetCore3.1-Kafka_Producer

# Projeto utilizado para consumo de mensagens vinculadas a um tópico do Kafka
# https://github.com/renatogroffe/DotNetCore3.1-Kafka_Consumer

# Para saber mais sobre o uso de Kafka com .NET acesse o artigo:
# https://medium.com/@renato.groffe/net-core-3-1-apache-kafka-exemplos-utilizando-mensageria-21fad6e0aab