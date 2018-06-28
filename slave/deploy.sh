docker login
docker build -t nicklecannon/slave:$(cat version.txt) .
docker push nicklecannon/slave:$(cat version.txt)
