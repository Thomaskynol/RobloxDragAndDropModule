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
local dragAndDropModule = require(game.ReplicatedStorage.dragAndDropModule)

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
