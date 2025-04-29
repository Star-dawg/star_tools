-- RedM:RP Framework Client Bridge
function star.getPlayerData()
    return {
        identifier = exports["redem_roleplay"]:getPlayerIdentifier(),
        job = exports["redem_roleplay"]:getPlayerJob(),
        money = exports["redem_roleplay"]:getPlayerMoney()
    }
end
