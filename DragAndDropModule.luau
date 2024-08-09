-- Getting Services
local Players = game:GetService("Players")

-- Starting Objects
dragAndDropModule = {}
local objectToMove

local move = false
local passedPixelDelay = false
local clickInsideFrameX
local clickInsideFrameY
local firstClickPosX
local firstClickPosY
local lastPosition
local lastSize
local endStart = true

-- settings
dragAndDropModule.usePixelDelayToMove = false
dragAndDropModule.pixelDelayToMove = 20
dragAndDropModule.backToPosAfterDrag = false

-- Main
function dragAndDropModule.setObjectToMove(passedObject)
	objectToMove = passedObject
end

function dragAndDropModule.frameInteractStart(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then	
		move = true
		local mousePos = game.Players.LocalPlayer:GetMouse()
		clickInsideFrameX = mousePos.X - objectToMove.AbsolutePosition.X
		clickInsideFrameY= mousePos.Y - objectToMove.AbsolutePosition.Y
		firstClickPosX = mousePos.X
		firstClickPosY = mousePos.Y

		lastSize = objectToMove.Size
		lastPosition = objectToMove.Position

		objectToMove.Size = UDim2.new(0,objectToMove.AbsoluteSize.X,0,objectToMove.AbsoluteSize.Y)
		local absolutePostion = objectToMove.AbsolutePosition
		objectToMove.Position = UDim2.new(0,absolutePostion.X,0,absolutePostion.Y)
	end
end 	

function dragAndDropModule.frameInteractEnd(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		if not endStart then
			return
		end
		endStart = false
		
		move = false
		passedPixelDelay = false
		local mousePos = game.Players.LocalPlayer:GetMouse()
		local backToPlace = true

		if dragAndDropModule.backToPosAfterDrag then
			if backToPlace then
				objectToMove.Position = lastPosition
				objectToMove.Size = lastSize
			end
		end

		task.wait(0.3)
		endStart = true
	end
end

function dragAndDropModule.updateMove()
	local mousePos = game.Players.LocalPlayer:GetMouse()
	if move then
		if dragAndDropModule.usePixelDelayToMove then
			if mousePos.X-firstClickPosX > dragAndDropModule.pixelDelayToMove or mousePos.X-firstClickPosX < -dragAndDropModule.pixelDelayToMove or
				mousePos.Y-firstClickPosY > dragAndDropModule.pixelDelayToMove or mousePos.Y-firstClickPosY < -dragAndDropModule.pixelDelayToMove then passedPixelDelay = true 
			end

			if passedPixelDelay then
				objectToMove.Position = UDim2.new(0,mousePos.X-clickInsideFrameX,0,mousePos.Y-clickInsideFrameY)
			end
		else
			objectToMove.Position = UDim2.new(0,mousePos.X-clickInsideFrameX,0,mousePos.Y-clickInsideFrameY)
		end
	end
end

return dragAndDropModule
