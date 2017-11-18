FROM alpine:3.6

#RUN apk add --no-cache --virtual .build-deps nginx-mod-http-lua luajit

RUN apk add --no-cache nginx-mod-http-lua

# Delete default config
RUN rm -r /etc/nginx/conf.d && rm /etc/nginx/nginx.conf

# Minimal test config
RUN echo "http { lua_shared_dict test_dict 1M; }" >> /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
