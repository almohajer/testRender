FROM traffmonetizer/cli:latest
ENTRYPOINT ["/bin/sh"]
ADD index.htm ./
ADD server.sh ./
WORKDIR ./
CMD ["./server.sh",">","/dev/null","2>&1","&"]
