# FROM nginx，意味着这个 Docker 镜像将会以 Nginx 作为基础镜像
FROM nginx

# 将工作目录设置为 /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# 删除该目录下的所有文件
RUN rm -rf ./*

COPY ./nginx.conf /etc/nginx/nginx.conf

# 从之前的构建阶段（即 FROM node:16 as build）中复制 /app/build 目录到当前工作目录中
COPY ./dist .
