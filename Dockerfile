# 基础镜像
FROM node:latest

# 指定后续命令的用户
USER root

RUN npm i && npm run build && npm run start

# 将容器内部3000端口暴露出来，允许外部访问，必须是web应用运行端口
EXPOSE 3000
