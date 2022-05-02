# 22-05-docker-test-react


## Command

docker build -f Dockerfile.dev . -t unchaptered/docker-react-app

docker run -p 3000:3000 unchaptered/docker-react-app

docker run -it -p 3000:3000 -v /usr/src/app/node_modules -v ${pwd}:/usr/src/app unchaptered/docker-react-app 

docker run -it -p 3000:3000 -v /usr/src/app/node_modules -v ${pwd}:/usr/src/app unchaptered/docker-react-app -e CHOKIDAR_USEPOLLING=false

docker run -it -p 3000:3000 -v /usr/src/app/node_modules -v ${pwd}:/usr/src/app unchaptered/docker-react-app -e CHOKIDAR_USEPOLLING=true

docker run -it --rm -v /usr/src/app/node_modules -v ${pwd}:/usr/src/app unchaptered/docker-react-app -e CHOKIDAR_USEPOLLING=true sample:dev

### volume 이 미작동하는 경우

Windows 운영체제에서 react 에 volume 으로 watch 를 하려면, Dockerfile.* 에 다음의 환경변수를 넣어줘야 합니다.

ENV CHOKIDAR_USEPOLLING=true