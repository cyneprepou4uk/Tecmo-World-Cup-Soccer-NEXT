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
con_gm_1p                       = $00   ; режим 1 игрок
con_gm_timeup                   = $01   ; время вышло
con_gm_unused_02                = $02   ; unused
con_gm_playable                 = $04   ; если флаг не стоит, то можно управлять игроками
                                            ; пауза ставится (флаг очищается) во время аутов
con_gm_team_select              = $08   ; экран выбора команд
con_gm_penalty                  = $10   ; пенальти
con_gm_out_of_play              = $20   ; игроки ждут пока стоят на разводке/пока мяч вне игры
con_gm_continue                 = $40   ; экран continue
con_gm_2p                       = $80   ; режим 2 игрока (противоположность 00)


; MISC разное
con_ball_index                  = $16   ; мяч 03D3
con_shadow_index                = $17   ; тень мяча 03F3



; ram_plr_data                  = $61
con_plr_flags                   = $00   ; флаги состояния игрока
con_plr_spr_A                   = $01   ; атрибут спрайта игрока
con_plr_spd_X_fr_cur            = $02   ; текущая скорость игрока во время движения
con_plr_pos_X_fr                = $03   ; координата игрока
con_plr_spd_X_lo_cur            = $04   ; текущая скорость игрока во время движения
con_plr_pos_X_lo                = $05   ; координата игрока
con_plr_action_timer_1          = $06   ; таймер ботов для авто выбивания мяча из углового и goal kick
con_plr_pos_X_hi                = $07   ; координата игрока
con_plr_spd_Y_fr_cur            = $08   ; текущая скорость игрока во время движения
con_plr_pos_Y_fr                = $09   ; координата игрока
con_plr_spd_Y_lo_cur            = $0A   ; текущая скорость игрока во время движения
con_plr_pos_Y_lo                = $0B   ; координата игрока
con_plr_action_timer_2          = $0C   ; таймер ботов для авто выбивания мяча из аута, может еще что-то
con_plr_pos_Y_hi                = $0D   ; координата игрока
con_plr_unknown_0E              = $0E   ; хз, записывается лишь в одном месте (вроде бы) и потом обнуляется
con_plr_anim_cnt_hi             = $0F   ; порядковый номер анимации
con_plr_anim_cnt_lo             = $10   ; порядковый номер анимации
con_plr_anim_id                 = $11   ; номер анимации, из которого выбираются спрайты
con_plr_behavior                = $12   ; номер текущего поведения игрока
con_plr_direction               = $13   ; направление движения игрока
con_plr_spd_fr_init             = $14   ; базовая скорость игрока
con_plr_spd_lo_init             = $15   ; базовая скорость игрока
con_plr_sub_hi                  = $16   ; старший байт подпрограммы поведения игрока
con_plr_sub_lo                  = $17   ; младший байт подпрограммы поведения игрока
con_plr_sub_timer               = $18   ; таймер продолжительности текущего действия
                                            ; пока таймер не 00, выполняется sub
con_plr_unknown_19              = $19   ; хз, сравнивается с con_plr_action_timer_1
con_plr_aim_X_lo                = $1A   ; куда бежит игрок, копия ball_pos_X_lo
con_plr_aim_X_hi                = $1B   ; куда бежит игрок, копия ball_pos_X_hi
con_plr_aim_Y_lo                = $1C   ; куда бежит игрок, копия ball_pos_Y_lo
con_plr_aim_Y_hi                = $1D   ; куда бежит игрок, копия ball_pos_Y_hi
con_plr_tbl_lo                  = $1E   ; младший байт некой таблицы поведения игрока
con_plr_tbl_hi                  = $1F   ; старший байт некой таблицы поведения игрока



; con_plr_behavior, подпрограммы в 0x00E6D2
con_behavior_idle               = $00   ; стоять в ожидании, поворачиваться к мячу на месте, может убиться об летящий мяч
con_behavior_01                 = $01   ; 
con_behavior_w_ball             = $02   ; управляемый игрок или бот с мячом
con_behavior_follow_ball        = $03   ; бежать к месту приземления мяча
con_behavior_wo_ball            = $04   ; управляемый игрок без мяча
con_behavior_dead               = $05   ; труп
con_behavior_dodge              = $06   ; увернуться от подката
con_behavior_07                 = $07   ; 
con_behavior_08                 = $08   ; 
con_behavior_09                 = $09   ; unused
con_behavior_0A                 = $0A   ; 
con_behavior_0B                 = $0B   ; unused
con_behavior_throw_in           = $0C   ; 
con_behavior_goal_kick          = $0D   ; (для киперов) стоит на месте для пробивания goal kick
con_behavior_corner_kick        = $0E   ; стоит на месте для пробивания corner kick
con_behavior_run_area           = $0F   ; бежать на какую-то зону
con_behavior_10                 = $10   ; 
con_behavior_follow_enemy       = $11   ; бежать за соперником с мячом
con_behavior_freeze             = $12   ; неактивный после гола, когда игроки замирают
con_behavior_13                 = $13   ; 
con_behavior_14                 = $14   ; 
con_behavior_run_base           = $15   ; бежать на свою позицию когда кипер завладел мячом
con_behavior_gk_get_ball        = $16   ; (для киперов) владеет мячом, даже когда еще находится в анимации падения
con_behavior_17                 = $17   ; 
con_behavior_18                 = $18   ; 
con_behavior_19                 = $19   ; 
