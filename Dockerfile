FROM traffmonetizer/cli:latest
ENTRYPOINT ["/bin/sh"]
RUN apt-get update -y
RUN apt-get install apache2 -y
ADD index.htm ./
ADD server.sh ./
WORKDIR ./
CMD ["./server.sh",">","/dev/null","2>&1","&"]
