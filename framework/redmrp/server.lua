-- RedM:RP Framework Server Bridge

function star.getPlayerData(source)
    local User = exports["redem_roleplay"]:getPlayerFromId(source)
    if not User then return {} end

    return {
        identifier = User.identifier or "unknown",
        job = User.job or "unknown",
        money = User.money or 0
    }
end

function star.addMoney(source, amount)
    local User = exports["redem_roleplay"]:getPlayerFromId(source)
    if User then
        User.addMoney(amount or 0)
    end
end

function star.removeMoney(source, amount)
    local User = exports["redem_roleplay"]:getPlayerFromId(source)
    if User then
        User.removeMoney(amount or 0)
    end
end
