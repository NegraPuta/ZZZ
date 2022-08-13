local Stepped = game:GetService("RunService").Stepped:Connect(function()
    if Player.Character.Humanoid.Health == 0 then
        ServerHop()
        Stepped:Disconnect()
    end
end)