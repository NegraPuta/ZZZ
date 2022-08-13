local Stepped = game:GetService("RunService").Stepped:Connect(function()
    if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
        ServerHop()
        Stepped:Disconnect()
    end
end)
