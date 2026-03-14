local _Pointsmodule = {}



local MultOneActive = false
local MultTwoActive = false
local MultThreeActive = false
local MultFourActive = false

local multOneClicker = game.Workspace.MultOne.ClickDetector

local ColorChangeBrick = game.Workspace.MultOne



multOneClicker.MouseClick:Connect(function()
	if not MultOneActive and not MultTwoActive and not MultThreeActive and not MultFourActive then
		MultOneActive = true
		ColorChangeBrick.BrickColor = BrickColor.new(255,0,0)
	elseif MultOneActive and not MultTwoActive and not MultThreeActive and not MultFourActive then
		MultOneActive = false
		MultTwoActive = true
		ColorChangeBrick.BrickColor = BrickColor.new(0,255,0)

	elseif not MultOneActive and MultTwoActive and not MultThreeActive and not MultFourActive then
		MultTwoActive = false
		MultThreeActive = true
		ColorChangeBrick.BrickColor = BrickColor.new(0,0,255)

	elseif not MultOneActive and not MultTwoActive and MultThreeActive and not MultFourActive then
		MultThreeActive = false
		MultFourActive = true
				ColorChangeBrick.BrickColor = BrickColor.new(255,0,255)

	end

end)



function AddCalc(mult)
	

	if not MultOneActive and not MultTwoActive and not MultThreeActive and not MultFourActive then
		mult = 1
	end

	if MultOneActive then
		mult = 2
	end
	if MultTwoActive then
		mult = 3
	end
	if MultThreeActive then
		mult = 4
	end
	if MultFourActive then
		mult = 5
	end
	return mult
end
return AddCalc