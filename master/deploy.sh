docker login
docker build -t logax/master:$(cat version.txt) .
docker push logax/master:$(cat version.txt)
