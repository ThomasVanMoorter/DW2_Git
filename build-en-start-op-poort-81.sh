docker build -t demo-site .

docker rm -f demo-container 2>/dev/null

docker run -d --name demo-container -p 81:80 demo-site
