;***********************************************************************
;*                                                                     *
;*                            WELCOME TO                               *
;*                           [ MazeRunner ]                            *
;*                                                                     *
;*                            Created by:                              *
;*                                                                     *
;*                   Ali Hassan  (23L-0690)                            *
;*                   Ayesha Khalid (23L-0667)                          *
;*                                                                     *
;*                  Let the game begin! Have fun!                      *
;*                                                                     *
;***********************************************************************

[org 0x0100]
jmp start

;arrays of mazes: 

MAZE1: db 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
       db 1,0,0,0,0,0,0,0,0,0,0,2,0,1,0,0,0,0,0,1
	   db 1,1,1,1,1,1,1,1,1,1,1,1,0,1,0,1,1,1,0,1
	   db 1,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,1,0,1
	   db 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1
	   db 1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,0,1
	   db 1,0,0,1,0,0,0,0,4,0,1,0,0,0,0,1,0,1,0,1
	   db 1,0,0,1,0,0,0,0,0,6,1,0,0,0,0,1,0,1,0,1
	   db 1,1,1,1,0,0,1,1,0,0,0,0,1,0,0,0,0,1,0,1
	   db 1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,1
	   db 1,2,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,1
	   db 1,0,0,1,1,0,0,1,0,0,1,1,0,3,1,1,1,1,1,1
	   db 1,0,0,0,1,0,0,1,0,0,0,1,0,0,0,0,0,0,0,1
	   db 1,0,1,0,1,1,1,1,1,1,0,1,0,0,0,4,0,0,0,1
	   db 1,0,1,0,1,0,0,0,0,0,0,1,1,1,1,0,1,1,1,1
	   db 1,0,1,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,1
	   db 1,0,1,0,1,0,0,1,1,1,1,1,0,0,1,1,1,1,1,1
	   db 1,0,1,1,1,0,0,0,0,0,3,1,0,0,0,0,0,0,0,1
	   db 1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,5
	   db 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
	   
MAZE2: db 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
       db 1, 0, 0, 0, 1, 0, 2, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1
       db 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1
       db 1, 0, 0, 0, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1
       db 1, 0, 0, 0, 4, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1
       db 1, 0, 0, 0, 0, 0, 0, 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
       db 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1
       db 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1
       db 1, 0, 0, 0, 0, 1, 0, 4, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1
       db 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1
       db 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
	   db 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
	   db 1, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5
       db 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
	   
MAZE3: db 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
       db 1,0,0,0,0,0,0,0,1,0,0,0,2,0,0,0,1,0,0,1  
       db 1,0,1,1,1,1,0,0,1,0,0,1,1,1,0,0,1,0,0,1  
       db 1,0,1,0,0,1,0,3,0,0,0,0,1,1,0,0,1,0,0,1
       db 1,0,1,0,1,1,1,1,1,0,0,0,1,1,0,0,1,0,0,1
       db 1,0,1,0,0,4,1,0,0,0,0,0,1,1,0,0,0,0,0,1 
       db 1,0,1,0,0,0,1,0,0,0,0,0,1,1,0,0,0,0,0,1
       db 1,0,1,0,0,0,1,0,0,1,6,1,1,1,1,1,1,1,1,1
       db 1,0,1,1,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,1 
       db 1,0,0,1,0,0,1,0,0,1,0,0,1,2,0,0,0,0,0,1 
       db 1,1,0,1,0,0,1,1,1,1,0,0,1,0,0,0,1,0,0,1 
       db 1,0,0,1,0,0,1,0,3,1,0,0,1,0,0,0,1,0,0,1 
       db 1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,0,1,0,0,1  
       db 1,0,1,1,0,0,1,0,1,1,0,0,1,0,4,0,1,0,0,1  
       db 1,0,0,1,0,0,1,0,0,0,0,0,1,0,0,0,1,0,0,1     
       db 1,0,0,0,0,0,1,0,0,0,0,0,2,0,0,0,1,0,0,1 
       db 1,1,1,0,0,0,1,1,0,0,0,0,0,0,0,0,1,0,0,1 
       db 1,0,1,0,0,0,1,3,0,1,1,1,1,1,1,1,1,0,0,1  
       db 1,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,5
       db 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
	   
MAZE4: db 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
       db 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 2, 0, 1, 0, 0, 0, 0, 1
       db 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1
       db 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 3, 1, 0, 0, 0, 0, 1, 0, 1
       db 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1
       db 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 1, 0, 0, 0, 0, 1
       db 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1
       db 1, 0, 0, 0, 1, 0, 0, 0, 1, 6, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1
       db 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1
	   db 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1
       db 1, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1
       db 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1
       db 1, 0, 3, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1
       db 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1
       db 1, 0, 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1
       db 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1
       db 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1
       db 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 1, 0, 0, 5
       db 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
	   
MAZE5: db 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
       db 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 2, 0, 0, 1
       db 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1
       db 1, 0, 1, 0, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1
       db 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1
       db 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 1, 0, 0, 0, 1
       db 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1
       db 1, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
       db 1, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1
	   db 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1
       db 1, 0, 0, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1
       db 1, 0, 0, 1, 0, 0, 0, 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1
       db 1, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1
       db 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1
       db 1, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5
       db 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
	   
;array for player icon	   
declare_player:
       db 0,0,0,0,0,0,0,0,0,0
	   db 0,2,2,2,2,2,2,2,2,0
	   db 0,2,0,0,0,0,0,0,2,0
	   db 0,2,0,2,0,0,2,0,2,0
	   db 0,2,0,0,0,0,0,0,2,0
	   db 0,2,0,2,0,0,2,0,2,0
	   db 0,2,0,2,2,2,2,0,2,0
	   db 0,2,0,0,0,0,0,0,2,0
	   db 0,2,2,2,2,2,2,2,2,0
	   db 0,0,0,0,0,0,0,0,0,0

;array for enemy icon 
declare_enemy:
       db 0,0,0,0,0,0,0,0,0,0
	   db 0,4,4,4,4,4,4,4,4,0
	   db 0,4,0,0,0,0,0,0,4,0
	   db 0,4,0,4,0,0,4,0,4,0
	   db 0,4,0,0,0,0,0,0,4,0
	   db 0,4,0,4,4,4,4,0,4,0
	   db 0,4,0,4,0,0,4,0,4,0
	   db 0,4,0,0,0,0,0,0,4,0
	   db 0,4,4,4,4,4,4,4,4,0
	   db 0,0,0,0,0,0,0,0,0,0

;array for pie icon   
declare_pie:
       db 0,0,0,0,0,0,0,0,0,0
	   db 0,0,0,0,0,0,0,0,0,0
	   db 0,0,43,43,43,43,43,0,0,0
	   db 0,0,0,43,0,43,0,0,0,0
	   db 0,0,0,43,0,43,0,0,0,0
	   db 0,0,0,43,0,43,0,0,0,0
	   db 0,0,0,43,0,43,0,0,0,0
	   db 0,0,0,43,0,43,43,0,0,0
	   db 0,0,0,0,0,0,0,0,0,0
	   db 0,0,0,0,0,0,0,0,0,0

;array for diamond icon 	   
declare_diamond:
       db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
	   db 0, 0, 0, 1, 1, 1, 1, 0, 0, 0
	   db 0, 0, 1,11,11,11,15, 1, 0, 0
	   db 0, 1, 1, 1, 1, 1, 1,15, 1, 0
	   db 0, 1,11,11,11,11,15,11, 1, 0
	   db 0, 1,11,11,11,11,11,11, 1, 0
	   db 0, 0, 1,11,11,11,11, 1, 0, 0
	   db 0, 0, 0, 1, 1, 1, 1, 0, 0, 0
	   db 0, 0, 0, 0, 1, 1, 0, 0, 0, 0
	   db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

;array for key icon	   
declare_key:
       db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
	   db 0, 0, 0, 0,44, 0, 0, 0, 0, 0
	   db 0, 0, 0, 0,44,43,44, 0, 0, 0
	   db 0, 0, 0, 0,44,43, 0, 0, 0, 0
	   db 0, 0, 0, 0,44, 0, 0, 0, 0, 0
	   db 0, 0, 0,44,44,43, 0, 0, 0, 0
	   db 0, 0, 0,44, 0,43, 0, 0, 0, 0
	   db 0, 0, 0,43,43,44, 0, 0, 0, 0
	   db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
	   db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

;array for sword icon 	   
declare_sword:
       db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
	   db 0, 0, 0, 0, 0, 0, 0,15,11, 0
	   db 0, 0, 0, 0, 0, 0,15,11, 1, 0
	   db 0, 0, 0, 0, 0,15,11, 1, 0, 0
	   db 0, 0,43,43,15,11, 1, 0, 0, 0
	   db 0, 0, 0,43,11, 1, 0, 0, 0, 0
	   db 0, 0, 0, 4,43,43, 0, 0, 0, 0
	   db 0, 0, 4, 0, 0,43, 0, 0, 0, 0
	   db 0, 4, 0, 0, 0, 0, 0, 0, 0, 0
	   db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
	   
;FONT DATA

A:
    db  00111100b   
    db  01100110b
    db  01100110b
    db  01111110b
    db  01100110b
    db  01100110b
    db  01100110b
    db  00000000b

B:
    db  11111100b
    db  11000110b
    db  11000110b
    db  11111100b
    db  11000110b
    db  11000110b
    db  11111100b
    db  00000000b

C:
    db  00111100b
    db  01100110b
    db  11000000b
    db  11000000b
    db  11000000b
    db  01100110b
    db  00111100b
    db  00000000b

D:
    db  11111000b
    db  11001100b
    db  11000110b
    db  11000110b
    db  11000110b
    db  11001100b
    db  11111000b
    db  00000000b

E:
    db  11111110b
    db  11000000b
    db  11000000b
    db  11111100b
    db  11000000b
    db  11000000b
    db  11111110b
    db  00000000b

F:
    db  11111110b
    db  11000000b
    db  11000000b
    db  11111100b
    db  11000000b
    db  11000000b
    db  11000000b
    db  00000000b

G:
    db  00111100b
    db  01100110b
    db  11000000b
    db  11001110b
    db  11000110b
    db  01100110b
    db  00111110b
    db  00000000b

H:
    db  11000110b
    db  11000110b
    db  11000110b
    db  11111110b
    db  11000110b
    db  11000110b
    db  11000110b
    db  00000000b

I:
    db  00111100b
    db  00011000b
    db  00011000b
    db  00011000b
    db  00011000b
    db  00011000b
    db  00111100b
    db  00000000b

J:
    db  00011110b
    db  00001100b
    db  00001100b
    db  00001100b
    db  11001100b
    db  11001100b
    db  01111000b
    db  00000000b

K:
    db  11000110b
    db  11001100b
    db  11011000b
    db  11110000b
    db  11011000b
    db  11001100b
    db  11000110b
    db  00000000b

L:
    db  11000000b
    db  11000000b
    db  11000000b
    db  11000000b
    db  11000000b
    db  11000000b
    db  11111110b
    db  00000000b

M:
    db  11000011b
    db  11100111b
    db  11111111b
    db  11011011b
    db  11000011b
    db  11000011b
    db  11000011b
    db  00000000b

N:
    db  11000011b
    db  11100011b
    db  11110011b
    db  11011011b
    db  11001111b
    db  11000111b
    db  11000011b
    db  00000000b

O:
    db  00111100b
    db  01100110b
    db  11000011b
    db  11000011b
    db  11000011b
    db  01100110b
    db  00111100b
    db  00000000b

P:
    db  11111100b
    db  11000110b
    db  11000110b
    db  11111100b
    db  11000000b
    db  11000000b
    db  11000000b
    db  00000000b

Q:
    db  00111100b
    db  01100110b
    db  11000011b
    db  11000011b
    db  11001011b
    db  01100110b
    db  00111110b
    db  00000000b

R:
    db  11111100b
    db  11000110b
    db  11000110b
    db  11111100b
    db  11011000b
    db  11001100b
    db  11000110b
    db  00000000b

S:
    db  00111100b
    db  01100110b
    db  01100000b
    db  00111100b
    db  00000110b
    db  01100110b
    db  00111100b
    db  00000000b

T:
    db  11111111b
    db  00011000b
    db  00011000b
    db  00011000b
    db  00011000b
    db  00011000b
    db  00011000b
    db  00000000b

U:
    db  11000011b
    db  11000011b
    db  11000011b
    db  11000011b
    db  11000011b
    db  11000011b
    db  01111110b
    db  00000000b

V:
    db  11000011b
    db  11000011b
    db  11000011b
    db  11000011b
    db  01100110b
    db  00111100b
    db  00011000b
    db  00000000b

W:
    db  11000011b
    db  11000011b
    db  11000011b
    db  11000011b
    db  11011011b
    db  11111111b
    db  01100110b
    db  00000000b

X:
    db  11000011b
    db  01100110b
    db  00111100b
    db  00011000b
    db  00111100b
    db  01100110b
    db  11000011b
    db  00000000b

Y:
    db  11000011b
    db  11000011b
    db  01100110b
    db  00111100b
    db  00011000b
    db  00011000b
    db  00011000b
    db  00000000b

Z:
    db  11111111b
    db  00000110b
    db  00001100b
    db  00011000b
    db  00110000b
    db  01100000b
    db  11111111b
    db  00000000b
	
; 0
NUM_0:
    db  00111100b
    db  01100110b
    db  11000011b
    db  11000011b
    db  11000011b
    db  01100110b
    db  00111100b
    db  00000000b

; 1
NUM_1:
    db  00011000b
    db  00111000b
    db  00011000b
    db  00011000b
    db  00011000b
    db  00011000b
    db  01111110b
    db  00000000b

; 2
NUM_2:
    db  00111100b
    db  01100110b
    db  00000110b
    db  00001100b
    db  00011000b
    db  01100000b
    db  01111110b
    db  00000000b

; 3
NUM_3:
    db  00111100b
    db  01100110b
    db  00000110b
    db  00011100b
    db  00000110b
    db  01100110b
    db  00111100b
    db  00000000b

; 4
NUM_4:
    db  00001100b
    db  00011100b
    db  00101100b
    db  01001100b
    db  11111111b
    db  00001100b
    db  00001100b
    db  00000000b

; 5
NUM_5:
    db  01111110b
    db  01100000b
    db  01111100b
    db  00000110b
    db  00000110b
    db  01100110b
    db  00111100b
    db  00000000b

; 6
NUM_6:
    db  00111100b
    db  01100110b
    db  01100000b
    db  01111100b
    db  01100110b
    db  01100110b
    db  00111100b
    db  00000000b

; 7
NUM_7:
    db  01111110b
    db  00000110b
    db  00000110b
    db  00001100b
    db  00011000b
    db  00011000b
    db  00011000b
    db  00000000b

; 8
NUM_8:
    db  00111100b
    db  01100110b
    db  01100110b
    db  00111100b
    db  01100110b
    db  01100110b
    db  00111100b
    db  00000000b

; 9
NUM_9:
    db  00111100b
    db  01100110b
    db  01100110b
    db  00111110b
    db  00000110b
    db  01100110b
    db  00111100b
    db  00000000b

; Dash (-)
DASH:
    db  00000000b
    db  00000000b
    db  00000000b
    db  01111110b
    db  01111110b
    db  00000000b
    db  00000000b
    db  00000000b

TRIANGLE_ARROW:
    db  00001000b
    db  00001100b
    db  00001110b
    db  00001111b
    db  00001110b
    db  00001100b
    db  00001000b
    db  00000000b


;variables declaration 
size: dw 400
width: dw 20
current_row: dw 0
current_col: dw 0
player_row: dw 5
player_col: dw 5
previous_row: dw 5
previous_col: dw 5
player_velocity: dw 5
Game_over: db 'GAME OVER!!!!'
Player_won: db 'Player won!!!!'
score_text: db 'SCORE: '  
score: dw 0
score_buffer: db '000',0
lives_text: db 'LIVES: '  
lives: dw 3
lives_buffer: db '0',0
timer_text: db 'TIME: '  
timer: dw 0
timer_buffer: db '00',0
won_loss: dw 0
super_flag: dw 0
sword_flag: dw 0
button_selection: dw 0
ENTER_flag:  dw 0
play_quit: dw 0
oldisr: dd 0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;MAIN FUNCTION ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
start: 
    mov ah, 0x00; Setting to video mode
    mov al, 0x13; Gives a 256 colour pallete
    int 0x10
    call interrupt_for_menu
    call setMenuBackground
    call draw_Menu
    draw:
		cmp word [ENTER_flag], 1
		jnz draw
	xor ax, ax
	mov es, ax
	mov ax, [cs:oldisr]
	mov bx, [cs:oldisr + 2]
	cli
	mov [es:9*4], ax
	mov [es:9*4 + 2], bx
	sti
    call clrscr
	cmp word [cs:play_quit], 1
	jz Quitter
    call play
	cmp word [won_loss], 1
	jz yay
	call display_GAME_OVER
	jmp l1
	yay:
	call display_PLAYER_WON
	l1: jmp l1
	Quitter:
	call setMenuBackground
	call display_credits
	r2: jmp r2
    mov ax, 0x4c00
    int 0x21
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;Clear Screen ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
clrscr:
    push es
    push ax
    push di
    mov ax, 0xA000
    mov di, 0
    mov es, ax
    mov cx, 64000
    mov ax, 0
    rep stosb
    pop es
    pop ax
    pop di 
    ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;Random ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Random:
    push bp
    mov bp,sp;
    push cx
    push ax
    push dx;
    mov ah, 00h ; interrupts to get system time
    int 1ah ; CX:DX now hold number of clock ticks since midnight
    mov ax, dx
    xor dx, dx
    mov cx, 5 ; Dividing the remaing number by number of mazes
    div cx
    mov [bp + 4], dx; ; Passing it into the output variable 
    pop cx;
    pop ax;
    pop dx;
    pop bp;
    ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;Play ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
play:
    pusha
    push es

    push ax
    call Random
    pop ax ; Getting the random number
    
	;Choosing the maze based on the random number
    cmp ax, 0
    jnz next_one
    mov bx, MAZE1
	jmp set_game
    next_one:
        cmp ax, 1
        jnz next_two
		mov bx, MAZE2
	    jmp set_game
    next_two:
        cmp ax, 2
		jnz next_three
		mov bx, MAZE3
	    jmp set_game
    next_three:
	    cmp ax, 3
		jnz next_four
		mov bx, MAZE4
	    jmp set_game
	next_four:
        cmp ax, 4
		mov bx, MAZE5
	
	;Draw maze, characters and text
	set_game:
	push bx
    mov cx, [size]
    push cx
    call genmaze
	call draw_player
	call display_score_text
	call display_score
	call display_timer_text
	call timer_score
	call display_LIVES_text
	call display_lives
	mov si, bx
	add si, 21
	
	;Game loop
	Game_loop:
	    
		call delay
		add word [timer], 01
		cmp word [timer], 600
		jz near go_back
		
		call timer_score
	    mov ah, 0x01
        int 0x16 ; If key has been pressed or not
        jz near go_next ; if not
	    mov ah, 00 ; If pressed then check for the keystroke
		int 0x16
		;;;;;;;;;;;;;;;w;;;;;;;;;;;;;;;
		cmp al, 0x57
		je move_up
		cmp al, 0x77
		je move_up
		;;;;;;;;;;;;;;a;;;;;;;;;;;;;;;;
		cmp al, 0x41
		je near move_left
		cmp al, 0x61
		je near move_left
		;;;;;;;;;;;;;;s;;;;;;;;;;;;;;;;
		cmp al, 0x53
		je near move_down
		cmp al, 0x73
		je near move_down
		;;;;;;;;;;;;;;d;;;;;;;;;;;;;;;;
		cmp al, 0x44
		je near move_right
		cmp al, 0x64
		je near move_right
		;;;;;;;;;;;;;;m;;;;;;;;;;;;;;;;
		cmp al, 0x4d
		je near superman
		cmp al, 0x6d
		je near superman
		jmp go_next
		
		superman:
		;Check if the mode has been used once or not.
		;If not then it decreases time by 10 seconds
		    cmp word [super_flag], 1
			jz near go_next
			cmp word [timer], 110
			jl near go_next
		    sub word [timer], 100
			inc word [super_flag]
			jmp go_next
		move_up:
		    cmp byte [si - 20], 1
			jz near go_next
			u_enemy:
				cmp byte [si - 20], 2
				jnz u_diamond
				cmp word [sword_flag], 1
				jnz u_live
				dec word [sword_flag]
				add word [score], 100
				jmp u_space
				u_live:
				sub word [lives], 1
				jmp u_space
			u_diamond:
			    cmp byte [si - 20], 3
			    jnz u_key
			    add word [score], 50
				jmp u_space
			u_key:
			    cmp byte [si - 20], 4
				jnz u_sword
				add word [score], 20
				jmp u_space
			u_sword:
			    cmp byte [si - 20], 6
				jnz u_space
				add word [score], 30
				inc word [sword_flag]
			u_space:
			    mov dx, [player_row]
		        mov [previous_row], dx
				mov dx, [player_col]
				mov [previous_col], dx
				mov dx, [player_velocity]
				sub [player_row], dx
				sub si, 20
				jmp go_next
			
		move_left:
		    cmp byte [si - 1], 1
			jz near go_next
			l_enemy:
				cmp byte [si - 1], 2
				jnz l_diamond
				cmp word [sword_flag], 1
				jnz l_live
				dec word [sword_flag]
				add word [score], 100
				jmp l_space
				l_live:
				sub word [lives], 1
				jmp l_space
			l_diamond:
				cmp byte [si - 1], 3
				jnz l_key
				add word [score], 50
			l_key:
			    cmp byte [si - 1], 4
				jnz l_sword
				add word [score], 20
				jmp l_space
			l_sword:
			    cmp byte [si - 1], 6
				jnz l_space
				add word [score], 30
				inc word [sword_flag]
			l_space:
				mov dx, [player_row]
				mov [previous_row], dx
				mov dx, [player_col]
				mov [previous_col], dx
				mov dx, [player_velocity]
				sub [player_col], dx
				dec si
				jmp go_next
			
		move_down:
		    cmp byte [si + 20], 1
			jz near go_next
			d_enemy:
				cmp byte [si + 20], 2
				jnz d_diamond
				cmp word [sword_flag], 1
				jnz d_live
				dec word [sword_flag]
				add word [score], 100
				jmp d_space
				d_live:
				sub word [lives], 1
				jmp d_space
			d_diamond:
				cmp byte [si + 20], 3
				jnz d_key
				add word [score], 50
				jmp d_space
			d_key:
			    cmp byte [si + 20], 4
				jnz d_sword
				add word [score], 20
				jmp d_space
			d_sword:
			    cmp byte [si + 20], 6
				jnz d_space
				add word [score], 30
				inc word [sword_flag]
			d_space:
				mov dx, [player_row]
				mov [previous_row], dx
				mov dx, [player_col]
				mov [previous_col], dx
				mov dx, [player_velocity]
				add [player_row], dx
				add si, 20
				jmp go_next
		move_right:
		    cmp byte [si + 1], 1
			jz go_next
			r_enemy:
				cmp byte [si + 1], 2
				jnz r_diamond
				cmp word [sword_flag], 1
				jnz r_live
				dec word [sword_flag]
				add word [score], 100
				jmp r_space
				r_live:
				sub word [lives], 1
				jmp r_space
			r_diamond:
				cmp byte [si + 1], 3
				jnz r_key
				add word [score], 50
				jmp r_space
			r_key:
			    cmp byte [si + 1], 4
				jnz r_sword
				add word [score], 20
				jmp r_space
			r_sword:
			    cmp byte [si + 1], 6
				jnz r_space
				add word [score], 30
				inc word [sword_flag]
			r_space:
				mov dx, [player_row]
				mov [previous_row], dx
				mov dx, [player_col]
				mov [previous_col], dx
				mov dx, [player_velocity]
				add [player_col], dx
				inc si
				jmp go_next
			
		go_next:
			call erase_rectangle
			call draw_player
			call display_lives
			call timer_score
			call display_score
			cmp word [lives], 0
			jz near go_back
			cmp byte [si], 5
			jz won_back
			mov byte [si], 0
			jmp Game_loop
		won_back:
		    mov word [won_loss], 1
			mov di, 600
			sub di, [timer]
			shr di, 1
			add [score], di
			call display_score 
	    go_back:
			pop es
			popa 
			ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;Generate ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
genmaze:
    push bp
    mov bp, sp
    pusha
    mov bx, [bp + 6]  ; Pointer to the maze data
    mov si, 0         ; Maze index
    mov cx, 0         ; Column counter

outer_maze: 
    mov al, [bx + si]  ; Load maze cell value
    cmp al, 1          ; Check if it’s a wall
    jz wall
    cmp al, 2          ; Check if it's an enemy
    jz enemy
    cmp al, 3          ; Check if it's a gift
    jz diamond
	cmp al, 4
	jz key
	cmp al, 5
	jz pie
	cmp al, 6
	jz weapon
    ; Open path
    push word 0
    jmp next

wall:
        mov dx, 0x03c8
        mov al, 0x40
        out dx, al
        mov dx, 0x03c9
        mov al, 20      ; Light electric blue
        out dx, al
        mov al, 40
        out dx, al
        mov al, 63
        out dx, al
    push word 0x40
    jmp next
key:
    mov dx, declare_key
    push dx	
    call Custom_draw
	jmp l2
pie: 
    mov dx, declare_pie
    push dx
    call Custom_draw
	jmp l2
enemy:
    mov dx, declare_enemy
    push dx
    call Custom_draw
	jmp l2
diamond:
    mov dx, declare_diamond
    push dx
    call Custom_draw
    jmp l2
weapon:
    mov dx, declare_sword
	push dx
    call Custom_draw
    jmp l2
next:
    call draw_rectangle

l2:
    inc cx 
    inc si
    cmp si, [size]
    jz end_maze
    cmp cx, [width]
    jz next_row
    add word [current_col], 5
    jmp outer_maze

next_row:
    add word [current_row], 5
    mov word [current_col], 0
    mov cx, 0
    jmp outer_maze

end_maze:
    popa
    pop bp
    ret 4
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;Player ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
draw_player:
    push bp
    mov bp,sp
	push es
    pusha
    mov ax, 0xA000
    mov es, ax
    mov ax, 320
    mul word [player_row]
    add ax, [player_col]
	shl ax, 1
    mov di, ax
	mov dx, di
    mov cx, 0
	mov bx, declare_player
	mov si, 0
	player_outer:
        mov al, [bx + si]
		mov [es:di], al
		inc cx
		inc si
		inc di
		cmp si, 100
		jz player_end
		cmp cx, 10
		jz player_next_row
		jmp player_outer
		
		player_next_row:
		mov cx, 0
		add dx, 320
		mov di, dx
		jmp player_outer
    
    player_end:
	
        popa
	    pop es
		pop bp
        ret 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;Custom ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Custom_draw:
    push bp
    mov bp,sp
    pusha
	push es
    mov ax, 0xA000
    mov es, ax
    mov ax, 320
    mul word [current_row]
    add ax, [current_col]
	shl ax, 1
    mov di, ax
	mov dx, di
    mov cx, 0
	mov bx, [bp + 4]
	mov si, 0
	custom_outer:
        mov al, [bx + si]
		mov [es:di], al
		inc cx
		inc si
		inc di
		cmp si, 100
		jz custom_end
		cmp cx, 10
		jz custom_next_row
		jmp custom_outer
		
		custom_next_row:
		mov cx, 0
		add dx, 320
		mov di, dx
		jmp custom_outer
    
    custom_end:
	pop es
        popa
		pop bp
        ret 2

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;Rectangle ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
draw_rectangle:
push bp
    mov bp,sp
    push es
    push ax
    push bx
    push cx
    push si
    push di

    mov ax, 0xA000
    mov es, ax
    mov ax, 320
    mul word [current_row]
    add ax, [current_col]
    shl ax, 1
    mov di, ax
    mov cx, 0
    outer:
        inc cx
        cmp cx, 9
        jg end
        mov si, di
        mov bx, 1
        innerloop:
        mov ax, [bp + 4]
        mov [es:si], ax
        inc bx
        add si, 1
        cmp bx, 9
        jle innerloop
        add di, 320
        jmp outer
    end:
        pop di
        pop si
        pop cx
        pop bx
        pop ax
        pop es
        pop bp
        ret 2
		
erase_rectangle:
push bp
    mov bp,sp
    pusha
	push es
    mov ax, 0xA000
    mov es, ax
    mov ax, 320
    mul word [previous_row]
    add ax, [previous_col]
	shl ax, 1
    mov di, ax
    mov cx, 0
	erase_outer:
        inc cx
        cmp cx, 9
        jg erase_end
        mov si, di
        mov bx, 1
        erase_innerloop:
        mov ax, 0
        mov [es:si], ax
        inc bx
        add si, 1
        cmp bx, 9
        jle erase_innerloop
        add di, 320
        jmp erase_outer
    erase_end:
	pop es
        popa
		pop bp
        ret 
		
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;GameOver ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
display_GAME_OVER:
pusha
push ds
push es
    mov ah, 0x13          ; BIOS interrupt to write string
    mov al, 1            
    mov bh, 0             
    mov bl, 0x04          ; (white)
    mov dx, 320 * 16 + 226 ; Position
    mov cx, 13            ; Length 
    push cs
    pop es
    mov bp, Game_over
    int 0x10
	pop es
	pop ds
	popa
    ret	

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Text Display;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;; On Game Board Functions ;;;;;;;;;;;;;;;;;;;;;;;;	
display_LIVES_text:
    pusha
    push ds
    push es
    mov ah, 0x13          ; BIOS interrupt to write string
    mov al, 1            
    mov bh, 0             
    mov bl, 0x07          ; (white)
    mov dx, 320 * 12 + 228 ; Position
    mov cx, 7            ; Length 
    push cs
    pop es
    mov bp, lives_text
    int 0x10
	pop es
	pop ds
	popa
    ret		
	
display_lives:
pusha
push ds
push es
call convert_to_ascii_l
mov ah, 0x13          ; BIOS interrupt to write string
    mov al, 1             
    mov bh, 0             
    mov bl, 0x07         ;  (white)
    mov dx, 320 * 12 + 235 
    mov cx, 1         
    push cs
    pop es
    mov bp, lives_buffer
    int 0x10
	pop es
	pop ds
	popa
    ret
convert_to_ascii_l:
    pusha
    push ds
    push es
    mov ax, [lives]       ; Load the score value
    mov bx, lives_buffer  ; Point to the score buffer           
    add al, '0'           ; Convert quotient to ASCII
    mov [bx], al         
	pop es
	pop ds
	popa
    ret
display_PLAYER_WON:
pusha
push ds
push es
    mov ah, 0x13          ; BIOS interrupt to write string
    mov al, 1            
    mov bh, 0             
    mov bl, 0x03          ; (white)
    mov dx, 320 * 16 + 226 ; Position
    mov cx, 14            ; Length 
    push cs
    pop es
    mov bp, Player_won
    int 0x10
	pop es
	pop ds
	popa
    ret
display_score_text:
pusha
push ds
push es
    mov ah, 0x13          ; BIOS interrupt to write string
    mov al, 1            
    mov bh, 0             
    mov bl, 0x07          ; (white)
    mov dx, 320 * 4 + 228 ; Position
    mov cx, 7            ; Length 
    push cs
    pop es
    mov bp, score_text
    int 0x10
	pop es
	pop ds
	popa
    ret
display_score:
pusha
push ds
push es
call convert_to_ascii
mov ah, 0x13          ; BIOS interrupt to write string
    mov al, 1             
    mov bh, 0             
    mov bl, 0x07         ;  (white)
    mov dx, 320 * 4 + 235 
    mov cx, 3         
    push cs
    pop es
    mov bp, score_buffer
    int 0x10
	pop es
	pop ds
	popa
    ret
convert_to_ascii:
pusha
push ds
push es
mov ax, [score]       ; Load the score value
    mov cx, 100            ; Divisor for decimal conversion
    mov bx, score_buffer  ; Point to the score buffer

    ; Convert tens place
    xor dx, dx           
    div cl                
    add al, '0'           ; Convert quotient to ASCII
    mov [bx], al         
    inc bx

    ; Convert units place
    mov al, ah 
    mov ah, 0
    xor dx, dx
    mov cl, 10
    div cl
    add al, '0'           
    mov [bx], al          ; Store ASCII  in buffer
	inc bx
	 
	mov al, ah
	add al, '0'
	mov [bx], al
	
	pop es
	pop ds
	popa
    ret
	
display_timer_text:
pusha
push ds
push es
    mov ah, 0x13          ; BIOS interrupt to write string
    mov al, 1            
    mov bh, 0             
    mov bl, 0x07          ; (white)
    mov dx, 320 * 8 + 228 ; Position
    mov cx, 7            ; Length 
    push cs
    pop es
    mov bp, timer_text
    int 0x10
	pop es
	pop ds
	popa
    ret
timer_score:
pusha
push ds
push es
call convert_to_asciiT
mov ah, 0x13          ; BIOS interrupt to write string
    mov al, 1             
    mov bh, 0      
cmp word [timer], 501
jl white
mov bl, 0x04
jmp hohohoho
white:	
    mov bl, 0x07         ;  (white)
hohohoho:
    mov dx, 320 * 8 + 235 
    mov cx, 2         
    push cs
    pop es
    mov bp, timer_buffer
    int 0x10
	pop es
	pop ds
	popa
    ret
convert_to_asciiT:
pusha
push ds
push es
mov ax, [timer]       ; Load the score value
    mov cx, 100            ; Divisor for decimal conversion
    mov bx, timer_buffer  ; Point to the score buffer

    ; Convert tens place
    xor dx, dx           
    div cl                
    add al, '0'           ; Convert quotient to ASCII
    mov [bx], al         
    inc bx

    ; Convert units place
    mov al, ah  
	mov ah, 0
    xor dx, dx 	
	mov cl, 10
	div cl
    add al, '0'           
    mov [bx], al          ; Store ASCII  in buffer
	pop es
	pop ds
	popa
    ret
	
delay:
push ds
push es
push cx

mov cx, 2 ; change the values to increase delay time
delay_loop1:
push cx
mov cx, 0xFFFF
delay_loop2:
loop delay_loop2
pop cx
loop delay_loop1
pop cx
pop es
pop ds
ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;Menue Handler ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;*********************************************************
;*                    SCAN CODES                        *
;*  UP Arrow   : 0x48 (Key Press)                       *
;*  DOWN Arrow : 0x50 (Key Press)                       *
;*                                                     *
;*  Note: Add 0x80 to define key release codes.         *
;*********************************************************

Menu_controls:
        push bp
        mov bp, sp
        pusha

        in al, 0x60
        mov ah, al
        
		;Up arrow
        cmp ah, 0x48
        je up
        
		;Down arrow
        cmp ah, 0x50
        je down

        ; enter
        cmp ah, 0x1c
        je enter1

        jmp eoi

    enter1:
        mov word[ENTER_flag], 1
        jmp eoi

    up: 
        
		cmp word [play_quit], 1
		jnz go_to_eoi
		mov word [play_quit], 0
        call update_selected_button
		go_to_eoi:
        jmp eoi

        
    down:
        
		cmp word [play_quit], 0
		jnz eoi
		mov word [play_quit], 1
        call update_selected_button

    eoi:
        mov al, 0x20
        out 0x20, al
        
        popa
        pop bp
        iret
		
interrupt_for_menu:
        push bp
        mov bp, sp
        pusha
		push es
        xor ax, ax
        mov es, ax
		mov ax, [es:9*4]
		mov [oldisr], ax
		mov ax, [es:9*4+2]
		mov [oldisr + 2], ax
        cli
        mov word[es:9*4], Menu_controls
        mov [es:9*4+2], cs
        sti
        pop es
        popa
        pop bp
        ret
		
setMenuBackground:
        
        push bp
        mov bp, sp
        pusha
        
        ; Set background to deep navy blue (color 1)
        mov dx, 0x03c8
        mov al, 1
        out dx, al
        mov dx, 0x03c9
        mov al, 6       ; Dark blue background
        out dx, al
        mov al, 8
        out dx, al
        mov al, 20
        out dx, al

        ; Clear screen
        mov ax, 0xA000
        mov es, ax
        xor di, di
        mov al, 1
        mov cx, 320*200
        rep stosb
        
        popa
        pop bp
        ret

;draw menu 
draw_Menu:
        push bp
        mov bp, sp
        pusha
        
;       --ColorPallet--
    ; Electric blue for maze (0x61)
        mov dx, 0x03c8
        mov al, 0x61 
        out dx, al
        mov dx, 0x03c9
        mov al, 20      ; Light electric blue
        out dx, al
        mov al, 40
        out dx, al
        mov al, 63
        out dx, al
    
    
    ; Bright cyan for text (ox63)
        mov dx, 0x03c8
        mov al, 0x63
        out dx, al
        mov dx, 0x03c9
        mov al, 0       ; Cyan glow
        out dx, al
        mov al, 63
        out dx, al
        mov al, 63
        out dx, al
        
        call drawButtons
        call drawMenuMaze
        call display_game_title
        call update_selected_button
        popa
        pop bp
        ret

display_credits:
        pusha
		
		mov dx, 0x03c8
        mov al, 0x41
        out dx, al
        mov dx, 0x03c9
        mov al, 20      ; Light electric blue
        out dx, al
        mov al, 40
        out dx, al
        mov al, 63
        out dx, al
		
		mov dx, 0x03c8
        mov al, 0x42
        out dx, al
        mov dx, 0x03c9
        mov al, 0       ; Cyan glow
        out dx, al
        mov al, 63
        out dx, al
        mov al, 63
        out dx, al
		
		mov cx, 51
		mov dx, 71
		mov bl, 0x41
		
		mov si, A
		call drawAlphabet
		
		add cx, 10
		mov si, L
		call drawAlphabet
		
		add cx, 10
		mov si, I
		call drawAlphabet
		
		add cx, 20
		mov si, H
		call drawAlphabet
		
		add cx, 10
		mov si, A
		call drawAlphabet
		
		add cx, 10
		mov si, S
		call drawAlphabet
		
		add cx, 10
		mov si, S
		call drawAlphabet
		
		add cx, 10
		mov si, A
		call drawAlphabet
		
		add cx, 10
		mov si, N
		call drawAlphabet
		
		mov cx, 50
		mov dx, 70
		mov bl, 0x42
		
		mov si, A
		call drawAlphabet
		
		add cx, 10
		mov si, L
		call drawAlphabet
		
		add cx, 10
		mov si, I
		call drawAlphabet
		
		add cx, 20
		mov si, H
		call drawAlphabet
		
		add cx, 10
		mov si, A
		call drawAlphabet
		
		add cx, 10
		mov si, S
		call drawAlphabet
		
		add cx, 10
		mov si, S
		call drawAlphabet
		
		add cx, 10
		mov si, A
		call drawAlphabet
		
		add cx, 10
		mov si, N
		call drawAlphabet
		
		mov cx, 51
		mov dx, 111
		mov bl, 0x41
		
		mov si, A
		call drawAlphabet
		
		add cx, 10
		mov si, Y
		call drawAlphabet
		
		add cx, 10
		mov si, E
		call drawAlphabet
		
		add cx, 10
		mov si, S
		call drawAlphabet
		
		add cx, 10
		mov si, H
		call drawAlphabet
		
		add cx, 10
		mov si, A
		call drawAlphabet
		
		add cx, 20
		mov si, K
		call drawAlphabet
		
		add cx, 10
		mov si, H
		call drawAlphabet
		
		add cx, 10
		mov si, A
		call drawAlphabet
		
		add cx, 10
		mov si, L
		call drawAlphabet
		
		add cx, 10
		mov si, I
		call drawAlphabet
		
		add cx, 10
		mov si, D
		call drawAlphabet
		
		mov cx, 50
		mov dx, 110
		mov bl, 0x42
		
		mov si, A
		call drawAlphabet
		
		add cx, 10
		mov si, Y
		call drawAlphabet
		
		add cx, 10
		mov si, E
		call drawAlphabet
		
		add cx, 10
		mov si, S
		call drawAlphabet
		
		add cx, 10
		mov si, H
		call drawAlphabet
		
		add cx, 10
		mov si, A
		call drawAlphabet
		
		add cx, 20
		mov si, K
		call drawAlphabet
		
		add cx, 10
		mov si, H
		call drawAlphabet
		
		add cx, 10
		mov si, A
		call drawAlphabet
		
		add cx, 10
		mov si, L
		call drawAlphabet
		
		add cx, 10
		mov si, I
		call drawAlphabet
		
		add cx, 10
		mov si, D
		call drawAlphabet
		
		mov cx, 116
		mov dx, 31
		mov bl, 0x41
		
		mov si, C
		call drawAlphabet
		
		add cx, 10
		mov si, R
		call drawAlphabet
		
		add cx, 10
		mov si, E
		call drawAlphabet
		
		add cx, 10
		mov si, D
		call drawAlphabet
		
		add cx, 10
		mov si, I
		call drawAlphabet
		
		add cx, 10
		mov si, T
		call drawAlphabet
		
		add cx, 10
		mov si, S
		call drawAlphabet
		
		mov cx, 115
		mov dx, 30
		mov bl, 0x42
		
		mov si, C
		call drawAlphabet
		
		add cx, 10
		mov si, R
		call drawAlphabet
		
		add cx, 10
		mov si, E
		call drawAlphabet
		
		add cx, 10
		mov si, D
		call drawAlphabet
		
		add cx, 10
		mov si, I
		call drawAlphabet
		
		add cx, 10
		mov si, T
		call drawAlphabet
		
		add cx, 10
		mov si, S
		call drawAlphabet
		
		mov cx, 141
		mov dx, 91
		mov bl, 0x41
		
		mov si, NUM_2
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_3
		call drawAlphabet
		
		add cx, 10
		mov si, L
		call drawAlphabet
		
		add cx, 10
		mov si, DASH
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_0
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_6
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_9
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_0
		call drawAlphabet
		
		mov cx, 140
		mov dx, 90
		mov bl, 0x42
		
		mov si, NUM_2
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_3
		call drawAlphabet
		
		add cx, 10
		mov si, L
		call drawAlphabet
		
		add cx, 10
		mov si, DASH
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_0
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_6
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_9
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_0
		call drawAlphabet
		
		mov cx, 141
		mov dx, 131
		mov bl, 0x41
		
		mov si, NUM_2
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_3
		call drawAlphabet
		
		add cx, 10
		mov si, L
		call drawAlphabet
		
		add cx, 10
		mov si, DASH
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_0
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_6
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_6
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_7
		call drawAlphabet
		
		mov cx, 140
		mov dx, 130
		mov bl, 0x42
		
		mov si, NUM_2
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_3
		call drawAlphabet
		
		add cx, 10
		mov si, L
		call drawAlphabet
		
		add cx, 10
		mov si, DASH
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_0
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_6
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_6
		call drawAlphabet
		
		add cx, 10
		mov si, NUM_7
		call drawAlphabet
		
		popa
		ret

display_game_title:
        pusha
        
        mov cx, 116      ; X position
        mov dx, 81       ; Y position
        mov bl, 0x61      ; Color
        mov si, M
        call drawAlphabet

        add cx, 9
        mov si, A
        call drawAlphabet

        add cx, 9
        mov si, Z
        call drawAlphabet
    
        add cx, 10
        mov si, E
        call drawAlphabet

        add cx, 9
        mov si, R
        call drawAlphabet

        add cx, 9      
        mov si, U
        call drawAlphabet

        add cx, 10     
        mov si, N
        call drawAlphabet

        add cx, 10
        mov si, N
        call    drawAlphabet

        add cx, 9      
        mov si, E
        call drawAlphabet

        add cx, 9
        mov si, R
        call drawAlphabet

        mov cx, 115      ; X position
        mov dx, 80       ; Y position
        mov bl, 0x63      ; Color
        mov si, M
        call drawAlphabet

        add cx, 9
        mov si, A
        call drawAlphabet

        add cx, 9
        mov si, Z
        call drawAlphabet
    
        add cx, 10
        mov si, E
        call drawAlphabet

        add cx, 9
        mov si, R
        call drawAlphabet

        add cx, 9      
        mov si, U
        call drawAlphabet

        add cx, 10     
        mov si, N
        call drawAlphabet

        add cx, 10     
        mov si, N
        call drawAlphabet

        add cx, 10     
        mov si, E
        call drawAlphabet

        add cx, 9
        mov si, R
        call drawAlphabet

       
        popa
        ret

drawAlphabet:
        pusha
    
        mov di, 8
    row_loop:
        mov al, [si]
        push cx
        mov ah, 8
    
    pixel_loop:
        test al, 10000000b
        jz skip_pixel
    
        push ax
        mov ah, 0Ch
        mov al, bl
        mov bh, 0
        int 10h
        pop ax
    
    skip_pixel:
        inc cx
        shl al, 1
        dec ah
        jnz pixel_loop
    
        pop cx
        inc dx
        inc si
        dec di
        jnz row_loop
        
        popa
        ret

update_selected_button:
        push bp
        mov bp, sp
        pusha
        
        mov al, 0x63
        mov dx, [play_quit]

        cmp dx, 1
        je exit_underline
        
		mov cx, 120
		mov dx, 110
		mov bl, 0x63 
		
		mov si, TRIANGLE_ARROW
		call drawAlphabet
		mov cx, 120
		mov dx, 140
		mov bl, 0x61 
		
		mov si, TRIANGLE_ARROW
		call drawAlphabet
		jmp exit
	exit_underline:
		mov cx, 120
		mov dx, 140
		mov bl, 0x63 
		
		mov si, TRIANGLE_ARROW
		call drawAlphabet
        mov cx, 120
		mov dx, 110
		mov bl, 0x61 
		
		mov si, TRIANGLE_ARROW
		call drawAlphabet
        
    exit:
        popa
        pop bp
        ret 

drawButtons:
        pusha
    ; button 1
        mov cx, 136
		mov dx, 111
		mov bl, 0x61 
		
		mov si, P
		call drawAlphabet
        
		add cx, 10
        mov si, L
		call drawAlphabet
		
		add cx, 10
		mov si, A
		call drawAlphabet
		
		add cx, 10
		mov si, Y
		call drawAlphabet
		
		mov cx, 135
		mov dx, 110
		mov bl, 0x63 
		
		mov si, P
		call drawAlphabet
        
		add cx, 10
        mov si, L
		call drawAlphabet
		
		add cx, 10
		mov si, A
		call drawAlphabet
		
		add cx, 10
		mov si, Y
		call drawAlphabet

    ; button 2
       mov cx, 136
		mov dx, 141
		mov bl, 0x61 
		
		mov si, E
		call drawAlphabet
        
		add cx, 10
        mov si, X
		call drawAlphabet
		
		add cx, 10
		mov si, I
		call drawAlphabet
		
		add cx, 10
		mov si, T
		call drawAlphabet
		
		mov cx, 135
		mov dx, 140
		mov bl, 0x63 
		
		mov si, E
		call drawAlphabet
        
		add cx, 10
        mov si, X
		call drawAlphabet
		
		add cx, 10
		mov si, I
		call drawAlphabet
		
		add cx, 10
		mov si, T
		call drawAlphabet
       
        popa
        ret

drawMenuMaze:
        pusha

        ; Left vertical border
        mov di, (50*320)+80        ; Starting position moved up to give more space for title
        push 120                   ; Height increased for better coverage
        push di
        call drawVerticalLine
        
        ; Right vertical border
        mov di, (50*320)+240      ; Right side position
        push 121
        push di
        call drawVerticalLine
        
        ; Top horizontal border
        mov di, (50*320)+80
        push 160                   ; Width to connect left and right borders
        push di
        call drawHorizontalLine
        
        ; Bottom horizontal border
        mov di, (168*320)+80      ; Position below the buttons
        push 160
        push di
        call drawHorizontalLine
        
        ; Additional maze decorations
       
        ; Optional: Small horizontal lines for decoration
        mov di, (90*320)+120
        push 80
        push di
        call drawHorizontalLine
		
	    ;outer boundary
		;upper horizontal line
		mov di, 0
		push 320
		push di
		call drawHorizontalLine
		
		;bottom horizontal line
		mov di, 63360
		push 320
		push di
		call drawHorizontalLine
		
		;vertical leftside
		mov di, 0
		push 200
		push di
		call drawVerticalLine
		
	    ;vertical rightside
		mov di, 318
		push 200
		push di
		call drawVerticalLine
		
		;maze lines 
		mov di, (20*320)+0
		push 25
		push di
		call drawHorizontalLine
		
	    mov di, (0*320)+45
		push 40
		push di
		call drawVerticalLine
		
		;u creation start 
		mov di, (30*320)+25
		push 15
		push di
		call drawVerticalLine
		
		mov di, (45*320)+25
		push 40
		push di
		call drawHorizontalLine
		
		mov di, (15*320)+65
		push 33
		push di
		call drawVerticalLine
		;u creation end top left 
		
		;straight line from u to down 
		 mov di, (45*320)+45
		push 63
		push di
		call drawVerticalLine
		
		;line on staright line
		mov di, (75*320)+25
		push 20
		push di
		call drawHorizontalLine
		
		;center horizontal
		mov di, (60*320)+0
		push 25
		push di
		call drawHorizontalLine
		
		;passing through main one 
		mov di, (90*320)+0
		push 60
		push di
		call drawHorizontalLine
		
		;last horizontal from start 
	    mov di, (120*320)+0
		push 58
		push di
		call drawHorizontalLine
		
		;vertical line on end of last horizontal
		mov di, (105*320)+58
		push 18
		push di
		call drawVerticalLine
		
		mov di, (105*320)+30
		push 18
		push di
		call drawVerticalLine
		
		;straightline last contiunation on Left
		mov di, (120*320)+45
		push 18
		push di
		call drawVerticalLine
		
		;horizontal ending the last horizontal goes in block
		mov di, (105*320)+58
		push 24
		push di
		call drawHorizontalLine
		
		;last vertical long line 
		mov di, (130*320)+30
		push 50
		push di
		call drawVerticalLine
		
		;horizontal line emerging from last vertical
		mov di, (150*320)+30
		push 30
		push di
		call drawHorizontalLine
		
		mov di, (130*320)+60
		push 23
		push di
		call drawVerticalLine
		
		;second line getting in box 
		mov di, (130*320)+60
		push 20
		push di
		call drawHorizontalLine
		
		mov di, (160*320)+45
		push 30
		push di
		call drawVerticalLine
		
		mov di, (190*320)+45
		push 20
		push di
		call drawHorizontalLine
		
		;last own made lines to fill on left side
		mov di, (150*320)+0
		push 15
		push di
		call drawHorizontalLine
		
		mov di, (150*320)+15
		push 75
		push di
		call drawVerticalLine
		
		;;lEFT SIDE COMPLELETED;;;;
		
		;;;upper horizontal side;;;;
		
		;horizontal line emerging 30 y axis 
		mov di, (30*320)+65
		push 20
		push di
		call drawHorizontalLine
		
		mov di, (20*320)+95
		push 30
		push di
		call drawVerticalLine
		
		mov di, (30*320)+95
		push 40
		push di
		call drawHorizontalLine
		
		mov di, (38*320)+80
		push 100
		push di
		call drawHorizontalLine
		
		mov di, (20*320)+180
		push 21
		push di
		call drawVerticalLine
		
		mov di, (20*320)+145
		push 38
		push di
		call drawHorizontalLine
		
		mov di, (10*320)+145
		push 10
		push di
		call drawVerticalLine
		
		mov di, (10*320)+105
		push 40
		push di
		call drawHorizontalLine
		
		;;moving next
		mov di, (20*320)+165
		push 45
		push di
		call drawHorizontalLine
		
		mov di, (0*320)+155
		push 15
		push di
		call drawVerticalLine
		
		mov di, (10*320)+185
		push 10
		push di
		call drawVerticalLine
		
		;L drawing 
		mov di, (0*320)+207
		push 40
		push di
		call drawVerticalLine
		
		mov di, (40*320)+207
		push 90
		push di
		call drawHorizontalLine
		
		mov di, (30*320)+193
		push 20
		push di
		call drawVerticalLine
		
		mov di, (25*320)+235
		push 83
		push di
		call drawHorizontalLine
		
		mov di, (10*320)+235
		push 15
		push di
		call drawVerticalLine
		
		mov di, (10*320)+290
		push 15
		push di
		call drawVerticalLine
		
		mov di, (0*320)+262
		push 20
		push di
		call drawVerticalLine
		
		;;upper horizontal side complete;;;
		
		;;;right vertical side start;;;
		
		mov di, (40*320)+270
		push 30
		push di
		call drawVerticalLine
		
		mov di, (70*320)+240      ; Right side position
        push 58
        push di
        call drawHorizontalLine
		
		mov di, (90*320)+240      ; Right side position
        push 58
        push di
        call drawHorizontalLine
		
		mov di, (54*320)+290      ; between the H 
        push 30
        push di
        call drawHorizontalLine
		
		
		mov di, (90*320)+270
		push 45
		push di
		call drawVerticalLine
		
		;;second L on right down side
		mov di, (110*320)+255
		push 50
		push di
		call drawVerticalLine
		
		mov di, (160*320)+255
		push 30
		push di
		call drawHorizontalLine
		
		mov di, (145*320)+255
		push 45
		push di
		call drawHorizontalLine
		
		mov di, (115*320)+300
		push 60
		push di
		call drawVerticalLine
		
		mov di, (115*320)+300
		push 20
		push di
		call drawHorizontalLine
		
		;;right vertical side compelete ;;;
		
		;;;bottom side started;;;
		
		
		mov di, (180*320)+270
		push 20
		push di
		call drawVerticalLine
		
		mov di, (180*320)+270
		push 50
		push di
		call drawHorizontalLine
		
		mov di, (168*320)+150     ; Position below the buttons
        push 30
        push di
        call drawVerticalLine
		
		mov di, (178*320)+170    ; Position below the buttons
        push 20
        push di
        call drawVerticalLine
		
		mov di, (188*320)+170    ; Position below the buttons
        push 50
        push di
        call drawHorizontalLine
		
		mov di, (178*320)+220    ; Position below the buttons
        push 13
        push di
        call drawVerticalLine
		
		mov di, (178*320)+220    ; Position below the buttons
        push 30
        push di
        call drawHorizontalLine
		
		mov di, (178*320)+250    ; Position below the buttons
        push 30
        push di
        call drawVerticalLine 
		
		;;right downside ended
		
		;;left downside
		
		mov di, (168*320)+130     ; Position below the buttons
        push 22
        push di
        call drawVerticalLine
		
		mov di, (190*320)+108    ; Position below the buttons
        push 25
        push di
        call drawHorizontalLine
		
		mov di, (180*320)+108    ; Position below the buttons
        push 10
        push di
        call drawVerticalLine
		
		mov di, (168*320)+90     ; Position below the buttons
        push 30
        push di
        call drawVerticalLine
		
		mov di, (182*320)+65     ; Position below the buttons
        push 28
        push di
        call drawHorizontalLine
		
		;;bottom side ended toooo 
		
		; Left vertical border
        mov di, (60*320)+60        
        push 20                   
        push di
        call drawHorizontalLine
		
		mov di, (60*320)+60        
        push 20                 
        push di
        call drawVerticalLine
		
		mov di, (55*320)+305    ; right side t to fill space  
        push 50
        push di
        call drawVerticalLine
				
        popa
        ret
;;;;;;;;;;;;;;;;;;;;;;;Functions To Generate Menu Maze Lines;;;;;;;;;;;;;;;;;;;;;;;;;;
drawVerticalLine:
        push bp
        mov bp, sp
        pusha

        mov al, 0x61
        mov di, [bp+4]
        mov cx, [bp+6]

    verticallineloop:
        push cx
        push di
        mov cx, 3
        rep stosb
        pop di
        pop cx
        add di, 320
        loop verticallineloop

        popa    
        pop bp
        ret 4
    
drawHorizontalLine:
        push bp
        mov bp, sp
        pusha

        mov al, 0x61 
        mov di, [bp+4]
        mov cx, 3

    horizontallineloop:
        push cx
        push di
        mov cx, [bp+6]
        rep stosb
        pop di
        pop cx
        add di, 320
        loop horizontallineloop

        popa    
        pop bp
        ret 4

