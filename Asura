local TweenService = game:GetService("TweenService")
local LocalPlayer = game.Players.LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character.Humanoid
local HumanoidRootPart = Character.HumanoidRootPart
local Name = LocalPlayer.Name
local CT = require(LocalPlayer.PlayerScripts.PlayerModule):GetControls()
local VirtualUser = game:GetService('VirtualInputManager')
local CoreGui = game:GetService("CoreGui")

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
if game:GetService("CoreGui"):FindFirstChild("RH_Menu") or game:GetService("CoreGui"):FindFirstChild("RH_Toggle") then
    Fluent:ToggleAcrylic(false)
    Fluent:ToggleTransparency(false)
    game:GetService("CoreGui"):FindFirstChild("RH_Menu"):Destroy()
    game:GetService("CoreGui"):FindFirstChild("RH_Toggle"):Destroy()
end
local Fluent = loadstring(game:HttpGet("https://pastebin.com/raw/S6HqmTXs"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Rain Hub 3.0.0 ",
    SubTitle = "by star.nice",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Midnight",
    MinimizeKey = Enum.KeyCode.RightControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
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
local TP = Tabs.Teleport:AddSection("TP")
local TPNPC = Tabs.Teleport:AddSection("TPNPC")
local Addon = Tabs.Misc:AddSection("Addon")
local Bypass = Tabs.Misc:AddSection("Bypass")
local Credit = Tabs.Cr:AddSection("Credit")

local Options = Fluent.Options

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
                    CT:Disable()
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
                    CT:Enable()
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
                    CT:Disable()
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
                    CT:Enable()
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
            CT:Disable()
            if not LocalPlayer.Backpack:FindFirstChild("Roadwork Training") then
                local TwBuy = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-2057.35522, 8.375, -1643.90527, 0.00399909355, -2.54845585e-08, 0.999992013, -2.04004813e-09, 1, 2.54929198e-08, -0.999992013, -2.14198037e-09, 0.00399909355)})
                TwBuy:Play()
            else
                local Tw1 = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1951.23682, 4.05000067, -1642.04651, -0.999084294, -5.82323842e-08, 0.0427854843, -5.69893643e-08, 1, 3.02720728e-08, -0.0427854843, 2.7806033e-08, -0.999084294)})
                Tw1:Play()
                wait(10)
            end
            for i,v in pairs(game.workspace.Purchases.GYM:GetChildren()) do
                if v.Name == "Roadwork Training" then
                    fireclickdetector(v.ClickDetector)
                end
            end
            equipitem("Roadwork Training")
            VirtualUser:Button1Down(Vector2.new(981, 488))
            if game.Workspace.Roadworks.GYM["1"]:FindFirstChild("TouchInterest") or game.Workspace.Roadworks.GYM["2"]:FindFirstChild("TouchInterest") or game.Workspace.Roadworks.GYM["3"]:FindFirstChild("TouchInterest") or game.Workspace.Roadworks.GYM["4"]:FindFirstChild("TouchInterest") or game.Workspace.Roadworks.GYM["5"]:FindFirstChild("TouchInterest") or game.Workspace.Roadworks.GYM["6"]:FindFirstChild("TouchInterest") or game.Workspace.Roadworks.GYM["7"]:FindFirstChild("TouchInterest") or game.Workspace.Roadworks.GYM["8"]:FindFirstChild("TouchInterest") or game.Workspace.Roadworks.GYM["9"]:FindFirstChild("TouchInterest") or game.Workspace.Roadworks.GYM["10"]:FindFirstChild("TouchInterest")then
                local Tw1 = TweenService:Create(HumanoidRootPart, TweenInfo.new(7, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1951.23682, 4.05000067, -1642.04651, -0.999084294, -5.82323842e-08, 0.0427854843, -5.69893643e-08, 1, 3.02720728e-08, -0.0427854843, 2.7806033e-08, -0.999084294)})
                local Tw2 = TweenService:Create(HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1949.63696, 3.99999952, -1490.46936, -0.999939144, 1.81944575e-08, -0.0110329613, 1.92144203e-08, 1, -9.23408834e-08, 0.0110329613, -9.25472534e-08, -0.999939144)})
                local Tw3 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1879.14185, 3.99999905, -1483.38855, -0.0485947765, -3.95604154e-08, -0.998818576, 1.13462848e-08, 1, -4.01592288e-08, 0.998818576, -1.32844091e-08, -0.0485947765)})
                local Tw4 = TweenService:Create(HumanoidRootPart, TweenInfo.new(7, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1828.61963, 3.99999905, -1306.72192, -0.0908902436, -9.18452301e-08, -0.995860934, -3.47439446e-08, 1, -8.90559591e-08, 0.995860934, 2.65058198e-08, -0.0908902436)})
                local Tw5 = TweenService:Create(HumanoidRootPart, TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1691.01648, 4, -1321.73657, 0.9997859, -1.01812539e-07, 0.0206906721, 1.01923725e-07, 1, -4.31927516e-09, -0.0206906721, 6.42722098e-09, 0.9997859)})
                local Tw6 = TweenService:Create(HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1701.59924, 3.99999952, -1490.94641, 0.993309855, 4.66140975e-08, 0.115479648, -3.59092489e-08, 1, -9.47793879e-08, -0.115479648, 8.99985153e-08, 0.993309855)})
                local Tw7 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1701.83521, 3.99999905, -1555.25659, -0.0144577483, 8.42557171e-08, 0.999895453, -3.3463305e-08, 1, -8.4748379e-08, -0.999895453, -3.46850761e-08, -0.0144577483)})
                local Tw8 = TweenService:Create(HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1876.77637, 3.99999905, -1557.67273, 0.999782801, 1.78105388e-08, 0.0208400264, -1.67651795e-08, 1, -5.03358777e-08, -0.0208400264, 4.99755579e-08, 0.999782801)})
                local Tw9 = TweenService:Create(HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1880.95715, 3.99999905, -1730.52319, 0.126060918, -2.25942709e-09, 0.992022514, 1.06375875e-09, 1, 2.1424198e-09, -0.992022514, 7.85197185e-10, 0.126060918)})
                local Tw10 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1953.18079, 4.05000067, -1727.79822, -0.998464108, 2.40192772e-08, -0.055402182, 2.48190268e-08, 1, -1.37472869e-08, 0.055402182, -1.51012003e-08, -0.998464108)})
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
                CT:Enable()
            end
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
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(5839.04199, -20.5, 2848.83813, 0.99961549, -8.25480768e-08, 0.027729148, 8.40106011e-08, 1, -5.15781835e-08, -0.027729148, 5.38878915e-08, 0.99961549)})
            local Tw2 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(5839.2168, -20.5000038, 2831.2583, 0.999796629, 5.35951408e-08, 0.0201668292, -5.29640936e-08, 1, -3.18254401e-08, -0.0201668292, 3.07508472e-08, 0.999796629)})
            local Tw3 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(5675.73438, -20.5, 2748.9751, -0.0195927639, 3.10148494e-08, 0.999808073, 8.14329049e-09, 1, -3.08612229e-08, -0.999808073, 7.53707052e-09, -0.0195927639)})
            local Tw4 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(5547.59619, -20.5000076, 2851.90796, -0.999341369, -1.55441859e-09, 0.0362889357, -3.6423029e-09, 1, -5.74689025e-08, -0.0362889357, -5.75632235e-08, -0.999341369)})
            local Tw5 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(5562.21631, -20.5000076, 3029.85229, -0.999971688, 1.23424826e-07, 0.00752679165, 1.23642096e-07, 1, 2.84006791e-08, -0.00752679165, 2.93305025e-08, -0.999971688)})
            local Tw6 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(5671.38916, -20.5000038, 3036.0481, -0.00743863313, 1.04424416e-07, -0.999972343, -1.05891944e-08, 1, 1.04506078e-07, 0.999972343, 1.13662839e-08, -0.00743863313)})
            local Tw7 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(5733.354, -20.5000076, 3197.0957, 0.0876132846, -7.39989403e-08, -0.996154547, 8.07849645e-08, 1, -6.71794353e-08, 0.996154547, -7.4588506e-08, 0.0876132846)})
            local Tw8 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(5849.46729, -20.5, 3099.12891, 0.999937057, 3.79951466e-08, 0.0112192826, -3.82133578e-08, 1, 1.92354488e-08, -0.0112192826, -1.96629646e-08, 0.999937057)})
            local Tw9 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(5870.48682, -20.5000038, 2987.37061, 0.999846458, -2.2171708e-08, 0.0175229646, 2.17854819e-08, 1, 2.22320082e-08, -0.0175229646, -2.18468497e-08, 0.999846458)})
            local Tw10 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(5995.54834, -20.5000038, 2892.17383, 0.998578906, -1.31785676e-08, 0.0532930307, 9.1707264e-09, 1, 7.54483978e-08, -0.0532930307, -7.48524442e-08, 0.998578906)})
            local Tw11 = TweenService:Create(HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(5839.2168, -20.5000038, 2831.2583, 0.999796629, 5.35951408e-08, 0.0201668292, -5.29640936e-08, 1, -3.18254401e-08, -0.0201668292, 3.07508472e-08, 0.999796629)})
            Tw:Play()
            wait(3)
            for i,v in pairs(game.workspace.Purchases.GYM:GetChildren()) do
                if v.Name == "Roadwork Training" then
                    fireclickdetector(v.ClickDetector)
                end
            end
            equipitem("Roadwork Training")
            VirtualUser:Button1Down(Vector2.new(981, 488))
            wait(5)
            Tw:Play()
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
            Tw10:Play()
            wait(4)
            Tw11:Play()
            wait(3)
            Notification.new("success", "Notification", "Success!!!", true , 3)
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
                        CT:Disable()
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
                        CT:Enable()
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
                        CT:Disable()
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
                        CT:Enable()
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
                    CT:Disable()
                    HumanoidRootPart.CFrame = CFrame.new(-1715.58521, 4.12662554, -1586.85852, -0.0413668677, -3.96679596e-08, -0.999144018, -5.47444436e-08, 1, -3.74353988e-08, 0.999144018, 5.31489981e-08, -0.0413668677)
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["2"].ClickDetector)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1720.72473, 4.12662458, -1593.4071, -0.100228146, -1.78955464e-08, -0.99496448, 7.48486926e-08, 1, -2.55260293e-08, 0.99496448, -7.70302151e-08, -0.100228146)
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["9"].ClickDetector)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1716.89111, 4.12662745, -1608.74658, -0.00232439279, -3.48897018e-08, -0.999997318, 9.10893121e-08, 1, -3.51015252e-08, 0.999997318, -9.1170655e-08, -0.00232439279)
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["3"].ClickDetector)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1731.56824, 4.12662172, -1624.4646, -0.27096352, -7.4981358e-08, -0.962589622, -5.64646747e-08, 1, -6.20009715e-08, 0.962589622, 3.75523115e-08, -0.27096352)
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["5"].ClickDetector)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1742.65161, 4.12662888, -1604.37207, -0.00857968535, -9.46922629e-09, -0.999963164, -5.14645837e-09, 1, -9.42541778e-09, 0.999963164, 5.06540188e-09, -0.00857968535)
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["4"].ClickDetector)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1762.04443, 4.12663412, -1595.16418, -0.129098654, 5.65224241e-08, -0.991631746, 4.83307403e-08, 1, 5.0707321e-08, 0.991631746, -4.13800514e-08, -0.129098654)
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["1"].ClickDetector)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1758.63147, 4.12663412, -1576.76929, -0.0565072373, -1.52712865e-08, -0.998402178, 1.1656681e-08, 1, -1.59554663e-08, 0.998402178, -1.25396546e-08, -0.0565072373)
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["7"].ClickDetector)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1739.92322, 4.12663078, -1585.7323, 0.211679071, -2.5104832e-08, -0.977339208, 5.50662307e-08, 1, -1.37602827e-08, 0.977339208, -5.09056228e-08, 0.211679071)
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["8"].ClickDetector)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1727.11743, 4.12663126, -1576.79944, -0.0586111471, -6.83849777e-08, -0.998280883, -7.12253723e-08, 1, -6.43209503e-08, 0.998280883, 6.73330049e-08, -0.0586111471)
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["6"].ClickDetector)
                    wait(5)
                    CT:Enable()
                end

                ----- Delivery Job -----
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.LabelJob.Text == "Deliver the crate!" then 
                    Notification.new("success", "Notification", "Get Delivery Job!!!", true, 3)
                    CT:Disable()
                    Humanoid.Jump = true
                    HumanoidRootPart.CFrame = game.Workspace.Delivery.From.Burger.CFrame
                    wait(7)
                    Humanoid.Jump = true
                    HumanoidRootPart.CFrame = game.Workspace.Delivery.From.Sushi.CFrame
                    wait(7)
                    Humanoid.Jump = true
                    HumanoidRootPart.CFrame = game.Workspace.Delivery.To.Burger.CFrame
                    wait(7)
                    Humanoid.Jump = true
                    HumanoidRootPart.CFrame = game.Workspace.Delivery.To.Sushi.CFrame
                    wait(7)
                    CT:Enable()
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
                    CT:Disable()
                    HumanoidRootPart.CFrame = CFrame.new(-1715.58521, 4.12662554, -1586.85852, -0.0413668677, -3.96679596e-08, -0.999144018, -5.47444436e-08, 1, -3.74353988e-08, 0.999144018, 5.31489981e-08, -0.0413668677)
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["2"].ClickDetector)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1720.72473, 4.12662458, -1593.4071, -0.100228146, -1.78955464e-08, -0.99496448, 7.48486926e-08, 1, -2.55260293e-08, 0.99496448, -7.70302151e-08, -0.100228146)
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["9"].ClickDetector)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1716.89111, 4.12662745, -1608.74658, -0.00232439279, -3.48897018e-08, -0.999997318, 9.10893121e-08, 1, -3.51015252e-08, 0.999997318, -9.1170655e-08, -0.00232439279)
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["3"].ClickDetector)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1731.56824, 4.12662172, -1624.4646, -0.27096352, -7.4981358e-08, -0.962589622, -5.64646747e-08, 1, -6.20009715e-08, 0.962589622, 3.75523115e-08, -0.27096352)
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["5"].ClickDetector)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1742.65161, 4.12662888, -1604.37207, -0.00857968535, -9.46922629e-09, -0.999963164, -5.14645837e-09, 1, -9.42541778e-09, 0.999963164, 5.06540188e-09, -0.00857968535)
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["4"].ClickDetector)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1762.04443, 4.12663412, -1595.16418, -0.129098654, 5.65224241e-08, -0.991631746, 4.83307403e-08, 1, 5.0707321e-08, 0.991631746, -4.13800514e-08, -0.129098654)
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["1"].ClickDetector)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1758.63147, 4.12663412, -1576.76929, -0.0565072373, -1.52712865e-08, -0.998402178, 1.1656681e-08, 1, -1.59554663e-08, 0.998402178, -1.25396546e-08, -0.0565072373)
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["7"].ClickDetector)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1739.92322, 4.12663078, -1585.7323, 0.211679071, -2.5104832e-08, -0.977339208, 5.50662307e-08, 1, -1.37602827e-08, 0.977339208, -5.09056228e-08, 0.211679071)
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["8"].ClickDetector)
                    wait(5)
                    HumanoidRootPart.CFrame = CFrame.new(-1727.11743, 4.12663126, -1576.79944, -0.0586111471, -6.83849777e-08, -0.998280883, -7.12253723e-08, 1, -6.43209503e-08, 0.998280883, 6.73330049e-08, -0.0586111471)
                    wait(1)
                    fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["6"].ClickDetector)
                    wait(5)
                    CT:Enable()
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
                    wait(2)
                    local args = {
                    [1] = "Job"
                    }
                    game:GetService("ReplicatedStorage").Events.EventCore:FireServer(unpack(args))
                end
        
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.LabelJob.Text == "Deliver the crate!" then 
                    Notification.new("success", "Notification", "Success!!!", true, 3)
                    CT:Disable()
                    Humanoid.Jump = true
                    HumanoidRootPart.CFrame = game.Workspace.Delivery.From.Burger.CFrame
                    wait(7)
                    Humanoid.Jump = true
                    HumanoidRootPart.CFrame = game.Workspace.Delivery.From.Sushi.CFrame
                    wait(7)
                    Humanoid.Jump = true
                    HumanoidRootPart.CFrame = game.Workspace.Delivery.To.Burger.CFrame
                    wait(7)
                    Humanoid.Jump = true
                    HumanoidRootPart.CFrame = game.Workspace.Delivery.To.Sushi.CFrame
                    wait(7)
                    CT:Enable()
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

    local Toggle = AutoFarmAntiTG:AddToggle("Auto Run", 
    {
        Title = "Auto Run", 
        Description = "Not Fully Auto",
        Default = false,
        Callback = function(v)
        _G.Run = v

        while _G.Run do wait(1)
            CT:Disable()
            if not LocalPlayer.Backpack:FindFirstChild("Roadwork Training") then
                HumanoidRootPart.CFrame = CFrame.new(-2057.35522, 8.375, -1643.90527, 0.00399909355, -2.54845585e-08, 0.999992013, -2.04004813e-09, 1, 2.54929198e-08, -0.999992013, -2.14198037e-09, 0.00399909355)
            else
                HumanoidRootPart.CFrame = CFrame.new(-1951.23682, 4.05000067, -1642.04651, -0.999084294, -5.82323842e-08, 0.0427854843, -5.69893643e-08, 1, 3.02720728e-08, -0.0427854843, 2.7806033e-08, -0.999084294)
            end
            for i,v in pairs(game.workspace.Purchases.GYM:GetChildren()) do
                if v.Name == "Roadwork Training" then
                    fireclickdetector(v.ClickDetector)
                end
            end
            equipitem("Roadwork Training")
            VirtualUser:Button1Down(Vector2.new(981, 488))
            if game.Workspace.Roadworks.GYM["1"]:FindFirstChild("TouchInterest") or game.Workspace.Roadworks.GYM["2"]:FindFirstChild("TouchInterest") or game.Workspace.Roadworks.GYM["3"]:FindFirstChild("TouchInterest") or game.Workspace.Roadworks.GYM["4"]:FindFirstChild("TouchInterest") or game.Workspace.Roadworks.GYM["5"]:FindFirstChild("TouchInterest") or game.Workspace.Roadworks.GYM["6"]:FindFirstChild("TouchInterest") or game.Workspace.Roadworks.GYM["7"]:FindFirstChild("TouchInterest") or game.Workspace.Roadworks.GYM["8"]:FindFirstChild("TouchInterest") or game.Workspace.Roadworks.GYM["9"]:FindFirstChild("TouchInterest") or game.Workspace.Roadworks.GYM["10"]:FindFirstChild("TouchInterest")then
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
                CT:Enable()
            end
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
            HumanoidRootPart.CFrame = CFrame.new(5839.04199, -20.5, 2848.83813, 0.99961549, -8.25480768e-08, 0.027729148, 8.40106011e-08, 1, -5.15781835e-08, -0.027729148, 5.38878915e-08, 0.99961549)
            wait(2)
            for i,v in pairs(game.workspace.Purchases.GYM:GetChildren()) do
                if v.Name == "Roadwork Training" then
                    fireclickdetector(v.ClickDetector)
                end
            end
            equipitem("Roadwork Training")
            VirtualUser:Button1Down(Vector2.new(981, 488))
            wait(5)
            HumanoidRootPart.CFrame = CFrame.new(5839.2168, -20.5000038, 2831.2583, 0.999796629, 5.35951408e-08, 0.0201668292, -5.29640936e-08, 1, -3.18254401e-08, -0.0201668292, 3.07508472e-08, 0.999796629)
            wait(2)
            HumanoidRootPart.CFrame = CFrame.new(5675.73438, -20.5, 2748.9751, -0.0195927639, 3.10148494e-08, 0.999808073, 8.14329049e-09, 1, -3.08612229e-08, -0.999808073, 7.53707052e-09, -0.0195927639)
            wait(2)
            HumanoidRootPart.CFrame = CFrame.new(5547.59619, -20.5000076, 2851.90796, -0.999341369, -1.55441859e-09, 0.0362889357, -3.6423029e-09, 1, -5.74689025e-08, -0.0362889357, -5.75632235e-08, -0.999341369)
            wait(2)
            HumanoidRootPart.CFrame = CFrame.new(5562.21631, -20.5000076, 3029.85229, -0.999971688, 1.23424826e-07, 0.00752679165, 1.23642096e-07, 1, 2.84006791e-08, -0.00752679165, 2.93305025e-08, -0.999971688)
            wait(2)
            HumanoidRootPart.CFrame = CFrame.new(5671.38916, -20.5000038, 3036.0481, -0.00743863313, 1.04424416e-07, -0.999972343, -1.05891944e-08, 1, 1.04506078e-07, 0.999972343, 1.13662839e-08, -0.00743863313)
            wait(2)
            HumanoidRootPart.CFrame = CFrame.new(5733.354, -20.5000076, 3197.0957, 0.0876132846, -7.39989403e-08, -0.996154547, 8.07849645e-08, 1, -6.71794353e-08, 0.996154547, -7.4588506e-08, 0.0876132846)
            wait(2)
            HumanoidRootPart.CFrame = CFrame.new(5849.46729, -20.5, 3099.12891, 0.999937057, 3.79951466e-08, 0.0112192826, -3.82133578e-08, 1, 1.92354488e-08, -0.0112192826, -1.96629646e-08, 0.999937057)
            wait(2)
            HumanoidRootPart.CFrame = CFrame.new(5870.48682, -20.5000038, 2987.37061, 0.999846458, -2.2171708e-08, 0.0175229646, 2.17854819e-08, 1, 2.22320082e-08, -0.0175229646, -2.18468497e-08, 0.999846458)
            wait(2)
            HumanoidRootPart.CFrame = CFrame.new(5995.54834, -20.5000038, 2892.17383, 0.998578906, -1.31785676e-08, 0.0532930307, 9.1707264e-09, 1, 7.54483978e-08, -0.0532930307, -7.48524442e-08, 0.998578906)
            wait(2)
            HumanoidRootPart.CFrame = CFrame.new(5839.2168, -20.5000038, 2831.2583, 0.999796629, 5.35951408e-08, 0.0201668292, -5.29640936e-08, 1, -3.18254401e-08, -0.0201668292, 3.07508472e-08, 0.999796629)
            wait(2)
            Notification.new("success", "Notification", "Success!!!", true , 3)
        end
    end
    })

    AutoFarmAntiBT:AddButton({
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
                        CT:Disable()
                        HumanoidRootPart.CFrame = CFrame.new(-1715.58521, 4.12662554, -1586.85852, -0.0413668677, -3.96679596e-08, -0.999144018, -5.47444436e-08, 1, -3.74353988e-08, 0.999144018, 5.31489981e-08, -0.0413668677)
                        wait(1)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["2"].ClickDetector)
                        wait(5)
                        HumanoidRootPart.CFrame = CFrame.new(-1720.72473, 4.12662458, -1593.4071, -0.100228146, -1.78955464e-08, -0.99496448, 7.48486926e-08, 1, -2.55260293e-08, 0.99496448, -7.70302151e-08, -0.100228146)
                        wait(1)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["9"].ClickDetector)
                        wait(5)
                        HumanoidRootPart.CFrame = CFrame.new(-1716.89111, 4.12662745, -1608.74658, -0.00232439279, -3.48897018e-08, -0.999997318, 9.10893121e-08, 1, -3.51015252e-08, 0.999997318, -9.1170655e-08, -0.00232439279)
                        wait(1)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["3"].ClickDetector)
                        wait(5)
                        HumanoidRootPart.CFrame = CFrame.new(-1731.56824, 4.12662172, -1624.4646, -0.27096352, -7.4981358e-08, -0.962589622, -5.64646747e-08, 1, -6.20009715e-08, 0.962589622, 3.75523115e-08, -0.27096352)
                        wait(1)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["5"].ClickDetector)
                        wait(5)
                        HumanoidRootPart.CFrame = CFrame.new(-1742.65161, 4.12662888, -1604.37207, -0.00857968535, -9.46922629e-09, -0.999963164, -5.14645837e-09, 1, -9.42541778e-09, 0.999963164, 5.06540188e-09, -0.00857968535)
                        wait(1)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["4"].ClickDetector)
                        wait(5)
                        HumanoidRootPart.CFrame = CFrame.new(-1762.04443, 4.12663412, -1595.16418, -0.129098654, 5.65224241e-08, -0.991631746, 4.83307403e-08, 1, 5.0707321e-08, 0.991631746, -4.13800514e-08, -0.129098654)
                        wait(1)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["1"].ClickDetector)
                        wait(5)
                        HumanoidRootPart.CFrame = CFrame.new(-1758.63147, 4.12663412, -1576.76929, -0.0565072373, -1.52712865e-08, -0.998402178, 1.1656681e-08, 1, -1.59554663e-08, 0.998402178, -1.25396546e-08, -0.0565072373)
                        wait(1)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["7"].ClickDetector)
                        wait(5)
                        HumanoidRootPart.CFrame = CFrame.new(-1739.92322, 4.12663078, -1585.7323, 0.211679071, -2.5104832e-08, -0.977339208, 5.50662307e-08, 1, -1.37602827e-08, 0.977339208, -5.09056228e-08, 0.211679071)
                        wait(1)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["8"].ClickDetector)
                        wait(5)
                        HumanoidRootPart.CFrame = CFrame.new(-1727.11743, 4.12663126, -1576.79944, -0.0586111471, -6.83849777e-08, -0.998280883, -7.12253723e-08, 1, -6.43209503e-08, 0.998280883, 6.73330049e-08, -0.0586111471)
                        wait(1)
                        fireclickdetector(game.Workspace.MapMisc.Jobs.CleaningParts:FindFirstChild(Name)["6"].ClickDetector)
                        wait(5)
                        CT:Enable()
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
                        Notification.new("success", "Notification", "Success!!!", true, 3)
                        CT:Disable()
                        Humanoid.Jump = true
                        HumanoidRootPart.CFrame = game.Workspace.Delivery.From.Burger.CFrame
                        wait(7)
                        Humanoid.Jump = true
                        HumanoidRootPart.CFrame = game.Workspace.Delivery.From.Sushi.CFrame
                        wait(7)
                        Humanoid.Jump = true
                        HumanoidRootPart.CFrame = game.Workspace.Delivery.To.Burger.CFrame
                        wait(7)
                        Humanoid.Jump = true
                        HumanoidRootPart.CFrame = game.Workspace.Delivery.To.Sushi.CFrame
                        wait(7)
                        CT:Enable()
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

    ----- Teleport -----
    TP:AddButton({
        Title = "Gym",
        Description = "",
        Callback = function()
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1946.00305, 3.99999905, -1648.48303, -0.00384854153, 4.68784158e-08, 0.999992609, 6.45444942e-08, 1, -4.66303582e-08, -0.999992609, 6.43645564e-08, -0.00384854153)})
            Tw:Play()
            local TPN = Notification.new("info", "Notification", "Teleporting.", true , 10)
            
            Notification.new("success", "Notification", "Success!!!", true , 3)
        end
    })
    
    TP:AddButton({
        Title = "GymRats",
        Description = "",
        Callback = function()
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
        end
    })

    TP:AddButton({
        Title = "Senkaimon",
        Description = "",
        Callback = function()
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
        end
    })

    TP:AddButton({
        Title = "Burger Queen",
        Description = "",
        Callback = function()
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
        end
    })

    TP:AddButton({
        Title = "Kami Bank",
        Description = "",
        Callback = function()
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
        end
    })

    TP:AddButton({
        Title = "Stats Check",
        Description = "",
        Callback = function()
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
        end
    })

    TP:AddButton({
        Title = "Tournament",
        Description = "",
        Callback = function()
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
        end
    })

    ----- TeleportNPC -----
    TPNPC:AddButton({
        Title = "Hiro Shi",
        Description = "",
        Callback = function()
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1558.70154, 4.04999304, -1633.00952, 0.999905825, -8.26474533e-08, -0.0137247611, 8.22380244e-08, 1, -3.03961301e-08, 0.0137247611, 2.92645712e-08, 0.999905825)})
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
        end
    })

    TPNPC:AddButton({
        Title = "Brekdak",
        Description = "",
        Callback = function()
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1344.87512, -6.69999981, -1409.01636, 0.0146927871, 2.33551151e-10, 0.999892056, -4.84509179e-08, 1, 4.78379503e-10, -0.999892056, -4.84527192e-08, 0.0146927871)})
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
        end
    })

    TPNPC:AddButton({
        Title = "André Araújo",
        Description = "",
        Callback = function()
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1404.70447, 4.3000021, -1723.2074, 0.999947786, -7.88095704e-08, 0.0102168089, 7.87596051e-08, 1, 5.29279554e-09, -0.0102168089, -4.48784743e-09, 0.999947786)})
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
        end
    })

    TPNPC:AddButton({
        Title = "Kwan Jin-soo",
        Description = "",
        Callback = function()
            local Tw = TweenService:Create(HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1777.24451, 4.05000067, -1586.75757, 0.0149672665, -7.44274331e-08, -0.999888003, 7.90651811e-08, 1, -7.32522452e-08, 0.999888003, -7.79599389e-08, 0.0149672665)})
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
        end
    })

    ------ Misc --------
    
    Bypass:AddButton({
        Title = "Anti TP Bypass",
        Description = "Bug !!!",
        Callback = function()
        HumanoidRootPart.CFrame = game.Workspace.Map.Seat.CFrame
        wait(.1)
        Humanoid.Jump = true
        wait(.5)
        HumanoidRootPart.CFrame = CFrame.new(-1709.2572, 4.05218554, -1573.61023, -0.801387548, 5.05635356e-08, -0.598145485, 2.53255372e-08, 1, 5.06030169e-08, 0.598145485, 2.54042707e-08, -0.801387548)
        game.Workspace.Map.Seat:Destroy()
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
        Description = "IF Bug Not Move",
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
    
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local TextButton = Instance.new("TextButton")
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

    ScreenGui.Parent = game:GetService("CoreGui")
    ScreenGui.Name = "RH_Toggle"
    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(58, 104, 255)
    Frame.BackgroundTransparency = 0.75
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.0332326293, 0, 0.103015073, 0)
    Frame.Size = UDim2.new(0.0415407866, 0, 0.0690954775, 0)

    UICorner.CornerRadius = UDim.new(0, 200)
    UICorner.Parent = Frame

    TextButton.Parent = Frame
    TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.BackgroundTransparency = 1.000
    TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.BorderSizePixel = 0
    TextButton.Position = UDim2.new(-0.00313110347, 0, -0.00607577246, 0)
    TextButton.Size = UDim2.new(1, 0, 1, 0)
    TextButton.Font = Enum.Font.FredokaOne
    TextButton.Text = "RH"
    TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.TextScaled = true
    TextButton.TextSize = 20.000
    TextButton.TextWrapped = true
    TextButton.MouseButton1Down:Connect(function()
        Fluent.Window:Minimize()
    end)

    UITextSizeConstraint.Parent = TextButton
    UITextSizeConstraint.MaxTextSize = 20
end
ToggleUI()
