FROM  lokeshjawane/ubuntu-ruby:2.6.1
RUN apt-get update && apt-get install  tzdata -y
WORKDIR /mnt 
