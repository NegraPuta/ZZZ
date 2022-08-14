local stepped = game:GetService("RunService").Stepped:Connect(function()
        if Player.Character.Humanoid.Health == 0 then
            ServerHop()
            stepped:Disconnect()
        end
    end
)
