branch=$(git rev-parse --abbrev-ref HEAD)
commit=$(git rev-parse --short HEAD)

deploy() {
  cd $1

  if [[ $branch == "PR-"* ]]; then
    tag=$branch
  elif [ $branch == "master" ]; then
    tag=$(cat version.txt)
  else
    tag=$branch"-"$(cat version.txt)"-"$commit
  fi

  echo $tag

  docker build -t nicklecannon/$1:$tag .
  docker push nicklecannon/$1:$tag

  if [ $branch == "master" ]; then
    docker tag nicklecannon/$1:$tag nicklecannon/$1:latest
    docker push nicklecannon/$1:latest
  fi

  cd ..
}

docker login
deploy frontend
deploy master
deploy slave
