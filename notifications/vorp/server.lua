-- VORP Server Notifications
local Core = exports.vorp_core:GetCore()

function star.notifyLeft(source, title, subtitle, dict, icon, duration, color)
    Core.NotifyLeft(source, title, subtitle, dict, icon, duration or 4000, color or "COLOR_WHITE")
end

function star.notifyTip(source, title, duration)
    Core.NotifyTip(source, title, duration or 4000)
end

function star.notifyCenter(source, text, duration)
    Core.NotifyCenter(source, text, duration or 4000)
end

function star.notifyObjective(source, text, duration)
    Core.NotifyObjective(source, text, duration or 4000)
end

function star.notifySimpleTop(source, title, subtitle, duration)
    Core.NotifySimpleTop(source, title, subtitle, duration or 4000)
end

function star.notifyAdvanced(source, title, subtitle, dict, icon, duration, color)
    Core.NotifyAdvanced(source, title, subtitle, dict, icon, duration or 4000, color or "COLOR_WHITE")
end

function star.notifyRightTip(source, title, subtitle, duration)
    Core.NotifyRightTip(source, title, subtitle, duration or 4000)
end

function star.notifyTop(source, title, subtitle, duration)
    Core.NotifyTop(source, title, subtitle, duration or 4000)
end

function star.notifyBottomRight(source, title, subtitle, duration)
    Core.NotifyBottomRight(source, title, subtitle, duration or 4000)
end

function star.notifyFail(source, text, duration)
    Core.NotifyFail(source, text, duration or 4000)
end

function star.notifyDead(source, text, duration)
    Core.NotifyDead(source, text, duration or 4000)
end

function star.notifyWarning(source, title, subtitle, duration)
    Core.NotifyWarning(source, title, subtitle, duration or 4000)
end

function star.notifyLeftRank(source, title, subtitle, dict, icon, rank, xp, maxXp, duration, color)
    Core.NotifyLeftRank(source, title, subtitle, dict, icon, rank, xp, maxXp, duration or 4000, color or "COLOR_WHITE")
end
