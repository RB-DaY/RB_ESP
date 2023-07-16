local Players = game:GetService("Players"):GetChildren()
local RunService = game:GetService("RunService")
local highlight = Instance.new("Highlight")
local highText = Instance.new("BillboardGui")
local NameText = Instance.new("TextLabel")
highlight.Name = "Highlight"
highText.Name = "BillboardGui"
NameText.Name = "TextLabel"

script.Name = "RB_ESP"

for i,v in pairs(Players) do
	repeat wait() until v.Character
	if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
		local highlightClone = highlight:Clone()
		highlightClone.Adornee = v.Character
		highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
		highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
		highlightClone.OutlineColor = Color3.fromRGB(0,255,0)
		highlightClone.FillTransparency = 1
		highlightClone.Name = "Highlight"
	end
    if not v.Character:FindFirstChild("Head"):FindFirstChild("BillboardGui") then
        local highTextClone = highText:Clone()
		highTextClone.Name = "BillboardGui"
		highTextClone.Size = UDim2.new(0,70,0,7)
		highTextClone.StudsOffset = Vector3.new(0,2,0)
		highTextClone.Parent = v.Character:FindFirstChild("Head")
		local NameTextClone = NameText:Clone()
		NameTextClone.Name = "TextLabel"
		NameTextClone.Size = UDim2.new(1,0,1,0)
		NameTextClone.BackgroundTransparency = 1
		NameTextClone.Visible = true
		NameTextClone.TextColor3 = Color3.fromRGB(255, 255, 255)
		NameTextClone.Text = v.Name
		NameTextClone.Font = Enum.Font.GothamBold
		NameTextClone.TextScaled = true
		NameTextClone.TextStrokeTransparency = 0
		NameTextClone.TextStrokeColor3 = Color3.new(0.152941, 0.152941, 0.152941)
		NameTextClone.Parent = v.Character:FindFirstChild("Head"):FindFirstChild("BillboardGui")
    end
end

game.Players.PlayerAdded:Connect(function(player)
	repeat wait() until player.Character
	if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
		local highlightClone = highlight:Clone()
		highlightClone.Adornee = player.Character
		highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
		highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
		highlightClone.OutlineColor = Color3.fromRGB(0,255,0)
		highlightClone.FillTransparency = 1
		highlightClone.Name = "Highlight"
	end
    if not player.Character:FindFirstChild("Head"):FindFirstChild("BillboardGui") then
        local highTextClone = highText:Clone()
		highTextClone.Name = "BillboardGui"
		highTextClone.Size = UDim2.new(0,70,0,7)
		highTextClone.StudsOffset = Vector3.new(0,2,0)
		highTextClone.Parent = player.Character:FindFirstChild("Head")
		local NameTextClone = NameText:Clone()
		NameTextClone.Name = "TextLabel"
		NameTextClone.Size = UDim2.new(1,0,1,0)
		NameTextClone.BackgroundTransparency = 1
		NameTextClone.Visible = true
		NameTextClone.TextColor3 = Color3.fromRGB(255, 255, 255)
		NameTextClone.Text = player.Name
		NameTextClone.Font = Enum.Font.GothamBold
		NameTextClone.TextScaled = true
		NameTextClone.TextStrokeTransparency = 0
		NameTextClone.TextStrokeColor3 = Color3.new(0.152941, 0.152941, 0.152941)
		NameTextClone.Parent = player.Character:FindFirstChild("Head"):FindFirstChild("BillboardGui")
    end
end)

game.Players.PlayerRemoving:Connect(function(playerRemoved)
	if playerRemoved.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("HighLight") then
		playerRemoved.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("HighLight"):Destory()
	end
    if playerRemoved.Character:FindFirstChild("Head"):FindFirstChild("BillboardGui") then
		playerRemoved.Character:FindFirstChild("Head"):FindFirstChild("BillboardGui"):Destory()
	end
end)

RunService.Heartbeat:Connect(function()
	for i,v in pairs(Players) do
		repeat wait() until v.Character
		if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
			local highlightClone = highlight:Clone()
			highlightClone.Adornee = v.Character
			highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
			highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
			highlightClone.OutlineColor = Color3.fromRGB(0,255,0)
			highlightClone.FillTransparency = 1
			highlightClone.Name = "Highlight"
			task.wait()
		end
	    if not v.Character:FindFirstChild("Head"):FindFirstChild("BillboardGui") then
	        local highTextClone = highText:Clone()
	        highTextClone.Name = "BillboardGui"
	        highTextClone.Size = UDim2.new(0,70,0,7)
            highTextClone.StudsOffset = Vector3.new(0,2,0)
            highTextClone.Parent = v.Character:FindFirstChild("Head")
	        NameTextClone.Name = "TextLabel"
	        NameTextClone.Size = UDim2.new(1,0,1,0)
	        NameTextClone.BackgroundTransparency = 1
	        NameTextClone.Visible = true
			NameTextClone.Font = Enum.Font.GothamBold
	        NameTextClone.TextColor3 = Color3.fromRGB(255, 255, 255)
	    	NameTextClone.Text = v.Name
	        NameTextClone.TextScaled = true
	    	NameTextClone.TextStrokeTransparency = 0
	        NameTextClone.TextStrokeColor3 = Color3.new(0.152941, 0.152941, 0.152941)
	        NameTextClone.Parent = v.Character:FindFirstChild("Head"):FindFirstChild("BillboardGui")
	        task.wait()
	    end
	end
end)
