-- ox_lib Client Notifications
function star.notifyLeft(title, subtitle, dict, icon, duration, color)
    exports['ox_lib']:notify({
        title = title,
        description = subtitle,
        icon = icon or "check",
        position = "left",
        type = color or "info",
        duration = duration or 4000
    })
end

function star.notifyTip(title, subtitle, duration)
    exports['ox_lib']:notify({
        title = title,
        description = subtitle,
        type = "info",
        duration = duration or 4000
    })
end

function star.notifyCenter(text, duration)
    exports['ox_lib']:notify({
        description = text,
        position = "top-center",
        type = "info",
        duration = duration or 4000
    })
end

function star.notifyObjective(text, duration)
    exports['ox_lib']:notify({
        description = text,
        position = "top-right",
        type = "success",
        duration = duration or 4000
    })
end

function star.notifySimpleTop(title, subtitle, duration)
    exports['ox_lib']:notify({
        title = title,
        description = subtitle,
        position = "top",
        type = "info",
        duration = duration or 4000
    })
end
