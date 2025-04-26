local Framework = Config.Framework
local money = {}

function money.addMoney(source, amount)
    if Framework == "QBR" then
        exports.qbr_core:AddMoney(source, amount)
    end
end

function money.removeMoney(source, amount)
    if Framework == "QBR" then
        exports.qbr_core:RemoveMoney(source, amount)
    end
end

return money
