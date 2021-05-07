# How to use
```bat
docker run -rm -d ^
    --name ProjectName^
    --cap-add NET_ADMIN --privileged ^
    -p "13389:3389" ^
    -e ANYCONNECT_SERVER=https://enter.example.com/ ^
    -e "ANYCONNECT_USER=DOMAIN\user" ^
    -e ANYCONNECT_PASSWORD=Pa$$w0rd ^
    -e "ANYCONNECT_ARGS=--authgroup='Auth Group Name' --resolve=enter.example.com:1.2.3.4" ^
    -e REMOTE_HOST=192.168.1.100 ^
    vshekun/access-to-server-via-anyconnect
```
