-- Custom Framework Server Bridge
function star.getPlayerData(source)
    return {
        identifier = "unknown",
        job = "none",
        money = 0
    }
end

function star.addMoney(source, amount)
    print("[StarTools] addMoney called: " .. amount)
end

function star.removeMoney(source, amount)
    print("[StarTools] removeMoney called: " .. amount)
end