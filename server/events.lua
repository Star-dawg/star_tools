local Framework = Config.Framework
local events = {}

function events.onPlayerLoaded(source)
    TriggerEvent("star:playerLoaded", source)
end

function events.onCharacterLoaded(source)
    TriggerEvent("star:characterLoaded", source)
end

if Framework == "QBR" then
    RegisterNetEvent("QBR:Client:PlayerLoaded", function()
        local src = source
        events.onPlayerLoaded(src)
    end)

    RegisterNetEvent("QBR:CharacterLoaded", function()
        local src = source
        events.onCharacterLoaded(src)
    end)
end

return events
