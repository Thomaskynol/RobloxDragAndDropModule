# Drag and Drop System for Roblox Studio

![dragAndDrop](https://github.com/user-attachments/assets/bcb6b59c-6ee0-499b-bfb3-a6c564171577)

This repository contains a Lua module for Roblox Studio that implements a drag and drop system for graphical user interfaces (GUIs). The module allows players to move objects on the screen by clicking and dragging, with configurable options like pixel delay before movement and the ability to return to the original position after dragging.

## Features

- **Drag and drop:** Allows players to drag GUI elements with the mouse or touch.
- **Optional pixel delay:** Sets a number of pixels that the mouse must move before dragging starts.
- **Return to original position:** Option to make the object return to its original position after being released.

## How to Use

### Initializing the Module

1. **Import the module** into your local script in Roblox Studio:
   ```lua
   local dragAndDropModule = require(path.to.dragAndDropModule)
   ```
   
2. **Set the object to be moved** using the `setObjectToMove` function:
   ```lua
   dragAndDropModule.setObjectToMove(guiObject)
   ```

### Available Functions

- `dragAndDropModule.setObjectToMove(passedObject)`  
  Sets the object that will be dragged.
  
- `dragAndDropModule.frameInteractStart(input)`  
  Starts the dragging process when a click or touch is detected.

- `dragAndDropModule.frameInteractEnd(input)`  
  Ends the dragging process and optionally returns the object to its original position.

- `dragAndDropModule.updateMove()`  
  Updates the position of the object while it is being dragged.

### Usage Example

```lua
local dragAndDropModule = require(game.ReplicatedStorage:WaitForChild("dragAndDropModule"))

-- Set the object that will be moved
dragAndDropModule.setObjectToMove(script.Parent)

-- Connect events to start and stop dragging
script.Parent.InputBegan:Connect(dragAndDropModule.frameInteractStart)
script.Parent.InputEnded:Connect(dragAndDropModule.frameInteractEnd)

-- Update the object's position during dragging

game:GetService("UserInputService").InputChanged:Connect(dragAndDropModule.updateMove)

```

## Settings

The module has a few settings that can be adjusted as needed:

- `dragAndDropModule.usePixelDelayToMove`: Enables or disables the pixel delay before movement. Default: `false`.
- `dragAndDropModule.pixelDelayToMove`: Sets the number of pixels of delay before movement starts. Default: `20`.
- `dragAndDropModule.backToPosAfterDrag`: Determines if the object should return to its original position after being released. Default: `false`.

## Contributing

Feel free to fork this repository, submit pull requests, or open issues for improvements and bug fixes.




4. **Set the object to be moved** using the `setObjectToMove` function:
![imagen](https://github.com/user-attachments/assets/d2b38acb-65c5-4609-9caf-387a7c005eca)


you MUST to set the object that will move!

![imagen](https://github.com/user-attachments/assets/d060240c-cc7a-4a9e-b29f-8ce71f1a78f8)


connect start and end inputs of the frame:

![imagen](https://github.com/user-attachments/assets/6eb1ef32-d73d-4878-8fb9-e8d2ad533401)


and connect the function "Update()" with a HeartBeat, RenderStepped or InputChanged
![imagen](https://github.com/user-attachments/assets/d76c1974-39e2-47b0-917d-aaa039238a65)


settings:

![imagen](https://github.com/user-attachments/assets/cba21123-23db-4c02-8387-017729f8f159)


dragAndDropModule.usePixelDelayToMove ----> need move the mouse a certain amount of pixels away before starting the drag

dragAndDropModule.pixelDelayToMove ----> pixel quantity to move(if you are using pixel delay)

dragAndDropModule.backToPosAfterDrag ----> back to position after the drop
