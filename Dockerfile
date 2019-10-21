#继承自node
FROM node
LABEL name="vue-server"
LABEL version="1.0"
#把当前的文件copy到镜像的app里面
COPY . /app
#指定工作目录
WORKDIR /app
#执行命令
RUN npm install
#向外暴露3009端口
EXPOSE 3009
CMD npm start 