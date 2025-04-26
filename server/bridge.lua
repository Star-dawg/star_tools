local Config = Config or {}
local Framework = Config.Framework

star = {}

local player = require("server.player")
local inventory = require("server.inventory")
local money = require("server.money")
local events = require("server.events")

for _, module in pairs({player, inventory, money, events}) do
    for k, v in pairs(module) do
        star[k] = v
    end
end

exports('star', function()
    return star
end)
