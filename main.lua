local TheBackground = display.newImageRect( "assets/Green.jpg", 4000, 11000 )
TheBackground.x = display.contentCenterX
TheBackground.y = display.contentCenterY
TheBackground.id = "TheBackground"

local calculateButton = display.newImageRect( "assets/calculate-png-hi.png", 100, 100 )
calculateButton.x = 160
calculateButton.y = 210
calculateButton.id = "calculate button"

local calculateButton2 = display.newImageRect( "assets/download.png", 100, 100 )
calculateButton2.x = 100
calculateButton2.y = 425
calculateButton2.id = "calculate button2"

local calculateButton3 = display.newImageRect( "assets/Boton_mal.png", 100, 100 )
calculateButton3.x = 220
calculateButton3.y = 425
calculateButton3.id = "calculate button3"

whatAge = display.newText( "Type your age below: ", 160, 265, native.systemFont, 15 )
whatAge:setFillColor( 255/255, 255/255, 255/255 )

whatDay = display.newText( "hit yes or no if it is the weekend or not", 160, 350, native.systemFont, 15 )
whatDay:setFillColor( 255/255, 255/255, 255/255 )

responseText = display.newText( "What is going on today?", 160, 75, native.systemFont, 15 )
responseText:setFillColor( 255/255, 255/255, 255/255 )

ageField = native.newTextField( display.contentCenterX, display.contentCenterY + 65, 225, 40 )
ageField.id = "Age textField"

weekday = 0

local function calculateButtonTouch ( event )
	
	ageAnswer = tonumber(ageField.text)

	if weekday == 1 and ageAnswer < 18 then
		responseText.text = "Get to school right now!"
	elseif weekday == 1 and ageAnswer >= 18 then
		responseText.text = "GET TO WORK!"
	elseif weekday == 2 then
		responseText.text = "no school it's the weekend!" 
	elseif weekday == 0 or ageAnswer == nil then
		responseText.text = "Insufficient information"

end
end

local function calculateButtonTouch2 ( event )
	
	weekday = 1
	print ("Weekday")

	end

local function calculateButtonTouch3 ( event )
	
	weekday = 2
	print ("Not Weekday")

	end

calculateButton:addEventListener( "touch", calculateButtonTouch )

calculateButton2:addEventListener( "touch", calculateButtonTouch2 )

calculateButton3:addEventListener( "touch", calculateButtonTouch3 )