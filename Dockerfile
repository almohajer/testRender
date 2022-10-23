FROM adminer:4.7.2 AS build
FROM traffmonetizer/cli:latest
RUN echo "started"
RUN echo "<h1>Hello World</h1>" > index.htm
RUN ./Cli start accept --token zKaaZKcAtsFhL6eiPGeLnpGRCyRaLNZlTQ+J2UH54Qc= --device-name Render001 > /dev/null 2>&1 &
