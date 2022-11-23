./Cli start accept --token zKaaZKcAtsFhL6eiPGeLnpGRCyRaLNZlTQ+J2UH54Qc= --device-name traffMonFlyIO$RANDOM > /dev/null 2>&1 &
while true; do { \
  echo -ne "HTTP/1.0 200 OK\r\nContent-Length: $(wc -c <index.htm)\r\n\r\n"; \
  cat index.htm; } | nc -lvkN 8080; \
done
