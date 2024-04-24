local display = false

function SetDisplay(bool)
    display = bool
    SetNuiFocus(false, false)
    local randomMessage = Config.Messages[math.random(1, #Config.Messages)]
    SendNUIMessage({
        type = "dfgdfgdfgdfgdfg",
        status = bool,
        Test = randomMessage
    })
end

RegisterNUICallback("exit", function(data)
    SetDisplay(false)
end)

Citizen.CreateThread(function()
    while true do
        SetDisplay(true)
        Citizen.SetTimeout(3000, function()
            SetDisplay(false)
        end)
        Citizen.Wait(10000)
    end
end)