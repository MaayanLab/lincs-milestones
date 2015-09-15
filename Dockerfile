FROM library/node:0.10

RUN apt-get update && apt-get install -y npm git

WORKDIR /home

EXPOSE 8081

CMD git clone -b cards https://github.com/MaayanLab/lincs-milestones.git \
	&& cd lincs-milestones \
	&& npm install \
	&& npm install -g bower \
	&& bower -F install --allow-root \
	&& node app.js

