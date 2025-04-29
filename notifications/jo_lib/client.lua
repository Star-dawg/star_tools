-- jo_lib Client Notifications
function star.notifyLeft(title, subtitle, dict, icon, duration, color)
    TriggerEvent('jo_lib:notify', title .. " - " .. (subtitle or ""), color or "info")
end

function star.notifyTip(title, subtitle, duration)
    TriggerEvent('jo_lib:notify', title .. " - " .. (subtitle or ""), "info")
end

function star.notifyCenter(text, duration)
    TriggerEvent('jo_lib:notify', text, "info")
end

function star.notifyObjective(text, duration)
    TriggerEvent('jo_lib:notify', text, "success")
end

function star.notifySimpleTop(title, subtitle, duration)
    TriggerEvent('jo_lib:notify', title .. " - " .. (subtitle or ""), "info")
end
