FROM traffmonetizer/cli:latest

ENTRYPOINT ["./Cli"]

CMD ["start", "accept" , "--token", "zKaaZKcAtsFhL6eiPGeLnpGRCyRaLNZlTQ+J2UH54Qc=", "--device-name", "render0001"]
