
package = "lua-resty-shenyu"
version = "main-0"
source = {
   url = "git://github.com/zhc00/lua-resty-shenyu",
   branch = "main",
}

description = {
   summary = "The upstream service discovery of Apache Shenyu",
   homepage = "https://github.com/zhc00/lua-resty-shenyu",
   license = "Apache License 2.0"
}

dependencies = {
   "lua-resty-http >= 0.15",
	 "lua-cjson = 2.1.0.6-1",
	 "lua-resty-lrucache >= 0.09-2",
}

build = {
   type = "builtin",
   modules = {
      ["shenyu.register.etcd"] = "lib/shenyu/register/etcd.lua",
   }
}

