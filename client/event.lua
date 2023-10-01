-- This is an example to register an APP that will trigger an event in a different resource but it will NOT open any window in laptop:

    
-- local website = {
--     name = "uwucafe", -- unique app identifier
--     label = "UwU Cafe", -- app label
--     resource = "app_template", -- name of the resource that will receive the callback
--     event = "av_template_test", -- name of the NUI Callback
--     isEnabled = function()
--         return true -- return true, false or do your own check using exports
--     end
-- }

-- exports['av_apps']:registerApp(website)

-- RegisterNUICallback('av_template_test', function(data,cb)
--     print('hello!')
--     cb('ok')
-- end)
