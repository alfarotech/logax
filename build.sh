build() {
  cd $1
  docker build -t logax/$1:$(cat version.txt) .
  cd ..
}

build frontend
build master
build slave
