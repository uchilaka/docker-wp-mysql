FROM mysql/mysql-server:5.7
#FROM mysql:latest
#FROM mysql/mysql-server:5.6

RUN groupadd admin 

# setup init user
RUN useradd --user-group --create-home --shell /bin/bash localadmin &&\
    usermod -aG admin localadmin && chown -R localadmin:localadmin /home/localadmin

#ENV HOME=/home/localadmin

# @WARNING Be wary of changing the WORKDIR
# Bundle app source 
#COPY . /usr/src/app
#
#WORKDIR /usr/src/app 

# Housekeeping - Not working: no apt, aptitude or apt-get. Not sure what OS is running.
#RUN apt-get update && apt-get upgrade -y && apt autoremove -y

EXPOSE 3306

# CMD ["./bin/launch"]