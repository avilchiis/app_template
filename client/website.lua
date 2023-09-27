-- This is just an example on how to add a custom app that displays a website

local website = {
    name = "uwucafe", -- unique app identifier
    label = "UwU Cafe", -- app label
    website = "https://uwucatcafe.com/", --website to embed and display on laptop
    isEnabled = function()
        return true -- return true, false or do your own check using exports
    end
}

exports['av_apps']:registerApp(website)