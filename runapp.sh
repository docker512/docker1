sudo docker rm web -f
sudo docker build --tag="eth-workshop/counter-in-memory:2" .
sudo docker run -d --name web -p 5000:5000 -v /home/tholugo/projects/dockerworkshop/workshop-docker/part2/resources/counter-app-in-memory/src/:/opt/counter/src --link my-redis:redis eth-workshop/counter-in-memory:2
