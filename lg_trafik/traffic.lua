local config = {
        pedFrequency = 2.0, -- hvor mange peds der skal gå rundt :)
        trafficFrequency = 2.0 -- hvor meget traffik der skal være :)
}

citizen.CreateThread(function()
    while true do
            Citizen.Wait(0)
            SetPedDensityMultiplierThisFrame(config.pedFrequency) 
            SetScenarioPedDensityMultiplierThisFrame(config.pedFrequency, config.pedFrequency)

            SetRandomVehicleDensityMultiplierThisFrame(config.trafficFrequency)
            SetParkedVehicleDensityMultiplierThisFrame(config.trafficFrequency)
            SetVehicleDensityMultiplierThisFrame(config.trafficFrequency)
        end
end)