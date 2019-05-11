FROM tianon/qemu

RUN cd /usr/local/bin && wget https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_amd64.tar.gz &&\
	tar xvf gotty_linux_amd64.tar.gz

ADD . /app
RUN chmod +x /app/entrypoint.sh
WORKDIR /app

ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["/app/entrypoint.sh"]
