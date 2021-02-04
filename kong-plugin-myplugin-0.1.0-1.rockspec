package = "kong-plugin-myplugin"  
version = "0.1.0-1"               
local pluginName = package:match("^kong%-plugin%-(.+)$")

supported_platforms = {"linux", "macosx"}
source = {
  url = "http://github.com/darrenjennings/kong-plugin-tl.git",
  tag = "0.1.0"
}

description = {
  summary = "Kong Plugin - tl",
  license = "MIT"
}

dependencies = {}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}
