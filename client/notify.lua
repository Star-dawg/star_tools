local notify = {}

function notify.sendNotification(msg, type, duration)
    type = type or "info"
    duration = duration or 5000

    if Config.Framework == "VORP" then
        TriggerEvent("vorp:Tip", msg, duration)
    elseif Config.Framework == "REDM" then
        TriggerEvent("redem_roleplay:ShowNotification", msg)
    elseif Config.Framework == "QBR" then
        TriggerEvent("QBR:Notify", msg, type, duration)
    elseif Config.Framework == "RSG" then
        print("[Notify]", msg)
    end
end

RegisterNetEvent("star:notify", function(msg, type, duration)
    notify.sendNotification(msg, type, duration)
end)

return notify
