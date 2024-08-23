# Drag and Drop System for Roblox Studio

Este repositório contém um módulo Lua para o Roblox Studio que implementa um sistema de drag and drop para interfaces gráficas. O módulo permite mover objetos na tela ao clicar e arrastar, com opções configuráveis como atraso de pixel antes do movimento e a habilidade de retornar à posição original após o arrasto.

## Funcionalidades

- **Arrastar e soltar:** Permite aos jogadores arrastarem elementos de interface (GUIs) com o mouse ou toque.
- **Atraso de pixel opcional:** Define um número de pixels que o mouse deve se mover antes de iniciar o arrasto.
- **Retorno à posição original:** Opção para fazer com que o objeto volte à posição original após ser solto.

## Como usar

### Inicializando o Módulo

1. **Importe o módulo** para o seu script no Roblox Studio:
   ```lua
   local dragAndDropModule = require(path.to.dragAndDropModule)



# RobloxDragAndDropModule


# What Is Drag and Drop for Guis: 


![dragAndDrop](https://github.com/user-attachments/assets/bcb6b59c-6ee0-499b-bfb3-a6c564171577)



is the movement of dragging an item and then releasing it

# How To Use:

First put the code in a module script, require the module in a local script


Example how to use:
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
