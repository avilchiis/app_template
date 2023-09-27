appName = "app_template" -- unique identifier for the App
appLabel = "App Template" -- app label for laptop
icon = "https://i.imgur.com/DOyr0rA.png" -- app icon

local myApp = {
    name = appName,
    label = appLabel,
    custom = GetCurrentResourceName(), -- no need to modify this
    icon = icon,
    isEnabled = function()
        return true -- return true, false or an export check
    end
}

CreateThread(function()
    while GetResourceState('av_apps') ~= "started" do
        Wait(100)
    end
    registerApp()
end)

function registerApp()
    if myApp then
        exports['av_apps']:registerApp(myApp)
    end
end

AddEventHandler("onResourceStart", function(resource)
    if resource == "av_apps" then
        registerApp()
    end
end)

AddEventHandler('onClientResourceStop', function (resourceName)
  if resourceName == GetCurrentResourceName() then
    exports['av_apps']:removeApp(appName)
  end
end)