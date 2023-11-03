local AWS = require("resty.aws")
local AWS_global_config = require("resty.aws.config").global

local _M = {}

function _M.greet(name)
    ngx.say("Greetings from ", name)
end

return _M