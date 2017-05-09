sudo docker rm my-redis -f
sudo docker run -v /home/tholugo/projects/dockerworkshop/part2/data:/data -d --name my-redis redis redis-server --appendonly yes
