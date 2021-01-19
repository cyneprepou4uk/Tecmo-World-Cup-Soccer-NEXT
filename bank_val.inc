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



; con_plr_flags
con_player_flag_unknown_01      = $01   ; ваще не понятно что это
con_player_flag_visible         = $02   ; игрок виден на экране
con_player_flag_control         = $04   ; игрок управляемый
con_player_flag_busy            = $08   ; игрок чем-то занят и на него нельзя переключиться
                                            ; состояние проверяется лишь в 0x00E50A, и то сразу очищается если стоит
con_player_flags_all            = con_player_flag_unknown_01 + con_player_flag_visible + con_player_flag_control + con_player_flag_busy ; $0F



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
con_behavior_pk_player          = $17   ; пробивающий игрок в пенальти
con_behavior_pk_gk              = $18   ; обороняющийся кипер в пенальти
con_behavior_pk_bench           = $19   ; все остальные игроки в пенальти



con_sound_off                   = $01    ; выключить звук
con_sound_dead                  = $02    ; игрок умер от мяча или подката, или его затоптали
con_sound_shot                  = $03    ; обычный удар или навес
con_sound_fast_shot             = $04    ; удар в одно касание
con_sound_recieve               = $05    ; принятие мяча на грудь
con_sound_throw                 = $06    ; бросок мяча руками
con_sound_catch                 = $07    ; кипер словил мяч
con_sound_tackle                = $08    ; подкат
con_sound_unk_09                = $09    ; хз, сигнал какой-то
con_sound_time_low              = $0A    ; сигнал что время кончается
con_sound_time_up               = $0B    ; сигнал когда время вышло
con_sound_whistle_referee       = $0C    ; свисток на разводке или мяч вне игры
con_sound_hit_goalspot          = $0D    ; удар о штангу или перекладину
con_sound_fans                  = $0E    ; шум зрителей
con_sound_option_select         = $0F    ; при выборе одной из опций в главном меню
con_music_field                 = $10    ; главная мелодия игры на поле
con_music_logo                  = $11    ; мелодия логотипа
con_music_goal                  = $12    ; мелодия гола
con_music_half_time             = $13    ; мелодия в перерыве на эеране со счетом
con_music_game_number           = $14    ; мелодия экрана с номером игры
con_music_credits               = $15    ; финальная мелодия титров
con_music_team_select           = $16    ; мелодия экрана выбора команд
con_music_penalty               = $17    ; мелодия пенальти
con_sound_select                = $18    ; выбор чего-либо
con_sound_whistle_fans          = $1A    ; свисток после гола и шум зрителей
con_sound_wrong_psw             = $1B    ; неправильный пароль
con_sound_syndrom               = $1C    ; синдром давителя, когда кипер выпустил мяч из рук во время ловли
con_music_quiet                 = $20    ; постепенное уменьшение громкости музыки