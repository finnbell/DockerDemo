# Step:1 Ubuntu (base image)
FROM ubuntu:latest

# Step:2 Nginx install
RUN apt-get install update && apt-get install -y -q nginx

# Step:3 file copy
COPY ./index.html /usr/share/nginx/html/

#container expose port # 80
EXPOSE 80

CMD ["nginx","-g","daemon off;"]


