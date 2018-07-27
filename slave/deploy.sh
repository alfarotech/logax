docker login
docker build -t logax/slave:$(cat version.txt) .
docker push logax/slave:$(cat version.txt)
