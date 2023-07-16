local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "NaniHub", HidePremium = false, SaveConfig = true, ConfigFolder = "NaniHub"})

--function

local function Dex()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end

local function Esp()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/RB-DaY/RB-DaY/main/RB_ESP.lua", true))()
end

local function Fly()
	loadstring(game:HttpGet('https://pastebin.com/raw/YSL3xKYU'))()
end

local function IJ()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/RB-DaY/RB-DaY/main/RB_InfJump.lua', true))()
end

local function CT()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/RB-DaY/RB-DaY/main/RB_CtrlTP.lua', true))()
end

local function Noclip()
	local Workspace = game:GetService("Workspace")
	local CoreGui = game:GetService("CoreGui")
	local Players = game:GetService("Players")
	local Noclip = Instance.new("ScreenGui")
	local BG = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local Toggle = Instance.new("TextButton")
	local StatusPF = Instance.new("TextLabel")
	local Status = Instance.new("TextLabel")
	local Credit = Instance.new("TextLabel")
	local Plr = Players.LocalPlayer
	local Clipon = false
	
	Noclip.Name = "Noclip"
	Noclip.Parent = game.CoreGui
	
	BG.Name = "BG"
	BG.Parent = Noclip
	BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
	BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
	BG.BorderSizePixel = 2
	BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)
	BG.Size = UDim2.new(0, 210, 0, 127)
	BG.Active = true
	BG.Draggable = true
	
	Title.Name = "Title"
	Title.Parent = BG
	Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
	Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
	Title.BorderSizePixel = 2
	Title.Size = UDim2.new(0, 210, 0, 33)
	Title.Font = Enum.Font.Highway
	Title.Text = "Noclip"
	Title.TextColor3 = Color3.new(1, 1, 1)
	Title.FontSize = Enum.FontSize.Size32
	Title.TextSize = 30
	Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
	Title.TextStrokeTransparency = 0
	
	Toggle.Parent = BG
	Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
	Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
	Toggle.BorderSizePixel = 2
	Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)
	Toggle.Size = UDim2.new(0, 146, 0, 36)
	Toggle.Font = Enum.Font.Highway
	Toggle.FontSize = Enum.FontSize.Size28
	Toggle.Text = "Toggle"
	Toggle.TextColor3 = Color3.new(1, 1, 1)
	Toggle.TextSize = 25
	Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
	Toggle.TextStrokeTransparency = 0
	
	StatusPF.Name = "StatusPF"
	StatusPF.Parent = BG
	StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
	StatusPF.BackgroundTransparency = 1
	StatusPF.Position = UDim2.new(0.314285725, 0, 0.708661377, 0)
	StatusPF.Size = UDim2.new(0, 56, 0, 20)
	StatusPF.Font = Enum.Font.Highway
	StatusPF.FontSize = Enum.FontSize.Size24
	StatusPF.Text = "Status:"
	StatusPF.TextColor3 = Color3.new(1, 1, 1)
	StatusPF.TextSize = 20
	StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
	StatusPF.TextStrokeTransparency = 0
	StatusPF.TextWrapped = true
	
	Status.Name = "Status"
	Status.Parent = BG
	Status.BackgroundColor3 = Color3.new(1, 1, 1)
	Status.BackgroundTransparency = 1
	Status.Position = UDim2.new(0.580952346, 0, 0.708661377, 0)
	Status.Size = UDim2.new(0, 56, 0, 20)
	Status.Font = Enum.Font.Highway
	Status.FontSize = Enum.FontSize.Size14
	Status.Text = "off"
	Status.TextColor3 = Color3.new(0.666667, 0, 0)
	Status.TextScaled = true
	Status.TextSize = 14
	Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
	Status.TextWrapped = true
	Status.TextXAlignment = Enum.TextXAlignment.Left
	
	Credit.Name = "Credit"
	Credit.Parent = BG
	Credit.BackgroundColor3 = Color3.new(1, 1, 1)
	Credit.BackgroundTransparency = 1
	Credit.Position = UDim2.new(0.195238099, 0, 0.866141737, 0)
	Credit.Size = UDim2.new(0, 128, 0, 17)
	Credit.Font = Enum.Font.SourceSans
	Credit.FontSize = Enum.FontSize.Size18
	Credit.Text = "Created by KingLuna"
	Credit.TextColor3 = Color3.new(1, 1, 1)
	Credit.TextSize = 16
	Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	Credit.TextStrokeTransparency = 0
	Credit.TextWrapped = true
	
	Toggle.MouseButton1Click:connect(function()
		if Status.Text == "off" then
			Clipon = true
			Status.Text = "on"
			Status.TextColor3 = Color3.new(0,185,0)
			Stepped = game:GetService("RunService").Stepped:Connect(function()
				if not Clipon == false then
					for a, b in pairs(Workspace:GetChildren()) do
	                if b.Name == Plr.Name then
	                for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
	                if v:IsA("BasePart") then
	                v.CanCollide = false
	                end end end end
				else
					Stepped:Disconnect()
				end
			end)
		elseif Status.Text == "on" then
			Clipon = false
			Status.Text = "off"
			Status.TextColor3 = Color3.new(170,0,0)
		end
	end)
end

local function Arsenal()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/fusiongreg/BoltsHubV5/main/Main"))()
end

-- player tab

local PlayerTab = Window:MakeTab({
 Name = "Player",
 Icon = "rbxassetid://6031215978",
 PremiumOnly = false
})

local Section = PlayerTab:AddSection({
 Name = "Movement"
})

OrionLib:MakeNotification({
	Name = "Welcome!",
	Content = "HI PLAYER",
	Image = "rbxassetid://4483345998",
	Time = 5
})

PlayerTab:AddSlider({
 Name = "Walkspeed",
 Min = 16,
 Max = 200,
 Default = 16,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 ValueName = "WS",
 Callback = function(Value)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
 end    
})

PlayerTab:AddSlider({
	Name = "Jump Height",
	Min = 50,
	Max = 1000,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Height",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

PlayerTab:AddSlider({
	Name = "MaxHealth",
	Min = 100,
	Max = 100000,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Health",
	Callback = function(Value)
	 	game.Players.LocalPlayer.Character.Humanoid.MaxHealth = Value
		game.Players.LocalPlayer.Character.Humanoid.Health = Value
	end    
})

PlayerTab:AddButton({
	 Name = "Inf Jump",
	 Callback = function()
	       IJ()
	 end    
})

PlayerTab:AddButton({
	 Name = "Ctrl TP",
	 Callback = function()
	       CT()
	 end    
})


--other tab

local OtherTab = Window:MakeTab({
 Name = "All",
 Icon = "rbxassetid://6026568213",
 PremiumOnly = false
})

local Section = OtherTab:AddSection({
 Name = "Main"
})


OtherTab:AddButton({
	 Name = "DeX",
	 Callback = function()
	       Dex()
	 end    
})

OtherTab:AddButton({
	 Name = "NoClip",
	 Callback = function()
	       Noclip()
	 end    
})

OtherTab:AddButton({
	 Name = "Admin",
	 Callback = function()
	       loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
	 end    
})

OtherTab:AddButton({
	 Name = "ESP",
	 Callback = function()
	       Esp()
	 end    
})

OtherTab:AddButton({
	 Name = "Fly",
	 Callback = function()
	       Fly()
	 end    
})

OtherTab:AddButton({
	 Name = "God",
	 Callback = function()
	       	game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
		game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
	 end    
})

local PlTab = Window:MakeTab({
	Name = "Ability wars",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = PlTab:AddSection({
 	Name = "Main"
})


PlTab:AddButton({
	Name = "MainHub",
	Callback = function()
		Arsenal()
	end    
})

OrionLib:Init()
