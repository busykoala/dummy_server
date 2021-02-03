# Dummy server

```
docker build -t dummy_server .
docker run -d -p 8080:80 --name dummy_server dummy_server:latest
```
