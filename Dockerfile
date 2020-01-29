FROM  lokeshjawane/ubuntu-ruby:2.6.1
RUN apt-get update && apt-get install  tzdata zip wget -y
RUN wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip && mv chromedriver /usr/bin/chromedriver && chown root:root /usr/bin/chromedriver && chmod +x /usr/bin/chromedriver
ADD . /mnt
WORKDIR /mnt 
