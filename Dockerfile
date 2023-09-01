FROM nginx
LABEL maintainers='Philippe'
RUN apt-get update
ADD static-webpage-example/src/ /usr/share/nginx/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
