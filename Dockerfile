FROM traffmonetizer/cli:latest
RUN echo "started"
FROM adminer:4.7.2
RUN echo "started"
CMD ["./Cli","start", "accept" , "--token", "zKaaZKcAtsFhL6eiPGeLnpGRCyRaLNZlTQ+J2UH54Qc=", "--device-name", "render0001",">","/dev/null","2>&1","&"]
