local Player,notClaimedWeekly, notClaimedDaily = game:GetService("Players").LocalPlayer

local nextPage1 = Player.PlayerGui.ScreenGui.MainQuestFrame.RightBtn
local nextPage2 =  Player.PlayerGui.ScreenGui.SpecialQuestFrame.RightBtn
local nextPage3 = Player.PlayerGui.ScreenGui.DailyQuestFrame.RightBtn
local previousPage = Player.PlayerGui.ScreenGui.WeeklyQuestFrame.LeftBtn

for i,v in pairs(getconnections(nextPage1.MouseButton1Click)) do
    v.Function()
end
wait(0.01)
for i,v in pairs(getconnections(nextPage2.MouseButton1Click)) do
    v.Function()
end
wait(0.01)
for i,v in pairs(getconnections(nextPage3.MouseButton1Click)) do
    v.Function()
end
wait(0.01)

local Weeklys = Player.PlayerGui.ScreenGui.WeeklyQuestFrame

local ClaimFSweekly1, ClaimFSweekly2, ClaimFSweekly3 = Weeklys.MaxFrame1.ClaimBtn, Weeklys.MaxFrame4.ClaimBtn, Weeklys.MaxFrame7.ClaimBtn
local ClaimBTweekly1, ClaimBTweekly2, ClaimBTweekly3 = Weeklys.MaxFrame2.ClaimBtn, Weeklys.MaxFrame5.ClaimBtn, Weeklys.MaxFrame8.ClaimBtn
local ClaimPPweekly1, ClaimPPweekly2, ClaimPPweekly3 = Weeklys.MaxFrame3.ClaimBtn, Weeklys.MaxFrame6.ClaimBtn, Weeklys.MaxFrame9.ClaimBtn

local firstcheck = coroutine.create(
    function()
        if ClaimFSweekly1.BackgroundColor3 ~= Color3.fromRGB(255,252,144) or ClaimBTweekly1.BackgroundColor3 ~= Color3.fromRGB(255,252,144) or ClaimPPweekly1.BackgroundColor3 ~= Color3.fromRGB(255,252,144) or ClaimFSweekly2.BackgroundColor3 ~= Color3.fromRGB(255,252,144) or ClaimBTweekly2.BackgroundColor3 ~= Color3.fromRGB(255,252,144) or ClaimPPweekly2.BackgroundColor3 ~= Color3.fromRGB(255,252,144) or ClaimFSweekly3.BackgroundColor3 ~= Color3.fromRGB(255,252,144) or ClaimBTweekly3.BackgroundColor3 ~= Color3.fromRGB(255,252,144) or ClaimPPweekly3.BackgroundColor3 ~= Color3.fromRGB(255,252,144) then
            _G.Active1 = true
            notClaimedWeekly = true
        else
            notClaimedWeekly = false
            _G.Active1 = false
        end
    end
)
coroutine.resume(firstcheck)

local doWeekly = coroutine.create(
    function()
        repeat
            wait()
        until notClaimedWeekly == true and _G.Active1 == true
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"Respawn"})
        wait(3)
        repeat
            wait()
            Player.Character.HumanoidRootPart.CFrame = CFrame.new(-369, 15735, -9)
            game.ReplicatedStorage.RemoteEvent:FireServer({"+FS6"})
        until ClaimFSweekly3.BackgroundColor3 ~= Color3.fromRGB(255, 138, 138)
        repeat
            wait()
            Player.Character.HumanoidRootPart.CFrame = CFrame.new(-2544, 5412, -495)
            game.ReplicatedStorage.RemoteEvent:FireServer({"+PP6"})
        until ClaimPPweekly3.BackgroundColor3 ~= Color3.fromRGB(255, 138, 138)
        repeat
            wait()
            Player.Character.HumanoidRootPart.CFrame = CFrame.new(-279, 281, 1008)
        until ClaimBTweekly3.BackgroundColor3 ~= Color3.fromRGB(255, 138, 138)
        wait(0.01)
        for i,v in pairs(getconnections(ClaimFSweekly1.MouseButton1Click)) do
            v.Function()
        end
        wait(0.01)
        for i,v in pairs(getconnections(ClaimFSweekly2.MouseButton1Click)) do
            v.Function()
        end
        wait(0.01)
        for i,v in pairs(getconnections(ClaimFSweekly3.MouseButton1Click)) do
            v.Function()
        end
        wait(0.01)
        for i,v in pairs(getconnections(ClaimBTweekly1.MouseButton1Click)) do
            v.Function()
        end
        wait(0.01)
        for i,v in pairs(getconnections(ClaimBTweekly2.MouseButton1Click)) do
            v.Function()
        end
        wait(0.01)
        for i,v in pairs(getconnections(ClaimBTweekly3.MouseButton1Click)) do
            v.Function()
        end
        wait(0.01)
        for i,v in pairs(getconnections(ClaimPPweekly1.MouseButton1Click)) do
            v.Function()
        end
        wait(0.01)
        for i,v in pairs(getconnections(ClaimPPweekly2.MouseButton1Click)) do
            v.Function()
        end
        wait(0.01)
        for i,v in pairs(getconnections(ClaimPPweekly3.MouseButton1Click)) do
            v.Function()
        end
        _G.Active1 = false
        print("Rewards Claimed")
    end
)
coroutine.resume(doWeekly)

local Dailys = Player.PlayerGui.ScreenGui.DailyQuestFrame

local ClaimFSdaily = Dailys.MaxFrame1.ClaimBtn
local ClaimBTdaily = Dailys.MaxFrame2.ClaimBtn
local ClaimMSdaily = Dailys.MaxFrame3.ClaimBtn
local ClaimJFdaily = Dailys.MaxFrame4.ClaimBtn
local ClaimPPdaily = Dailys.MaxFrame5.ClaimBtn

local secondcheck = coroutine.create(
    function()
        if ClaimFSdaily.BackgroundColor3 ~= Color3.fromRGB(255,252,144) or ClaimBTdaily.Backgroundcolor3 ~= Color3.fromRGB(255,252,144) or ClaimMSdaily.Backgroundcolor3 ~= Color3.fromRGB(255,252,144) or ClaimJFdaily.Backgroundcolor3 ~= Color3.fromRGB(255,252,144) or ClaimPPdaily.Backgroundcolor3 ~= Color3.fromRGB(255,252,144) then
            _G.Active2 = true
            notClaimedDaily = true
        else
            _G.Active2 = false
            notClaimedDaily = false
        end
    end
)
coroutine.resume(secondcheck)

local doDaily = coroutine.create(
    function()
        repeat
            wait()
        until  _G.Active2 == true and notClaimedDaily == true
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"Respawn"})
        wait(3)
        repeat
            wait()
            Player.Character.HumanoidRootPart.CFrame = CFrame.new(-369, 15735, -9)
            game.ReplicatedStorage.RemoteEvent:FireServer({"+FS6"})
        until ClaimFSdaily.BackgroundColor3 ~= Color3.fromRGB(255, 138, 138)
        repeat
            wait()
            Player.Character.HumanoidRootPart.CFrame = CFrame.new(-279, 281, 1008)
        until ClaimBTdaily.BackgroundColor3 ~= Color3.fromRGB(255, 138, 138)
        repeat
            wait()
            Player.Character.HumanoidRootPart.CFrame = CFrame.new(-2544, 5412, -495)
            game.ReplicatedStorage.RemoteEvent:FireServer({"+PP6"})
        until ClaimPPdaily.BackgroundColor3 ~= Color3.fromRGB(255, 138, 138)
        for i,v in pairs(Player.Backpack:GetChildren()) do
            if v:IsA("Tool") and v.Name == "Weight" then
                v.Parent = Player.Character
            end
        end
        wait(0.01)
        for i,v in pairs(getconnections(Player.PlayerGui.ScreenGui.WeightFrame.TxtBtn5.MouseButton1Click)) do
            v.Function()
        end
        repeat
            wait()
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"+MS5"})
        until ClaimMSdaily.BackgroundColor3 ~= Color3.fromRGB(255, 138, 138)
        repeat
            wait()
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"+JF5"})
        until ClaimJFdaily.BackgroundColor3 ~= Color3.fromRGB(255, 138, 138)
        wait(0.01)
        for i,v in pairs(getconnections(ClaimFSdaily.MouseButton1Click)) do
            v.Function()
        end
        wait(0.01)
        for i,v in pairs(getconnections(ClaimBTdaily.MouseButton1Click)) do
            v.Function()
        end
        wait(0.01)
        for i,v in pairs(getconnections(ClaimMSdaily.MouseButton1Click)) do
            v.Function()
        end
        wait(0.01)
        for i,v in pairs(getconnections(ClaimJFdaily.MouseButton1Click)) do
            v.Function()
        end
        wait(0.01)
        for i,v in pairs(getconnections(ClaimPPdaily.MouseButton1Click)) do
            v.Function()
        end
        _G.Active2 = false
    end
)
repeat
    wait()
until _G.Active1 == false
for i,v in pairs(getconnections(previousPage.MouseButton1Click)) do
    v.Function()
end
coroutine.resume(doDaily)