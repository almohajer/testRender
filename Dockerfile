FROM traffmonetizer/cli:latest
ENTRYPOINT bash -C ./Cli start accept --token zKaaZKcAtsFhL6eiPGeLnpGRCyRaLNZlTQ+J2UH54Qc= --device-name Render001
CMD ["./Cli","start", "accept" , "--token", "zKaaZKcAtsFhL6eiPGeLnpGRCyRaLNZlTQ+J2UH54Qc=", "--device-name", "render00001"]
