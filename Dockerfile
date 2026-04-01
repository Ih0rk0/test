FROM alpine:latest
WORKDIR /app
COPY app/hello.sh .
RUN chmod +x hello.sh
CMD ["./hello.sh"]