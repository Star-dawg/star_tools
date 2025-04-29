-- Custom Fallback Notifications
function star.notifyLeft(title, subtitle, dict, icon, duration, color)
    print("[StarTools NotifyLeft]", title, subtitle)
end

function star.notifyTip(title, subtitle, duration)
    print("[StarTools NotifyTip]", title, subtitle)
end

function star.notifyCenter(text, duration)
    print("[StarTools NotifyCenter]", text)
end

function star.notifyObjective(text, duration)
    print("[StarTools NotifyObjective]", text)
end

function star.notifySimpleTop(title, subtitle, duration)
    print("[StarTools NotifySimpleTop]", title, subtitle)
end
