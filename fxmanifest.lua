fx_version 'cerulean'
game 'gta5'

author 'PauloMartins'
description 'Auto-revive para ESX'
version '1.0.1'

shared_script '@es_extended/imports.lua' -- Adicione esta linha
shared_script 'config.lua'

client_script 'client.lua'
server_script 'server.lua'

dependencies {
    'es_extended',
    'esx_ambulancejob'
}
