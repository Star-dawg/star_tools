-- RSG Server Notifications
function star.notifyLeft(source, title, subtitle, dict, icon, duration, color)
    local text = title .. " - " .. (subtitle or "")
    TriggerClientEvent('RSGCore:Notify', source, text, color or "primary", duration or 4000)
end

function star.notifyTip(source, title, subtitle, duration)
    local text = title .. " - " .. (subtitle or "")
    TriggerClientEvent('RSGCore:Notify', source, text, "inform", duration or 4000)
end

function star.notifyCenter(source, text, duration)
    TriggerClientEvent('RSGCore:Notify', source, text, "inform", duration or 4000)
end

function star.notifyObjective(source, text, duration)
    TriggerClientEvent('RSGCore:Notify', source, text, "success", duration or 4000)
end

function star.notifySimpleTop(source, title, subtitle, duration)
    local text = title .. " - " .. (subtitle or "")
    TriggerClientEvent('RSGCore:Notify', source, text, "primary", duration or 4000)
end
