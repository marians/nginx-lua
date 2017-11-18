# nginx-lua

Attempt to create an nginx Docker image with LUA support.

Current status: fails.

How to reproduce:

```
git clone https://github.com/marians/nginx-lua.git
cd nginx-lua
docker build -t nginx-lua .
docker run --rm -ti nginx-lua
```

Currently this yields

```
nginx: [emerg] unknown directive "lua_shared_dict" in /etc/nginx/nginx.conf:1
```

The following packages are installed during the `docker build`:

```
(1/6) Installing pcre (8.41-r0)
(2/6) Installing nginx (1.12.2-r0)
(3/6) Installing nginx-mod-devel-kit (1.12.2-r0)
(4/6) Installing libgcc (6.3.0-r4)
(5/6) Installing luajit (2.1.0_beta3-r0)
(6/6) Installing nginx-mod-http-lua (1.12.2-r0)
```
