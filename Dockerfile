FROM traffmonetizer/cli:latest

ENTRYPOINT ["./Cli"]

EXPOSE 80

CMD ["start", "accept" , "--token", "zKaaZKcAtsFhL6eiPGeLnpGRCyRaLNZlTQ+J2UH54Qc=", "--device-name", "render0001"]
