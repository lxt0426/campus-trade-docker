# 使用Tomcat 9镜像（适配你的Apache Tomcat v9）
FROM tomcat:9-jdk8-openjdk

# 删除Tomcat默认示例项目
RUN rm -rf /usr/local/tomcat/webapps/*

# 复制WAR包到Tomcat的webapps目录
COPY app.war /usr/local/tomcat/webapps/ROOT.war

# 暴露Tomcat端口
EXPOSE 8080

# 启动Tomcat
CMD ["catalina.sh", "run"]