local TweenService = game:GetService("TweenService")
local Players = game.Players
local LocalPlayer = game.Players.LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character.Humanoid
local HumanoidRootPart = Character.HumanoidRootPart
local Name = LocalPlayer.Name
local VirtualUser = game:GetService('VirtualInputManager')
local CoreGui = game:GetService("CoreGui")
if game:GetService("CoreGui"):FindFirstChild("RH_Menu") and game:GetService("CoreGui"):FindFirstChild("RH_Toggle") then
    Fluent:ToggleAcrylic(false)
    Fluent:ToggleTransparency(false)
    game:GetService("CoreGui"):FindFirstChild("RH_Menu"):Destroy()
    game:GetService("CoreGui"):FindFirstChild("RH_Toggle"):Destroy()
end

local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
local load = Notification.new("success", "Notification", "Loader Success.", true, 3)
wait(.5)
load:changeBody("Loader Success..")
wait(.5)
load:changeBody("Loader Success...")
wait(.5)
load:changeBody("Loader Success.")
wait(.5)
load:changeBody("Loader Success..")
wait(.5)
load:changeBody("Loader Success...")
wait(.5)

local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZenzeiNo1/RainHub/refs/heads/main/Fluent-Rain-Hub.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Rain Hub 3.0.0 ",
    SubTitle = "by star.nice",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Midnight",
    MinimizeKey = Enum.KeyCode.RightControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "cloud" }),
    Teleport = Window:AddTab({ Title = "Teleport", Icon = "box" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "book" }),
    Cr = Window:AddTab({ Title = "Credit", Icon = "file-box" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local AutoFarmTG = Tabs.Main:AddSection("AutoFarm Toggle")
local AutoFarmBT = Tabs.Main:AddSection("AutoFarm Button")
local AutoFarmAntiTG = Tabs.Main:AddSection("AutoFarm Toggle Anti TP")
local AutoFarmAntiBT = Tabs.Main:AddSection("AutoFarm Button Anti TP")
local TPPlayer = Tabs.Teleport:AddSection("TP Player")
local TP = Tabs.Teleport:AddSection("TP")
local TPNPC = Tabs.Teleport:AddSection("TPNpc/Trainer")
local TPNPCAnti = Tabs.Teleport:AddSection("TPNpc - Use Bypass Anti Tp")
local Addon = Tabs.Misc:AddSection("Addon")
local Bypass = Tabs.Misc:AddSection("Bypass")
local Credit = Tabs.Cr:AddSection("Credit")

local Options = Fluent.Options
local Allplay = {}
local SelectPlayer = nil
for i,v in pairs(Players:GetChildren()) do
    table.insert(Allplay, v.Name)
end

equipitem = function(v)
    if LocalPlayer.Backpack:FindFirstChild(v) then
        local Eq = LocalPlayer.Backpack:FindFirstChild(v)
        Character.Humanoid:EquipTool(Eq)
    end
end

do
    ----- Main -----
    local Toggle = AutoFarmTG:AddToggle("Auto Clean", 
    {
        Title = "Auto Clean", 
        Description = "Fully Auto",
        Default = false,
        Callback = function(v)
        _G.Clean = v
        while _G.Clean do wait(1)
            pcall(function()
                if LocalPlayer.PlayerGui.Main.LabelJob.Text == "" then
                    Notification.new("info", "Notification", "Get Job...", true, 3)
                    local args = {
                    [1] = "Job"
                    }
                    game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                    wait(2)
                    local args = {
                    [1] = "Job"
                    }
                    game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                end

                if LocalPlayer.PlayerGui.Main.LabelJob.Text == "Clean the floors!" then
                    local success = Notification.new("success", "Notification", "Success!!!", true, 3)
                    HumanoidRootPart.Anchored = true
                    local Tw1 = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1715.58521, 4.12662554, -1586.85852, -0.0413668677, -3.96679596e-08, -0.999144018, -5.47444436e-08, 1, -3.74353988e-08, 0.999144018, 5.31489981e-08, -0.0413668677)})
                    local Tw2 = TweenService:Create(HumanoidRootPart, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1720.72473, 4.12662458, -1593.4071, -0.100228146, -1.78955464e-08, -0.99496448, 7.48486926e-08, 1, -2.55260293e-08, 0.99496448, -7.70302151e-08, -0.100228146)})
                    local Tw3 = TweenService:Create(HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1716.89111, 4.12662745, -1608.74658, -0.00232439279, -3.48897018e-08, -0.999997318, 9.10893121e-08, 1, -3.51015252e-08, 0.999997318, -9.1170655e-08, -0.00232439279)})
                    local Tw4 = TweenService:Create(HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1731.56824, 4.12662172, -1624.4646, -0.27096352, -7.4981358e-08, -0.962589622, -5.64646747e-08, 1, -6.20009715e-08, 0.962589622, 3.75523115e-08, -0.27096352)})
                    local Tw5 = TweenService:Create(HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1742.65161, 4.12662888, -1604.37207, -0.00857968535, -9.46922629e-09, -0.999963164, -5.14645837e-09, 1, -9.42541778e-09, 0.999963164, 5.06540188e-09, -0.00857968535)})
                    local Tw6 = TweenService:Create(HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1762.04443, 4.12663412, -1595.16418, -0.129098654, 5.65224241e-08, -0.991631746, 4.83307403e-08, 1, 5.0707321e-08, 0.991631746, -4.13800514e-08, -0.129098654)})
                    local Tw7 = TweenService:Create(HumanoidRootPart, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1758.63147, 4.12663412, -1576.76929, -0.0565072373, -1.52712865e-08, -0.998402178, 1.1656681e-08, 1, -1.59554663e-08, 0.998402178, -1.25396546e-08, -0.0565072373)})
                    local Tw8 = TweenService:Create(HumanoidRootPart, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1739.92322, 4.12663078, -1585.7323, 0.211679071, -2.5104832e-08, -0.977339208, 5.50662307e-08, 1, -1.37602827e-08, 0.977339208, -5.09056228e-08, 0.211679071)})
                    local Tw9 = TweenService:Create(HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1727.11743, 4.12663126, -1576.79944, -0.0586111471, -6.83849777e-08, -0.998280883, -7.12253723e-08, 1, -6.43209503e-08, 0.998280883, 6.73330049e-08, -0.0586111471)})
                    Tw1:Play()
                    wait(10)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["2"].ClickDetector)
                    wait(4)
                    Tw2:Play()
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["9"].ClickDetector)
                    wait(5)
                    Tw3:Play()
                    wait(1.5)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["3"].ClickDetector)
                    wait(5)
                    Tw4:Play()
                    wait(1.5)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["5"].ClickDetector)
                    wait(5)
                    Tw5:Play()
                    wait(1.5)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["4"].ClickDetector)
                    wait(5)
                    Tw6:Play()
                    wait(1.5)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["1"].ClickDetector)
                    wait(5)
                    Tw7:Play()
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["7"].ClickDetector)
                    wait(5)
                    Tw8:Play()
                    wait(1.5)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["8"].ClickDetector)
                    wait(5)
                    Tw9:Play()
                    wait(1.5)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["6"].ClickDetector)
                    wait(7)
                    HumanoidRootPart.Anchored = false
                else
                    local args = {
                    [1] = "Job"
                    }
                    game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                    wait(2)
                    local Cancel = Notification.new("error", "Notification", "Cancel😭", true,3)
                    local args1 = {
                        [1] = "CancelJob"
                    }
                    game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args1))
                end
            end)
        end
    end 
    })

    local Toggle = AutoFarmTG:AddToggle("Auto Delivery", 
    {
        Title = "Auto Delivery", 
        Description = "Fully Auto",
        Default = false,
        Callback = function(v)
        _G.Delivery = v
        while _G.Delivery do wait(1)
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.LabelJob.Text == "" then
                    Notification.new("info", "Notification", "Get Job...", true, 3)
                    local args = {
                    [1] = "Job"
                    }
                    game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                    wait(2)
                    local args = {
                    [1] = "Job"
                    }
                    game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                end
        
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.LabelJob.Text == "Deliver the crate!" then 
                    Notification.new("success", "Notification", "Success!!!", true, 3)
                    HumanoidRootPart.Anchored = true
                    local Tw1 = TweenService:Create(HumanoidRootPart, TweenInfo.new(15, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1709.2572, 4.05218554, -1573.61023, -0.801387548, 5.05635356e-08, -0.598145485, 2.53255372e-08, 1, 5.06030169e-08, 0.598145485, 2.54042707e-08, -0.801387548)})
                    local Tw2 = TweenService:Create(HumanoidRootPart, TweenInfo.new(7.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1428.85095, 3.99999905, -1414.49316, 0.0230026804, -7.12068058e-08, 0.999735415, 1.95005989e-09, 1, 7.11807786e-08, -0.999735415, 3.1219527e-10, 0.0230026804)})
                    local Tw3 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1266.38818, 4, -1490.72571, 0.956693292, -6.76176839e-08, -0.29109785, 4.36354561e-08, 1, -8.88771012e-08, 0.29109785, 7.2325939e-08, 0.956693292)})
                    local Tw4 = TweenService:Create(HumanoidRootPart, TweenInfo.new(15, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1956.29285, 4.05000067, -1648.20532, 0.0304275695, -1.08180709e-09, 0.999536991, 9.74812586e-09, 1, 7.85559062e-10, -0.999536991, 9.71970948e-09, 0.0304275695)})
                    Tw1:Play()
                    wait(17)
                    Tw2:Play()
                    wait(9)
                    Tw3:Play()
                    wait(5)
                    Tw4:Play()
                    wait(17)
                    HumanoidRootPart.Anchored = false
                else
                    local args = {
                    [1] = "Job"
                    }
                    game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
        
                    wait(2)
        
                    Notification.new("error", "Notification", "Cancel😭", true, 3)
                    local args1 = {
                        [1] = "CancelJob"
                    }
                    game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args1))
                end
            end)
        end
    end
    })

    local Toggle = AutoFarmTG:AddToggle("Auto Run", 
    {
        Title = "Auto Run", 
        Description = "Not Fully Auto",
        Default = false,
        Callback = function(v)
        _G.Run = v

        while _G.Run do wait(1)
            pcall(function()
                HumanoidRootPart.Anchored = true
                local Tw1 = TweenService:Create(HumanoidRootPart, TweenInfo.new(7, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Roadworks.GYM:FindFirstChild(1).CFrame})
                local Tw2 = TweenService:Create(HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Roadworks.GYM:FindFirstChild(2).CFrame})
                local Tw3 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Roadworks.GYM:FindFirstChild(3).CFrame})
                local Tw4 = TweenService:Create(HumanoidRootPart, TweenInfo.new(7, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Roadworks.GYM:FindFirstChild(4).CFrame})
                local Tw5 = TweenService:Create(HumanoidRootPart, TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Roadworks.GYM:FindFirstChild(5).CFrame})
                local Tw6 = TweenService:Create(HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Roadworks.GYM:FindFirstChild(6).CFrame})
                local Tw7 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Roadworks.GYM:FindFirstChild(7).CFrame})
                local Tw8 = TweenService:Create(HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Roadworks.GYM:FindFirstChild(8).CFrame})
                local Tw9 = TweenService:Create(HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Roadworks.GYM:FindFirstChild(9).CFrame})
                local Tw10 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Roadworks.GYM:FindFirstChild(10).CFrame})
                local TwBuy = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-2057.35474, 8.37499809, -1643.64722, -0.000155350775, 6.22260359e-08, 1, 6.39641016e-08, 1, -6.22161025e-08, -1, 6.39544382e-08, -0.000155350775)})
                TwBuy:Play()
                wait(10)
                for i,v in pairs(game.Workspace.MapMisc.Purchases.GYM:GetChildren()) do
                    if v.Name == "Roadwork Training" then
                        fireclickdetector(v.ClickDetector)
                    end
                end
                equipitem("Roadwork Training")
                VirtualUser:Button1Down(Vector2.new(981, 488))
                Tw1:Play()
                wait(7)
                Tw2:Play()
                wait(5)
                Tw3:Play()
                wait(4)
                Tw4:Play()
                wait(7)
                Tw5:Play()
                wait(4)
                Tw6:Play()
                wait(3)
                Tw7:Play()
                wait(3)
                Tw8:Play()
                wait(5)
                Tw9:Play()
                wait(5)
                Tw10:Play()
                wait(5)
                HumanoidRootPart.Anchored = false
            end)
        end
    end
    })

    local Toggle = AutoFarmTG:AddToggle("Auto Run In Senkaimon", 
    {
        Title = "Auto Run In Senkaimon", 
        Description = "Not Fully Auto",
        Default = false,
        Callback = function(v)
        _G.AutoSenkaimon = v
        while _G.AutoSenkaimon do wait(1)
            pcall(function()
                HumanoidRootPart.Anchored = true
                local TwBuy = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(4796.24902, -414.92511, 2849.2915, 0.999910474, -2.46492675e-08, 0.0133817066, 2.48082461e-08, 1, -1.17143095e-08, -0.0133817066, 1.20452377e-08, 0.999910474)})
                local Tw2 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(1).CFrame})
                local Tw3 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(2).CFrame})
                local Tw4 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(3).CFrame})
                local Tw5 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(4).CFrame})
                local Tw6 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(5).CFrame})
                local Tw7 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(6).CFrame})
                local Tw8 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(7).CFrame})
                local Tw9 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(8).CFrame})
                local Tw10 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(9).CFrame})
                TwBuy:Play()
                wait(3)
                for i,v in pairs(game.Workspace.MapMisc.Purchases.GYM:GetChildren()) do
                    if v.Name == "Roadwork Training" then
                        fireclickdetector(v.ClickDetector)
                    end
                end
                equipitem("Roadwork Training")
                VirtualUser:Button1Down(Vector2.new(981, 488))
                wait(5)
                Tw1:Play()
                wait(3)
                Tw2:Play()
                wait(4)
                Tw3:Play()
                wait(4)
                Tw4:Play()
                wait(4)
                Tw5:Play()
                wait(4)
                Tw6:Play()
                wait(4)
                Tw7:Play()
                wait(4)
                Tw8:Play()
                wait(4)
                Tw9:Play()
                wait(4)
                Tw1:Play()
                HumanoidRootPart.Anchored = false
                Notification.new("success", "Notification", "Success!!!", true , 3)
            end)
        end
    end
    })

    AutoFarmBT:AddButton({
        Title = "Auto Clean",
        Description = "Fully Auto",
        Callback = function()
            _G.BClean = true
            while _G.BClean do wait(1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.LabelJob.Text == "" then
                        Notification.new("info", "Notification", "Get Job...", true , 3)
                        local args = {
                        [1] = "Job"
                        }
                        game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                        wait(2)
                        local args = {
                        [1] = "Job"
                        }
                        game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                    end

                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.LabelJob.Text == "Clean the floors!" then
                        Notification.new("success", "Notification", "Success!!!", true, 3)
                        HumanoidRootPart.Anchored = true
                        local Tw1 = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1715.58521, 4.12662554, -1586.85852, -0.0413668677, -3.96679596e-08, -0.999144018, -5.47444436e-08, 1, -3.74353988e-08, 0.999144018, 5.31489981e-08, -0.0413668677)})
                        local Tw2 = TweenService:Create(HumanoidRootPart, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1720.72473, 4.12662458, -1593.4071, -0.100228146, -1.78955464e-08, -0.99496448, 7.48486926e-08, 1, -2.55260293e-08, 0.99496448, -7.70302151e-08, -0.100228146)})
                        local Tw3 = TweenService:Create(HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1716.89111, 4.12662745, -1608.74658, -0.00232439279, -3.48897018e-08, -0.999997318, 9.10893121e-08, 1, -3.51015252e-08, 0.999997318, -9.1170655e-08, -0.00232439279)})
                        local Tw4 = TweenService:Create(HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1731.56824, 4.12662172, -1624.4646, -0.27096352, -7.4981358e-08, -0.962589622, -5.64646747e-08, 1, -6.20009715e-08, 0.962589622, 3.75523115e-08, -0.27096352)})
                        local Tw5 = TweenService:Create(HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1742.65161, 4.12662888, -1604.37207, -0.00857968535, -9.46922629e-09, -0.999963164, -5.14645837e-09, 1, -9.42541778e-09, 0.999963164, 5.06540188e-09, -0.00857968535)})
                        local Tw6 = TweenService:Create(HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1762.04443, 4.12663412, -1595.16418, -0.129098654, 5.65224241e-08, -0.991631746, 4.83307403e-08, 1, 5.0707321e-08, 0.991631746, -4.13800514e-08, -0.129098654)})
                        local Tw7 = TweenService:Create(HumanoidRootPart, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1758.63147, 4.12663412, -1576.76929, -0.0565072373, -1.52712865e-08, -0.998402178, 1.1656681e-08, 1, -1.59554663e-08, 0.998402178, -1.25396546e-08, -0.0565072373)})
                        local Tw8 = TweenService:Create(HumanoidRootPart, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1739.92322, 4.12663078, -1585.7323, 0.211679071, -2.5104832e-08, -0.977339208, 5.50662307e-08, 1, -1.37602827e-08, 0.977339208, -5.09056228e-08, 0.211679071)})
                        local Tw9 = TweenService:Create(HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1727.11743, 4.12663126, -1576.79944, -0.0586111471, -6.83849777e-08, -0.998280883, -7.12253723e-08, 1, -6.43209503e-08, 0.998280883, 6.73330049e-08, -0.0586111471)})
                        Tw1:Play()
                        wait(10)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["2"].ClickDetector)
                        wait(4)
                        Tw2:Play()
                        wait(1)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["9"].ClickDetector)
                        wait(5)
                        Tw3:Play()
                        wait(1.5)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["3"].ClickDetector)
                        wait(5)
                        Tw4:Play()
                        wait(1.5)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["5"].ClickDetector)
                        wait(5)
                        Tw5:Play()
                        wait(1.5)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["4"].ClickDetector)
                        wait(5)
                        Tw6:Play()
                        wait(1.5)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["1"].ClickDetector)
                        wait(5)
                        Tw7:Play()
                        wait(1)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["7"].ClickDetector)
                        wait(5)
                        Tw8:Play()
                        wait(1.5)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["8"].ClickDetector)
                        wait(5)
                        Tw9:Play()
                        wait(1.5)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["6"].ClickDetector)
                        wait(7)
                        HumanoidRootPart.Anchored = false
                        _G.BClean = false
                    else
                        local args = {
                        [1] = "Job"
                        }
                        game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                        wait(2)
                        local Cancel = Notification.new("error", "Notification", "Cancel😭")
                        Cancel:deleteTimeout(3)
                        local args1 = {
                            [1] = "CancelJob"
                        }
                        game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args1))
                    end
                end)
            end
        end
    })

    AutoFarmBT:AddButton({
        Title = "Auto Delivery",
        Description = "Fully Auto",
        Callback = function()
            _G.BDeli = true
            while _G.BDeli do wait(1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.LabelJob.Text == "" then
                        Notification.new("info", "Notification", "Get Job...", true, 3)
                        local args = {
                        [1] = "Job"
                        }
                        game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                        wait(2)
                        local args = {
                        [1] = "Job"
                        }
                        game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                    end

                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.LabelJob.Text == "Deliver the crate!" then
                        Notification.new("success", "Notification", "Success!!!", true, 3)
                        HumanoidRootPart.Anchored = true
                        local Tw1 = TweenService:Create(HumanoidRootPart, TweenInfo.new(15, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1709.2572, 4.05218554, -1573.61023, -0.801387548, 5.05635356e-08, -0.598145485, 2.53255372e-08, 1, 5.06030169e-08, 0.598145485, 2.54042707e-08, -0.801387548)})
                        local Tw2 = TweenService:Create(HumanoidRootPart, TweenInfo.new(7.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1428.85095, 3.99999905, -1414.49316, 0.0230026804, -7.12068058e-08, 0.999735415, 1.95005989e-09, 1, 7.11807786e-08, -0.999735415, 3.1219527e-10, 0.0230026804)})
                        local Tw3 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1266.38818, 4, -1490.72571, 0.956693292, -6.76176839e-08, -0.29109785, 4.36354561e-08, 1, -8.88771012e-08, 0.29109785, 7.2325939e-08, 0.956693292)})
                        local Tw4 = TweenService:Create(HumanoidRootPart, TweenInfo.new(15, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1956.29285, 4.05000067, -1648.20532, 0.0304275695, -1.08180709e-09, 0.999536991, 9.74812586e-09, 1, 7.85559062e-10, -0.999536991, 9.71970948e-09, 0.0304275695)})
                        
                        Tw1:Play()
                        wait(17)
                        Tw2:Play()
                        wait(9)
                        Tw3:Play()
                        wait(5)
                        Tw4:Play()
                        wait(17)
                        HumanoidRootPart.Anchored = false
                        Notification.new("success", "Notification", "Success!!!", true , 3)
                        _G.BClean = false
                    else
                        local args = {
                        [1] = "Job"
                        }
                        game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                        wait(2)
                        local Cancel = Notification.new("error", "Notification", "Cancel😭")
                        Cancel:deleteTimeout(3)
                        local args1 = {
                            [1] = "CancelJob"
                        }
                        game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args1))
                    end
                end)
            end
        end
    })

    ----- Auto Farm Anti TP -----
    local Toggle = AutoFarmAntiTG:AddToggle("Auto All Job", 
    {
        Title = "Auto All Job", 
        Description = "Fully Auto All Job",
        Default = false,
        Callback = function(v)
        _G.AllJob = v
        while _G.AllJob do wait(1)
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.LabelJob.Text == "" then
                    Notification.new("info", "Notification", "Get Job...", true, 3)
                    local args = {
                    [1] = "Job"
                    }
                    game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                end

                ----- Clean Job -----

                if LocalPlayer.PlayerGui.Main.LabelJob.Text == "Clean the floors!" then
                    local success = Notification.new("success", "Notification", "Get Clean Job!!!", true, 3)
                    HumanoidRootPart.CFrame = CFrame.new(-1715.58521, 4.12662554, -1586.85852, -0.0413668677, -3.96679596e-08, -0.999144018, -5.47444436e-08, 1, -3.74353988e-08, 0.999144018, 5.31489981e-08, -0.0413668677)
                    wait(.25)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["2"].ClickDetector)
                    wait(.1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1720.72473, 4.12662458, -1593.4071, -0.100228146, -1.78955464e-08, -0.99496448, 7.48486926e-08, 1, -2.55260293e-08, 0.99496448, -7.70302151e-08, -0.100228146)
                    wait(.25)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["9"].ClickDetector)
                    wait(.1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1716.89111, 4.12662745, -1608.74658, -0.00232439279, -3.48897018e-08, -0.999997318, 9.10893121e-08, 1, -3.51015252e-08, 0.999997318, -9.1170655e-08, -0.00232439279)
                    wait(.25)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["3"].ClickDetector)
                    wait(.1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1731.56824, 4.12662172, -1624.4646, -0.27096352, -7.4981358e-08, -0.962589622, -5.64646747e-08, 1, -6.20009715e-08, 0.962589622, 3.75523115e-08, -0.27096352)
                    wait(.25)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["5"].ClickDetector)
                    wait(.1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1742.65161, 4.12662888, -1604.37207, -0.00857968535, -9.46922629e-09, -0.999963164, -5.14645837e-09, 1, -9.42541778e-09, 0.999963164, 5.06540188e-09, -0.00857968535)
                    wait(.25)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["4"].ClickDetector)
                    wait(.1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1762.04443, 4.12663412, -1595.16418, -0.129098654, 5.65224241e-08, -0.991631746, 4.83307403e-08, 1, 5.0707321e-08, 0.991631746, -4.13800514e-08, -0.129098654)
                    wait(.25)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["1"].ClickDetector)
                    wait(.1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1758.63147, 4.12663412, -1576.76929, -0.0565072373, -1.52712865e-08, -0.998402178, 1.1656681e-08, 1, -1.59554663e-08, 0.998402178, -1.25396546e-08, -0.0565072373)
                    wait(.25)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["7"].ClickDetector)
                    wait(.1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1739.92322, 4.12663078, -1585.7323, 0.211679071, -2.5104832e-08, -0.977339208, 5.50662307e-08, 1, -1.37602827e-08, 0.977339208, -5.09056228e-08, 0.211679071)
                    wait(.25)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["8"].ClickDetector)
                    wait(.1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1727.11743, 4.12663126, -1576.79944, -0.0586111471, -6.83849777e-08, -0.998280883, -7.12253723e-08, 1, -6.43209503e-08, 0.998280883, 6.73330049e-08, -0.0586111471)
                    wait(.25)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["6"].ClickDetector)
                    wait(.1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(5)
                end

                ----- Delivery Job -----
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.LabelJob.Text == "Deliver the crate!" then 
                    Notification.new("success", "Notification", "Get Delivery Job!!!", true, 3)
                    HumanoidRootPart.CFrame = game.Workspace.Delivery.From.Burger.CFrame
                    Humanoid.Jump = true
                    wait(1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(6)
                    HumanoidRootPart.CFrame = game.Workspace.Delivery.From.Sushi.CFrame
                    Humanoid.Jump = true
                    wait(1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(6)
                    HumanoidRootPart.CFrame = game.Workspace.Delivery.To.Burger.CFrame
                    Humanoid.Jump = true
                    wait(1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(6)
                    HumanoidRootPart.CFrame = game.Workspace.Delivery.To.Sushi.CFrame
                    Humanoid.Jump = true
                    wait(1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                end

                if _G.AllJob == false then
                    HumanoidRootPart.CFrame = CFrame.new(-1707.61353, 4.05535793, -1571.90869, -0.707971871, -2.19490257e-08, -0.706240654, 4.38602505e-08, 1, -7.50464437e-08, 0.706240654, -8.41066594e-08, -0.707971871)
                    local args = {
                        [1] = "Job"
                        }
                        game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                    local args1 = {
                        [1] = "CancelJob"
                    }
                    game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args1))
                end
            end)
        end
    end
    })

    local Toggle = AutoFarmAntiTG:AddToggle("Auto Clean", 
    {
        Title = "Auto Clean", 
        Description = "Fully Auto",
        Default = false,
        Callback = function(v)
        _G.Clean = v
        while _G.Clean do wait(1)
            pcall(function()
                if LocalPlayer.PlayerGui.Main.LabelJob.Text == "" then
                    Notification.new("info", "Notification", "Get Job...", true, 3)
                    local args = {
                    [1] = "Job"
                    }
                    game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                    wait(2)
                    local args = {
                    [1] = "Job"
                    }
                    game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                end

                if LocalPlayer.PlayerGui.Main.LabelJob.Text == "Clean the floors!" then
                    local success = Notification.new("success", "Notification", "Success!!!", true, 3)
                    HumanoidRootPart.CFrame = CFrame.new(-1715.58521, 4.12662554, -1586.85852, -0.0413668677, -3.96679596e-08, -0.999144018, -5.47444436e-08, 1, -3.74353988e-08, 0.999144018, 5.31489981e-08, -0.0413668677)
                    wait(.25)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["2"].ClickDetector)
                    wait(.1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1720.72473, 4.12662458, -1593.4071, -0.100228146, -1.78955464e-08, -0.99496448, 7.48486926e-08, 1, -2.55260293e-08, 0.99496448, -7.70302151e-08, -0.100228146)
                    wait(.25)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["9"].ClickDetector)
                    wait(.1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1716.89111, 4.12662745, -1608.74658, -0.00232439279, -3.48897018e-08, -0.999997318, 9.10893121e-08, 1, -3.51015252e-08, 0.999997318, -9.1170655e-08, -0.00232439279)
                    wait(.25)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["3"].ClickDetector)
                    wait(.1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1731.56824, 4.12662172, -1624.4646, -0.27096352, -7.4981358e-08, -0.962589622, -5.64646747e-08, 1, -6.20009715e-08, 0.962589622, 3.75523115e-08, -0.27096352)
                    wait(.25)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["5"].ClickDetector)
                    wait(.1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1742.65161, 4.12662888, -1604.37207, -0.00857968535, -9.46922629e-09, -0.999963164, -5.14645837e-09, 1, -9.42541778e-09, 0.999963164, 5.06540188e-09, -0.00857968535)
                    wait(.25)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["4"].ClickDetector)
                    wait(.1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1762.04443, 4.12663412, -1595.16418, -0.129098654, 5.65224241e-08, -0.991631746, 4.83307403e-08, 1, 5.0707321e-08, 0.991631746, -4.13800514e-08, -0.129098654)
                    wait(.25)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["1"].ClickDetector)
                    wait(.1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1758.63147, 4.12663412, -1576.76929, -0.0565072373, -1.52712865e-08, -0.998402178, 1.1656681e-08, 1, -1.59554663e-08, 0.998402178, -1.25396546e-08, -0.0565072373)
                    wait(.25)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["7"].ClickDetector)
                    wait(.1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1739.92322, 4.12663078, -1585.7323, 0.211679071, -2.5104832e-08, -0.977339208, 5.50662307e-08, 1, -1.37602827e-08, 0.977339208, -5.09056228e-08, 0.211679071)
                    wait(.25)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["8"].ClickDetector)
                    wait(.1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1727.11743, 4.12663126, -1576.79944, -0.0586111471, -6.83849777e-08, -0.998280883, -7.12253723e-08, 1, -6.43209503e-08, 0.998280883, 6.73330049e-08, -0.0586111471)
                    wait(.25)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["6"].ClickDetector)
                    wait(.1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(5)
                else
                    local args = {
                    [1] = "Job"
                    }
                    game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                    local Cancel = Notification.new("error", "Notification", "Cancel😭", true,3)
                    local args1 = {
                        [1] = "CancelJob"
                    }
                    game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args1))
                end

                if _G.Clean == false then
                    HumanoidRootPart.CFrame = CFrame.new(-1707.61353, 4.05535793, -1571.90869, -0.707971871, -2.19490257e-08, -0.706240654, 4.38602505e-08, 1, -7.50464437e-08, 0.706240654, -8.41066594e-08, -0.707971871)
                    local args1 = {
                        [1] = "CancelJob"
                    }
                    game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args1))
                end
            end)
        end
    end 
    })

    local Toggle = AutoFarmAntiTG:AddToggle("Auto Delivery", 
    {
        Title = "Auto Delivery", 
        Description = "Fully Auto",
        Default = false,
        Callback = function(v)
        _G.Delivery = v
        while _G.Delivery do wait(1)
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.LabelJob.Text == "" then
                    Notification.new("info", "Notification", "Get Job...", true, 3)
                    local args = {
                    [1] = "Job"
                    }
                    game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                end
        
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.LabelJob.Text == "Deliver the crate!" then 
                    Notification.new("success", "Notification", "Get Delivery Job!!!", true, 3)
                    HumanoidRootPart.CFrame = game.Workspace.Delivery.From.Burger.CFrame
                    Humanoid.Jump = true
                    wait(1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(6)
                    HumanoidRootPart.CFrame = game.Workspace.Delivery.From.Sushi.CFrame
                    Humanoid.Jump = true
                    wait(1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(6)
                    HumanoidRootPart.CFrame = game.Workspace.Delivery.To.Burger.CFrame
                    Humanoid.Jump = true
                    wait(1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                    wait(6)
                    HumanoidRootPart.CFrame = game.Workspace.Delivery.To.Sushi.CFrame
                    Humanoid.Jump = true
                    wait(1)
                    HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                else
                    local args = {
                        [1] = "Job"
                        }
                        game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                    local args1 = {
                        [1] = "CancelJob"
                    }
                    game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args1))
                    
                end
            end)
        end
    end
    })

    local Toggle = AutoFarmAntiTG:AddToggle("Auto Run", 
    {
        Title = "Auto Run", 
        Description = "Not Fully Auto",
        Default = false,
        Callback = function(v)
        _G.Run = v

        while _G.Run do wait(1)
            pcall(function()
                HumanoidRootPart.Anchored = true
                if not LocalPlayer.Backpack:FindFirstChild("Roadwork Training") then
                    HumanoidRootPart.CFrame = CFrame.new(-2057.35522, 8.375, -1643.90527, 0.00399909355, -2.54845585e-08, 0.999992013, -2.04004813e-09, 1, 2.54929198e-08, -0.999992013, -2.14198037e-09, 0.00399909355)
                else
                    HumanoidRootPart.CFrame = CFrame.new(-1951.23682, 4.05000067, -1642.04651, -0.999084294, -5.82323842e-08, 0.0427854843, -5.69893643e-08, 1, 3.02720728e-08, -0.0427854843, 2.7806033e-08, -0.999084294)
                end
                for i,v in pairs(game.Workspace.MapMisc.Purchases.GYM:GetChildren()) do
                    if v.Name == "Roadwork Training" then
                        fireclickdetector(v.ClickDetector)
                    end
                end
                equipitem("Roadwork Training")
                VirtualUser:Button1Down(Vector2.new(981, 488))
                HumanoidRootPart.CFrame = CFrame.new(-1951.23682, 4.05000067, -1642.04651, -0.999084294, -5.82323842e-08, 0.0427854843, -5.69893643e-08, 1, 3.02720728e-08, -0.0427854843, 2.7806033e-08, -0.999084294)
                wait(2)
                HumanoidRootPart.CFrame = CFrame.new(-1949.63696, 3.99999952, -1490.46936, -0.999939144, 1.81944575e-08, -0.0110329613, 1.92144203e-08, 1, -9.23408834e-08, 0.0110329613, -9.25472534e-08, -0.999939144)
                wait(2)
                HumanoidRootPart.CFrame = CFrame.new(-1879.14185, 3.99999905, -1483.38855, -0.0485947765, -3.95604154e-08, -0.998818576, 1.13462848e-08, 1, -4.01592288e-08, 0.998818576, -1.32844091e-08, -0.0485947765)
                wait(2)
                HumanoidRootPart.CFrame = CFrame.new(-1828.61963, 3.99999905, -1306.72192, -0.0908902436, -9.18452301e-08, -0.995860934, -3.47439446e-08, 1, -8.90559591e-08, 0.995860934, 2.65058198e-08, -0.0908902436)
                wait(2)
                HumanoidRootPart.CFrame = CFrame.new(-1691.01648, 4, -1321.73657, 0.9997859, -1.01812539e-07, 0.0206906721, 1.01923725e-07, 1, -4.31927516e-09, -0.0206906721, 6.42722098e-09, 0.9997859)
                wait(2)
                HumanoidRootPart.CFrame = CFrame.new(-1701.59924, 3.99999952, -1490.94641, 0.993309855, 4.66140975e-08, 0.115479648, -3.59092489e-08, 1, -9.47793879e-08, -0.115479648, 8.99985153e-08, 0.993309855)
                wait(2)
                HumanoidRootPart.CFrame = CFrame.new(-1701.83521, 3.99999905, -1555.25659, -0.0144577483, 8.42557171e-08, 0.999895453, -3.3463305e-08, 1, -8.4748379e-08, -0.999895453, -3.46850761e-08, -0.0144577483)
                wait(2)
                HumanoidRootPart.CFrame = CFrame.new(-1876.77637, 3.99999905, -1557.67273, 0.999782801, 1.78105388e-08, 0.0208400264, -1.67651795e-08, 1, -5.03358777e-08, -0.0208400264, 4.99755579e-08, 0.999782801)
                wait(2)
                HumanoidRootPart.CFrame = CFrame.new(-1880.95715, 3.99999905, -1730.52319, 0.126060918, -2.25942709e-09, 0.992022514, 1.06375875e-09, 1, 2.1424198e-09, -0.992022514, 7.85197185e-10, 0.126060918)
                wait(2)
                HumanoidRootPart.CFrame = CFrame.new(-1953.18079, 4.05000067, -1727.79822, -0.998464108, 2.40192772e-08, -0.055402182, 2.48190268e-08, 1, -1.37472869e-08, 0.055402182, -1.51012003e-08, -0.998464108)
                wait(2)
                Notification.new("success", "Notification", "Success!!!", true , 3)
                HumanoidRootPart.Anchored = false
            end)
        end
    end
    })

    local Toggle = AutoFarmAntiTG:AddToggle("Auto Run In Senkaimon", 
    {
        Title = "Auto Run In Senkaimon", 
        Description = "Not Fully Auto",
        Default = false,
        Callback = function(v)
        _G.AutoSenkaimon = v
        while _G.AutoSenkaimon do wait(1)
            pcall(function()
                HumanoidRootPart.Anchored = true
                HumanoidRootPart.CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(1).CFrame
                wait(2)
                for i,v in pairs(game.Workspace.MapMisc.Purchases.GYM:GetChildren()) do
                    if v.Name == "Roadwork Training" then
                        fireclickdetector(v.ClickDetector)
                    end
                end
                equipitem("Roadwork Training")
                VirtualUser:Button1Down(Vector2.new(981, 488))
                wait(5)
                HumanoidRootPart.CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(1).CFrame
                wait(3)
                HumanoidRootPart.CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(2).CFrame
                wait(3)
                HumanoidRootPart.CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(3).CFrame
                wait(3)
                HumanoidRootPart.CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(4).CFrame
                wait(3)
                HumanoidRootPart.CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(5).CFrame
                wait(3)
                HumanoidRootPart.CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(6).CFrame
                wait(3)
                HumanoidRootPart.CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(7).CFrame
                wait(3)
                HumanoidRootPart.CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(8).CFrame
                wait(3)
                HumanoidRootPart.CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(9).CFrame
                wait(3)
                HumanoidRootPart.CFrame = game.Workspace.Roadworks.Senkaimon:FindFirstChild(1).CFrame
                Notification.new("success", "Notification", "Success!!!", true , 3)
                HumanoidRootPart.Anchored = false
            end)
        end
    end
    })

    AutoFarmAntiBT:AddButton({
        Title = "Auto Clean",
        Description = "Fully Auto",
        Callback = function()
            _G.CleanBTAnti = true
            while _G.CleanBTAnti do wait(1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.LabelJob.Text == "" then
                        Notification.new("info", "Notification", "Get Job...", true , 3)
                        local args = {
                        [1] = "Job"
                        }
                        game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                        wait(2)
                        local args = {
                        [1] = "Job"
                        }
                        game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                    end

                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.LabelJob.Text == "Clean the floors!" then
                        Notification.new("success", "Notification", "Success!!!", true, 3)
                        HumanoidRootPart.CFrame = CFrame.new(-1715.58521, 4.12662554, -1586.85852, -0.0413668677, -3.96679596e-08, -0.999144018, -5.47444436e-08, 1, -3.74353988e-08, 0.999144018, 5.31489981e-08, -0.0413668677)
                        wait(.25)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["2"].ClickDetector)
                        wait(.1)
                        HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                        wait(5)
                        HumanoidRootPart.CFrame = CFrame.new(-1720.72473, 4.12662458, -1593.4071, -0.100228146, -1.78955464e-08, -0.99496448, 7.48486926e-08, 1, -2.55260293e-08, 0.99496448, -7.70302151e-08, -0.100228146)
                        wait(.25)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["9"].ClickDetector)
                        wait(.1)
                        HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                        wait(5)
                        HumanoidRootPart.CFrame = CFrame.new(-1716.89111, 4.12662745, -1608.74658, -0.00232439279, -3.48897018e-08, -0.999997318, 9.10893121e-08, 1, -3.51015252e-08, 0.999997318, -9.1170655e-08, -0.00232439279)
                        wait(.25)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["3"].ClickDetector)
                        wait(.1)
                        HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                        wait(5)
                        HumanoidRootPart.CFrame = CFrame.new(-1731.56824, 4.12662172, -1624.4646, -0.27096352, -7.4981358e-08, -0.962589622, -5.64646747e-08, 1, -6.20009715e-08, 0.962589622, 3.75523115e-08, -0.27096352)
                        wait(.25)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["5"].ClickDetector)
                        wait(.1)
                        HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                        wait(5)
                        HumanoidRootPart.CFrame = CFrame.new(-1742.65161, 4.12662888, -1604.37207, -0.00857968535, -9.46922629e-09, -0.999963164, -5.14645837e-09, 1, -9.42541778e-09, 0.999963164, 5.06540188e-09, -0.00857968535)
                        wait(.25)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["4"].ClickDetector)
                        wait(.1)
                        HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                        wait(5)
                        HumanoidRootPart.CFrame = CFrame.new(-1762.04443, 4.12663412, -1595.16418, -0.129098654, 5.65224241e-08, -0.991631746, 4.83307403e-08, 1, 5.0707321e-08, 0.991631746, -4.13800514e-08, -0.129098654)
                        wait(.25)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["1"].ClickDetector)
                        wait(.1)
                        HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                        wait(5)
                        HumanoidRootPart.CFrame = CFrame.new(-1758.63147, 4.12663412, -1576.76929, -0.0565072373, -1.52712865e-08, -0.998402178, 1.1656681e-08, 1, -1.59554663e-08, 0.998402178, -1.25396546e-08, -0.0565072373)
                        wait(.25)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["7"].ClickDetector)
                        wait(.1)
                        HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                        wait(5)
                        HumanoidRootPart.CFrame = CFrame.new(-1739.92322, 4.12663078, -1585.7323, 0.211679071, -2.5104832e-08, -0.977339208, 5.50662307e-08, 1, -1.37602827e-08, 0.977339208, -5.09056228e-08, 0.211679071)
                        wait(.25)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["8"].ClickDetector)
                        wait(.1)
                        HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                        wait(5)
                        HumanoidRootPart.CFrame = CFrame.new(-1727.11743, 4.12663126, -1576.79944, -0.0586111471, -6.83849777e-08, -0.998280883, -7.12253723e-08, 1, -6.43209503e-08, 0.998280883, 6.73330049e-08, -0.0586111471)
                        wait(.25)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["6"].ClickDetector)
                        wait(.1)
                        HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                        wait(5)
                        HumanoidRootPart.CFrame = CFrame.new(-1707.61353, 4.05535793, -1571.90869, -0.707971871, -2.19490257e-08, -0.706240654, 4.38602505e-08, 1, -7.50464437e-08, 0.706240654, -8.41066594e-08, -0.707971871)
                        _G.CleanBTAnti = false
                    else
                        local args = {
                            [1] = "Job"
                            }
                            game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                        local args1 = {
                            [1] = "CancelJob"
                        }
                        game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args1))
                    end
                end)
            end
        end
    })

    AutoFarmAntiBT:AddButton({
        Title = "Auto Delivery",
        Description = "Fully Auto",
        Callback = function()
            _G.BDeli = true
            while _G.BDeli do wait(1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.LabelJob.Text == "" then
                        Notification.new("info", "Notification", "Get Job...", true, 3)
                        local args = {
                        [1] = "Job"
                        }
                        game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                        wait(2)
                        local args = {
                        [1] = "Job"
                        }
                        game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                    end

                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.LabelJob.Text == "Deliver the crate!" then
                        Notification.new("success", "Notification", "Get Delivery Job!!!", true, 3)
                        HumanoidRootPart.CFrame = game.Workspace.Delivery.From.Burger.CFrame
                        Humanoid.Jump = true
                        wait(1)
                        HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                        wait(6)
                        HumanoidRootPart.Anchored = false
                        HumanoidRootPart.CFrame = game.Workspace.Delivery.From.Sushi.CFrame
                        Humanoid.Jump = true
                        HumanoidRootPart.Anchored = true
                        wait(1)
                        HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                        wait(6)
                        HumanoidRootPart.CFrame = game.Workspace.Delivery.To.Burger.CFrame
                        Humanoid.Jump = true
                        wait(1)
                        HumanoidRootPart.CFrame = CFrame.new(-1555.52905, 33.7499847, -2126.09595, -0.999686122, 2.70075273e-09, -0.0250539128, -1.88607793e-11, 1, 1.08550218e-07, 0.0250539128, 1.08516616e-07, -0.999686122)
                        wait(6)
                        HumanoidRootPart.CFrame = game.Workspace.Delivery.To.Sushi.CFrame
                        Humanoid.Jump = true
                        wait(4)
                        HumanoidRootPart.CFrame = CFrame.new(-1707.61353, 4.05535793, -1571.90869, -0.707971871, -2.19490257e-08, -0.706240654, 4.38602505e-08, 1, -7.50464437e-08, 0.706240654, -8.41066594e-08, -0.707971871)
                        wait(2)
                        _G.BDeli = false
                    else
                        local args = {
                            [1] = "Job"
                            }
                            game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                        local args1 = {
                            [1] = "CancelJob"
                        }
                        game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args1))
                    end
                end)
            end
        end
    })

    ----- Teleport -----
    local Dropdown = TPPlayer:AddDropdown("Select Player", {
        Title = "Select Player",
        Description = "",
        Values = Allplay,
        Multi = false,
        Default = Name,
    })

    Dropdown:OnChanged(function(Value)
        SelectPlayer = Value
    end)

    local Toggle = TPPlayer:AddToggle("Teleport To Player - Toggle", 
    {
        Title = "Teleport To Player - Toggle", 
        Description = "",
        Default = false,
        Callback = function(state)
        _G.TGPlayer = state
        while _G.TGPlayer do wait(0)
            HumanoidRootPart.Anchored = true
            HumanoidRootPart.CFrame = Players:FindFirstChild(SelectPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,0,10)
            HumanoidRootPart.Anchored = false
        end
    end
    })

    TPPlayer:AddButton({
        Title = "Teleport To Player",
        Description = "",
        Callback = function()
            HumanoidRootPart.CFrame = Players:FindFirstChild(SelectPlayer).Character.HumanoidRootPart.CFrame
        end
    })

    TP:AddButton({
        Title = "Gym",
        Description = "",
        Callback = function()
            HumanoidRootPart.Anchored = true
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1946.00305, 3.99999905, -1648.48303, -0.00384854153, 4.68784158e-08, 0.999992609, 6.45444942e-08, 1, -4.66303582e-08, -0.999992609, 6.43645564e-08, -0.00384854153)})
            Tw:Play()
            local TPN = Notification.new("info", "Notification", "Teleporting.", true , 10)
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            Notification.new("success", "Notification", "Success!!!", true , 3)
            HumanoidRootPart.Anchored = false
        end
    })
    
    TP:AddButton({
        Title = "GymRats",
        Description = "",
        Callback = function()
            HumanoidRootPart.Anchored = true
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1626.46387, 3.99999952, -1689.40588, -0.660838008, 1.02057851e-09, -0.750528514, 4.51431559e-09, 1, -2.61502775e-09, 0.750528514, -5.11623233e-09, -0.660838008)})
            Tw:Play()
            local TPN = Notification.new("info", "Notification", "Teleporting.", true , 10)
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            Notification.new("success", "Notification", "Success!!!", true , 3)
            HumanoidRootPart.Anchored = false
        end
    })

    TP:AddButton({
        Title = "Senkaimon",
        Description = "You Chat 'senkaimon'",
        Callback = function()
            HumanoidRootPart.Anchored = true
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1747.18213, 4.39999866, -1682.74927, -0.999964416, 8.03205324e-09, 0.00843580998, 7.29318517e-09, 1, -8.76178348e-08, -0.00843580998, -8.75531896e-08, -0.999964416)})
            Tw:Play()
            local TPN = Notification.new("info", "Notification", "Teleporting.", true , 10)
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            Notification.new("success", "Notification", "Success!!!", true , 3)
            HumanoidRootPart.Anchored = false
        end
    })

    TP:AddButton({
        Title = "Burger Queen",
        Description = "",
        Callback = function()
            HumanoidRootPart.Anchored = true
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1698.70044, 4.03131104, -1562.81799, 0.682815194, 5.88607101e-08, 0.730591178, 1.47487169e-08, 1, -9.43501135e-08, -0.730591178, 7.51989688e-08, 0.682815194)})
            Tw:Play()
            local TPN = Notification.new("info", "Notification", "Teleporting.", true , 10)
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            Notification.new("success", "Notification", "Success!!!", true , 3)
            HumanoidRootPart.Anchored = false
        end
    })

    TP:AddButton({
        Title = "Kami Bank",
        Description = "",
        Callback = function()
            HumanoidRootPart.Anchored = true
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1761.10828, 3.99999905, -1492.99146, -0.999954104, 2.92262659e-09, -0.00958315283, 3.76972231e-09, 1, -8.83762112e-08, 0.00958315283, -8.8408278e-08, -0.999954104)})
            Tw:Play()
            local TPN = Notification.new("info", "Notification", "Teleporting.", true , 10)
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            Notification.new("success", "Notification", "Success!!!", true , 3)
            HumanoidRootPart.Anchored = false
        end
    })

    TP:AddButton({
        Title = "Stats Check",
        Description = "",
        Callback = function()
            HumanoidRootPart.Anchored = true
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1937.7804, 3.99999952, -1437.10559, 0.0300698504, -5.37608749e-08, 0.99954778, -4.00078584e-08, 1, 5.49887709e-08, -0.99954778, -4.16432719e-08, 0.0300698504)})
            Tw:Play()
            local TPN = Notification.new("info", "Notification", "Teleporting.", true , 10)
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            Notification.new("success", "Notification", "Success!!!", true , 3)
            HumanoidRootPart.Anchored = false
        end
    })

    TP:AddButton({
        Title = "Tournament",
        Description = "",
        Callback = function()
            HumanoidRootPart.Anchored = true
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1395.41174, 4.25000048, -1593.52563, 0.519484639, -2.90134095e-09, 0.85447979, 2.97268432e-09, 1, 1.58819102e-09, -0.85447979, 1.71505787e-09, 0.519484639)})
            Tw:Play()
            local TPN = Notification.new("info", "Notification", "Teleporting.", true , 10)
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            Notification.new("success", "Notification", "Success!!!", true , 3)
            HumanoidRootPart.Anchored = false
        end
    })

    ----- TeleportTrainer -----
    TPNPC:AddButton({
        Title = "Boxing",
        Description = "",
        Callback = function()
            HumanoidRootPart.Anchored = true
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Npcs.Trainers.Boxing.Rig.HumanoidRootPart.CFrame})
            Tw:Play()
            local TPN = Notification.new("info", "Notification", "Teleporting.", true , 10)
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            Notification.new("success", "Notification", "Success!!!", true , 3)
            HumanoidRootPart.Anchored = false
        end
    })
    TPNPC:AddButton({
        Title = "Capoeira",
        Description = "",
        Callback = function()
            HumanoidRootPart.Anchored = true
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Npcs.Trainers.Capoeira.Rig.HumanoidRootPart.CFrame})
            Tw:Play()
            local TPN = Notification.new("info", "Notification", "Teleporting.", true , 10)
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            Notification.new("success", "Notification", "Success!!!", true , 3)
            HumanoidRootPart.Anchored = false
        end
    })
    TPNPC:AddButton({
        Title = "Karate",
        Description = "",
        Callback = function()
            HumanoidRootPart.Anchored = true
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Npcs.Trainers.Karate.Rig.HumanoidRootPart.CFrame})
            Tw:Play()
            local TPN = Notification.new("info", "Notification", "Teleporting.", true , 10)
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            Notification.new("success", "Notification", "Success!!!", true , 3)
            HumanoidRootPart.Anchored = false
        end
    })
    TPNPC:AddButton({
        Title = "Kung Fu",
        Description = "",
        Callback = function()
            HumanoidRootPart.Anchored = true
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Npcs.Trainers["Kung Fu"].Rig.HumanoidRootPart.CFrame})
            Tw:Play()
            local TPN = Notification.new("info", "Notification", "Teleporting.", true , 10)
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            Notification.new("success", "Notification", "Success!!!", true , 3)
            HumanoidRootPart.Anchored = false
        end
    })
    TPNPC:AddButton({
        Title = "Muay Thai",
        Description = "",
        Callback = function()
            HumanoidRootPart.Anchored = true
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Npcs.Trainers["Muay Thai"].Rig.HumanoidRootPart.CFrame})
            Tw:Play()
            local TPN = Notification.new("info", "Notification", "Teleporting.", true , 10)
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            Notification.new("success", "Notification", "Success!!!", true , 3)
            HumanoidRootPart.Anchored = false
        end
    })
    TPNPC:AddButton({
        Title = "Sumo",
        Description = "",
        Callback = function()
            HumanoidRootPart.Anchored = true
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Npcs.Trainers.Sumo.Rig.HumanoidRootPart.CFrame})
            Tw:Play()
            local TPN = Notification.new("info", "Notification", "Teleporting.", true , 10)
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            Notification.new("success", "Notification", "Success!!!", true , 3)
            HumanoidRootPart.Anchored = false
        end
    })
    TPNPC:AddButton({
        Title = "Teakwondo",
        Description = "",
        Callback = function()
            HumanoidRootPart.Anchored = true
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Npcs.Trainers.Taekwondo.Rig.HumanoidRootPart.CFrame})
            Tw:Play()
            local TPN = Notification.new("info", "Notification", "Teleporting.", true , 10)
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            Notification.new("success", "Notification", "Success!!!", true , 3)
            HumanoidRootPart.Anchored = false
        end
    })
    TPNPC:AddButton({
        Title = "Wrestling",
        Description = "",
        Callback = function()
            HumanoidRootPart.Anchored = true
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = game.Workspace.Npcs.Trainers.Wrestling.Rig.HumanoidRootPart.CFrame})
            Tw:Play()
            local TPN = Notification.new("info", "Notification", "Teleporting.", true , 10)
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            wait(.5)
            TPN:changeBody("Teleporting...")
            wait(.5)
            TPN:changeBody("Teleporting.")
            wait(.5)
            TPN:changeBody("Teleporting..")
            Notification.new("success", "Notification", "Success!!!", true , 3)
            HumanoidRootPart.Anchored = false
        end
    })

    ----- Tp Npc Anti Tp -----
    TPNPCAnti:AddButton({
        Title = "Ryu",
        Description = "",
        Callback = function()
            HumanoidRootPart.CFrame = game.Workspace.Npcs:FindFirstChild("? Ryu").NPC.HumanoidRootPart.CFrame
        end
    })

    TPNPCAnti:AddButton({
        Title = "Coin Tranfer",
        Description = "",
        Callback = function()
            HumanoidRootPart.CFrame = game.Workspace.Npcs:FindFirstChild("Asura Coin Transfer").HumanoidRootPart.CFrame
        end
    })
    TPNPCAnti:AddButton({
        Title = "Fortune Teller",
        Description = "",
        Callback = function()
            HumanoidRootPart.CFrame = game.Workspace.Npcs:FindFirstChild("Fortune Teller").Rig.HumanoidRootPart.CFrame
        end
    })
    TPNPCAnti:AddButton({
        Title = "Master Wu",
        Description = "",
        Callback = function()
            HumanoidRootPart.CFrame = CFrame.new(-2193.87329, -9.75000191, -1132.60388, -0.999948323, -4.81203202e-08, 0.0101665361, -4.92236509e-08, 1, -1.08275493e-07, -0.0101665361, -1.0877033e-07, -0.999948323)
        end
    })

    TPNPCAnti:AddButton({
        Title = "Old Man",
        Description = "",
        Callback = function()
            HumanoidRootPart.CFrame = game.Workspace.Npcs:FindFirstChild("Old Man"):FindFirstChild("Old Man").HumanoidRootPart.CFrame
        end
    })

    TPNPCAnti:AddButton({
        Title = "Ryan Kure",
        Description = "",
        Callback = function()
            HumanoidRootPart.CFrame = game.Workspace.Npcs:FindFirstChild("Ryan Kure").NPC.HumanoidRootPart.CFrame
        end
    })

    TPNPCAnti:AddButton({
        Title = "Tattoo Storage",
        Description = "",
        Callback = function()
            HumanoidRootPart.CFrame = game.Workspace.Npcs.TattooStorage:FindFirstChild("JustMikami").HumanoidRootPart.CFrame
        end
    })

    TPNPCAnti:AddButton({
        Title = "Zen Senko",
        Description = "",
        Callback = function()
            HumanoidRootPart.CFrame = game.Workspace.Npcs:FindFirstChild("Zen Senko").NPC.HumanoidRootPart.CFrame
        end
    })
    ------ Misc --------
    Bypass:AddButton({
        Title = "Anti TP Bypass",
        Description = "Bug !!!",
        Callback = function()
        HumanoidRootPart.CFrame = game.Workspace.Map.Seat.CFrame
        wait(.25)
        Humanoid.Jump = true
        wait(.5)
        HumanoidRootPart.CFrame = CFrame.new(-1709.2572, 4.05218554, -1573.61023, -0.801387548, 5.05635356e-08, -0.598145485, 2.53255372e-08, 1, 5.06030169e-08, 0.598145485, 2.54042707e-08, -0.801387548)
        end
    })

    local Input = Addon:AddInput("Total Deposit/Withdraw", {
        Title = "Total Deposit/Withdraw",
        Description = "",
        Default = "0",
        Placeholder = "Total",
        Numeric = true, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Value)
            TotalDeposit = Value
        end
    })

    Addon:AddButton({
        Title = "Deposit",
        Description = "",
        Callback = function()
            local args = {
                [1] = "Deposit",
                [2] = TotalDeposit
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Bank"):FireServer(unpack(args))
        end
    })

    Addon:AddButton({
        Title = "Withdraw",
        Description = "",
        Callback = function()
            local args = {
                [1] = "Withdraw",
                [2] = TotalDeposit
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Bank"):FireServer(unpack(args))
            
        end
    })

    local Toggle = Addon:AddToggle("Auto Deposit", 
    {
        Title = "Auto Deposit", 
        Description = "If Money Is Full ¥500,000",
        Default = false,
        Callback = function(state)
        _G.AutoDeposit = state
        while _G.AutoDeposit do wait()
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.HUD:GetChildren()) do
                if v.Name == "Cash" and v.Text == "¥500,000" then
                    local args = {
                        [1] = "Deposit",
                        [2] = 500000
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Bank"):FireServer(unpack(args))
                end
            end
        end
    end
    })

    local Speed Walk = Addon:AddSlider("Speed Walk", 
    {
        Title = "Speed Walk",
        Description = "This is a slider",
        Default = 16,
        Min = 16,
        Max = 100,
        Rounding = 1,
        Callback = function(s)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
        end
    })

    Addon:AddButton({
        Title = "Unlock Freeze",
        Description = "IF Bug Can't Move",
        Callback = function()
            CT:Enable()
        end
    })


    Credit:AddButton({
        Title = "Github",
        Description = "Owner : Github",
        Callback = function()
            setclipboard("https://github.com/ZenzeiNo1/")
        end
    })

    SaveManager:SetLibrary(Fluent)
    InterfaceManager:SetLibrary(Fluent)

    InterfaceManager:SetFolder("Rain Hub")
    SaveManager:IgnoreThemeSettings()

    InterfaceManager:BuildInterfaceSection(Tabs.Settings)
    SaveManager:BuildConfigSection(Tabs.Settings)

    Window:SelectTab(1)

    Fluent:SetTheme("Midnight")
    
    local RH_Toggle = Instance.new("ScreenGui")
    local TextButton = Instance.new("TextButton")
    local UICorner = Instance.new("UICorner")
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

    RH_Toggle.Name = "RH_Toggle"
    RH_Toggle.Parent = game:GetService("CoreGui")
    RH_Toggle.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    TextButton.Parent = RH_Toggle
    TextButton.BackgroundColor3 = Color3.fromRGB(78, 184, 255)
    TextButton.BackgroundTransparency = 0.250
    TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.BorderSizePixel = 0
    TextButton.Position = UDim2.new(0.0123383058, 0, 0.15, 0)
    TextButton.Size = UDim2.new(0.0275, 0, 0.05, 0)
    TextButton.Font = Enum.Font.FredokaOne
    TextButton.Text = "RH"
    TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.TextScaled = true
    TextButton.TextSize = 25.000
    TextButton.TextWrapped = true
    TextButton.MouseButton1Up:Connect(function()
        Fluent.Window:Minimize()
    end)

    UICorner.CornerRadius = UDim.new(100, 0)
    UICorner.Parent = TextButton

    UITextSizeConstraint.Parent = TextButton
    UITextSizeConstraint.MaxTextSize = 25

    local function DragToggle() -- TextButton.LocalScript 
        local script = Instance.new('LocalScript', TextButton)

        local UIS = game:GetService('UserInputService')
        local frame = script.Parent
        local dragToggle = nil
        local dragSpeed = 0.05
        local dragStart = nil
        local startPos = nil
        
        local function updateInput(input)
            local delta = input.Position - dragStart
            local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
                startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
        end
        
        frame.InputBegan:Connect(function(input)
            if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
                dragToggle = true
                dragStart = input.Position
                startPos = frame.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragToggle = false
                    end
                end)
            end
        end)
        
        UIS.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                if dragToggle then
                    updateInput(input)
                end
            end
        end)
    end
    DragToggle()
end
