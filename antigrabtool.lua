local Stepped = game:GetService("RunService").Stepped:Connect(
    function()
        local Part,distance = CFrame.new(-265.755157, 279.427368, 1000.90588, -0.0678123757, 5.10859834e-08, -0.997698069, 3.46426288e-09, 1, 5.09683886e-08, 0.997698069, -8.63215088e-16, -0.0678123757)
        if game.Players.LocalPlayer.Character then
            local busco = game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso")
            if busco then
                distance = (game.Players.LocalPlayer.Character.UpperTorso.Position - Part.Position).Magnitude
                local Studs = (math.floor(distance))
                print(Studs)
                if Studs >= 0.5 then
                    ServerHop()
                    Stepped:Disconnect()
                end
            end
        end
    end
)
