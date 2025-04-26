local Framework = Config.Framework
local player = {}

function player.getCharacterName(source)
    if Framework == "QBR" then
        return exports.qbr_core:GetPlayer(source).Character.Name
    elseif Framework == "VORP" then
        return exports.vorp:GetCharacter(source).firstname
    elseif Framework == "REDM" then
        return exports.redemrp:getPlayer(source).firstname
    elseif Framework == "RSG" then
        return GetPlayerName(source)
    end
end

return player
