-- QBCore Framework Client Bridge
function star.getPlayerData()
    local PlayerData = exports['qb-core']:GetPlayerData()
    return {
        identifier = PlayerData.citizenid,
        job = PlayerData.job.name,
        money = PlayerData.money["cash"] or 0
    }
end
