
local clickSound = game.Workspace.Sounds.click


local replicatedStorage = game:GetService("ReplicatedStorage")
local ClickerbuttonClickedEvent = replicatedStorage:WaitForChild("ClickerButtonClickedEvent")

local AddValue = require(game.ReplicatedStorage.Shared.AddUpgrades)

game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	local points = Instance.new("IntValue")
	points.Parent = leaderstats
	points.Name = "Points"
	points.Value = 0

end)




ClickerbuttonClickedEvent.OnServerEvent:Connect(function(player)
	local leaderstats = player:WaitForChild("leaderstats")
	local points = leaderstats:WaitForChild("Points")
		


if points.Value == nil then
		points.Value = 0
	end

	local pointsCalc = points.Value
	pointsCalc = pointsCalc + AddValue(1)
	

	points.Value = pointsCalc

	clickSound:Play()  
end)

