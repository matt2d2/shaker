local shakerImage = display.newImage("cocktail-shaker.jpg")
shakerImage:setReferencePoint(display.CenterReferencePoint)
shakerImage.x = display.contentWidth * 0.5
shakerImage.y = display.contentHeight * 0.5

local shakerSound = audio.loadSound("shakerSound.mp3")
shakerSound = audio.play( shakerSound )
