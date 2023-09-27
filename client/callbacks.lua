RegisterNUICallback('testEvent', function(data,cb)
    TriggerEvent('av_laptop:notificationUI',"testEvent got triggered @ app_template/client/callbacks.lua D:", "success", appLabel)
    cb('ok')
end)