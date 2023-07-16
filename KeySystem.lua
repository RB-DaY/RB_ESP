local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Nani Hub Key System", HidePremium = false, SaveConfig = true})

OrionLib:MakeNotification({
    Name = "NaniHub",
    Content = "You are logged in as "..Player.Name..".",
    Image = "rbxassetid://6031215978",
    Time = 5
})

_G.Key = "689as6fa8sg5214jwragsf8721"
_G.KeyInput = "string"

function MainHub()
    local randed = math.random(1,100)
    if randed <= 30 then
         loadstring(game:HttpGet("https://raw.githubusercontent.com/RB-DaY/RB_ESP/main/stroge", true))()
    else
         loadstring(game:HttpGet("https://raw.githubusercontent.com/RB-DaY/RB_ESP/main/NaniHub.lua", true))()
    end
end

local Tab = Window:MakeTab({
    Name = "Key System",
    Icon = "rbxassetid://6031215978",
    PremiumOnly = false
})

Tab:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        _G.KeyInput = Value
    end
})

Tab:AddButton({
    Name = "Check Key",
    Callback = function()
        if _G.KeyInput == _G.Key then
            MainHub()
        else
            OrionLib:MakeNotification({
                Name = "NaniHub",
                Content = "This Is Not Key",
                Image = "rbxassetid://6031215978",
                Time = 5
            })        
        end
    end
})
