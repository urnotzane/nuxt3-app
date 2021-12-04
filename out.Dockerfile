# 基础镜像
FROM bitnami/node:16

# 指定后续命令的用户
USER root

# 定义工作目录
WORKDIR /usr/src/app

# 将本地代码复制到工作目录内
COPY . ./

# 将容器内部3000端口暴露出来，允许外部访问，必须是web应用运行端口
EXPOSE 3000

ENTRYPOINT ["node", "./server/index.mjs" ]