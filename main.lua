display.setStatusBar(display.HiddenStatusBar)

local shakerImage = display.newImage("cocktail-shaker.jpg")
shakerImage:setReferencePoint(display.CenterReferencePoint)
shakerImage.x = display.contentWidth * 0.5
shakerImage.y = display.contentHeight * 0.5

local shakerSound = audio.loadSound("shakerSound.mp3")
local shakeSensor = {}

function shakeSensor:accelerometer(e)
	if(e.isShake == true) then
		audio.play( shakerSound )
	end
end

Runtime:addEventListener("accelerometer", shakeSensor)
timer.performWithDelay(1000, shakeSensor, -1)
