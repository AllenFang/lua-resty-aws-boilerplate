# lua-resty-aws-boilerplate
It's a minimal OpenResty setup for `lua-resty-aws` SDK in MacOS(M2 chip). We will provide another OS(eg. Linux) boilerplate soon.    

### Prerequisite

- Lua@5.1
- Luarocks
- OpenResty
- Please understand how to create a hello world in OpenResty https://openresty.org/en/getting-started.html

You can install necessary dependencies by below commend:   

```brew install openresty/brew/openresty luarocks lua@5.1 pcre openssl curl```

### How to use

```bash
git clone git@github.com:AllenFang/lua-resty-aws-boilerplate.git
cd lua-resty-aws-boilerplate
luarocks install lua-resty-aws-boilerplate-dev-1.rockspec
```

### Start
```bash
nginx -p `pwd`/ -c conf/nginx.conf
```
If you have nginx commend, please read: https://openresty.org/en/getting-started.html#start-the-nginx-server

### Stop/Reload
```bash
nginx -s stop
nginx -s reload
```


TBD
- use localstack
- get credential from env
- provide most sqs method
- provide other aws functionality