# Dummy server

```
docker build -t dummy_server:latest .
# replace <mysecret> with a dummy secret to be exposed
# on the route /secret
docker run -d -p 8080:8000 -e DUMMY_SECRET=<mysecret> --name dummy_server dummy_server:latest
```
