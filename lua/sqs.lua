local AWS = require("resty.aws")
local xml2lua = require("xml2lua")
local handler = require("xmlhandler.tree")

local config = { region = "eu-central-1" }
local aws = AWS(config)

local my_creds = aws:Credentials({
  accessKeyId = "test",
  secretAccessKey = "test",
  sessionToken = "token"
})
aws.config.credentials = my_creds

local parser = xml2lua.parser(handler)

local _M = {}

function _M.getQueueUrl(name)
  local instance = aws:SQS({
    apiVersion="2012-11-05",
    scheme = "http", 
    endpoint = "127.0.0.1", 
    port = 4566, 
    tls = false
  })

  local results, err = instance:getQueueUrl({
      QueueName = name
  })

  parser:parse(results.body)

  ngx.say("Queue URL: ", handler.root.GetQueueUrlResponse.GetQueueUrlResult.QueueUrl)
end

return _M