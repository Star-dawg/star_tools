-- QBCore Framework Server Bridge
local QBCore = exports['qb-core']:GetCoreObject()

function star.getPlayerData(source)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return {} end

    return {
        identifier = Player.PlayerData.citizenid,
        job = Player.PlayerData.job.name,
        money = Player.PlayerData.money["cash"] or 0
    }
end

function star.addMoney(source, amount)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player then
        Player.Functions.AddMoney('cash', amount)
    end
end

function star.removeMoney(source, amount)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player then
        Player.Functions.RemoveMoney('cash', amount)
    end
end
