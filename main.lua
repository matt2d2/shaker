display.setStatusBar(display.HiddenStatusBar)

local shakerImage = display.newImage("cocktail-shaker.jpg")
shakerImage:setReferencePoint(display.CenterReferencePoint)
shakerImage.x = display.contentWidth * 0.5
shakerImage.y = display.contentHeight * 0.5

local shakerSound = audio.loadSound("shakerSound.mp3")
local shakeSensor = {}

local rect = display.newRect( 
	display.contentWidth * 0.5, display.contentHeight * 0.5,
	150, 150 )

local rcolor = 0
local function changeRect()
	rect:setFillColor( rcolor, rcolor, rcolor );
	if( rcolor == 255 ) then 
		rcolor = 0 
	else
		rcolor = 255
	end
end


function shakeSensor:accelerometer(e)
	if(e.isShake == true) then
		print( "shake it" )
		changeRect()
		shakerSound = audio.play( shakerSound )
	end
end

Runtime:addEventListener("accelerometer", shakeSensor)
timer.performWithDelay(1000, shakeSensor, -1)
