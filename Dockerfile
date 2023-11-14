FROM amd64/debian:stable-slim
ENV GOTIFY_SERVER_PORT="80"
WORKDIR /app
RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get install -yq \
  tzdata \
  curl \
  ca-certificates \
  && rm -rf /var/lib/apt/lists/*
ADD gotify-app /app/
EXPOSE 80
ENTRYPOINT ["./gotify-app"]
