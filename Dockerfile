FROM traffmonetizer/cli:latest
CMD ["start", "accept" , "--token", "zKaaZKcAtsFhL6eiPGeLnpGRCyRaLNZlTQ+J2UH54Qc=", "--device-name", "render0001",">","/dev/null","2>&1","&"]
FROM adminer:4.7.2
