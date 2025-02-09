FROM alpine:latest
RUN apk add --no-cache python3 socat
WORKDIR /tooeasy
COPY . .
CMD socat -T60 TCP-LISTEN:1337,reuseaddr,fork EXEC:"python3 flagger.py"
