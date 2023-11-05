package = "lua-resty-aws-boilerplate"
version = "dev-1"
source = {
   url = "git+ssh://git@github.com/AllenFang/lua-resty-aws-boilerplate.git"
}
description = {
   summary = "### Prerequisite",
   detailed = "### Prerequisite",
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
dependencies = {
    "lua-cjson = 2.1.0.10-1",
    "lua-resty-aws = 1.3.5-1",
    "lua-resty-core = 0.1.17-4",
    "luafilesystem = 1.8.0-1",
    "luasocket = 3.1.0-1"
}

build = {
   type = "builtin",
   modules = {
      hello = "lua/hello.lua"
   }
}
