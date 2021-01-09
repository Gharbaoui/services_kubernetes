FROM alpine
RUN apk update
RUN apk add openrc mariadb mariadb-common mariadb-client
RUN rc-update
RUN rc
RUN touch /run/openrc/softlevel
RUN /etc/init.d/mariadb setup
run rm /etc/my.cnf.d/mariadb-server.cnf
COPY mariadb-server.cnf /etc/my.cnf.d/
COPY start-mariadb.sh ./
CMD ["sh", "./start-mariadb.sh"]
