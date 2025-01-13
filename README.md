# **Maze-Runner**
_Maze Runner is an assembly-based game created with NASM, featuring challenging mazes where players navigate to find the exit while avoiding traps._

---
## **Features**
![menu](https://github.com/user-attachments/assets/43109011-3af1-4c78-9bd5-746ab92ef9c8)
Use 'Up and Down' arrow keys for navigation between the play and exit button. Press Enter for continuing onto one of the two screens.

---
### **1. Play**
![gameplay](https://github.com/user-attachments/assets/84d5d21e-d957-49ec-9470-2a7319956b0e)

#### **i. Hardcoded Mazes**
There are five hardcoded mazes in the game. Each featuring different challenges, obstacles and rewards. 

#### **ii. Player**
![image](https://github.com/user-attachments/assets/02425160-a7b5-4cd7-a14a-32b23a95a35b)
The green player can move in all four directions using the WASD keys on the keyboard. The User navigates the maze using the player and its movement is based on free spaces and blue walls in the maze. 

#### **iii. Enemies**
![image](https://github.com/user-attachments/assets/1a13913b-962a-4684-8c13-29417fcc6e3c)
The red enemies are the obstacles, the player would encounter along the way. They decrease lives by 1.

#### **iv. Diamond**
![image](https://github.com/user-attachments/assets/a937d85f-bfc4-42eb-8a94-ae251fd99228)
The diamonds are one of the three collectibles and when a player collects them, it adds 50 points to the score.

#### **v. Sword**
![image](https://github.com/user-attachments/assets/8dd27e99-7f81-4761-a6d6-67ed750a1b90)
The swords when collected add 30 points to the score and act as a shield for the player when it has to go up against an enemy. It not only disables the ability of enemy to reduce lives but also adds 100 points to the score.

#### **vi. Keys**
![image](https://github.com/user-attachments/assets/f284b084-dc78-4fd8-b4f1-8a78e4eafd80)
The keys are one of the three collectibles and when a player collects them, it adds 20 points to the score.

#### **vii. Superman Mode**
Pressing the **M** key would add 10 more seconds to the time needed by user to complete the game.

#### **viii. Pie**
![image](https://github.com/user-attachments/assets/8b3e20d5-0a1f-4220-86da-60854d7c74fa)
Signifies the ending piece of the game.

#### **ix. Game win conditions**
If the pie is collected within one minute.

#### **x. Game lose conditions**
If the player runs out of time or lives. 

---
### **2. Exit**

Ends the screen and gives credits to the creators of the game.

![image](https://github.com/user-attachments/assets/0ba5e116-4be6-4ee3-8fdf-83b48523feff)

---
## **Requirements**

* DOSBOX
* NASM (Assembler)
* Afd (Debugger)
* Notepad++

---
## **How to build**
Assembly programming package is provided with the project.asm
* Just download the SFX (AsseT.exe), extract it anywhere you want, and start programming!
* To do that, click on AsseT.exe in the list of files given above, and then click the Download button at the right side of the screen.
* After extraction, you have to run the shortcut named code to get started. Some other instructions are given in the readme.txt file.


