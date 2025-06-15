local isDead = false

AddEventHandler('esx:onPlayerDeath', function()
    isDead = true
    if Config.NotifyOnDeath then
        TriggerEvent('esx_autorevive:notify', 'Vais ser revivido automaticamente em ' .. (Config.ReviveDelay / 1000) .. ' segundos.')
    end
    TriggerServerEvent('esx_autorevive:server')
end)

RegisterNetEvent('esx_autorevive:notify')
AddEventHandler('esx_autorevive:notify', function(msg)
    ESX.ShowNotification(msg)
end)

RegisterNetEvent('esx_autorevive:revived')
AddEventHandler('esx_autorevive:revived', function()
    if Config.NotifyOnRevive then
        ESX.ShowNotification('Foste revivido automaticamente!')
    end
end)

-- Reset isDead flag quando revivido
RegisterNetEvent('esx_ambulancejob:revive')
AddEventHandler('esx_ambulancejob:revive', function()
    isDead = false
end)
