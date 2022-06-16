From ubunt:21.10
Label maintainer ="Anita"

RUN apt-get ubdate \
	&& apt-get install -y apache2
	
COPY html/* /var/www/html/*

WORKDIR /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80