fx_version 'cerulean'
description 'APP Template for AV Laptop'
author 'Avilchiis'
version '1.0.0'
lua54 'yes'
games {
'gta5'
}

ui_page "ui/dist/index.html"

client_scripts {
'client/**/*.lua',
}

files {
"ui/dist/**/*",
}

dependencies {
'av_laptop',
'av_apps'
}