game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
game.ReplicatedStorage.RemoteEvent:FireServer({"Skill_Invisible", "Start"})
for i, v in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.ScreenGui.MenuBtn.MouseButton1Click)) do
    v.Function()
end
for i, v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
    v:Disable()
end
