-- VORP Client Notifications
local Core = exports.vorp_core:GetCore()

function star.notifyLeft(title, subtitle, dict, icon, duration, color)
    Core.NotifyLeft(title or "Title", subtitle or "Subtitle", dict or "generic_textures", icon or "tick", duration or 4000, color or "COLOR_WHITE")
end

function star.notifyTip(title, subtitle, duration)
    Core.NotifyTip(title or "Tip", subtitle or "Subtitle", duration or 4000)
end

function star.notifyCenter(text, duration)
    Core.NotifyCenter(text or "Center Text", duration or 4000)
end

function star.notifyObjective(text, duration)
    Core.NotifyObjective(text or "Objective", duration or 4000)
end

function star.notifySimpleTop(title, subtitle, duration)
    Core.NotifySimpleTop(title or "Top Title", subtitle or "Subtitle", duration or 4000)
end
