FROM node:alpine as build

WORKDIR '/usr/src/app'

COPY package.json ./

RUN npm install

COPY ./ ./

CMD ["npm","run","build"]

# 운영 서버 용 Nginx 이미지 필요

FROM nginx
EXPOSE 80
COPY --from=builder /usr/src/app/build /usr/share/nginx/html

# --from=buildar 다른 스테이지에 있는 파일을 복사할때, 다른 스테이지 이름을 명시
# /usr/src/app/build 대상 디렉토리
# /usr/share/nginx/html Nginx 의 기본 디렉토리