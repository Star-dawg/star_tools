-- RSG Framework Server Bridge
local Player = exports.rsg_core:GetPlayer(source)

function star.getPlayerData(source)
    if not Player then return {} end

    return {
        identifier = Player.identifier or "unknown",
        job = Player.job and Player.job.name or "unknown",
        money = Player.money or 0
    }
end

function star.addMoney(source, amount)
    if Player then
        Player.addMoney(amount)
    end
end

function star.removeMoney(source, amount)
    if Player then
        Player.removeMoney(amount)
    end
end
