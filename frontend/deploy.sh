docker login
docker build -t nicklecannon/frontend:$(cat version.txt) .
docker push nicklecannon/frontend:$(cat version.txt)
