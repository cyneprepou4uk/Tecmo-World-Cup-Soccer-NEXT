; ram_btn_hold                  = $24
; ram_btn_press                 = $26
con_btn_Right                   = $01 ; 
con_btn_Left                    = $02 ; 
con_btn_Down                    = $04 ; 
con_btn_Up                      = $08 ; 
con_btn_Start                   = $10 ; 
con_btn_Select                  = $20 ; 
con_btn_B                       = $40 ; 
con_btn_A                       = $80 ; 

con_btns_Dpad                   = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; 0F
con_btns_AB                     = con_btn_A + con_btn_B                                     ; C0
con_btns_LR                     = con_btn_Left + con_btn_Right                              ; 03
con_btns_UD                     = con_btn_Up + con_btn_Down                                 ; 0C



; ram_game_mode_flags           = $03A4
con_gm_1p                       = $00   ; 1 игрок
con_gm_timeup                   = $01   ; 
con_gm_unk_02                   = $02   ; unused
con_gm_unk_04                   = $04   ; 
con_gm_unk_08                   = $08   ; 
con_gm_pk                       = $10   ; пенальти
con_gm_out_of_play              = $20   ; игроки ждут пока стоят на разводке/пока мяч вне игры
con_gm_continue                 = $40   ; экран continue
con_gm_2p                       = $80   ; 2 игрока (противоположность 00)


