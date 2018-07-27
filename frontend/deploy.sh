docker login
docker build -t logax/frontend:$(cat version.txt) .
docker push logax/frontend:$(cat version.txt)
