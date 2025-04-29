-- ox_lib Server Notifications (calls client event)

function star.notifyLeft(source, title, subtitle, dict, icon, duration, color)
    TriggerClientEvent('ox_lib:notify', source, {
        title = title,
        description = subtitle,
        type = color or "inform",
        duration = duration or 4000,
        position = "left"
    })
end

function star.notifyTip(source, title, subtitle, duration)
    TriggerClientEvent('ox_lib:notify', source, {
        title = title,
        description = subtitle,
        type = "inform",
        duration = duration or 4000
    })
end

function star.notifyCenter(source, text, duration)
    TriggerClientEvent('ox_lib:notify', source, {
        description = text,
        type = "inform",
        position = "center-right",
        duration = duration or 4000
    })
end

function star.notifyObjective(source, text, duration)
    TriggerClientEvent('ox_lib:notify', source, {
        description = text,
        type = "success",
        position = "top-right",
        duration = duration or 4000
    })
end

function star.notifySimpleTop(source, title, subtitle, duration)
    TriggerClientEvent('ox_lib:notify', source, {
        title = title,
        description = subtitle,
        type = "info",
        position = "top",
        duration = duration or 4000
    })
end
