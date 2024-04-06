
# Base image: this is the image will start from
FROM centos:7


# Description
LABEL Description="Docker to containerize an apache app"


#Update all  packages
RUN yum -y update

# Install Apache on the container
RUN yum install -y httpd


# Copy the app + dependencies inside the container
COPY index.html /var/www/html

# Port on which the container should listen on
EXPOSE 80

# systemctl start httpd automatically: This cant be override
ENTRYPOINT [ "/usr/sbin/httpd" ]


# Run the  container in the background: This can be override
CMD [ "-D", "FOREGROUND" ]



