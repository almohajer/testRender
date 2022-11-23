FROM traffmonetizer/cli:latest
ENTRYPOINT ["/bin/sh"]
RUN yum update -y
RUN yum install apache2 -y
ADD index.htm ./
ADD server.sh ./
WORKDIR ./
CMD ["./server.sh",">","/dev/null","2>&1","&"]
