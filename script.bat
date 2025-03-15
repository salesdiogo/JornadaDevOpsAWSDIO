echo "Criando Imagens !!!"

docker build -t salesdiogo/projetok8sDIO-backend:1.0 backend/.
docker build -t salesdiogo/projetok8sDIO-database:1.0 database/.

echo "Fazendo o Push das imagens !!"

docker push salesdiogo/projetok8sDIO-backend:1.0
docker push salesdiogo/projetok8sDIO-database:1.0

echo: "Criando serviços no clustes Kubernets"

kubectl apply -f ./services.yml

echo "Fazendo os deploys !!!"

kubectl apply -f ./deployment.yml