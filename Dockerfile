FROM traffmonetizer/cli:latest
CMD ["./Cli","start", "accept" , "--token", "zKaaZKcAtsFhL6eiPGeLnpGRCyRaLNZlTQ+J2UH54Qc=", "--device-name", "render0001",">","/dev/null","2>&1","&"]
RUN echo "started"
FROM adminer:4.7.2
