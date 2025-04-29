-- RedM:RP Notifications Server (Fallback)
function star.notifyLeft(source, title, subtitle, dict, icon, duration, color)
    TriggerClientEvent('chat:addMessage', source, { args = { "[Left]", title .. " - " .. (subtitle or "") } })
end

function star.notifyTip(source, title, subtitle, duration)
    TriggerClientEvent('chat:addMessage', source, { args = { "[Tip]", title .. " - " .. (subtitle or "") } })
end

function star.notifyCenter(source, text, duration)
    TriggerClientEvent('chat:addMessage', source, { args = { "[Center]", text } })
end

function star.notifyObjective(source, text, duration)
    TriggerClientEvent('chat:addMessage', source, { args = { "[Objective]", text } })
end

function star.notifySimpleTop(source, title, subtitle, duration)
    TriggerClientEvent('chat:addMessage', source, { args = { "[SimpleTop]", title .. " - " .. (subtitle or "") } })
end
