-- RSG Client Notifications
function star.notifyLeft(title, subtitle, dict, icon, duration, color)
    local text = title .. " - " .. (subtitle or "")
    TriggerEvent('RSGCore:Notify', text, color or "primary", duration or 4000)
end

function star.notifyTip(title, subtitle, duration)
    local text = title .. " - " .. (subtitle or "")
    TriggerEvent('RSGCore:Notify', text, "inform", duration or 4000)
end

function star.notifyCenter(text, duration)
    TriggerEvent('RSGCore:Notify', text, "inform", duration or 4000)
end

function star.notifyObjective(text, duration)
    TriggerEvent('RSGCore:Notify', text, "success", duration or 4000)
end

function star.notifySimpleTop(title, subtitle, duration)
    local text = title .. " - " .. (subtitle or "")
    TriggerEvent('RSGCore:Notify', text, "primary", duration or 4000)
end
