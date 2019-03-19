org 100h

include emu8086.inc 
          
 
          
   
        
    
    
    jmp draw_OrangeANDGreenzone
   draw_maze_contour:
        mov dl,1
        mov dh,0
        draw_topleft_coner:
        ;setcursor:
            mov ah, 02h
            mov bh, 00
            int 10h
            ;wall:       
            PRINT 201
        
        draw_topmaze:
        
            add dl,1
            ;setcursor:
            mov ah, 02h
            mov bh, 00
            int 10h
            ;wall:       
            PRINT 205 
            cmp dl,60
            je draw_topright_coner
            loop draw_topmaze
        
        draw_topright_coner:
            add dl,1
            ;setcursor:
            mov ah, 02h
            mov bh, 00
            int 10h                   
            PRINT 187
        
    
        draw_downmaze:
            add dh,1
            ;setcursor:
            mov ah, 02h
            mov bh, 00
            int 10h
            ;wall:       
            PRINT 186 
            cmp dh,21
            je draw_bottomright_coner
           loop draw_downmaze
           
        draw_bottomright_coner:
            ;setcursor:
            add dh,1
            mov ah, 02h
            mov bh, 00
            int 10h
            ;wall:       
            PRINT 188
        
        draw_bottommaze:
            sub dl,1
            ;setcursor:
            mov ah, 02h
            mov bh, 00
            int 10h
            ;wall:       
            PRINT 205 
            cmp dl,2
            je draw_bottomleft_coner
           loop draw_bottommaze
           
         draw_bottomleft_coner:
            ;setcursor:
            sub dl,1
            mov ah, 02h
            mov bh, 00
            int 10h
            ;wall:       
            PRINT 200 
        
        draw_upmaze:
            sub dh,1
            ;setcursor:
            mov ah, 02h
            mov bh, 00
            int 10h
            ;wall:       
            PRINT 186 
            cmp dh,1
            je draw_OrangeANDGreenzone   ; A CHANGER PAR DRAW_INV
           loop draw_upmaze 
           
           
          
         draw_OrangeANDGreenzone:
         
         draw_wall1_OrangeANDGreenzone:
         
         mov dh,3
         mov dl,61
         call SetCursor
         PRINT 185 
         
         draw_wall1_OrangeANDGreenzone_p1:
         
         sub dl,1
         call SetCursor
         PRINT 205
         cmp dl,51
         je draw_wall2_OrangeANDGreenzone
         loop draw_wall1_OrangeANDGreenzone_p1
         
         
         
         
         
         draw_wall2_OrangeANDGreenzone:
         
         mov dh,7
         mov dl,61
         call SetCursor
         PRINT 185
        
        draw_wall2_OrangeANDGreenzone_p1:
         
         sub dl,1
         call SetCursor
         PRINT 205
         cmp dl,56
         je draw_wall2_OrangeANDGreenzone_p2
         loop draw_wall2_OrangeANDGreenzone_p1
         
         draw_wall2_OrangeANDGreenzone_p2:
         
         sub dl,1
         call SetCursor
         PRINT 201
         
         add dh,1
         call SetCursor
         PRINT 186
         
         add dh,1
         call SetCursor
         PRINT 202
         
         
         
         draw_wall2_OrangeANDGreenzone_p3:
         
         sub dl,1
         call SetCursor
         PRINT 205
         
          
    
         
         draw_wall2_OrangeANDGreenzone_p4:
         sub dl,1
         call SetCursor
         PRINT 205 
         cmp dl,50
         je draw_wall2_OrangeANDGreenzone_p5
         loop draw_wall2_OrangeANDGreenzone_p4
         
         draw_wall2_OrangeANDGreenzone_p5:
         
         mov dl,56
         call SetCursor
         PRINT 205 
         
         add dl,1
         call SetCursor
         PRINT 205
         
         add dl,1
         call SetCursor
         PRINT 187
         
         
         add dh,1
         call SetCursor
         PRINT 186 
         
         add dh,1
         call SetCursor
         PRINT 188
         
         
         draw_wall2_OrangeANDGreenzone_p6:
         
         sub dl,1
         call SetCursor
         PRINT 205
         cmp dl,43
         je draw_wall2_OrangeANDGreenzone_p7
         loop draw_wall2_OrangeANDGreenzone_p6
         
         draw_wall2_OrangeANDGreenzone_p7: 
         
         mov dl,47
         call SetCursor 
         PRINT 202
         
         draw_wall2_OrangeANDGreenzone_p8:
         sub dh,1
         call SetCursor
         PRINT 186
         cmp dh,8
         je draw_wall2_OrangeANDGreenzone_p9
         loop draw_wall2_OrangeANDGreenzone_p8 
         
         draw_wall2_OrangeANDGreenzone_p9:
         sub dh,1
         call SetCursor
         PRINT 201
         
         draw_wall2_OrangeANDGreenzone_p10:
         add dl,1
         call SetCursor
         PRINT 205
         cmp dl,52
         je draw_wall2_OrangeANDGreenzone_p11
         loop draw_wall2_OrangeANDGreenzone_p10
         
         
         draw_wall2_OrangeANDGreenzone_p11:
         
         mov dh,11
         mov dl,52
         call SetCursor
         PRINT 203
         add dh,1
         call SetCursor
         PRINT 186
         
         
           
         
         
         
         
             
         
         
         draw_wall3_OrangeANDGreenzone_p1:
          mov dl,60
          mov dh,15
          call SetCursor
         sub dl,1
         call SetCursor
         PRINT 205
         
         sub dl,1
         call SetCursor
         PRINT 205
         
         sub dl,1
         call SetCursor
         PRINT 201
         
         
         draw_wall3_OrangeANDGreenzone_p2:
         
         add dh,1
         call SetCursor
         PRINT 186
         
         cmp dh,20
         je draw_hero ; a changer
         loop draw_wall3_OrangeANDGreenzone_p2
                
                
    
                                         
          draw_hero:
            

              mov dl, 2 ; column
              mov dh, 21 ; row 

              ;setcursor:
              mov ah, 02h
              mov bh, 00
              int 10h
        
              PRINT ':)'  
              
     SetCursor proc near
     mov ah, 02h
     mov bh, 00
     int 10h
     ret
     SetCursor endp        
    
    
    
    ret 
                  