FROM xqdocker/ubuntu-nginx
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs
 
# RUN npm install webpack -g
# RUN cd /data/www
# RUN npm install --save-dev webpack webpack-cli
# RUN chmod -R 777 node_modules
# RUN npm install --save-dev vue-loader vue-template-compiler vue-style-loader css-loader