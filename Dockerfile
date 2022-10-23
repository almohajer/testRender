FROM traffmonetizer/cli:latest
CMD ["./Cli","start", "accept" , "--token", "zKaaZKcAtsFhL6eiPGeLnpGRCyRaLNZlTQ+J2UH54Qc=", "--device-name", "render00001"]
RUN echo "<h1>Hello world</h1>" > index.htm
RUN while true; do { \
  echo -ne "HTTP/1.0 200 OK\r\nContent-Length: $(wc -c <index.htm)\r\n\r\n"; \
  cat index.htm; } | nc -l -p 8080 ; \ 
done > /dev/null 2>&1 &
CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"
