docker login
docker build -t nicklecannon/master:$(cat version.txt) .
docker push nicklecannon/master:$(cat version.txt)
