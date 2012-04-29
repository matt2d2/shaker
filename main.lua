display.setStatusBar(display.HiddenStatusBar)

local shakerImage = display.newImageRect("shaker.png", 206, 480)
shakerImage:setReferencePoint(display.CenterReferencePoint)
shakerImage.x = display.contentWidth * 0.5
shakerImage.y = display.contentHeight * 0.5

local shakerSound = audio.loadSound("shakerSound.wav")
local shakeSensor = {}

system.setAccelerometerInterval( 100 );

function shakeSensor:accelerometer(e)
	if(e.isShake == true) then
		audio.play( shakerSound )
	end
end

Runtime:addEventListener("accelerometer", shakeSensor)
timer.performWithDelay(1000, shakeSensor, -1)
