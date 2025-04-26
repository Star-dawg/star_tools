star = {}

local animation = require("client.animation")
local notify = require("client.notify")
local ui = require("client.ui")
local menu = require("client.menu")

for _, mod in pairs({animation, notify, ui, menu}) do
    for k, v in pairs(mod) do
        star[k] = v
    end
end
