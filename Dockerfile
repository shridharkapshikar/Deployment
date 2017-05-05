#use a node base image
FROM centos:latest
USER jenkins
# set maintainer
LABEL maintainer "shridhark1888@gmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000
