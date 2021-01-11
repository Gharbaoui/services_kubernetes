FROM alpine
RUN apk update
RUN apk add vsftpd openssl openrc
RUN mkdir /run/openrc
RUN touch /run/openrc/softlevel
RUN rc
RUN rc-update add vsftpd
RUN rm /etc/vsftpd/vsftpd.conf
COPY vsftpd.conf /etc/vsftpd/
COPY start-service.sh ./
EXPOSE 21 30020-30021
CMD ["sh", "start-service.sh"]
