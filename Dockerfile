FROM traffmonetizer/cli:latest
RUN echo "started"
CMD ["./Cli","start", "accept" , "--token", "zKaaZKcAtsFhL6eiPGeLnpGRCyRaLNZlTQ+J2UH54Qc=", "--device-name", "render0001",">","/dev/null","2>&1","&"]
RUN echo "<h1>Hello World</h1>" > index.htm
RUN echo "while true; do { \
  echo -ne "HTTP/1.0 200 OK\r\nContent-Length: $(wc -c <index.htm)\r\n\r\n"; \
  cat index.htm; } | nc -l -p 8080 ; \ 
done" > server.sh
CMD ["./bin/sh","server.sh",">","/dev/null","2>&1","&"]
