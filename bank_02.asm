.segment "BANK_02"
.include "bank_ram.inc"
.include "bank_val.inc"
; 0x008010-0x00C00F



.export sub_0x008043
.export sub_0x0080E1
.export sub_0x0083D9
.export sub_0x008501
.export sub_0x008A2A
.export sub_0x008AD9
.export sub_0x008B30
.export sub_0x00975F
.export sub_0x009852
.export sub_0x00A03A
.export sub_0x00A100
.export sub_0x00A1FD
.export sub_0x00B010
.export sub_0x00A340



sub_0x008043:
C D 0 - - - 0x008043 02:8033: A9 09     LDA #$09
C - - - - - 0x008045 02:8035: 85 6D     STA ram_006D
C - - - - - 0x008047 02:8037: A2 80     LDX #$80
C - - - - - 0x008049 02:8039: A0 00     LDY #$00
C - - - - - 0x00804B 02:803B: 20 44 80  JSR sub_8044
C - - - - - 0x00804E 02:803E: A0 01     LDY #$01
C - - - - - 0x008050 02:8040: 20 44 80  JSR sub_8044
C - - - - - 0x008053 02:8043: 60        RTS



sub_8044:
C - - - - - 0x008054 02:8044: 84 2A     STY ram_002A
C - - - - - 0x008056 02:8046: B9 9A 80  LDA tbl_809A,Y
C - - - - - 0x008059 02:8049: 85 2B     STA ram_002B
C - - - - - 0x00805B 02:804B: B9 A9 03  LDA ram_team_id,Y
C - - - - - 0x00805E 02:804E: 0A        ASL
C - - - - - 0x00805F 02:804F: 79 A9 03  ADC ram_team_id,Y
C - - - - - 0x008062 02:8052: A8        TAY
C - - - - - 0x008063 02:8053: A9 03     LDA #$03
C - - - - - 0x008065 02:8055: 85 2C     STA ram_002C
bra_8057_loop:
C - - - - - 0x008067 02:8057: A9 03     LDA #$03
C - - - - - 0x008069 02:8059: 38        SEC
C - - - - - 0x00806A 02:805A: E5 2C     SBC ram_002C
C - - - - - 0x00806C 02:805C: 0A        ASL
C - - - - - 0x00806D 02:805D: 0A        ASL
C - - - - - 0x00806E 02:805E: 0A        ASL
C - - - - - 0x00806F 02:805F: 65 2B     ADC ram_002B
C - - - - - 0x008071 02:8061: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x008074 02:8064: A9 70     LDA #$70
C - - - - - 0x008076 02:8066: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x008079 02:8069: A9 01     LDA #$01
C - - - - - 0x00807B 02:806B: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x00807E 02:806E: B9 99 83  LDA tbl_8399_spr_team_name,Y
C - - - - - 0x008081 02:8071: 20 B9 80  JSR sub_80B9
C - - - - - 0x008084 02:8074: C8        INY
C - - - - - 0x008085 02:8075: C6 2C     DEC ram_002C
C - - - - - 0x008087 02:8077: D0 DE     BNE bra_8057_loop
C - - - - - 0x008089 02:8079: A5 2B     LDA ram_002B
C - - - - - 0x00808B 02:807B: 18        CLC
C - - - - - 0x00808C 02:807C: 69 04     ADC #$04
C - - - - - 0x00808E 02:807E: 85 2B     STA ram_002B
C - - - - - 0x008090 02:8080: A4 2A     LDY ram_002A
C - - - - - 0x008092 02:8082: B9 A7 03  LDA ram_goals_total,Y
C - - - - - 0x008095 02:8085: A0 00     LDY #$00
bra_8087_loop:
C - - - - - 0x008097 02:8087: C9 0A     CMP #$0A
C - - - - - 0x008099 02:8089: 90 05     BCC bra_8090
C - - - - - 0x00809B 02:808B: E9 0A     SBC #$0A
C - - - - - 0x00809D 02:808D: C8        INY
C - - - - - 0x00809E 02:808E: D0 F7     BNE bra_8087_loop
bra_8090:
C - - - - - 0x0080A0 02:8090: 48        PHA
C - - - - - 0x0080A1 02:8091: 98        TYA
C - - - - - 0x0080A2 02:8092: 20 9C 80  JSR sub_809C
C - - - - - 0x0080A5 02:8095: 68        PLA
C - - - - - 0x0080A6 02:8096: 20 9C 80  JSR sub_809C
C - - - - - 0x0080A9 02:8099: 60        RTS



tbl_809A:
- D 0 - - - 0x0080AA 02:809A: 4C        .byte $4C   ; 
- D 0 - - - 0x0080AB 02:809B: 9C        .byte $9C   ; 



sub_809C:
C - - - - - 0x0080AC 02:809C: 48        PHA
C - - - - - 0x0080AD 02:809D: A5 2B     LDA ram_002B
C - - - - - 0x0080AF 02:809F: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x0080B2 02:80A2: 18        CLC
C - - - - - 0x0080B3 02:80A3: 69 08     ADC #$08
C - - - - - 0x0080B5 02:80A5: 85 2B     STA ram_002B
C - - - - - 0x0080B7 02:80A7: A9 01     LDA #$01
C - - - - - 0x0080B9 02:80A9: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x0080BC 02:80AC: A9 80     LDA #$80
C - - - - - 0x0080BE 02:80AE: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x0080C1 02:80B1: 68        PLA
C - - - - - 0x0080C2 02:80B2: 18        CLC
C - - - - - 0x0080C3 02:80B3: 69 80     ADC #$80
C - - - - - 0x0080C5 02:80B5: 20 B9 80  JSR sub_80B9
C - - - - - 0x0080C8 02:80B8: 60        RTS



sub_80B9:
C - - - - - 0x0080C9 02:80B9: 48        PHA
C - - - - - 0x0080CA 02:80BA: 29 E0     AND #$E0
C - - - - - 0x0080CC 02:80BC: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x0080CF 02:80BF: 68        PLA
C - - - - - 0x0080D0 02:80C0: 29 1F     AND #$1F
C - - - - - 0x0080D2 02:80C2: 0A        ASL
C - - - - - 0x0080D3 02:80C3: 1D 01 02  ORA ram_spr_T,X
C - - - - - 0x0080D6 02:80C6: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x0080D9 02:80C9: FE 01 02  INC ram_spr_T,X
C - - - - - 0x0080DC 02:80CC: E8        INX
C - - - - - 0x0080DD 02:80CD: E8        INX
C - - - - - 0x0080DE 02:80CE: E8        INX
C - - - - - 0x0080DF 02:80CF: E8        INX
C - - - - - 0x0080E0 02:80D0: 60        RTS



off_0x0080E1:
sub_0x0080E1 = off_0x0080E1 - 1
C D 0 - - - 0x0080E1 02:80D1: 20 75 C0  JSR sub_0x00CA69_clear_nametables
C - - - - - 0x0080E4 02:80D4: 20 51 C0  JSR sub_0x00CABF_hide_sprites
C - - - - - 0x0080E7 02:80D7: A2 00     LDX #$00
C - - - - - 0x0080E9 02:80D9: A9 02     LDA #$02
C - - - - - 0x0080EB 02:80DB: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
                                        INC ram_buffer_pal_flag
C - - - - - 0x0080F3 02:80E3: A9 24     LDA #$24
C - - - - - 0x0080F5 02:80E5: 85 69     STA ram_0069
C - - - - - 0x0080F7 02:80E7: A9 26     LDA #$26
C - - - - - 0x0080F9 02:80E9: 85 6A     STA ram_006A
C - - - - - 0x0080FB 02:80EB: A2 BF     LDX #< tbl_95BF
C - - - - - 0x0080FD 02:80ED: A0 95     LDY #> tbl_95BF
C - - - - - 0x0080FF 02:80EF: 20 33 C0  JSR sub_0x00C762
C - - - - - 0x008102 02:80F2: A9 20     LDA #$20
C - - - - - 0x008104 02:80F4: 20 4C 89  JSR sub_894C
C - - - - - 0x008107 02:80F7: A9 21     LDA #$21
C - - - - - 0x008109 02:80F9: 20 4C 89  JSR sub_894C
C - - - - - 0x00810C 02:80FC: A9 C8     LDA #$C8
C - - - - - 0x00810E 02:80FE: 8D C0 03  STA ram_03C0
C - - - - - 0x008111 02:8101: A9 22     LDA #$22
C - - - - - 0x008113 02:8103: 8D C1 03  STA ram_03C1
C - - - - - 0x008116 02:8106: A9 FF     LDA #$FF
C - - - - - 0x008118 02:8108: 8D C5 03  STA ram_03C5
C - - - - - 0x00811B 02:810B: AD A9 03  LDA ram_team_id
C - - - - - 0x00811E 02:810E: 0A        ASL
C - - - - - 0x00811F 02:810F: 6D A9 03  ADC ram_team_id
C - - - - - 0x008122 02:8112: AA        TAX
C - - - - - 0x008123 02:8113: A0 00     LDY #$00
bra_8115_loop:
C - - - - - 0x008125 02:8115: BD 99 83  LDA tbl_8399_spr_team_name,X
C - - - - - 0x008128 02:8118: 99 C2 03  STA ram_03C2,Y
C - - - - - 0x00812B 02:811B: E8        INX
C - - - - - 0x00812C 02:811C: C8        INY
C - - - - - 0x00812D 02:811D: C0 03     CPY #$03
C - - - - - 0x00812F 02:811F: D0 F4     BNE bra_8115_loop
C - - - - - 0x008131 02:8121: A9 80     LDA #$80
C - - - - - 0x008133 02:8123: 20 4C 89  JSR sub_894C
C - - - - - 0x008136 02:8126: A2 00     LDX #$00
C - - - - - 0x008138 02:8128: A9 06     LDA #$06
C - - - - - 0x00813A 02:812A: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
                                        INC ram_buffer_pal_flag
C - - - - - 0x008142 02:8132: A9 15     LDA #con_music_credits
C - - - - - 0x008144 02:8134: 20 7E C0  JSR sub_0x00C920_prepare_sound
C - - - - - 0x008147 02:8137: A9 FE     LDA #$FE
C - - - - - 0x008149 02:8139: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00814C 02:813C: A9 0F     LDA #$0F
C - - - - - 0x00814E 02:813E: 8D B3 03  STA ram_game_cnt
C - - - - - 0x008151 02:8141: 20 0A 84  JSR sub_840A
C - - - - - 0x008154 02:8144: A2 09     LDX #$09
C - - - - - 0x008156 02:8146: A9 5A     LDA #$5A
C - - - - - 0x008158 02:8148: 95 01     STA ram_0001,X
C - - - - - 0x00815A 02:814A: A9 04     LDA #$04
C - - - - - 0x00815C 02:814C: 95 02     STA ram_0002,X
C - - - - - 0x00815E 02:814E: A9 81     LDA #> ofs_81AD
C - - - - - 0x008160 02:8150: A0 AC     LDY #< ofs_81AD
C - - - - - 0x008162 02:8152: 20 06 C0  JSR sub_0x00C5F1_prepare_return_address
C - - - - - 0x008165 02:8155: A9 46     LDA #$46
C - - - - - 0x008167 02:8157: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00816A 02:815A: A2 00     LDX #$00
C - - - - - 0x00816C 02:815C: A9 06     LDA #$06
C - - - - - 0x00816E 02:815E: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
                                        INC ram_buffer_pal_flag
C - - - - - 0x008176 02:8166: A9 1E     LDA #$1E
C - - - - - 0x008178 02:8168: 85 6A     STA ram_006A
C - - - - - 0x00817A 02:816A: A9 00     LDA #$00
C - - - - - 0x00817C 02:816C: 8D BB 03  STA ram_03BB
C - - - - - 0x00817F 02:816F: 8D BC 03  STA ram_cam_edge_Y_lo
C - - - - - 0x008182 02:8172: 8D BD 03  STA ram_cam_edge_Y_hi
C - - - - - 0x008185 02:8175: 8D 00 A0  STA $A000
loc_8178_loop:
C D 0 - - - 0x008188 02:8178: A9 01     LDA #$01
C - - - - - 0x00818A 02:817A: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00818D 02:817D: 18        CLC
C - - - - - 0x00818E 02:817E: AD BB 03  LDA ram_03BB
C - - - - - 0x008191 02:8181: 69 40     ADC #$40
C - - - - - 0x008193 02:8183: 8D BB 03  STA ram_03BB
C - - - - - 0x008196 02:8186: AD BC 03  LDA ram_cam_edge_Y_lo
C - - - - - 0x008199 02:8189: 69 00     ADC #$00
C - - - - - 0x00819B 02:818B: 8D BC 03  STA ram_cam_edge_Y_lo
C - - - - - 0x00819E 02:818E: 90 03     BCC bra_8193
C - - - - - 0x0081A0 02:8190: EE BD 03  INC ram_cam_edge_Y_hi
bra_8193:
C - - - - - 0x0081A3 02:8193: AD BC 03  LDA ram_cam_edge_Y_lo
C - - - - - 0x0081A6 02:8196: AE BD 03  LDX ram_cam_edge_Y_hi
bra_8199_loop:
C - - - - - 0x0081A9 02:8199: 38        SEC
C - - - - - 0x0081AA 02:819A: E9 F0     SBC #$F0
C - - - - - 0x0081AC 02:819C: 48        PHA
C - - - - - 0x0081AD 02:819D: 8A        TXA
C - - - - - 0x0081AE 02:819E: E9 00     SBC #$00
C - - - - - 0x0081B0 02:81A0: AA        TAX
C - - - - - 0x0081B1 02:81A1: 68        PLA
C - - - - - 0x0081B2 02:81A2: 90 02     BCC bra_81A6
C - - - - - 0x0081B4 02:81A4: B0 F3     BCS bra_8199_loop
bra_81A6:
C - - - - - 0x0081B6 02:81A6: 69 F0     ADC #$F0
C - - - - - 0x0081B8 02:81A8: 85 3B     STA ram_003B
C - - - - - 0x0081BA 02:81AA: 4C 78 81  JMP loc_8178_loop



off_81AD:
ofs_81AD = off_81AD - 1
C - - - - - 0x0081BD 02:81AD: A9 00     LDA #$00
C - - - - - 0x0081BF 02:81AF: 8D BF 03  STA ram_03BF
loc_81B2_loop:
bra_81B2_loop:
C D 0 - - - 0x0081C2 02:81B2: A9 01     LDA #$01
C - - - - - 0x0081C4 02:81B4: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x0081C7 02:81B7: AD BC 03  LDA ram_cam_edge_Y_lo
C - - - - - 0x0081CA 02:81BA: 18        CLC
C - - - - - 0x0081CB 02:81BB: 69 08     ADC #$08
C - - - - - 0x0081CD 02:81BD: 29 F0     AND #$F0
C - - - - - 0x0081CF 02:81BF: CD BF 03  CMP ram_03BF
C - - - - - 0x0081D2 02:81C2: F0 EE     BEQ bra_81B2_loop
C - - - - - 0x0081D4 02:81C4: 8D BF 03  STA ram_03BF
C - - - - - 0x0081D7 02:81C7: AD BC 03  LDA ram_cam_edge_Y_lo
C - - - - - 0x0081DA 02:81CA: 29 F0     AND #$F0
C - - - - - 0x0081DC 02:81CC: AE BD 03  LDX ram_cam_edge_Y_hi
C - - - - - 0x0081DF 02:81CF: 86 2B     STX ram_002B
C - - - - - 0x0081E1 02:81D1: 46 2B     LSR ram_002B
C - - - - - 0x0081E3 02:81D3: 6A        ROR
C - - - - - 0x0081E4 02:81D4: 46 2B     LSR ram_002B
C - - - - - 0x0081E6 02:81D6: 6A        ROR
C - - - - - 0x0081E7 02:81D7: 46 2B     LSR ram_002B
C - - - - - 0x0081E9 02:81D9: 6A        ROR
C - - - - - 0x0081EA 02:81DA: 46 2B     LSR ram_002B
C - - - - - 0x0081EC 02:81DC: 6A        ROR
C - - - - - 0x0081ED 02:81DD: 69 1B     ADC #< tbl_831B
C - - - - - 0x0081EF 02:81DF: 85 2A     STA ram_002A
C - - - - - 0x0081F1 02:81E1: A5 2B     LDA ram_002B
C - - - - - 0x0081F3 02:81E3: 69 83     ADC #> tbl_831B
C - - - - - 0x0081F5 02:81E5: 85 2B     STA ram_002B
C - - - - - 0x0081F7 02:81E7: A0 00     LDY #$00
C - - - - - 0x0081F9 02:81E9: B1 2A     LDA (ram_002A),Y
C - - - - - 0x0081FB 02:81EB: C9 FF     CMP #$FF
C - - - - - 0x0081FD 02:81ED: F0 4E     BEQ bra_823D
C - - - - - 0x0081FF 02:81EF: C9 FE     CMP #$FE
C - - - - - 0x008201 02:81F1: D0 13     BNE bra_8206
C - - - - - 0x008203 02:81F3: A2 0D     LDX #$0D
C - - - - - 0x008205 02:81F5: A9 78     LDA #$78
C - - - - - 0x008207 02:81F7: 95 01     STA ram_0001,X
C - - - - - 0x008209 02:81F9: A9 04     LDA #$04
C - - - - - 0x00820B 02:81FB: 95 02     STA ram_0002,X
C - - - - - 0x00820D 02:81FD: A9 82     LDA #> ofs_82D9
C - - - - - 0x00820F 02:81FF: A0 D8     LDY #< ofs_82D9
C - - - - - 0x008211 02:8201: 20 06 C0  JSR sub_0x00C5F1_prepare_return_address
C - - - - - 0x008214 02:8204: A9 11     LDA #$11
bra_8206:
C - - - - - 0x008216 02:8206: 0A        ASL
C - - - - - 0x008217 02:8207: AA        TAX
C - - - - - 0x008218 02:8208: BD B5 91  LDA tbl_91B5_large_text,X
C - - - - - 0x00821B 02:820B: 85 73     STA ram_0073
C - - - - - 0x00821D 02:820D: BD B6 91  LDA tbl_91B5_large_text + 1,X
C - - - - - 0x008220 02:8210: 85 74     STA ram_0074
C - - - - - 0x008222 02:8212: A0 00     LDY #$00
bra_8214_loop:
C - - - - - 0x008224 02:8214: B1 73     LDA (ram_0073),Y
C - - - - - 0x008226 02:8216: 99 C0 03  STA ram_03C0,Y
C - - - - - 0x008229 02:8219: C8        INY
C - - - - - 0x00822A 02:821A: C9 FF     CMP #$FF
C - - - - - 0x00822C 02:821C: D0 F6     BNE bra_8214_loop
C - - - - - 0x00822E 02:821E: A9 08     LDA #$08
C - - - - - 0x008230 02:8220: 8D C1 03  STA ram_03C1
C - - - - - 0x008233 02:8223: A5 3B     LDA ram_003B
C - - - - - 0x008235 02:8225: 29 F0     AND #$F0
C - - - - - 0x008237 02:8227: 0A        ASL
C - - - - - 0x008238 02:8228: 2E C1 03  ROL ram_03C1
C - - - - - 0x00823B 02:822B: 0A        ASL
C - - - - - 0x00823C 02:822C: 2E C1 03  ROL ram_03C1
C - - - - - 0x00823F 02:822F: 0D C0 03  ORA ram_03C0
C - - - - - 0x008242 02:8232: 8D C0 03  STA ram_03C0
C - - - - - 0x008245 02:8235: A9 80     LDA #$80
C - - - - - 0x008247 02:8237: 20 4C 89  JSR sub_894C
C - - - - - 0x00824A 02:823A: 4C B2 81  JMP loc_81B2_loop
bra_823D:
C - - - - - 0x00824D 02:823D: A9 20     LDA #$20
C - - - - - 0x00824F 02:823F: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008252 02:8242: A9 00     LDA #$00
C - - - - - 0x008254 02:8244: 85 05     STA ram_0005
C - - - - - 0x008256 02:8246: 85 06     STA ram_0006
C - - - - - 0x008258 02:8248: A9 14     LDA #$14
C - - - - - 0x00825A 02:824A: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00825D 02:824D: A9 00     LDA #$00
bra_824F_loop:
C - - - - - 0x00825F 02:824F: 48        PHA
C - - - - - 0x008260 02:8250: A9 01     LDA #$01
C - - - - - 0x008262 02:8252: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008265 02:8255: 68        PLA
C - - - - - 0x008266 02:8256: 18        CLC
C - - - - - 0x008267 02:8257: 69 40     ADC #$40
C - - - - - 0x008269 02:8259: 90 F4     BCC bra_824F_loop
C - - - - - 0x00826B 02:825B: A2 00     LDX #$00
bra_825D_loop:
C - - - - - 0x00826D 02:825D: DE 03 02  DEC ram_spr_X,X
C - - - - - 0x008270 02:8260: E8        INX
C - - - - - 0x008271 02:8261: E8        INX
C - - - - - 0x008272 02:8262: E8        INX
C - - - - - 0x008273 02:8263: E8        INX
C - - - - - 0x008274 02:8264: D0 F7     BNE bra_825D_loop
C - - - - - 0x008276 02:8266: A5 3A     LDA ram_003A
C - - - - - 0x008278 02:8268: E9 01     SBC #$01
C - - - - - 0x00827A 02:826A: 85 3A     STA ram_003A
C - - - - - 0x00827C 02:826C: B0 06     BCS bra_8274
C - - - - - 0x00827E 02:826E: A5 28     LDA ram_byte_for_2000
C - - - - - 0x008280 02:8270: 49 01     EOR #$01
C - - - - - 0x008282 02:8272: 85 28     STA ram_byte_for_2000
bra_8274:
C - - - - - 0x008284 02:8274: A9 00     LDA #$00
C - - - - - 0x008286 02:8276: A6 3A     LDX ram_003A
C - - - - - 0x008288 02:8278: E0 E5     CPX #$E5
C - - - - - 0x00828A 02:827A: D0 D3     BNE bra_824F_loop
C - - - - - 0x00828C 02:827C: A9 14     LDA #$14
C - - - - - 0x00828E 02:827E: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008291 02:8281: A2 10     LDX #$10
C - - - - - 0x008293 02:8283: A9 0D     LDA #$0D
C - - - - - 0x008295 02:8285: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
                                        INC ram_buffer_pal_flag
C - - - - - 0x00829D 02:828D: A9 04     LDA #$04
C - - - - - 0x00829F 02:828F: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x0082A2 02:8292: A2 10     LDX #$10
C - - - - - 0x0082A4 02:8294: A9 0E     LDA #$0E
C - - - - - 0x0082A6 02:8296: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
                                        INC ram_buffer_pal_flag
C - - - - - 0x0082AE 02:829E: A9 04     LDA #$04
C - - - - - 0x0082B0 02:82A0: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x0082B3 02:82A3: A2 10     LDX #$10
C - - - - - 0x0082B5 02:82A5: A9 0F     LDA #$0F
C - - - - - 0x0082B7 02:82A7: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
                                        INC ram_buffer_pal_flag
C - - - - - 0x0082BF 02:82AF: A9 04     LDA #$04
C - - - - - 0x0082C1 02:82B1: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x0082C4 02:82B4: A2 10     LDX #$10
C - - - - - 0x0082C6 02:82B6: A9 02     LDA #$02
C - - - - - 0x0082C8 02:82B8: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
                                        INC ram_buffer_pal_flag
C - - - - - 0x0082D0 02:82C0: A9 08     LDA #$08
C - - - - - 0x0082D2 02:82C2: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x0082D5 02:82C5: A2 10     LDX #$10
C - - - - - 0x0082D7 02:82C7: A9 10     LDA #$10
C - - - - - 0x0082D9 02:82C9: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
                                        INC ram_buffer_pal_flag
loc_82D1:
C D 0 - - - 0x0082E1 02:82D1: A9 01     LDA #$01
C - - - - - 0x0082E3 02:82D3: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x0082E6 02:82D6: 4C D1 82  JMP loc_82D1



off_82D9:
ofs_82D9 = off_82D9 - 1
C - - - - - 0x0082E9 02:82D9: A2 10     LDX #$10
C - - - - - 0x0082EB 02:82DB: A9 0A     LDA #$0A
C - - - - - 0x0082ED 02:82DD: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
                                        INC ram_buffer_pal_flag
C - - - - - 0x0082F5 02:82E5: A9 04     LDA #$04
C - - - - - 0x0082F7 02:82E7: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x0082FA 02:82EA: A2 10     LDX #$10
C - - - - - 0x0082FC 02:82EC: A9 0B     LDA #$0B
C - - - - - 0x0082FE 02:82EE: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
                                        INC ram_buffer_pal_flag
C - - - - - 0x008306 02:82F6: A9 04     LDA #$04
C - - - - - 0x008308 02:82F8: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00830B 02:82FB: A2 10     LDX #$10
C - - - - - 0x00830D 02:82FD: A9 0C     LDA #$0C
C - - - - - 0x00830F 02:82FF: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
                                        INC ram_buffer_pal_flag
C - - - - - 0x008317 02:8307: A9 04     LDA #$04
C - - - - - 0x008319 02:8309: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00831C 02:830C: A2 10     LDX #$10
C - - - - - 0x00831E 02:830E: A9 04     LDA #$04
C - - - - - 0x008320 02:8310: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
                                        INC ram_buffer_pal_flag
C - - - - - 0x008328 02:8318: 4C 0C C0  JMP loc_0x00C601



tbl_831B:
- D 0 - I - 0x00832B 02:831B: 11        .byte $11   ; 
- D 0 - I - 0x00832C 02:831C: 11        .byte $11   ; 
- D 0 - I - 0x00832D 02:831D: 11        .byte $11   ; 
- D 0 - I - 0x00832E 02:831E: 11        .byte $11   ; 
- D 0 - I - 0x00832F 02:831F: 11        .byte $11   ; 
- D 0 - I - 0x008330 02:8320: 11        .byte $11   ; 
- D 0 - I - 0x008331 02:8321: 11        .byte $11   ; 
- D 0 - I - 0x008332 02:8322: 11        .byte $11   ; 
- D 0 - I - 0x008333 02:8323: 12        .byte $12   ; 
- D 0 - I - 0x008334 02:8324: 11        .byte $11   ; 
- D 0 - I - 0x008335 02:8325: 11        .byte $11   ; 
- D 0 - I - 0x008336 02:8326: 11        .byte $11   ; 
- D 0 - I - 0x008337 02:8327: 11        .byte $11   ; 
- D 0 - I - 0x008338 02:8328: 11        .byte $11   ; 
- D 0 - I - 0x008339 02:8329: 11        .byte $11   ; 
- D 0 - I - 0x00833A 02:832A: 13        .byte $13   ; 
- D 0 - I - 0x00833B 02:832B: 11        .byte $11   ; 
- D 0 - I - 0x00833C 02:832C: 11        .byte $11   ; 
- D 0 - I - 0x00833D 02:832D: 11        .byte $11   ; 
- D 0 - I - 0x00833E 02:832E: FE        .byte $FE   ; 
- D 0 - I - 0x00833F 02:832F: 11        .byte $11   ; 
- D 0 - I - 0x008340 02:8330: 11        .byte $11   ; 
- D 0 - I - 0x008341 02:8331: 11        .byte $11   ; 
- D 0 - I - 0x008342 02:8332: 11        .byte $11   ; 
- D 0 - I - 0x008343 02:8333: 11        .byte $11   ; 
- D 0 - I - 0x008344 02:8334: 11        .byte $11   ; 
- D 0 - I - 0x008345 02:8335: 11        .byte $11   ; 
- D 0 - I - 0x008346 02:8336: 14        .byte $14   ; 
- D 0 - I - 0x008347 02:8337: 15        .byte $15   ; 
- D 0 - I - 0x008348 02:8338: 16        .byte $16   ; 
- D 0 - I - 0x008349 02:8339: 11        .byte $11   ; 
- D 0 - I - 0x00834A 02:833A: 11        .byte $11   ; 
- D 0 - I - 0x00834B 02:833B: 11        .byte $11   ; 
- D 0 - I - 0x00834C 02:833C: 11        .byte $11   ; 
- D 0 - I - 0x00834D 02:833D: 11        .byte $11   ; 
- D 0 - I - 0x00834E 02:833E: 11        .byte $11   ; 
- D 0 - I - 0x00834F 02:833F: 17        .byte $17   ; 
- D 0 - I - 0x008350 02:8340: 11        .byte $11   ; 
- D 0 - I - 0x008351 02:8341: 11        .byte $11   ; 
- D 0 - I - 0x008352 02:8342: 11        .byte $11   ; 
- D 0 - I - 0x008353 02:8343: FE        .byte $FE   ; 
- D 0 - I - 0x008354 02:8344: 11        .byte $11   ; 
- D 0 - I - 0x008355 02:8345: 11        .byte $11   ; 
- D 0 - I - 0x008356 02:8346: 11        .byte $11   ; 
- D 0 - I - 0x008357 02:8347: 11        .byte $11   ; 
- D 0 - I - 0x008358 02:8348: 11        .byte $11   ; 
- D 0 - I - 0x008359 02:8349: 11        .byte $11   ; 
- D 0 - I - 0x00835A 02:834A: 11        .byte $11   ; 
- D 0 - I - 0x00835B 02:834B: 1E        .byte $1E   ; 
- D 0 - I - 0x00835C 02:834C: 11        .byte $11   ; 
- D 0 - I - 0x00835D 02:834D: 11        .byte $11   ; 
- D 0 - I - 0x00835E 02:834E: 11        .byte $11   ; 
- D 0 - I - 0x00835F 02:834F: 11        .byte $11   ; 
- D 0 - I - 0x008360 02:8350: 11        .byte $11   ; 
- D 0 - I - 0x008361 02:8351: 11        .byte $11   ; 
- D 0 - I - 0x008362 02:8352: 1F        .byte $1F   ; 
- D 0 - I - 0x008363 02:8353: 11        .byte $11   ; 
- D 0 - I - 0x008364 02:8354: 22        .byte $22   ; 
- D 0 - I - 0x008365 02:8355: 11        .byte $11   ; 
- D 0 - I - 0x008366 02:8356: 23        .byte $23   ; 
- D 0 - I - 0x008367 02:8357: FE        .byte $FE   ; 
- D 0 - I - 0x008368 02:8358: 11        .byte $11   ; 
- D 0 - I - 0x008369 02:8359: 11        .byte $11   ; 
- D 0 - I - 0x00836A 02:835A: 11        .byte $11   ; 
- D 0 - I - 0x00836B 02:835B: 11        .byte $11   ; 
- D 0 - I - 0x00836C 02:835C: 11        .byte $11   ; 
- D 0 - I - 0x00836D 02:835D: 11        .byte $11   ; 
- D 0 - I - 0x00836E 02:835E: 11        .byte $11   ; 
- D 0 - I - 0x00836F 02:835F: 11        .byte $11   ; 
- D 0 - I - 0x008370 02:8360: 11        .byte $11   ; 
- D 0 - I - 0x008371 02:8361: 11        .byte $11   ; 
- D 0 - I - 0x008372 02:8362: 18        .byte $18   ; 
- D 0 - I - 0x008373 02:8363: 11        .byte $11   ; 
- D 0 - I - 0x008374 02:8364: 11        .byte $11   ; 
- D 0 - I - 0x008375 02:8365: 11        .byte $11   ; 
- D 0 - I - 0x008376 02:8366: 11        .byte $11   ; 
- D 0 - I - 0x008377 02:8367: 11        .byte $11   ; 
- D 0 - I - 0x008378 02:8368: 11        .byte $11   ; 
- D 0 - I - 0x008379 02:8369: 19        .byte $19   ; 
- D 0 - I - 0x00837A 02:836A: 11        .byte $11   ; 
- D 0 - I - 0x00837B 02:836B: 11        .byte $11   ; 
- D 0 - I - 0x00837C 02:836C: 11        .byte $11   ; 
- D 0 - I - 0x00837D 02:836D: FE        .byte $FE   ; 
- D 0 - I - 0x00837E 02:836E: 11        .byte $11   ; 
- D 0 - I - 0x00837F 02:836F: 11        .byte $11   ; 
- D 0 - I - 0x008380 02:8370: 11        .byte $11   ; 
- D 0 - I - 0x008381 02:8371: 11        .byte $11   ; 
- D 0 - I - 0x008382 02:8372: 11        .byte $11   ; 
- D 0 - I - 0x008383 02:8373: 11        .byte $11   ; 
- D 0 - I - 0x008384 02:8374: 11        .byte $11   ; 
- D 0 - I - 0x008385 02:8375: 1A        .byte $1A   ; 
- D 0 - I - 0x008386 02:8376: 11        .byte $11   ; 
- D 0 - I - 0x008387 02:8377: 11        .byte $11   ; 
- D 0 - I - 0x008388 02:8378: 11        .byte $11   ; 
- D 0 - I - 0x008389 02:8379: 11        .byte $11   ; 
- D 0 - I - 0x00838A 02:837A: 11        .byte $11   ; 
- D 0 - I - 0x00838B 02:837B: 11        .byte $11   ; 
- D 0 - I - 0x00838C 02:837C: 1B        .byte $1B   ; 
- D 0 - I - 0x00838D 02:837D: 11        .byte $11   ; 
- D 0 - I - 0x00838E 02:837E: 1C        .byte $1C   ; 
- D 0 - I - 0x00838F 02:837F: 11        .byte $11   ; 
- D 0 - I - 0x008390 02:8380: 1D        .byte $1D   ; 
- D 0 - I - 0x008391 02:8381: FE        .byte $FE   ; 
- D 0 - I - 0x008392 02:8382: 11        .byte $11   ; 
- D 0 - I - 0x008393 02:8383: 11        .byte $11   ; 
- D 0 - I - 0x008394 02:8384: 11        .byte $11   ; 
- D 0 - I - 0x008395 02:8385: 11        .byte $11   ; 
- D 0 - I - 0x008396 02:8386: 11        .byte $11   ; 
- D 0 - I - 0x008397 02:8387: 11        .byte $11   ; 
- D 0 - I - 0x008398 02:8388: 11        .byte $11   ; 
- D 0 - I - 0x008399 02:8389: 11        .byte $11   ; 
- D 0 - I - 0x00839A 02:838A: 11        .byte $11   ; 
- D 0 - I - 0x00839B 02:838B: 11        .byte $11   ; 
- D 0 - I - 0x00839C 02:838C: 11        .byte $11   ; 
- D 0 - I - 0x00839D 02:838D: 11        .byte $11   ; 
- D 0 - I - 0x00839E 02:838E: 11        .byte $11   ; 
- D 0 - I - 0x00839F 02:838F: 11        .byte $11   ; 
- D 0 - I - 0x0083A0 02:8390: 11        .byte $11   ; 
- D 0 - I - 0x0083A1 02:8391: 26        .byte $26   ; 
- D 0 - I - 0x0083A2 02:8392: 11        .byte $11   ; 
- D 0 - I - 0x0083A3 02:8393: 11        .byte $11   ; 
- D 0 - I - 0x0083A4 02:8394: 11        .byte $11   ; 
- D 0 - I - 0x0083A5 02:8395: 11        .byte $11   ; 
- D 0 - I - 0x0083A6 02:8396: 11        .byte $11   ; 
- D 0 - I - 0x0083A7 02:8397: 11        .byte $11   ; 
- D 0 - I - 0x0083A8 02:8398: FF        .byte $FF   ; 



tbl_8399_spr_team_name:
- D 0 - - - 0x0083A9 02:8399: 42        .byte $42, $52, $41   ; 
- - - - - - 0x0083AC 02:839C: 46        .byte $46, $52, $47   ; 
- - - - - - 0x0083AF 02:839F: 49        .byte $49, $54, $41   ; 
- D 0 - - - 0x0083B2 02:83A2: 48        .byte $48, $4F, $4C   ; 
- D 0 - - - 0x0083B5 02:83A5: 41        .byte $41, $52, $47   ; 
- - - - - - 0x0083B8 02:83A8: 55        .byte $55, $52, $53   ; 
- - - - - - 0x0083BB 02:83AB: 55        .byte $55, $52, $55   ; 
- - - - - - 0x0083BE 02:83AE: 50        .byte $50, $4F, $4C   ; 
- - - - - - 0x0083C1 02:83B1: 45        .byte $45, $4E, $47   ; 
- D 0 - - - 0x0083C4 02:83B4: 53        .byte $53, $50, $41   ; 
- D 0 - - - 0x0083C7 02:83B7: 43        .byte $43, $4F, $4C   ; 
- D 0 - - - 0x0083CA 02:83BA: 53        .byte $53, $43, $4F   ; 
- D 0 - - - 0x0083CD 02:83BD: 46        .byte $46, $52, $41   ; 
- D 0 - - - 0x0083D0 02:83C0: 55        .byte $55, $53, $41   ; 
- - - - - - 0x0083D3 02:83C3: 4B        .byte $4B, $4F, $52   ; 
- - - - - - 0x0083D6 02:83C6: 4A        .byte $4A, $50, $4E   ; 



sub_0x0083D9:
C D 0 - - - 0x0083D9 02:83C9: 2C A4 03  BIT ram_game_mode_flags
C - - - - - 0x0083DC 02:83CC: 30 3B     BMI bra_8409_RTS    ; con_gm_2p
C - - - - - 0x0083DE 02:83CE: A9 14     LDA #con_music_game_number
C - - - - - 0x0083E0 02:83D0: 20 7E C0  JSR sub_0x00C920_prepare_sound
C - - - - - 0x0083E3 02:83D3: 20 0A 84  JSR sub_840A
C - - - - - 0x0083E6 02:83D6: A9 C8     LDA #$C8
bra_83D8_loop:
C - - - - - 0x0083E8 02:83D8: 48        PHA
C - - - - - 0x0083E9 02:83D9: A9 01     LDA #$01
C - - - - - 0x0083EB 02:83DB: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x0083EE 02:83DE: 68        PLA
C - - - - - 0x0083EF 02:83DF: AA        TAX
C - - - - - 0x0083F0 02:83E0: A9 D0     LDA #con_btns_AB + con_btn_Start
C - - - - - 0x0083F2 02:83E2: 2D 26 00  AND ram_btn_press
C - - - - - 0x0083F5 02:83E5: D0 04     BNE bra_83EB
C - - - - - 0x0083F7 02:83E7: CA        DEX
C - - - - - 0x0083F8 02:83E8: 8A        TXA
C - - - - - 0x0083F9 02:83E9: D0 ED     BNE bra_83D8_loop
bra_83EB:
C - - - - - 0x0083FB 02:83EB: A2 00     LDX #$00
C - - - - - 0x0083FD 02:83ED: A9 02     LDA #$02
C - - - - - 0x0083FF 02:83EF: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
C - - - - - 0x008402 02:83F2: A2 10     LDX #$10
C - - - - - 0x008404 02:83F4: A9 02     LDA #$02
C - - - - - 0x008406 02:83F6: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
                                        INC ram_buffer_pal_flag
C - - - - - 0x00840E 02:83FE: A5 28     LDA ram_byte_for_2000
C - - - - - 0x008410 02:8400: 09 20     ORA #$20
C - - - - - 0x008412 02:8402: 85 28     STA ram_byte_for_2000
C - - - - - 0x008414 02:8404: A9 00     LDA #$00
C - - - - - 0x008416 02:8406: 8D 00 A0  STA $A000
bra_8409_RTS:
C - - - - - 0x008419 02:8409: 60        RTS



sub_840A:
C - - - - - 0x00841A 02:840A: 20 75 C0  JSR sub_0x00CA69_clear_nametables
C - - - - - 0x00841D 02:840D: 20 51 C0  JSR sub_0x00CABF_hide_sprites
C - - - - - 0x008420 02:8410: A2 00     LDX #$00
C - - - - - 0x008422 02:8412: A9 05     LDA #$05
C - - - - - 0x008424 02:8414: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
C - - - - - 0x008427 02:8417: A2 10     LDX #$10
C - - - - - 0x008429 02:8419: A9 04     LDA #$04
C - - - - - 0x00842B 02:841B: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
                                        INC ram_buffer_pal_flag
C - - - - - 0x008433 02:8423: A2 03     LDX #$03
bra_8425_loop:
C - - - - - 0x008435 02:8425: 8A        TXA
C - - - - - 0x008436 02:8426: 18        CLC
C - - - - - 0x008437 02:8427: 69 18     ADC #$18
C - - - - - 0x008439 02:8429: 9D 6B 00  STA ram_006B,X
C - - - - - 0x00843C 02:842C: CA        DEX
C - - - - - 0x00843D 02:842D: 10 F6     BPL bra_8425_loop
C - - - - - 0x00843F 02:842F: A9 24     LDA #$24
C - - - - - 0x008441 02:8431: 8D 69 00  STA ram_0069
C - - - - - 0x008444 02:8434: A9 26     LDA #$26
C - - - - - 0x008446 02:8436: 8D 6A 00  STA ram_006A
C - - - - - 0x008449 02:8439: A9 7F     LDA #$7F
C - - - - - 0x00844B 02:843B: 8D B8 03  STA ram_cam_edge_X_hi
C - - - - - 0x00844E 02:843E: A9 F4     LDA #$F4
C - - - - - 0x008450 02:8440: 8D B9 03  STA ram_03B9
C - - - - - 0x008453 02:8443: A5 28     LDA ram_byte_for_2000
C - - - - - 0x008455 02:8445: 29 DF     AND #$DF
C - - - - - 0x008457 02:8447: 85 28     STA ram_byte_for_2000
C - - - - - 0x008459 02:8449: A9 01     LDA #$01
C - - - - - 0x00845B 02:844B: 8D 00 A0  STA $A000
C - - - - - 0x00845E 02:844E: A9 EF     LDA #$EF
C - - - - - 0x008460 02:8450: 85 3B     STA ram_003B
C - - - - - 0x008462 02:8452: A9 00     LDA #$00
C - - - - - 0x008464 02:8454: 20 4C 89  JSR sub_894C
C - - - - - 0x008467 02:8457: AE B3 03  LDX ram_game_cnt
C - - - - - 0x00846A 02:845A: E8        INX
C - - - - - 0x00846B 02:845B: 8A        TXA
C - - - - - 0x00846C 02:845C: 20 4C 89  JSR sub_894C
bra_845F_loop:
C - - - - - 0x00846F 02:845F: A9 01     LDA #$01
C - - - - - 0x008471 02:8461: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008474 02:8464: CE B9 03  DEC ram_03B9
C - - - - - 0x008477 02:8467: 20 78 84  JSR sub_8478
C - - - - - 0x00847A 02:846A: A5 3B     LDA ram_003B
C - - - - - 0x00847C 02:846C: 38        SEC
C - - - - - 0x00847D 02:846D: E9 02     SBC #$02
C - - - - - 0x00847F 02:846F: 85 3B     STA ram_003B
C - - - - - 0x008481 02:8471: B0 EC     BCS bra_845F_loop
C - - - - - 0x008483 02:8473: A9 00     LDA #$00
C - - - - - 0x008485 02:8475: 85 3B     STA ram_003B
C - - - - - 0x008487 02:8477: 60        RTS



sub_8478:
C - - - - - 0x008488 02:8478: 20 51 C0  JSR sub_0x00CABF_hide_sprites
C - - - - - 0x00848B 02:847B: A9 44     LDA #< tbl_9144
C - - - - - 0x00848D 02:847D: 85 2A     STA ram_002A
C - - - - - 0x00848F 02:847F: A9 91     LDA #> tbl_9144
C - - - - - 0x008491 02:8481: 85 2B     STA ram_002B
C - - - - - 0x008493 02:8483: A2 00     LDX #$00
C - - - - - 0x008495 02:8485: 86 2C     STX ram_002C
loc_8487_loop:
C D 0 - - - 0x008497 02:8487: A0 00     LDY #$00
C - - - - - 0x008499 02:8489: B1 2A     LDA (ram_002A),Y
C - - - - - 0x00849B 02:848B: D0 01     BNE bra_848E
C - - - - - 0x00849D 02:848D: 60        RTS
bra_848E:
C - - - - - 0x00849E 02:848E: A2 00     LDX #$00
C - - - - - 0x0084A0 02:8490: 85 2D     STA ram_002D
C - - - - - 0x0084A2 02:8492: C8        INY
C - - - - - 0x0084A3 02:8493: B1 2A     LDA (ram_002A),Y
C - - - - - 0x0084A5 02:8495: 10 01     BPL bra_8498
C - - - - - 0x0084A7 02:8497: CA        DEX
bra_8498:
C - - - - - 0x0084A8 02:8498: 18        CLC
C - - - - - 0x0084A9 02:8499: 6D B9 03  ADC ram_03B9
C - - - - - 0x0084AC 02:849C: 48        PHA
C - - - - - 0x0084AD 02:849D: 8A        TXA
C - - - - - 0x0084AE 02:849E: 69 00     ADC #$00
C - - - - - 0x0084B0 02:84A0: F0 04     BEQ bra_84A6
C - - - - - 0x0084B2 02:84A2: 68        PLA
C - - - - - 0x0084B3 02:84A3: A9 F8     LDA #$F8
C - - - - - 0x0084B5 02:84A5: 48        PHA
bra_84A6:
C - - - - - 0x0084B6 02:84A6: 68        PLA
C - - - - - 0x0084B7 02:84A7: 85 2E     STA ram_002E
C - - - - - 0x0084B9 02:84A9: C8        INY
bra_84AA_loop:
C - - - - - 0x0084BA 02:84AA: A6 2C     LDX ram_002C
C - - - - - 0x0084BC 02:84AC: A5 2E     LDA ram_002E
C - - - - - 0x0084BE 02:84AE: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x0084C1 02:84B1: B1 2A     LDA (ram_002A),Y
C - - - - - 0x0084C3 02:84B3: 48        PHA
C - - - - - 0x0084C4 02:84B4: 29 3F     AND #$3F
C - - - - - 0x0084C6 02:84B6: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x0084C9 02:84B9: A9 08     LDA #$08
C - - - - - 0x0084CB 02:84BB: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x0084CE 02:84BE: 68        PLA
C - - - - - 0x0084CF 02:84BF: 0A        ASL
C - - - - - 0x0084D0 02:84C0: 3E 02 02  ROL ram_spr_A,X
C - - - - - 0x0084D3 02:84C3: 0A        ASL
C - - - - - 0x0084D4 02:84C4: 3E 02 02  ROL ram_spr_A,X
C - - - - - 0x0084D7 02:84C7: C8        INY
C - - - - - 0x0084D8 02:84C8: B1 2A     LDA (ram_002A),Y
C - - - - - 0x0084DA 02:84CA: 6D B8 03  ADC ram_cam_edge_X_hi
C - - - - - 0x0084DD 02:84CD: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x0084E0 02:84D0: C8        INY
C - - - - - 0x0084E1 02:84D1: E8        INX
C - - - - - 0x0084E2 02:84D2: E8        INX
C - - - - - 0x0084E3 02:84D3: E8        INX
C - - - - - 0x0084E4 02:84D4: E8        INX
C - - - - - 0x0084E5 02:84D5: 86 2C     STX ram_002C
C - - - - - 0x0084E7 02:84D7: C6 2D     DEC ram_002D
C - - - - - 0x0084E9 02:84D9: D0 CF     BNE bra_84AA_loop
C - - - - - 0x0084EB 02:84DB: 98        TYA
C - - - - - 0x0084EC 02:84DC: 18        CLC
C - - - - - 0x0084ED 02:84DD: 65 2A     ADC ram_002A
C - - - - - 0x0084EF 02:84DF: 85 2A     STA ram_002A
C - - - - - 0x0084F1 02:84E1: 90 02     BCC bra_84E5
- - - - - - 0x0084F3 02:84E3: E6 2B     INC ram_002B
bra_84E5:
C - - - - - 0x0084F5 02:84E5: 4C 87 84  JMP loc_8487_loop



sub_0x008501:
C D 0 - - - 0x008501 02:84F1: 20 75 C0  JSR sub_0x00CA69_clear_nametables
C - - - - - 0x008504 02:84F4: 20 51 C0  JSR sub_0x00CABF_hide_sprites
C - - - - - 0x008507 02:84F7: A5 28     LDA ram_byte_for_2000
C - - - - - 0x008509 02:84F9: 09 20     ORA #$20
C - - - - - 0x00850B 02:84FB: 85 28     STA ram_byte_for_2000
C - - - - - 0x00850D 02:84FD: A9 1C     LDA #$1C
C - - - - - 0x00850F 02:84FF: 85 69     STA ram_0069
C - - - - - 0x008511 02:8501: A9 1A     LDA #$1A
C - - - - - 0x008513 02:8503: 85 6A     STA ram_006A
C - - - - - 0x008515 02:8505: A2 03     LDX #$03
bra_8507_loop:
C - - - - - 0x008517 02:8507: BD 5C 85  LDA tbl_855C,X
C - - - - - 0x00851A 02:850A: 9D 6B 00  STA ram_006B,X
C - - - - - 0x00851D 02:850D: CA        DEX
C - - - - - 0x00851E 02:850E: 10 F7     BPL bra_8507_loop
C - - - - - 0x008520 02:8510: A2 10     LDX #$10
C - - - - - 0x008522 02:8512: A9 02     LDA #$02
C - - - - - 0x008524 02:8514: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
C - - - - - 0x008527 02:8517: A2 00     LDX #$00
C - - - - - 0x008529 02:8519: A9 02     LDA #$02
C - - - - - 0x00852B 02:851B: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
                                        INC ram_buffer_pal_flag
C - - - - - 0x008533 02:8523: A9 02     LDA #$02
C - - - - - 0x008535 02:8525: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008538 02:8528: A2 D0     LDX #< tbl_8DD0
C - - - - - 0x00853A 02:852A: A0 8D     LDY #> tbl_8DD0
C - - - - - 0x00853C 02:852C: 20 33 C0  JSR sub_0x00C762
C - - - - - 0x00853F 02:852F: 2C A4 03  BIT ram_game_mode_flags
C - - - - - 0x008542 02:8532: 10 0A     BPL bra_853E    ; con_gm_1p
C - - - - - 0x008544 02:8534: A2 37     LDX #< tbl_9137
C - - - - - 0x008546 02:8536: A0 91     LDY #> tbl_9137
C - - - - - 0x008548 02:8538: 20 33 C0  JSR sub_0x00C762
C - - - - - 0x00854B 02:853B: 4C 41 85  JMP loc_8541
bra_853E:
C - - - - - 0x00854E 02:853E: 20 2D A6  JSR sub_A62D
loc_8541:
C D 0 - - - 0x008551 02:8541: A9 02     LDA #$02
C - - - - - 0x008553 02:8543: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008556 02:8546: A2 00     LDX #$00
C - - - - - 0x008558 02:8548: A9 05     LDA #$05
C - - - - - 0x00855A 02:854A: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
C - - - - - 0x00855D 02:854D: A2 10     LDX #$10
C - - - - - 0x00855F 02:854F: A9 03     LDA #$03
C - - - - - 0x008561 02:8551: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
                                        INC ram_buffer_pal_flag
C - - - - - 0x008569 02:8559: 4C 60 85  JMP loc_8560



tbl_855C:
- D 0 - - - 0x00856C 02:855C: 08        .byte $08   ; 
- D 0 - - - 0x00856D 02:855D: 09        .byte $09   ; 
- D 0 - - - 0x00856E 02:855E: 1A        .byte $1A   ; 
- D 0 - - - 0x00856F 02:855F: 1B        .byte $1B   ; 



loc_8560:
C D 0 - - - 0x008570 02:8560: A9 16     LDA #con_music_team_select
C - - - - - 0x008572 02:8562: 20 7E C0  JSR sub_0x00C920_prepare_sound
C - - - - - 0x008575 02:8565: A9 01     LDA #$01
C - - - - - 0x008577 02:8567: 8D AF 03  STA ram_option_timer
C - - - - - 0x00857A 02:856A: A2 05     LDX #$05
C - - - - - 0x00857C 02:856C: A9 3C     LDA #$3C
C - - - - - 0x00857E 02:856E: 95 01     STA ram_0001,X
C - - - - - 0x008580 02:8570: A9 04     LDA #$04
C - - - - - 0x008582 02:8572: 95 02     STA ram_0002,X
C - - - - - 0x008584 02:8574: A9 88     LDA #> ofs_88B9
C - - - - - 0x008586 02:8576: A0 B8     LDY #< ofs_88B9
C - - - - - 0x008588 02:8578: 20 06 C0  JSR sub_0x00C5F1_prepare_return_address
C - - - - - 0x00858B 02:857B: 2C A4 03  BIT ram_game_mode_flags
C - - - - - 0x00858E 02:857E: 10 19     BPL bra_8599    ; con_gm_1p
C - - - - - 0x008590 02:8580: A9 00     LDA #$00
C - - - - - 0x008592 02:8582: 8D AB 03  STA ram_team_ban
C - - - - - 0x008595 02:8585: 8D AC 03  STA ram_team_ban + 1
C - - - - - 0x008598 02:8588: 8D A9 03  STA ram_team_id
C - - - - - 0x00859B 02:858B: 20 98 88  JSR sub_8898_set_ban
C - - - - - 0x00859E 02:858E: A9 01     LDA #$01
C - - - - - 0x0085A0 02:8590: 8D AA 03  STA ram_team_id + 1
C - - - - - 0x0085A3 02:8593: 20 98 88  JSR sub_8898_set_ban
C - - - - - 0x0085A6 02:8596: 4C C2 86  JMP loc_86C2
bra_8599:
C - - - - - 0x0085A9 02:8599: 2C A4 03  BIT ram_game_mode_flags
C - - - - - 0x0085AC 02:859C: 70 1B     BVS bra_85B9    ; con_gm_continue
C - - - - - 0x0085AE 02:859E: AD A9 03  LDA ram_team_id
C - - - - - 0x0085B1 02:85A1: C9 FF     CMP #$FF
C - - - - - 0x0085B3 02:85A3: D0 14     BNE bra_85B9
C - - - - - 0x0085B5 02:85A5: A9 00     LDA #$00
C - - - - - 0x0085B7 02:85A7: 8D AB 03  STA ram_team_ban
C - - - - - 0x0085BA 02:85AA: 8D AC 03  STA ram_team_ban + 1
C - - - - - 0x0085BD 02:85AD: 8D A9 03  STA ram_team_id
C - - - - - 0x0085C0 02:85B0: 20 98 88  JSR sub_8898_set_ban
C - - - - - 0x0085C3 02:85B3: 20 40 86  JSR sub_8640
C - - - - - 0x0085C6 02:85B6: 20 B0 86  JSR sub_86B0
bra_85B9:
C - - - - - 0x0085C9 02:85B9: AD A9 03  LDA ram_team_id
C - - - - - 0x0085CC 02:85BC: 20 98 88  JSR sub_8898_set_ban
C - - - - - 0x0085CF 02:85BF: A2 07     LDX #$07
C - - - - - 0x0085D1 02:85C1: 20 09 88  JSR sub_8809
C - - - - - 0x0085D4 02:85C4: 20 40 86  JSR sub_8640
C - - - - - 0x0085D7 02:85C7: AD A4 03  LDA ram_game_mode_flags
C - - - - - 0x0085DA 02:85CA: 29 08     AND #con_gm_team_select
C - - - - - 0x0085DC 02:85CC: D0 14     BNE bra_85E2
C - - - - - 0x0085DE 02:85CE: AD AA 03  LDA ram_team_id + 1
C - - - - - 0x0085E1 02:85D1: 8D AA 03  STA ram_team_id + 1
C - - - - - 0x0085E4 02:85D4: 20 98 88  JSR sub_8898_set_ban
C - - - - - 0x0085E7 02:85D7: A2 0B     LDX #$0B
C - - - - - 0x0085E9 02:85D9: 20 09 88  JSR sub_8809
C - - - - - 0x0085EC 02:85DC: 20 40 86  JSR sub_8640
C - - - - - 0x0085EF 02:85DF: 4C 0C 86  JMP loc_860C
bra_85E2:
C - - - - - 0x0085F2 02:85E2: A9 00     LDA #$00
C - - - - - 0x0085F4 02:85E4: 8D B4 03  STA ram_03B4
C - - - - - 0x0085F7 02:85E7: 8D B5 03  STA ram_03B5
bra_85EA_loop:
C - - - - - 0x0085FA 02:85EA: 48        PHA
C - - - - - 0x0085FB 02:85EB: 20 7E 88  JSR sub_887E
C - - - - - 0x0085FE 02:85EE: 68        PLA
C - - - - - 0x0085FF 02:85EF: 90 0A     BCC bra_85FB
C - - - - - 0x008601 02:85F1: 18        CLC
C - - - - - 0x008602 02:85F2: 69 01     ADC #$01
C - - - - - 0x008604 02:85F4: C9 10     CMP #$10
C - - - - - 0x008606 02:85F6: D0 F2     BNE bra_85EA_loop
- - - - - - 0x008608 02:85F8: 4C 0C 86  JMP loc_860C
bra_85FB:
C - - - - - 0x00860B 02:85FB: 8D AA 03  STA ram_team_id + 1
C - - - - - 0x00860E 02:85FE: 20 98 88  JSR sub_8898_set_ban
C - - - - - 0x008611 02:8601: 20 40 86  JSR sub_8640
C - - - - - 0x008614 02:8604: A9 14     LDA #$14
C - - - - - 0x008616 02:8606: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008619 02:8609: 20 B4 87  JSR sub_87B4
loc_860C:
bra_860C_loop:
C D 0 - - - 0x00861C 02:860C: A9 01     LDA #$01
C - - - - - 0x00861E 02:860E: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008621 02:8611: A9 D0     LDA #con_btns_AB + con_btn_Start
C - - - - - 0x008623 02:8613: 2D 26 00  AND ram_btn_press
C - - - - - 0x008626 02:8616: F0 F4     BEQ bra_860C_loop
C - - - - - 0x008628 02:8618: A9 00     LDA #$00
C - - - - - 0x00862A 02:861A: 85 05     STA ram_0005
C - - - - - 0x00862C 02:861C: 85 06     STA ram_0006
C - - - - - 0x00862E 02:861E: A9 0E     LDA #con_sound_fans
C - - - - - 0x008630 02:8620: 20 7E C0  JSR sub_0x00C920_prepare_sound
C - - - - - 0x008633 02:8623: A9 3C     LDA #$3C
C - - - - - 0x008635 02:8625: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008638 02:8628: A9 0F     LDA #$0F
C - - - - - 0x00863A 02:862A: 85 2A     STA ram_002A
C - - - - - 0x00863C 02:862C: A9 FE     LDA #$FE
C - - - - - 0x00863E 02:862E: 8D B3 03  STA ram_game_cnt
bra_8631_loop:
C - - - - - 0x008641 02:8631: A5 2A     LDA ram_002A
C - - - - - 0x008643 02:8633: 20 7E 88  JSR sub_887E
C - - - - - 0x008646 02:8636: 90 03     BCC bra_863B
C - - - - - 0x008648 02:8638: EE B3 03  INC ram_game_cnt
bra_863B:
C - - - - - 0x00864B 02:863B: C6 2A     DEC ram_002A
C - - - - - 0x00864D 02:863D: 10 F2     BPL bra_8631_loop
C - - - - - 0x00864F 02:863F: 60        RTS



sub_8640:
C - - - - - 0x008650 02:8640: A9 00     LDA #$00
C - - - - - 0x008652 02:8642: 85 2A     STA ram_002A
bra_8644_loop:
C - - - - - 0x008654 02:8644: A5 2A     LDA ram_002A
C - - - - - 0x008656 02:8646: 20 7E 88  JSR sub_887E
C - - - - - 0x008659 02:8649: 90 1A     BCC bra_8665
C - - - - - 0x00865B 02:864B: A5 2A     LDA ram_002A
C - - - - - 0x00865D 02:864D: A2 00     LDX #$00
C - - - - - 0x00865F 02:864F: CD A9 03  CMP ram_team_id
C - - - - - 0x008662 02:8652: F0 10     BEQ bra_8664
C - - - - - 0x008664 02:8654: A2 06     LDX #$06
C - - - - - 0x008666 02:8656: CD AA 03  CMP ram_team_id + 1
C - - - - - 0x008669 02:8659: D0 09     BNE bra_8664
C - - - - - 0x00866B 02:865B: A2 02     LDX #$02
C - - - - - 0x00866D 02:865D: 2C A4 03  BIT ram_game_mode_flags
C - - - - - 0x008670 02:8660: 30 02     BMI bra_8664    ; con_gm_2p
C - - - - - 0x008672 02:8662: A2 04     LDX #$04
bra_8664:
C - - - - - 0x008674 02:8664: 38        SEC
bra_8665:
C - - - - - 0x008675 02:8665: 20 71 86  JSR sub_8671
C - - - - - 0x008678 02:8668: E6 2A     INC ram_002A
C - - - - - 0x00867A 02:866A: A5 2A     LDA ram_002A
C - - - - - 0x00867C 02:866C: C9 10     CMP #$10
C - - - - - 0x00867E 02:866E: D0 D4     BNE bra_8644_loop
C - - - - - 0x008680 02:8670: 60        RTS



sub_8671:
C - - - - - 0x008681 02:8671: 08        PHP
C - - - - - 0x008682 02:8672: A5 2A     LDA ram_002A
C - - - - - 0x008684 02:8674: 0A        ASL
C - - - - - 0x008685 02:8675: 0A        ASL
C - - - - - 0x008686 02:8676: A8        TAY
C - - - - - 0x008687 02:8677: 28        PLP
C - - - - - 0x008688 02:8678: B0 06     BCS bra_8680
C - - - - - 0x00868A 02:867A: A9 F8     LDA #$F8
C - - - - - 0x00868C 02:867C: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x00868F 02:867F: 60        RTS
bra_8680:
C - - - - - 0x008690 02:8680: BD A8 86  LDA tbl_86A8,X
C - - - - - 0x008693 02:8683: 99 02 02  STA ram_spr_A,Y
C - - - - - 0x008696 02:8686: BD A9 86  LDA tbl_86A9,X
C - - - - - 0x008699 02:8689: 99 01 02  STA ram_spr_T,Y
C - - - - - 0x00869C 02:868C: A5 2A     LDA ram_002A
C - - - - - 0x00869E 02:868E: 29 07     AND #$07
C - - - - - 0x0086A0 02:8690: 0A        ASL
C - - - - - 0x0086A1 02:8691: 0A        ASL
C - - - - - 0x0086A2 02:8692: 0A        ASL
C - - - - - 0x0086A3 02:8693: 0A        ASL
C - - - - - 0x0086A4 02:8694: 18        CLC
C - - - - - 0x0086A5 02:8695: 69 47     ADC #$47
C - - - - - 0x0086A7 02:8697: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x0086AA 02:869A: A9 2C     LDA #$2C
C - - - - - 0x0086AC 02:869C: A6 2A     LDX ram_002A
C - - - - - 0x0086AE 02:869E: E0 08     CPX #$08
C - - - - - 0x0086B0 02:86A0: 90 02     BCC bra_86A4
C - - - - - 0x0086B2 02:86A2: A9 8C     LDA #$8C
bra_86A4:
C - - - - - 0x0086B4 02:86A4: 99 03 02  STA ram_spr_X,Y
C - - - - - 0x0086B7 02:86A7: 60        RTS



tbl_86A8:
- D 0 - - - 0x0086B8 02:86A8: 01        .byte $01   ; 
tbl_86A9:
- D 0 - - - 0x0086B9 02:86A9: 57        .byte $57   ; 
- D 0 - - - 0x0086BA 02:86AA: 02        .byte $02   ; 
- D 0 - - - 0x0086BB 02:86AB: 59        .byte $59   ; 
- D 0 - - - 0x0086BC 02:86AC: 02        .byte $02   ; 
- D 0 - - - 0x0086BD 02:86AD: 5B        .byte $5B   ; 
- D 0 - - - 0x0086BE 02:86AE: 00        .byte $00   ; 
- D 0 - - - 0x0086BF 02:86AF: 61        .byte $61   ; 



sub_86B0:
bra_86B0_loop:
C - - - - - 0x0086C0 02:86B0: A9 01     LDA #$01
C - - - - - 0x0086C2 02:86B2: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x0086C5 02:86B5: A2 00     LDX #$00
C - - - - - 0x0086C7 02:86B7: 20 14 88  JSR sub_8814
C - - - - - 0x0086CA 02:86BA: A9 C0     LDA #con_btns_AB
C - - - - - 0x0086CC 02:86BC: 2D 26 00  AND ram_btn_press
C - - - - - 0x0086CF 02:86BF: F0 EF     BEQ bra_86B0_loop
C - - - - - 0x0086D1 02:86C1: 60        RTS



loc_86C2:
C D 0 - - - 0x0086D2 02:86C2: A9 00     LDA #$00
C - - - - - 0x0086D4 02:86C4: 8D B6 03  STA ram_03B6
C - - - - - 0x0086D7 02:86C7: 20 62 87  JSR sub_8762_display_game_time_spr
bra_86CA_loop:
C - - - - - 0x0086DA 02:86CA: A9 01     LDA #$01
C - - - - - 0x0086DC 02:86CC: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x0086DF 02:86CF: 20 40 86  JSR sub_8640
C - - - - - 0x0086E2 02:86D2: 2C B6 03  BIT ram_03B6
C - - - - - 0x0086E5 02:86D5: 30 19     BMI bra_86F0
C - - - - - 0x0086E7 02:86D7: A2 00     LDX #$00
C - - - - - 0x0086E9 02:86D9: 20 14 88  JSR sub_8814
C - - - - - 0x0086EC 02:86DC: A9 C0     LDA #con_btns_AB
C - - - - - 0x0086EE 02:86DE: 2D 26 00  AND ram_btn_press
C - - - - - 0x0086F1 02:86E1: F0 0D     BEQ bra_86F0
C - - - - - 0x0086F3 02:86E3: AD B6 03  LDA ram_03B6
C - - - - - 0x0086F6 02:86E6: 09 80     ORA #$80
C - - - - - 0x0086F8 02:86E8: 8D B6 03  STA ram_03B6
C - - - - - 0x0086FB 02:86EB: A2 07     LDX #$07
C - - - - - 0x0086FD 02:86ED: 20 09 88  JSR sub_8809
bra_86F0:
C - - - - - 0x008700 02:86F0: 2C B6 03  BIT ram_03B6
C - - - - - 0x008703 02:86F3: 70 19     BVS bra_870E
C - - - - - 0x008705 02:86F5: A2 01     LDX #$01
C - - - - - 0x008707 02:86F7: 20 14 88  JSR sub_8814
C - - - - - 0x00870A 02:86FA: A9 C0     LDA #con_btns_AB
C - - - - - 0x00870C 02:86FC: 2D 27 00  AND ram_btn_press + 1
C - - - - - 0x00870F 02:86FF: F0 0D     BEQ bra_870E
C - - - - - 0x008711 02:8701: AD B6 03  LDA ram_03B6
C - - - - - 0x008714 02:8704: 09 40     ORA #$40
C - - - - - 0x008716 02:8706: 8D B6 03  STA ram_03B6
C - - - - - 0x008719 02:8709: A2 0B     LDX #$0B
C - - - - - 0x00871B 02:870B: 20 09 88  JSR sub_8809
bra_870E:
C - - - - - 0x00871E 02:870E: 20 45 87  JSR sub_8745_change_time_option
C - - - - - 0x008721 02:8711: AD B6 03  LDA ram_03B6
C - - - - - 0x008724 02:8714: C9 C0     CMP #$C0
C - - - - - 0x008726 02:8716: D0 B2     BNE bra_86CA_loop
C - - - - - 0x008728 02:8718: A9 00     LDA #$00
bra_871A_loop:
C - - - - - 0x00872A 02:871A: 48        PHA
C - - - - - 0x00872B 02:871B: CD AF 03  CMP ram_option_timer
C - - - - - 0x00872E 02:871E: F0 0C     BEQ bra_872C
C - - - - - 0x008730 02:8720: 0A        ASL
C - - - - - 0x008731 02:8721: 0A        ASL
C - - - - - 0x008732 02:8722: 0A        ASL
C - - - - - 0x008733 02:8723: AA        TAX
C - - - - - 0x008734 02:8724: A9 F8     LDA #$F8
C - - - - - 0x008736 02:8726: 9D 40 02  STA ram_spr_Y + $40,X
C - - - - - 0x008739 02:8729: 9D 44 02  STA ram_spr_Y + $44,X
bra_872C:
C - - - - - 0x00873C 02:872C: 68        PLA
C - - - - - 0x00873D 02:872D: 18        CLC
C - - - - - 0x00873E 02:872E: 69 01     ADC #$01
C - - - - - 0x008740 02:8730: C9 03     CMP #$03
C - - - - - 0x008742 02:8732: D0 E6     BNE bra_871A_loop
C - - - - - 0x008744 02:8734: A9 00     LDA #$00
C - - - - - 0x008746 02:8736: 85 05     STA ram_0005
C - - - - - 0x008748 02:8738: 85 06     STA ram_0006
C - - - - - 0x00874A 02:873A: A9 0E     LDA #con_sound_fans
C - - - - - 0x00874C 02:873C: 20 7E C0  JSR sub_0x00C920_prepare_sound
C - - - - - 0x00874F 02:873F: A9 46     LDA #$46
C - - - - - 0x008751 02:8741: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008754 02:8744: 60        RTS



sub_8745_change_time_option:
C - - - - - 0x008755 02:8745: A9 20     LDA #con_btn_Select
C - - - - - 0x008757 02:8747: 2D 26 00  AND ram_btn_press
C - - - - - 0x00875A 02:874A: F0 15     BEQ bra_8761_RTS
C - - - - - 0x00875C 02:874C: AE AF 03  LDX ram_option_timer
C - - - - - 0x00875F 02:874F: E8        INX
C - - - - - 0x008760 02:8750: E0 03     CPX #$03
C - - - - - 0x008762 02:8752: D0 02     BNE bra_8756_not_overflow
C - - - - - 0x008764 02:8754: A2 00     LDX #$00
bra_8756_not_overflow:
C - - - - - 0x008766 02:8756: 8E AF 03  STX ram_option_timer
C - - - - - 0x008769 02:8759: 20 62 87  JSR sub_8762_display_game_time_spr
C - - - - - 0x00876C 02:875C: A9 18     LDA #con_sound_select
C - - - - - 0x00876E 02:875E: 20 7E C0  JSR sub_0x00C920_prepare_sound
bra_8761_RTS:
C - - - - - 0x008771 02:8761: 60        RTS



sub_8762_display_game_time_spr:
; отображение цифер времени тайма
C - - - - - 0x008772 02:8762: A9 00     LDA #$00
C - - - - - 0x008774 02:8764: 85 2A     STA ram_002A
bra_8766_loop:
C - - - - - 0x008776 02:8766: A5 2A     LDA ram_002A
C - - - - - 0x008778 02:8768: 0A        ASL
C - - - - - 0x008779 02:8769: 0A        ASL
C - - - - - 0x00877A 02:876A: A8        TAY
C - - - - - 0x00877B 02:876B: 0A        ASL
C - - - - - 0x00877C 02:876C: AA        TAX
C - - - - - 0x00877D 02:876D: A9 D0     LDA #$D0
C - - - - - 0x00877F 02:876F: 9D 40 02  STA ram_spr_Y + $40,X
C - - - - - 0x008782 02:8772: 9D 44 02  STA ram_spr_Y + $44,X
C - - - - - 0x008785 02:8775: B9 A8 87  LDA tbl_87A8,Y
C - - - - - 0x008788 02:8778: 9D 43 02  STA ram_spr_X + $40,X
C - - - - - 0x00878B 02:877B: B9 A9 87  LDA tbl_87A8 + 1,Y
C - - - - - 0x00878E 02:877E: 9D 41 02  STA ram_spr_T + $40,X
C - - - - - 0x008791 02:8781: B9 AA 87  LDA tbl_87A8 + 2,Y
C - - - - - 0x008794 02:8784: 9D 47 02  STA ram_spr_X + $44,X
C - - - - - 0x008797 02:8787: B9 AB 87  LDA tbl_87A8 + 3,Y
C - - - - - 0x00879A 02:878A: 9D 45 02  STA ram_spr_T + $44,X
C - - - - - 0x00879D 02:878D: A0 03     LDY #$03
C - - - - - 0x00879F 02:878F: A5 2A     LDA ram_002A
C - - - - - 0x0087A1 02:8791: CD AF 03  CMP ram_option_timer
C - - - - - 0x0087A4 02:8794: D0 02     BNE bra_8798
C - - - - - 0x0087A6 02:8796: A0 00     LDY #$00
bra_8798:
C - - - - - 0x0087A8 02:8798: 98        TYA
C - - - - - 0x0087A9 02:8799: 9D 42 02  STA ram_spr_A + $40,X
C - - - - - 0x0087AC 02:879C: 9D 46 02  STA ram_spr_A + $44,X
C - - - - - 0x0087AF 02:879F: E6 2A     INC ram_002A
C - - - - - 0x0087B1 02:87A1: A5 2A     LDA ram_002A
C - - - - - 0x0087B3 02:87A3: C9 03     CMP #$03
C - - - - - 0x0087B5 02:87A5: D0 BF     BNE bra_8766_loop
C - - - - - 0x0087B7 02:87A7: 60        RTS



tbl_87A8:
; первый байт = X, второй байт = номер тайла
- D 0 - - - 0x0087B8 02:87A8: 98        .byte $98, $43   ; 1
- D 0 - - - 0x0087BA 02:87AA: A0        .byte $A0, $4B   ; 5

- D 0 - - - 0x0087BC 02:87AC: B0        .byte $B0, $47   ; 3
- D 0 - - - 0x0087BE 02:87AE: B8        .byte $B8, $41   ; 0

- D 0 - - - 0x0087C0 02:87B0: C8        .byte $C8, $49   ; 4
- D 0 - - - 0x0087C2 02:87B2: D0        .byte $D0, $4B   ; 5



sub_87B4:
C - - - - - 0x0087C4 02:87B4: A9 00     LDA #$00
C - - - - - 0x0087C6 02:87B6: 85 2A     STA ram_002A
bra_87B8_loop:
C - - - - - 0x0087C8 02:87B8: 48        PHA
C - - - - - 0x0087C9 02:87B9: 20 7E 88  JSR sub_887E
C - - - - - 0x0087CC 02:87BC: B0 02     BCS bra_87C0
C - - - - - 0x0087CE 02:87BE: E6 2A     INC ram_002A
bra_87C0:
C - - - - - 0x0087D0 02:87C0: 68        PLA
C - - - - - 0x0087D1 02:87C1: 18        CLC
C - - - - - 0x0087D2 02:87C2: 69 01     ADC #$01
C - - - - - 0x0087D4 02:87C4: C9 10     CMP #$10
C - - - - - 0x0087D6 02:87C6: D0 F0     BNE bra_87B8_loop
C - - - - - 0x0087D8 02:87C8: A5 2A     LDA ram_002A
C - - - - - 0x0087DA 02:87CA: F0 2E     BEQ bra_87FA
C - - - - - 0x0087DC 02:87CC: AD 7E 03  LDA ram_random
loc_87CF:
C D 0 - - - 0x0087DF 02:87CF: C5 2A     CMP ram_002A
C - - - - - 0x0087E1 02:87D1: 90 05     BCC bra_87D8
C - - - - - 0x0087E3 02:87D3: E5 2A     SBC ram_002A
C - - - - - 0x0087E5 02:87D5: 4C CF 87  JMP loc_87CF
bra_87D8:
C - - - - - 0x0087E8 02:87D8: 06 2A     ASL ram_002A
C - - - - - 0x0087EA 02:87DA: 18        CLC
C - - - - - 0x0087EB 02:87DB: 65 2A     ADC ram_002A
bra_87DD_loop:
C - - - - - 0x0087ED 02:87DD: 48        PHA
C - - - - - 0x0087EE 02:87DE: AA        TAX
C - - - - - 0x0087EF 02:87DF: A9 04     LDA #$04
C - - - - - 0x0087F1 02:87E1: E0 04     CPX #$04
C - - - - - 0x0087F3 02:87E3: B0 03     BCS bra_87E8
C - - - - - 0x0087F5 02:87E5: BD 05 88  LDA tbl_8805,X
bra_87E8:
C - - - - - 0x0087F8 02:87E8: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x0087FB 02:87EB: A2 01     LDX #$01
C - - - - - 0x0087FD 02:87ED: 86 2A     STX ram_002A
C - - - - - 0x0087FF 02:87EF: 86 2B     STX ram_002B
C - - - - - 0x008801 02:87F1: 20 4E 88  JSR sub_884E
C - - - - - 0x008804 02:87F4: 68        PLA
C - - - - - 0x008805 02:87F5: 38        SEC
C - - - - - 0x008806 02:87F6: E9 01     SBC #$01
C - - - - - 0x008808 02:87F8: D0 E3     BNE bra_87DD_loop
bra_87FA:
C - - - - - 0x00880A 02:87FA: A2 0B     LDX #$0B
C - - - - - 0x00880C 02:87FC: 20 09 88  JSR sub_8809
C - - - - - 0x00880F 02:87FF: A9 14     LDA #$14
C - - - - - 0x008811 02:8801: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008814 02:8804: 60        RTS



tbl_8805:
- - - - - - 0x008815 02:8805: 14        .byte $14   ; 
- D 0 - - - 0x008816 02:8806: 10        .byte $10   ; 
- D 0 - - - 0x008817 02:8807: 0C        .byte $0C   ; 
- D 0 - - - 0x008818 02:8808: 08        .byte $08   ; 



sub_8809:
C - - - - - 0x008819 02:8809: A9 16     LDA #$16
C - - - - - 0x00881B 02:880B: 9D 93 03  STA ram_buffer_pal_data + 16,X
                                        INC ram_buffer_pal_flag
C - - - - - 0x008823 02:8813: 60        RTS



sub_8814:
C - - - - - 0x008824 02:8814: 86 2A     STX ram_002A
C - - - - - 0x008826 02:8816: A9 0F     LDA #con_btns_Dpad
C - - - - - 0x008828 02:8818: 3D 26 00  AND ram_btn_press,X
C - - - - - 0x00882B 02:881B: D0 11     BNE bra_882E
C - - - - - 0x00882D 02:881D: BD 24 00  LDA ram_btn_hold,X
C - - - - - 0x008830 02:8820: 29 0F     AND #con_btns_Dpad
C - - - - - 0x008832 02:8822: F0 29     BEQ bra_884D_RTS
C - - - - - 0x008834 02:8824: FE B4 03  INC ram_03B4,X
C - - - - - 0x008837 02:8827: BC B4 03  LDY ram_03B4,X
C - - - - - 0x00883A 02:882A: C0 08     CPY #$08
C - - - - - 0x00883C 02:882C: 90 1F     BCC bra_884D_RTS
bra_882E:
C - - - - - 0x00883E 02:882E: 48        PHA
C - - - - - 0x00883F 02:882F: A0 01     LDY #$01
C - - - - - 0x008841 02:8831: 29 0C     AND #$0C
C - - - - - 0x008843 02:8833: D0 02     BNE bra_8837
C - - - - - 0x008845 02:8835: A0 08     LDY #$08
bra_8837:
C - - - - - 0x008847 02:8837: 68        PLA
C - - - - - 0x008848 02:8838: 29 0A     AND #$0A
C - - - - - 0x00884A 02:883A: F0 07     BEQ bra_8843
C - - - - - 0x00884C 02:883C: 98        TYA
C - - - - - 0x00884D 02:883D: 49 FF     EOR #$FF
C - - - - - 0x00884F 02:883F: 18        CLC
C - - - - - 0x008850 02:8840: 69 01     ADC #$01
C - - - - - 0x008852 02:8842: A8        TAY
bra_8843:
C - - - - - 0x008853 02:8843: 84 2B     STY ram_002B
C - - - - - 0x008855 02:8845: A9 00     LDA #$00
C - - - - - 0x008857 02:8847: 9D B4 03  STA ram_03B4,X
C - - - - - 0x00885A 02:884A: 20 4E 88  JSR sub_884E
bra_884D_RTS:
C - - - - - 0x00885D 02:884D: 60        RTS



sub_884E:
C - - - - - 0x00885E 02:884E: BD A9 03  LDA ram_team_id,X
C - - - - - 0x008861 02:8851: 20 86 88  JSR sub_8886_clear_ban
bra_8854_loop:
C - - - - - 0x008864 02:8854: A6 2A     LDX ram_002A
C - - - - - 0x008866 02:8856: BD A9 03  LDA ram_team_id,X
C - - - - - 0x008869 02:8859: 18        CLC
C - - - - - 0x00886A 02:885A: 65 2B     ADC ram_002B
C - - - - - 0x00886C 02:885C: 29 0F     AND #$0F
C - - - - - 0x00886E 02:885E: 9D A9 03  STA ram_team_id,X
C - - - - - 0x008871 02:8861: 20 7E 88  JSR sub_887E
C - - - - - 0x008874 02:8864: B0 EE     BCS bra_8854_loop
C - - - - - 0x008876 02:8866: A6 2A     LDX ram_002A
C - - - - - 0x008878 02:8868: BD A9 03  LDA ram_team_id,X
C - - - - - 0x00887B 02:886B: 20 98 88  JSR sub_8898_set_ban
C - - - - - 0x00887E 02:886E: A6 2A     LDX ram_002A
C - - - - - 0x008880 02:8870: A9 00     LDA #$00
C - - - - - 0x008882 02:8872: 9D B4 03  STA ram_03B4,X
C - - - - - 0x008885 02:8875: 20 40 86  JSR sub_8640
C - - - - - 0x008888 02:8878: A9 18     LDA #con_sound_select
C - - - - - 0x00888A 02:887A: 20 7E C0  JSR sub_0x00C920_prepare_sound
C - - - - - 0x00888D 02:887D: 60        RTS



sub_887E:
C - - - - - 0x00888E 02:887E: 20 AA 88  JSR sub_88AA_calculate_ban
bra_8881_loop:
C - - - - - 0x008891 02:8881: 0A        ASL
C - - - - - 0x008892 02:8882: 88        DEY
C - - - - - 0x008893 02:8883: 10 FC     BPL bra_8881_loop
C - - - - - 0x008895 02:8885: 60        RTS



sub_8886_clear_ban:
C - - - - - 0x008896 02:8886: 20 AA 88  JSR sub_88AA_calculate_ban
C - - - - - 0x008899 02:8889: 39 90 88  AND tbl_8890,Y
C - - - - - 0x00889C 02:888C: 9D AB 03  STA ram_team_ban,X
C - - - - - 0x00889F 02:888F: 60        RTS

tbl_8890:
- D 0 - - - 0x0088A0 02:8890: 7F        .byte $7F   ; 00
- D 0 - - - 0x0088A1 02:8891: BF        .byte $BF   ; 01
- D 0 - - - 0x0088A2 02:8892: DF        .byte $DF   ; 02
- D 0 - - - 0x0088A3 02:8893: EF        .byte $EF   ; 03
- D 0 - - - 0x0088A4 02:8894: F7        .byte $F7   ; 04
- D 0 - - - 0x0088A5 02:8895: FB        .byte $FB   ; 05
- D 0 - - - 0x0088A6 02:8896: FD        .byte $FD   ; 06
- D 0 - - - 0x0088A7 02:8897: FE        .byte $FE   ; 07



sub_8898_set_ban:
C - - - - - 0x0088A8 02:8898: 20 AA 88  JSR sub_88AA_calculate_ban
C - - - - - 0x0088AB 02:889B: 19 A2 88  ORA tbl_88A2,Y
C - - - - - 0x0088AE 02:889E: 9D AB 03  STA ram_team_ban,X
C - - - - - 0x0088B1 02:88A1: 60        RTS

tbl_88A2:
- D 0 - - - 0x0088B2 02:88A2: 80        .byte $80   ; 00
- D 0 - - - 0x0088B3 02:88A3: 40        .byte $40   ; 01
- D 0 - - - 0x0088B4 02:88A4: 20        .byte $20   ; 02
- D 0 - - - 0x0088B5 02:88A5: 10        .byte $10   ; 03
- D 0 - - - 0x0088B6 02:88A6: 08        .byte $08   ; 04
- D 0 - - - 0x0088B7 02:88A7: 04        .byte $04   ; 05
- D 0 - - - 0x0088B8 02:88A8: 02        .byte $02   ; 06
- D 0 - - - 0x0088B9 02:88A9: 01        .byte $01   ; 07



sub_88AA_calculate_ban:
C - - - - - 0x0088BA 02:88AA: 48        PHA
C - - - - - 0x0088BB 02:88AB: 29 08     AND #$08
C - - - - - 0x0088BD 02:88AD: 4A        LSR
C - - - - - 0x0088BE 02:88AE: 4A        LSR
C - - - - - 0x0088BF 02:88AF: 4A        LSR
C - - - - - 0x0088C0 02:88B0: AA        TAX
C - - - - - 0x0088C1 02:88B1: 68        PLA
C - - - - - 0x0088C2 02:88B2: 29 07     AND #$07
C - - - - - 0x0088C4 02:88B4: A8        TAY
C - - - - - 0x0088C5 02:88B5: BD AB 03  LDA ram_team_ban,X
C - - - - - 0x0088C8 02:88B8: 60        RTS



off_88B9:
ofs_88B9 = off_88B9 - 1
C - - - - - 0x0088C9 02:88B9: A9 00     LDA #$00
C - - - - - 0x0088CB 02:88BB: 8D BA 03  STA ram_03BA
C - - - - - 0x0088CE 02:88BE: A9 21     LDA #$21
loc_88C0:
C D 0 - - - 0x0088D0 02:88C0: 8D 90 03  STA ram_buffer_pal_data + 13
C - - - - - 0x0088D3 02:88C3: 18        CLC
C - - - - - 0x0088D4 02:88C4: 69 01     ADC #$01
C - - - - - 0x0088D6 02:88C6: C9 2D     CMP #$2D
C - - - - - 0x0088D8 02:88C8: D0 02     BNE bra_88CC
C - - - - - 0x0088DA 02:88CA: A9 21     LDA #$21
bra_88CC:
C - - - - - 0x0088DC 02:88CC: 48        PHA
                                        INC ram_buffer_pal_flag
C - - - - - 0x0088E2 02:88D2: 20 DE 88  JSR sub_88DE
C - - - - - 0x0088E5 02:88D5: A9 04     LDA #$04
C - - - - - 0x0088E7 02:88D7: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x0088EA 02:88DA: 68        PLA
C - - - - - 0x0088EB 02:88DB: 4C C0 88  JMP loc_88C0



sub_88DE:
C - - - - - 0x0088EE 02:88DE: A9 00     LDA #$00
C - - - - - 0x0088F0 02:88E0: 85 2A     STA ram_002A
bra_88E2_loop:
C - - - - - 0x0088F2 02:88E2: AD 2A 00  LDA ram_002A
C - - - - - 0x0088F5 02:88E5: 0A        ASL
C - - - - - 0x0088F6 02:88E6: A8        TAY
C - - - - - 0x0088F7 02:88E7: 0A        ASL
C - - - - - 0x0088F8 02:88E8: 0A        ASL
C - - - - - 0x0088F9 02:88E9: AA        TAX
C - - - - - 0x0088FA 02:88EA: B9 3E 89  LDA tbl_893E,Y
C - - - - - 0x0088FD 02:88ED: 9D C3 02  STA ram_spr_X + $C0,X
C - - - - - 0x008900 02:88F0: 18        CLC
C - - - - - 0x008901 02:88F1: 69 08     ADC #$08
C - - - - - 0x008903 02:88F3: 9D C7 02  STA ram_spr_X + $C4,X
C - - - - - 0x008906 02:88F6: B9 3F 89  LDA tbl_893F,Y
C - - - - - 0x008909 02:88F9: 9D C0 02  STA ram_spr_Y + $C0,X
C - - - - - 0x00890C 02:88FC: 9D C4 02  STA ram_spr_Y + $C4,X
C - - - - - 0x00890F 02:88FF: A5 2A     LDA ram_002A
C - - - - - 0x008911 02:8901: 18        CLC
C - - - - - 0x008912 02:8902: 6D BA 03  ADC ram_03BA
C - - - - - 0x008915 02:8905: C9 03     CMP #$03
C - - - - - 0x008917 02:8907: 90 02     BCC bra_890B
C - - - - - 0x008919 02:8909: E9 03     SBC #$03
bra_890B:
C - - - - - 0x00891B 02:890B: 0A        ASL
C - - - - - 0x00891C 02:890C: A8        TAY
C - - - - - 0x00891D 02:890D: B9 46 89  LDA tbl_8946,Y
C - - - - - 0x008920 02:8910: 9D C1 02  STA ram_spr_T + $C0,X
C - - - - - 0x008923 02:8913: B9 47 89  LDA tbl_8947,Y
C - - - - - 0x008926 02:8916: 9D C5 02  STA ram_spr_T + $C4,X
C - - - - - 0x008929 02:8919: D0 05     BNE bra_8920
C - - - - - 0x00892B 02:891B: A9 F8     LDA #$F8
C - - - - - 0x00892D 02:891D: 9D C4 02  STA ram_spr_Y + $C4,X
bra_8920:
C - - - - - 0x008930 02:8920: A9 00     LDA #$00
C - - - - - 0x008932 02:8922: 9D C2 02  STA ram_spr_A + $C0,X
C - - - - - 0x008935 02:8925: 9D C6 02  STA ram_spr_A + $C4,X
C - - - - - 0x008938 02:8928: E6 2A     INC ram_002A
C - - - - - 0x00893A 02:892A: A5 2A     LDA ram_002A
C - - - - - 0x00893C 02:892C: C9 04     CMP #$04
C - - - - - 0x00893E 02:892E: D0 B2     BNE bra_88E2_loop
C - - - - - 0x008940 02:8930: AE BA 03  LDX ram_03BA
C - - - - - 0x008943 02:8933: E8        INX
C - - - - - 0x008944 02:8934: E0 03     CPX #$03
C - - - - - 0x008946 02:8936: D0 02     BNE bra_893A
C - - - - - 0x008948 02:8938: A2 00     LDX #$00
bra_893A:
C - - - - - 0x00894A 02:893A: 8E BA 03  STX ram_03BA
C - - - - - 0x00894D 02:893D: 60        RTS



tbl_893E:
- D 0 - - - 0x00894E 02:893E: 28        .byte $28   ; 
tbl_893F:
- D 0 - - - 0x00894F 02:893F: 20        .byte $20   ; 
- D 0 - - - 0x008950 02:8940: 38        .byte $38   ; 
- D 0 - - - 0x008951 02:8941: 20        .byte $20   ; 
- D 0 - - - 0x008952 02:8942: C2        .byte $C2   ; 
- D 0 - - - 0x008953 02:8943: 20        .byte $20   ; 
- D 0 - - - 0x008954 02:8944: D2        .byte $D2   ; 
- D 0 - - - 0x008955 02:8945: 20        .byte $20   ; 



tbl_8946:
- D 0 - - - 0x008956 02:8946: B4        .byte $B4   ; 
tbl_8947:
- D 0 - - - 0x008957 02:8947: 00        .byte $00   ; 
- D 0 - - - 0x008958 02:8948: B6        .byte $B6   ; 
- D 0 - - - 0x008959 02:8949: BC        .byte $BC   ; 
- D 0 - - - 0x00895A 02:894A: BE        .byte $BE   ; 
- D 0 - - - 0x00895B 02:894B: 00        .byte $00   ; 



sub_894C:
C - - - - - 0x00895C 02:894C: 0A        ASL
C - - - - - 0x00895D 02:894D: 90 0B     BCC bra_895A
C - - - - - 0x00895F 02:894F: A9 C0     LDA #$C0
C - - - - - 0x008961 02:8951: 85 73     STA ram_0073
C - - - - - 0x008963 02:8953: A9 03     LDA #$03
C - - - - - 0x008965 02:8955: 85 74     STA ram_0074
C - - - - - 0x008967 02:8957: 4C 65 89  JMP loc_8965
bra_895A:
C - - - - - 0x00896A 02:895A: AA        TAX
C - - - - - 0x00896B 02:895B: BD B5 91  LDA tbl_91B5_large_text,X
C - - - - - 0x00896E 02:895E: 85 73     STA ram_0073
C - - - - - 0x008970 02:8960: BD B6 91  LDA tbl_91B5_large_text + 1,X
C - - - - - 0x008973 02:8963: 85 74     STA ram_0074
loc_8965:
C D 0 - - - 0x008975 02:8965: A0 00     LDY #$00
C - - - - - 0x008977 02:8967: B1 73     LDA (ram_0073),Y
C - - - - - 0x008979 02:8969: 85 75     STA ram_0075
C - - - - - 0x00897B 02:896B: C8        INY
C - - - - - 0x00897C 02:896C: B1 73     LDA (ram_0073),Y
C - - - - - 0x00897E 02:896E: 85 76     STA ram_0076
C - - - - - 0x008980 02:8970: C8        INY
C - - - - - 0x008981 02:8971: 98        TYA
loc_8972:
C D 0 - - - 0x008982 02:8972: 48        PHA
C - - - - - 0x008983 02:8973: A8        TAY
C - - - - - 0x008984 02:8974: B1 73     LDA (ram_0073),Y
C - - - - - 0x008986 02:8976: C9 FF     CMP #$FF
C - - - - - 0x008988 02:8978: F0 6F     BEQ bra_89E9
C - - - - - 0x00898A 02:897A: 48        PHA
bra_897B_loop:
C - - - - - 0x00898B 02:897B: A9 01     LDA #$01
C - - - - - 0x00898D 02:897D: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008990 02:8980: AD 7D 03  LDA ram_buffer_bg_flag
C - - - - - 0x008993 02:8983: D0 F6     BNE bra_897B_loop
C - - - - - 0x008995 02:8985: A9 01     LDA #$01
C - - - - - 0x008997 02:8987: 8D 7D 03  STA ram_buffer_bg_flag
C - - - - - 0x00899A 02:898A: 20 EB 89  JSR sub_89EB
C - - - - - 0x00899D 02:898D: 68        PLA
C - - - - - 0x00899E 02:898E: C9 20     CMP #$20
C - - - - - 0x0089A0 02:8990: D0 05     BNE bra_8997
C - - - - - 0x0089A2 02:8992: A9 00     LDA #$00
                                        BEQ bra_89C2
bra_8997:
C - - - - - 0x0089A7 02:8997: C9 2D     CMP #$2D
C - - - - - 0x0089A9 02:8999: D0 05     BNE bra_89A0
- - - - - - 0x0089AB 02:899B: A9 01     LDA #$01
                                        BNE bra_89C2
bra_89A0:
C - - - - - 0x0089B0 02:89A0: C9 21     CMP #$21
C - - - - - 0x0089B2 02:89A2: D0 05     BNE bra_89A9
C - - - - - 0x0089B4 02:89A4: A9 26     LDA #$26
                                        BNE bra_89C2
bra_89A9:
C - - - - - 0x0089B9 02:89A9: C9 2E     CMP #$2E
C - - - - - 0x0089BB 02:89AB: D0 05     BNE bra_89B2
C - - - - - 0x0089BD 02:89AD: A9 27     LDA #$27
                                        BNE bra_89C2
bra_89B2:
C - - - - - 0x0089C2 02:89B2: C9 41     CMP #$41
C - - - - - 0x0089C4 02:89B4: 90 05     BCC bra_89BB
C - - - - - 0x0089C6 02:89B6: E9 35     SBC #$35
                                        BNE bra_89C2
bra_89BB:
C - - - - - 0x0089CB 02:89BB: C9 30     CMP #$30
C - - - - - 0x0089CD 02:89BD: 90 03     BCC bra_89C2
C - - - - - 0x0089CF 02:89BF: 38        SEC
C - - - - - 0x0089D0 02:89C0: E9 2E     SBC #$2E
bra_89C2:
C D 0 - - - 0x0089D2 02:89C2: 0A        ASL
C - - - - - 0x0089D3 02:89C3: 0A        ASL
C - - - - - 0x0089D4 02:89C4: AA        TAX
C - - - - - 0x0089D5 02:89C5: BD 57 94  LDA tbl_9457,X
C - - - - - 0x0089D8 02:89C8: 8D 10 03  STA ram_buffer_bg_data
C - - - - - 0x0089DB 02:89CB: BD 58 94  LDA tbl_9457 + 1,X
C - - - - - 0x0089DE 02:89CE: 8D 11 03  STA ram_buffer_bg_data + 1
C - - - - - 0x0089E1 02:89D1: BD 59 94  LDA tbl_9457 + 2,X
C - - - - - 0x0089E4 02:89D4: 8D 15 03  STA ram_buffer_bg_data + 5
C - - - - - 0x0089E7 02:89D7: BD 5A 94  LDA tbl_9457 + 3,X
C - - - - - 0x0089EA 02:89DA: 8D 16 03  STA ram_buffer_bg_data + 6
C - - - - - 0x0089ED 02:89DD: A9 80     LDA #$80
C - - - - - 0x0089EF 02:89DF: 8D 7D 03  STA ram_buffer_bg_flag
C - - - - - 0x0089F2 02:89E2: 68        PLA
C - - - - - 0x0089F3 02:89E3: 18        CLC
C - - - - - 0x0089F4 02:89E4: 69 01     ADC #$01
C - - - - - 0x0089F6 02:89E6: 4C 72 89  JMP loc_8972
bra_89E9:
C - - - - - 0x0089F9 02:89E9: 68        PLA
C - - - - - 0x0089FA 02:89EA: 60        RTS



sub_89EB:
C - - - - - 0x0089FB 02:89EB: A5 75     LDA ram_0075
C - - - - - 0x0089FD 02:89ED: 8D 0E 03  STA ram_buffer_bg_lo
C - - - - - 0x008A00 02:89F0: A6 76     LDX ram_0076
C - - - - - 0x008A02 02:89F2: 8E 0F 03  STX ram_buffer_bg_cnt
C - - - - - 0x008A05 02:89F5: 18        CLC
C - - - - - 0x008A06 02:89F6: 69 20     ADC #$20
C - - - - - 0x008A08 02:89F8: 8D 13 03  STA ram_buffer_bg_data + 3
C - - - - - 0x008A0B 02:89FB: 8A        TXA
C - - - - - 0x008A0C 02:89FC: 69 00     ADC #$00
C - - - - - 0x008A0E 02:89FE: 8D 14 03  STA ram_buffer_bg_data + 4
C - - - - - 0x008A11 02:8A01: A9 02     LDA #$02
C - - - - - 0x008A13 02:8A03: 8D 0D 03  STA ram_buffer_bg_hi
C - - - - - 0x008A16 02:8A06: 8D 12 03  STA ram_buffer_bg_data + 2
C - - - - - 0x008A19 02:8A09: A9 00     LDA #$00
C - - - - - 0x008A1B 02:8A0B: 8D 17 03  STA ram_buffer_bg_data + 7
C - - - - - 0x008A1E 02:8A0E: A5 75     LDA ram_0075
C - - - - - 0x008A20 02:8A10: 18        CLC
C - - - - - 0x008A21 02:8A11: 69 02     ADC #$02
C - - - - - 0x008A23 02:8A13: 85 75     STA ram_0075
C - - - - - 0x008A25 02:8A15: 90 02     BCC bra_8A19_RTS
- - - - - - 0x008A27 02:8A17: E6 76     INC ram_0076
bra_8A19_RTS:
C - - - - - 0x008A29 02:8A19: 60        RTS



off_0x008A2A:
sub_0x008A2A = off_0x008A2A - 1
C D 0 - - - 0x008A2A 02:8A1A: A5 28     LDA ram_byte_for_2000
C - - - - - 0x008A2C 02:8A1C: 29 FC     AND #$FC
C - - - - - 0x008A2E 02:8A1E: 09 20     ORA #$20
C - - - - - 0x008A30 02:8A20: 85 28     STA ram_byte_for_2000
C - - - - - 0x008A32 02:8A22: A9 00     LDA #$00
C - - - - - 0x008A34 02:8A24: 85 3A     STA ram_003A
C - - - - - 0x008A36 02:8A26: A9 98     LDA #$98
C - - - - - 0x008A38 02:8A28: 85 3B     STA ram_003B
C - - - - - 0x008A3A 02:8A2A: 20 F6 8A  JSR sub_8AF6
C - - - - - 0x008A3D 02:8A2D: A9 8C     LDA #$8C
C - - - - - 0x008A3F 02:8A2F: 20 B6 8A  JSR sub_8AB6
C - - - - - 0x008A42 02:8A32: B0 51     BCS bra_8A85
loc_8A34_loop:
C D 0 - - - 0x008A44 02:8A34: A9 01     LDA #$01
C - - - - - 0x008A46 02:8A36: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008A49 02:8A39: 2C D2 03  BIT ram_03D2
C - - - - - 0x008A4C 02:8A3C: 30 47     BMI bra_8A85
C - - - - - 0x008A4E 02:8A3E: A6 3B     LDX ram_003B
C - - - - - 0x008A50 02:8A40: E8        INX
C - - - - - 0x008A51 02:8A41: E0 F0     CPX #$F0
C - - - - - 0x008A53 02:8A43: F0 05     BEQ bra_8A4A
C - - - - - 0x008A55 02:8A45: 86 3B     STX ram_003B
C - - - - - 0x008A57 02:8A47: 4C 34 8A  JMP loc_8A34_loop
bra_8A4A:
C - - - - - 0x008A5A 02:8A4A: A9 00     LDA #$00
C - - - - - 0x008A5C 02:8A4C: 85 3B     STA ram_003B
C - - - - - 0x008A5E 02:8A4E: A9 80     LDA #$80
C - - - - - 0x008A60 02:8A50: 20 B6 8A  JSR sub_8AB6
C - - - - - 0x008A63 02:8A53: B0 30     BCS bra_8A85
C - - - - - 0x008A65 02:8A55: A2 1F     LDX #$1F
bra_8A57_loop:
C - - - - - 0x008A67 02:8A57: 8A        TXA
C - - - - - 0x008A68 02:8A58: 29 03     AND #$03
C - - - - - 0x008A6A 02:8A5A: F0 05     BEQ bra_8A61
C - - - - - 0x008A6C 02:8A5C: A9 30     LDA #$30
C - - - - - 0x008A6E 02:8A5E: 9D 83 03  STA ram_buffer_pal_data,X
bra_8A61:
C - - - - - 0x008A71 02:8A61: CA        DEX
C - - - - - 0x008A72 02:8A62: 10 F3     BPL bra_8A57_loop
                                        INC ram_buffer_pal_flag
C - - - - - 0x008A79 02:8A69: A9 18     LDA #$18
C - - - - - 0x008A7B 02:8A6B: 20 B6 8A  JSR sub_8AB6
C - - - - - 0x008A7E 02:8A6E: B0 15     BCS bra_8A85
C - - - - - 0x008A80 02:8A70: A9 20     LDA #$20
bra_8A72_loop:
C - - - - - 0x008A82 02:8A72: 20 CB 8A  JSR sub_8ACB
C - - - - - 0x008A85 02:8A75: A5 2A     LDA ram_002A
C - - - - - 0x008A87 02:8A77: 48        PHA
C - - - - - 0x008A88 02:8A78: A9 0E     LDA #$0E
C - - - - - 0x008A8A 02:8A7A: 20 B6 8A  JSR sub_8AB6
C - - - - - 0x008A8D 02:8A7D: 68        PLA
C - - - - - 0x008A8E 02:8A7E: B0 05     BCS bra_8A85
C - - - - - 0x008A90 02:8A80: 38        SEC
C - - - - - 0x008A91 02:8A81: E9 10     SBC #$10
C - - - - - 0x008A93 02:8A83: 10 ED     BPL bra_8A72_loop
bra_8A85:
C - - - - - 0x008A95 02:8A85: A9 80     LDA #$80
C - - - - - 0x008A97 02:8A87: 8D D2 03  STA ram_03D2
C - - - - - 0x008A9A 02:8A8A: A9 00     LDA #$00
C - - - - - 0x008A9C 02:8A8C: 8D D3 03  STA ram_03D3
loc_8A8F:
C D 0 - - - 0x008A9F 02:8A8F: A9 02     LDA #$02
C - - - - - 0x008AA1 02:8A91: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008AA4 02:8A94: AE D3 03  LDX ram_03D3
C - - - - - 0x008AA7 02:8A97: BD 62 8C  LDA tbl_8C62,X
C - - - - - 0x008AAA 02:8A9A: 8D 8D 03  STA ram_buffer_pal_data + 10
C - - - - - 0x008AAD 02:8A9D: BD 63 8C  LDA tbl_8C63,X
C - - - - - 0x008AB0 02:8AA0: 8D 8E 03  STA ram_buffer_pal_data + 11
C - - - - - 0x008AB3 02:8AA3: E8        INX
C - - - - - 0x008AB4 02:8AA4: E8        INX
C - - - - - 0x008AB5 02:8AA5: E0 14     CPX #$14
C - - - - - 0x008AB7 02:8AA7: D0 02     BNE bra_8AAB
C - - - - - 0x008AB9 02:8AA9: A2 00     LDX #$00
bra_8AAB:
C - - - - - 0x008ABB 02:8AAB: 8E D3 03  STX ram_03D3
                                        INC ram_buffer_pal_flag
C - - - - - 0x008AC3 02:8AB3: 4C 8F 8A  JMP loc_8A8F



sub_8AB6:
bra_8AB6_loop:
C - - - - - 0x008AC6 02:8AB6: 48        PHA
C - - - - - 0x008AC7 02:8AB7: A9 01     LDA #$01
C - - - - - 0x008AC9 02:8AB9: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008ACC 02:8ABC: 68        PLA
C - - - - - 0x008ACD 02:8ABD: 2C D2 03  BIT ram_03D2
C - - - - - 0x008AD0 02:8AC0: 38        SEC
C - - - - - 0x008AD1 02:8AC1: 30 05     BMI bra_8AC8_RTS
C - - - - - 0x008AD3 02:8AC3: E9 01     SBC #$01
C - - - - - 0x008AD5 02:8AC5: D0 EF     BNE bra_8AB6_loop
C - - - - - 0x008AD7 02:8AC7: 18        CLC
bra_8AC8_RTS:
C - - - - - 0x008AD8 02:8AC8: 60        RTS



sub_8AC9:
sub_0x008AD9:
C D 0 - - - 0x008AD9 02:8AC9: A9 00     LDA #$00
sub_8ACB:
C - - - - - 0x008ADB 02:8ACB: 85 2A     STA ram_002A
C - - - - - 0x008ADD 02:8ACD: A2 00     LDX #$00
bra_8ACF_loop:
C - - - - - 0x008ADF 02:8ACF: 8A        TXA
C - - - - - 0x008AE0 02:8AD0: 29 03     AND #$03
C - - - - - 0x008AE2 02:8AD2: D0 04     BNE bra_8AD8_not_first_byte
C - - - - - 0x008AE4 02:8AD4: A9 0F     LDA #$0F
C - - - - - 0x008AE6 02:8AD6: D0 10     BNE bra_8AE8_write_to_buffer
bra_8AD8_not_first_byte:
C - - - - - 0x008AE8 02:8AD8: BD 42 8C  LDA tbl_8C42_palette,X
C - - - - - 0x008AEB 02:8ADB: 29 30     AND #$30
C - - - - - 0x008AED 02:8ADD: C5 2A     CMP ram_002A
C - - - - - 0x008AEF 02:8ADF: BD 42 8C  LDA tbl_8C42_palette,X
C - - - - - 0x008AF2 02:8AE2: B0 04     BCS bra_8AE8_write_to_buffer
C - - - - - 0x008AF4 02:8AE4: 29 0F     AND #$0F
C - - - - - 0x008AF6 02:8AE6: 05 2A     ORA ram_002A
bra_8AE8_write_to_buffer:
C - - - - - 0x008AF8 02:8AE8: 9D 83 03  STA ram_buffer_pal_data,X
C - - - - - 0x008AFB 02:8AEB: E8        INX
C - - - - - 0x008AFC 02:8AEC: E0 20     CPX #$20
C - - - - - 0x008AFE 02:8AEE: D0 DF     BNE bra_8ACF_loop
                                        INC ram_buffer_pal_flag
C - - - - - 0x008B05 02:8AF5: 60        RTS



sub_8AF6:
C - - - - - 0x008B06 02:8AF6: 20 75 C0  JSR sub_0x00CA69_clear_nametables
C - - - - - 0x008B09 02:8AF9: 20 51 C0  JSR sub_0x00CABF_hide_sprites
C - - - - - 0x008B0C 02:8AFC: A9 1C     LDA #$1C
C - - - - - 0x008B0E 02:8AFE: 85 69     STA ram_0069
C - - - - - 0x008B10 02:8B00: A9 1E     LDA #$1E
C - - - - - 0x008B12 02:8B02: 85 6A     STA ram_006A
C - - - - - 0x008B14 02:8B04: A9 0F     LDA #$0F
C - - - - - 0x008B16 02:8B06: A2 1F     LDX #$1F
bra_8B08_loop:
C - - - - - 0x008B18 02:8B08: 9D 83 03  STA ram_buffer_pal_data,X
C - - - - - 0x008B1B 02:8B0B: CA        DEX
C - - - - - 0x008B1C 02:8B0C: 10 FA     BPL bra_8B08_loop
C - - - - - 0x008B1E 02:8B0E: A9 30     LDA #$30
C - - - - - 0x008B20 02:8B10: 8D 92 03  STA ram_buffer_pal_data + 15
                                        INC ram_buffer_pal_flag
C - - - - - 0x008B28 02:8B18: A2 76     LDX #< tbl_8C76
C - - - - - 0x008B2A 02:8B1A: A0 8C     LDY #> tbl_8C76
C - - - - - 0x008B2C 02:8B1C: 20 33 C0  JSR sub_0x00C762
C - - - - - 0x008B2F 02:8B1F: 60        RTS



sub_0x008B30:
C D 0 - - - 0x008B30 02:8B20: A9 1D     LDA #$1D
C - - - - - 0x008B32 02:8B22: 85 6C     STA ram_006C
C - - - - - 0x008B34 02:8B24: A9 00     LDA #$00
C - - - - - 0x008B36 02:8B26: 8D D4 03  STA ram_03D4
C - - - - - 0x008B39 02:8B29: 20 E0 8B  JSR sub_8BE0
bra_8B2C_loop:
C - - - - - 0x008B3C 02:8B2C: A9 01     LDA #$01
C - - - - - 0x008B3E 02:8B2E: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008B41 02:8B31: A9 2C     LDA #con_btns_UD + con_btn_Select
C - - - - - 0x008B43 02:8B33: 2D 26 00  AND ram_btn_press
C - - - - - 0x008B46 02:8B36: F0 23     BEQ bra_8B5B
C - - - - - 0x008B48 02:8B38: AA        TAX
C - - - - - 0x008B49 02:8B39: A0 01     LDY #$01
C - - - - - 0x008B4B 02:8B3B: 29 20     AND #con_btn_Select
C - - - - - 0x008B4D 02:8B3D: D0 07     BNE bra_8B46
C - - - - - 0x008B4F 02:8B3F: 8A        TXA
C - - - - - 0x008B50 02:8B40: 29 04     AND #con_btn_Down
C - - - - - 0x008B52 02:8B42: D0 02     BNE bra_8B46
C - - - - - 0x008B54 02:8B44: A0 FF     LDY #$FF
bra_8B46:
C - - - - - 0x008B56 02:8B46: 98        TYA
C - - - - - 0x008B57 02:8B47: 18        CLC
C - - - - - 0x008B58 02:8B48: 6D D4 03  ADC ram_03D4
C - - - - - 0x008B5B 02:8B4B: 10 02     BPL bra_8B4F
C - - - - - 0x008B5D 02:8B4D: A9 02     LDA #$02
bra_8B4F:
C - - - - - 0x008B5F 02:8B4F: C9 03     CMP #$03
C - - - - - 0x008B61 02:8B51: 90 02     BCC bra_8B55
C - - - - - 0x008B63 02:8B53: A9 00     LDA #$00
bra_8B55:
C - - - - - 0x008B65 02:8B55: 8D D4 03  STA ram_03D4
C - - - - - 0x008B68 02:8B58: 20 E0 8B  JSR sub_8BE0
bra_8B5B:
C - - - - - 0x008B6B 02:8B5B: A9 90     LDA #con_btn_A + con_btn_Start
C - - - - - 0x008B6D 02:8B5D: 2D 26 00  AND ram_btn_press
C - - - - - 0x008B70 02:8B60: F0 CA     BEQ bra_8B2C_loop
C - - - - - 0x008B72 02:8B62: A9 01     LDA #con_sound_off
C - - - - - 0x008B74 02:8B64: 20 7E C0  JSR sub_0x00C920_prepare_sound
C - - - - - 0x008B77 02:8B67: A9 00     LDA #$00
C - - - - - 0x008B79 02:8B69: 85 05     STA ram_0005
C - - - - - 0x008B7B 02:8B6B: 85 06     STA ram_0006
C - - - - - 0x008B7D 02:8B6D: 20 C9 8A  JSR sub_8AC9
C - - - - - 0x008B80 02:8B70: A9 02     LDA #$02
C - - - - - 0x008B82 02:8B72: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008B85 02:8B75: A9 0F     LDA #con_sound_option_select
C - - - - - 0x008B87 02:8B77: 20 7E C0  JSR sub_0x00C920_prepare_sound
C - - - - - 0x008B8A 02:8B7A: AE D4 03  LDX ram_03D4
C - - - - - 0x008B8D 02:8B7D: BD 1E 8C  LDA tbl_8C1E_game_mode,X
C - - - - - 0x008B90 02:8B80: 8D A4 03  STA ram_game_mode_flags
C - - - - - 0x008B93 02:8B83: A9 00     LDA #$00
bra_8B85_loop:
C - - - - - 0x008B95 02:8B85: 48        PHA
bra_8B86_loop:
C - - - - - 0x008B96 02:8B86: A9 01     LDA #$01
C - - - - - 0x008B98 02:8B88: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008B9B 02:8B8B: AD 7D 03  LDA ram_buffer_bg_flag
C - - - - - 0x008B9E 02:8B8E: D0 F6     BNE bra_8B86_loop
C - - - - - 0x008BA0 02:8B90: A9 01     LDA #$01
C - - - - - 0x008BA2 02:8B92: 8D 7D 03  STA ram_buffer_bg_flag
C - - - - - 0x008BA5 02:8B95: 20 FD 8B  JSR sub_8BFD
C - - - - - 0x008BA8 02:8B98: A2 00     LDX #$00
C - - - - - 0x008BAA 02:8B9A: 8A        TXA
bra_8B9B_loop:
C - - - - - 0x008BAB 02:8B9B: 9D 10 03  STA ram_buffer_bg_data,X
C - - - - - 0x008BAE 02:8B9E: E8        INX
C - - - - - 0x008BAF 02:8B9F: E0 0A     CPX #$0A
C - - - - - 0x008BB1 02:8BA1: D0 F8     BNE bra_8B9B_loop
C - - - - - 0x008BB3 02:8BA3: A9 08     LDA #$08
C - - - - - 0x008BB5 02:8BA5: 20 09 C0  JSR sub_0x00C619_delay
bra_8BA8_loop:
C - - - - - 0x008BB8 02:8BA8: A9 01     LDA #$01
C - - - - - 0x008BBA 02:8BAA: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008BBD 02:8BAD: AD 7D 03  LDA ram_buffer_bg_flag
C - - - - - 0x008BC0 02:8BB0: D0 F6     BNE bra_8BA8_loop
C - - - - - 0x008BC2 02:8BB2: A9 01     LDA #$01
C - - - - - 0x008BC4 02:8BB4: 8D 7D 03  STA ram_buffer_bg_flag
C - - - - - 0x008BC7 02:8BB7: 20 FD 8B  JSR sub_8BFD
C - - - - - 0x008BCA 02:8BBA: AD D4 03  LDA ram_03D4
C - - - - - 0x008BCD 02:8BBD: 0A        ASL
C - - - - - 0x008BCE 02:8BBE: 0A        ASL
C - - - - - 0x008BCF 02:8BBF: 0A        ASL
C - - - - - 0x008BD0 02:8BC0: 6D D4 03  ADC ram_03D4
C - - - - - 0x008BD3 02:8BC3: AA        TAX
C - - - - - 0x008BD4 02:8BC4: A0 00     LDY #$00
bra_8BC6_loop:
C - - - - - 0x008BD6 02:8BC6: BD 27 8C  LDA tbl_8C27,X
C - - - - - 0x008BD9 02:8BC9: 99 10 03  STA ram_buffer_bg_data,Y
C - - - - - 0x008BDC 02:8BCC: E8        INX
C - - - - - 0x008BDD 02:8BCD: C8        INY
C - - - - - 0x008BDE 02:8BCE: C0 09     CPY #$09
C - - - - - 0x008BE0 02:8BD0: D0 F4     BNE bra_8BC6_loop
C - - - - - 0x008BE2 02:8BD2: A9 08     LDA #$08
C - - - - - 0x008BE4 02:8BD4: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x008BE7 02:8BD7: 68        PLA
C - - - - - 0x008BE8 02:8BD8: 18        CLC
C - - - - - 0x008BE9 02:8BD9: 69 01     ADC #$01
C - - - - - 0x008BEB 02:8BDB: C9 04     CMP #$04
C - - - - - 0x008BED 02:8BDD: D0 A6     BNE bra_8B85_loop
C - - - - - 0x008BEF 02:8BDF: 60        RTS



sub_8BE0:
C - - - - - 0x008BF0 02:8BE0: AD D4 03  LDA ram_03D4
C - - - - - 0x008BF3 02:8BE3: 0A        ASL
C - - - - - 0x008BF4 02:8BE4: 0A        ASL
C - - - - - 0x008BF5 02:8BE5: 0A        ASL
C - - - - - 0x008BF6 02:8BE6: 0A        ASL
C - - - - - 0x008BF7 02:8BE7: 18        CLC
C - - - - - 0x008BF8 02:8BE8: 69 97     ADC #$97
C - - - - - 0x008BFA 02:8BEA: 8D 00 02  STA ram_spr_Y
C - - - - - 0x008BFD 02:8BED: A9 7F     LDA #$7F
C - - - - - 0x008BFF 02:8BEF: 8D 01 02  STA ram_spr_T
C - - - - - 0x008C02 02:8BF2: A9 03     LDA #$03
C - - - - - 0x008C04 02:8BF4: 8D 02 02  STA ram_spr_A
C - - - - - 0x008C07 02:8BF7: A9 53     LDA #$53
C - - - - - 0x008C09 02:8BF9: 8D 03 02  STA ram_spr_X
C - - - - - 0x008C0C 02:8BFC: 60        RTS



sub_8BFD:
C - - - - - 0x008C0D 02:8BFD: A9 09     LDA #$09
C - - - - - 0x008C0F 02:8BFF: 8D 0D 03  STA ram_buffer_bg_hi
C - - - - - 0x008C12 02:8C02: AD D4 03  LDA ram_03D4
C - - - - - 0x008C15 02:8C05: 0A        ASL
C - - - - - 0x008C16 02:8C06: AA        TAX
C - - - - - 0x008C17 02:8C07: BD 21 8C  LDA tbl_8C21,X
C - - - - - 0x008C1A 02:8C0A: 8D 0E 03  STA ram_buffer_bg_lo
C - - - - - 0x008C1D 02:8C0D: BD 22 8C  LDA tbl_8C22,X
C - - - - - 0x008C20 02:8C10: 8D 0F 03  STA ram_buffer_bg_cnt
C - - - - - 0x008C23 02:8C13: A9 00     LDA #$00
C - - - - - 0x008C25 02:8C15: 8D 19 03  STA ram_buffer_bg_data + 9
C - - - - - 0x008C28 02:8C18: A9 80     LDA #$80
C - - - - - 0x008C2A 02:8C1A: 8D 7D 03  STA ram_buffer_bg_flag
C - - - - - 0x008C2D 02:8C1D: 60        RTS



tbl_8C1E_game_mode:
- D 0 - - - 0x008C2E 02:8C1E: 00        .byte con_gm_1p
- D 0 - - - 0x008C2F 02:8C1F: 80        .byte con_gm_2p
- D 0 - - - 0x008C30 02:8C20: 40        .byte con_gm_continue



tbl_8C21:
- D 0 - - - 0x008C31 02:8C21: 6C        .byte $6C   ; 
tbl_8C22:
- D 0 - - - 0x008C32 02:8C22: 22        .byte $22   ; 
- D 0 - - - 0x008C33 02:8C23: AC        .byte $AC   ; 
- D 0 - - - 0x008C34 02:8C24: 22        .byte $22   ; 
- D 0 - - - 0x008C35 02:8C25: EC        .byte $EC   ; 
- D 0 - - - 0x008C36 02:8C26: 22        .byte $22   ; 



tbl_8C27:
- D 0 - - - 0x008C37 02:8C27: 31        .byte $31   ; 
- D 0 - - - 0x008C38 02:8C28: 20        .byte $20   ; 
- D 0 - - - 0x008C39 02:8C29: 50        .byte $50   ; 
- D 0 - - - 0x008C3A 02:8C2A: 4C        .byte $4C   ; 
- D 0 - - - 0x008C3B 02:8C2B: 41        .byte $41   ; 
- D 0 - - - 0x008C3C 02:8C2C: 59        .byte $59   ; 
- D 0 - - - 0x008C3D 02:8C2D: 45        .byte $45   ; 
- D 0 - - - 0x008C3E 02:8C2E: 52        .byte $52   ; 
- D 0 - - - 0x008C3F 02:8C2F: 20        .byte $20   ; 

- D 0 - - - 0x008C40 02:8C30: 32        .byte $32   ; 
- D 0 - - - 0x008C41 02:8C31: 20        .byte $20   ; 
- D 0 - - - 0x008C42 02:8C32: 50        .byte $50   ; 
- D 0 - - - 0x008C43 02:8C33: 4C        .byte $4C   ; 
- D 0 - - - 0x008C44 02:8C34: 41        .byte $41   ; 
- D 0 - - - 0x008C45 02:8C35: 59        .byte $59   ; 
- D 0 - - - 0x008C46 02:8C36: 45        .byte $45   ; 
- D 0 - - - 0x008C47 02:8C37: 52        .byte $52   ; 
- D 0 - - - 0x008C48 02:8C38: 53        .byte $53   ; 

- D 0 - - - 0x008C49 02:8C39: 43        .byte $43   ; 
- D 0 - - - 0x008C4A 02:8C3A: 4F        .byte $4F   ; 
- D 0 - - - 0x008C4B 02:8C3B: 4E        .byte $4E   ; 
- D 0 - - - 0x008C4C 02:8C3C: 54        .byte $54   ; 
- D 0 - - - 0x008C4D 02:8C3D: 49        .byte $49   ; 
- D 0 - - - 0x008C4E 02:8C3E: 4E        .byte $4E   ; 
- D 0 - - - 0x008C4F 02:8C3F: 55        .byte $55   ; 
- D 0 - - - 0x008C50 02:8C40: 45        .byte $45   ; 
- D 0 - - - 0x008C51 02:8C41: 20        .byte $20   ; 



tbl_8C42_palette:
; первый байт из 4х не считывается и заменяется на 0F
- - - - - - 0x008C52 02:8C42: 0F        .byte $0F, $15, $05, $30   ; 
- - - - - - 0x008C56 02:8C46: 0F        .byte $0F, $0F, $1A, $30   ; 
- - - - - - 0x008C5A 02:8C4A: 0F        .byte $0F, $0F, $27, $37   ; 
- - - - - - 0x008C5E 02:8C4E: 0F        .byte $0F, $00, $11, $30   ; 
- - - - - - 0x008C62 02:8C52: 0F        .byte $0F, $0F, $0F, $0F   ; 
- - - - - - 0x008C66 02:8C56: 0F        .byte $0F, $0F, $0F, $0F   ; 
- - - - - - 0x008C6A 02:8C5A: 0F        .byte $0F, $0F, $0F, $0F   ; 
- - - - - - 0x008C6E 02:8C5E: 0F        .byte $0F, $0F, $00, $30   ; 



tbl_8C62:
- D 0 - - - 0x008C72 02:8C62: 27        .byte $27   ; 
tbl_8C63:
- D 0 - - - 0x008C73 02:8C63: 37        .byte $37   ; 
- D 0 - - - 0x008C74 02:8C64: 37        .byte $37   ; 
- D 0 - - - 0x008C75 02:8C65: 30        .byte $30   ; 
- D 0 - - - 0x008C76 02:8C66: 30        .byte $30   ; 
- D 0 - - - 0x008C77 02:8C67: 30        .byte $30   ; 
- D 0 - - - 0x008C78 02:8C68: 37        .byte $37   ; 
- D 0 - - - 0x008C79 02:8C69: 30        .byte $30   ; 
- D 0 - - - 0x008C7A 02:8C6A: 27        .byte $27   ; 
- D 0 - - - 0x008C7B 02:8C6B: 37        .byte $37   ; 
- D 0 - - - 0x008C7C 02:8C6C: 17        .byte $17   ; 
- D 0 - - - 0x008C7D 02:8C6D: 27        .byte $27   ; 
- D 0 - - - 0x008C7E 02:8C6E: 07        .byte $07   ; 
- D 0 - - - 0x008C7F 02:8C6F: 17        .byte $17   ; 
- D 0 - - - 0x008C80 02:8C70: 0F        .byte $0F   ; 
- D 0 - - - 0x008C81 02:8C71: 0F        .byte $0F   ; 
- D 0 - - - 0x008C82 02:8C72: 07        .byte $07   ; 
- D 0 - - - 0x008C83 02:8C73: 17        .byte $17   ; 
- D 0 - - - 0x008C84 02:8C74: 17        .byte $17   ; 
- D 0 - - - 0x008C85 02:8C75: 27        .byte $27   ; 



tbl_8C76:
- D 0 - I - 0x008C86 02:8C76: 18        .byte $18   ; 
- D 0 - I - 0x008C87 02:8C77: 84        .byte $84   ; 
- D 0 - I - 0x008C88 02:8C78: 20        .byte $20   ; 
- D 0 - I - 0x008C89 02:8C79: 54        .byte $54   ; 
- D 0 - I - 0x008C8A 02:8C7A: 45        .byte $45   ; 
- D 0 - I - 0x008C8B 02:8C7B: 43        .byte $43   ; 
- D 0 - I - 0x008C8C 02:8C7C: 4D        .byte $4D   ; 
- D 0 - I - 0x008C8D 02:8C7D: 4F        .byte $4F   ; 
- D 0 - I - 0x008C8E 02:8C7E: 20        .byte $20   ; 
- D 0 - I - 0x008C8F 02:8C7F: 57        .byte $57   ; 
- D 0 - I - 0x008C90 02:8C80: 4F        .byte $4F   ; 
- D 0 - I - 0x008C91 02:8C81: 52        .byte $52   ; 
- D 0 - I - 0x008C92 02:8C82: 4C        .byte $4C   ; 
- D 0 - I - 0x008C93 02:8C83: 44        .byte $44   ; 
- D 0 - I - 0x008C94 02:8C84: 20        .byte $20   ; 
- D 0 - I - 0x008C95 02:8C85: 43        .byte $43   ; 
- D 0 - I - 0x008C96 02:8C86: 48        .byte $48   ; 
- D 0 - I - 0x008C97 02:8C87: 41        .byte $41   ; 
- D 0 - I - 0x008C98 02:8C88: 4D        .byte $4D   ; 
- D 0 - I - 0x008C99 02:8C89: 50        .byte $50   ; 
- D 0 - I - 0x008C9A 02:8C8A: 49        .byte $49   ; 
- D 0 - I - 0x008C9B 02:8C8B: 4F        .byte $4F   ; 
- D 0 - I - 0x008C9C 02:8C8C: 4E        .byte $4E   ; 
- D 0 - I - 0x008C9D 02:8C8D: 53        .byte $53   ; 
- D 0 - I - 0x008C9E 02:8C8E: 48        .byte $48   ; 
- D 0 - I - 0x008C9F 02:8C8F: 49        .byte $49   ; 
- D 0 - I - 0x008CA0 02:8C90: 50        .byte $50   ; 
- D 0 - I - 0x008CA1 02:8C91: 0A        .byte $0A   ; 
- D 0 - I - 0x008CA2 02:8C92: CB        .byte $CB   ; 
- D 0 - I - 0x008CA3 02:8C93: 20        .byte $20   ; 
- D 0 - I - 0x008CA4 02:8C94: EB        .byte $EB   ; 
- D 0 - I - 0x008CA5 02:8C95: EC        .byte $EC   ; 
- D 0 - I - 0x008CA6 02:8C96: ED        .byte $ED   ; 
- D 0 - I - 0x008CA7 02:8C97: F0        .byte $F0   ; 
- D 0 - I - 0x008CA8 02:8C98: F1        .byte $F1   ; 
- D 0 - I - 0x008CA9 02:8C99: F4        .byte $F4   ; 
- D 0 - I - 0x008CAA 02:8C9A: F5        .byte $F5   ; 
- D 0 - I - 0x008CAB 02:8C9B: F8        .byte $F8   ; 
- D 0 - I - 0x008CAC 02:8C9C: F9        .byte $F9   ; 
- D 0 - I - 0x008CAD 02:8C9D: FC        .byte $FC   ; 
- D 0 - I - 0x008CAE 02:8C9E: 09        .byte $09   ; 
- D 0 - I - 0x008CAF 02:8C9F: EC        .byte $EC   ; 
- D 0 - I - 0x008CB0 02:8CA0: 20        .byte $20   ; 
- D 0 - I - 0x008CB1 02:8CA1: EE        .byte $EE   ; 
- D 0 - I - 0x008CB2 02:8CA2: EF        .byte $EF   ; 
- D 0 - I - 0x008CB3 02:8CA3: F2        .byte $F2   ; 
- D 0 - I - 0x008CB4 02:8CA4: F3        .byte $F3   ; 
- D 0 - I - 0x008CB5 02:8CA5: F6        .byte $F6   ; 
- D 0 - I - 0x008CB6 02:8CA6: F7        .byte $F7   ; 
- D 0 - I - 0x008CB7 02:8CA7: FA        .byte $FA   ; 
- D 0 - I - 0x008CB8 02:8CA8: FB        .byte $FB   ; 
- D 0 - I - 0x008CB9 02:8CA9: FE        .byte $FE   ; 
- D 0 - I - 0x008CBA 02:8CAA: 12        .byte $12   ; 
- D 0 - I - 0x008CBB 02:8CAB: 07        .byte $07   ; 
- D 0 - I - 0x008CBC 02:8CAC: 21        .byte $21   ; 
- D 0 - I - 0x008CBD 02:8CAD: E5        .byte $E5   ; 
- D 0 - I - 0x008CBE 02:8CAE: 80        .byte $80   ; 
- D 0 - I - 0x008CBF 02:8CAF: 81        .byte $81   ; 
- D 0 - I - 0x008CC0 02:8CB0: 84        .byte $84   ; 
- D 0 - I - 0x008CC1 02:8CB1: 85        .byte $85   ; 
- D 0 - I - 0x008CC2 02:8CB2: 90        .byte $90   ; 
- D 0 - I - 0x008CC3 02:8CB3: 91        .byte $91   ; 
- D 0 - I - 0x008CC4 02:8CB4: 94        .byte $94   ; 
- D 0 - I - 0x008CC5 02:8CB5: 95        .byte $95   ; 
- D 0 - I - 0x008CC6 02:8CB6: C0        .byte $C0   ; 
- D 0 - I - 0x008CC7 02:8CB7: C1        .byte $C1   ; 
- D 0 - I - 0x008CC8 02:8CB8: C4        .byte $C4   ; 
- D 0 - I - 0x008CC9 02:8CB9: C5        .byte $C5   ; 
- D 0 - I - 0x008CCA 02:8CBA: D0        .byte $D0   ; 
- D 0 - I - 0x008CCB 02:8CBB: D1        .byte $D1   ; 
- D 0 - I - 0x008CCC 02:8CBC: C0        .byte $C0   ; 
- D 0 - I - 0x008CCD 02:8CBD: D5        .byte $D5   ; 
- D 0 - I - 0x008CCE 02:8CBE: AE        .byte $AE   ; 
- D 0 - I - 0x008CCF 02:8CBF: 12        .byte $12   ; 
- D 0 - I - 0x008CD0 02:8CC0: 27        .byte $27   ; 
- D 0 - I - 0x008CD1 02:8CC1: 21        .byte $21   ; 
- D 0 - I - 0x008CD2 02:8CC2: E7        .byte $E7   ; 
- D 0 - I - 0x008CD3 02:8CC3: 82        .byte $82   ; 
- D 0 - I - 0x008CD4 02:8CC4: 83        .byte $83   ; 
- D 0 - I - 0x008CD5 02:8CC5: 86        .byte $86   ; 
- D 0 - I - 0x008CD6 02:8CC6: 87        .byte $87   ; 
- D 0 - I - 0x008CD7 02:8CC7: 92        .byte $92   ; 
- D 0 - I - 0x008CD8 02:8CC8: 93        .byte $93   ; 
- D 0 - I - 0x008CD9 02:8CC9: 96        .byte $96   ; 
- D 0 - I - 0x008CDA 02:8CCA: 97        .byte $97   ; 
- D 0 - I - 0x008CDB 02:8CCB: C2        .byte $C2   ; 
- D 0 - I - 0x008CDC 02:8CCC: C3        .byte $C3   ; 
- D 0 - I - 0x008CDD 02:8CCD: C6        .byte $C6   ; 
- D 0 - I - 0x008CDE 02:8CCE: C7        .byte $C7   ; 
- D 0 - I - 0x008CDF 02:8CCF: D2        .byte $D2   ; 
- D 0 - I - 0x008CE0 02:8CD0: D3        .byte $D3   ; 
- D 0 - I - 0x008CE1 02:8CD1: D6        .byte $D6   ; 
- D 0 - I - 0x008CE2 02:8CD2: D7        .byte $D7   ; 
- D 0 - I - 0x008CE3 02:8CD3: B3        .byte $B3   ; 
- D 0 - I - 0x008CE4 02:8CD4: 12        .byte $12   ; 
- D 0 - I - 0x008CE5 02:8CD5: 47        .byte $47   ; 
- D 0 - I - 0x008CE6 02:8CD6: 21        .byte $21   ; 
- D 0 - I - 0x008CE7 02:8CD7: D4        .byte $D4   ; 
- D 0 - I - 0x008CE8 02:8CD8: 88        .byte $88   ; 
- D 0 - I - 0x008CE9 02:8CD9: 89        .byte $89   ; 
- D 0 - I - 0x008CEA 02:8CDA: 8C        .byte $8C   ; 
- D 0 - I - 0x008CEB 02:8CDB: 8D        .byte $8D   ; 
- D 0 - I - 0x008CEC 02:8CDC: 98        .byte $98   ; 
- D 0 - I - 0x008CED 02:8CDD: 99        .byte $99   ; 
- D 0 - I - 0x008CEE 02:8CDE: 9C        .byte $9C   ; 
- D 0 - I - 0x008CEF 02:8CDF: 9D        .byte $9D   ; 
- D 0 - I - 0x008CF0 02:8CE0: C8        .byte $C8   ; 
- D 0 - I - 0x008CF1 02:8CE1: C9        .byte $C9   ; 
- D 0 - I - 0x008CF2 02:8CE2: CC        .byte $CC   ; 
- D 0 - I - 0x008CF3 02:8CE3: CD        .byte $CD   ; 
- D 0 - I - 0x008CF4 02:8CE4: D8        .byte $D8   ; 
- D 0 - I - 0x008CF5 02:8CE5: D9        .byte $D9   ; 
- D 0 - I - 0x008CF6 02:8CE6: DC        .byte $DC   ; 
- D 0 - I - 0x008CF7 02:8CE7: DD        .byte $DD   ; 
- D 0 - I - 0x008CF8 02:8CE8: E0        .byte $E0   ; 
- D 0 - I - 0x008CF9 02:8CE9: 11        .byte $11   ; 
- D 0 - I - 0x008CFA 02:8CEA: 68        .byte $68   ; 
- D 0 - I - 0x008CFB 02:8CEB: 21        .byte $21   ; 
- D 0 - I - 0x008CFC 02:8CEC: 8A        .byte $8A   ; 
- D 0 - I - 0x008CFD 02:8CED: 8B        .byte $8B   ; 
- D 0 - I - 0x008CFE 02:8CEE: 8E        .byte $8E   ; 
- D 0 - I - 0x008CFF 02:8CEF: 8F        .byte $8F   ; 
- D 0 - I - 0x008D00 02:8CF0: 9A        .byte $9A   ; 
- D 0 - I - 0x008D01 02:8CF1: 9B        .byte $9B   ; 
- D 0 - I - 0x008D02 02:8CF2: 9E        .byte $9E   ; 
- D 0 - I - 0x008D03 02:8CF3: 9F        .byte $9F   ; 
- D 0 - I - 0x008D04 02:8CF4: CA        .byte $CA   ; 
- D 0 - I - 0x008D05 02:8CF5: CB        .byte $CB   ; 
- D 0 - I - 0x008D06 02:8CF6: CE        .byte $CE   ; 
- D 0 - I - 0x008D07 02:8CF7: DE        .byte $DE   ; 
- D 0 - I - 0x008D08 02:8CF8: DA        .byte $DA   ; 
- D 0 - I - 0x008D09 02:8CF9: DB        .byte $DB   ; 
- D 0 - I - 0x008D0A 02:8CFA: DE        .byte $DE   ; 
- D 0 - I - 0x008D0B 02:8CFB: DF        .byte $DF   ; 
- D 0 - I - 0x008D0C 02:8CFC: BF        .byte $BF   ; 
- D 0 - I - 0x008D0D 02:8CFD: 0B        .byte $0B   ; 
- D 0 - I - 0x008D0E 02:8CFE: 8B        .byte $8B   ; 
- D 0 - I - 0x008D0F 02:8CFF: 21        .byte $21   ; 
- D 0 - I - 0x008D10 02:8D00: A0        .byte $A0   ; 
- D 0 - I - 0x008D11 02:8D01: A1        .byte $A1   ; 
- D 0 - I - 0x008D12 02:8D02: A4        .byte $A4   ; 
- D 0 - I - 0x008D13 02:8D03: A5        .byte $A5   ; 
- D 0 - I - 0x008D14 02:8D04: B0        .byte $B0   ; 
- D 0 - I - 0x008D15 02:8D05: B1        .byte $B1   ; 
- D 0 - I - 0x008D16 02:8D06: B4        .byte $B4   ; 
- D 0 - I - 0x008D17 02:8D07: B5        .byte $B5   ; 
- D 0 - I - 0x008D18 02:8D08: B5        .byte $B5   ; 
- D 0 - I - 0x008D19 02:8D09: E1        .byte $E1   ; 
- D 0 - I - 0x008D1A 02:8D0A: E4        .byte $E4   ; 
- D 0 - I - 0x008D1B 02:8D0B: 0B        .byte $0B   ; 
- D 0 - I - 0x008D1C 02:8D0C: AB        .byte $AB   ; 
- D 0 - I - 0x008D1D 02:8D0D: 21        .byte $21   ; 
- D 0 - I - 0x008D1E 02:8D0E: A2        .byte $A2   ; 
- D 0 - I - 0x008D1F 02:8D0F: A3        .byte $A3   ; 
- D 0 - I - 0x008D20 02:8D10: A6        .byte $A6   ; 
- D 0 - I - 0x008D21 02:8D11: A7        .byte $A7   ; 
- D 0 - I - 0x008D22 02:8D12: B2        .byte $B2   ; 
- D 0 - I - 0x008D23 02:8D13: D3        .byte $D3   ; 
- D 0 - I - 0x008D24 02:8D14: B6        .byte $B6   ; 
- D 0 - I - 0x008D25 02:8D15: B7        .byte $B7   ; 
- D 0 - I - 0x008D26 02:8D16: E2        .byte $E2   ; 
- D 0 - I - 0x008D27 02:8D17: E3        .byte $E3   ; 
- D 0 - I - 0x008D28 02:8D18: E6        .byte $E6   ; 
- D 0 - I - 0x008D29 02:8D19: 0A        .byte $0A   ; 
- D 0 - I - 0x008D2A 02:8D1A: CB        .byte $CB   ; 
- D 0 - I - 0x008D2B 02:8D1B: 21        .byte $21   ; 
- D 0 - I - 0x008D2C 02:8D1C: A8        .byte $A8   ; 
- D 0 - I - 0x008D2D 02:8D1D: A9        .byte $A9   ; 
- D 0 - I - 0x008D2E 02:8D1E: AC        .byte $AC   ; 
- D 0 - I - 0x008D2F 02:8D1F: AD        .byte $AD   ; 
- D 0 - I - 0x008D30 02:8D20: B8        .byte $B8   ; 
- D 0 - I - 0x008D31 02:8D21: B9        .byte $B9   ; 
- D 0 - I - 0x008D32 02:8D22: BC        .byte $BC   ; 
- D 0 - I - 0x008D33 02:8D23: BD        .byte $BD   ; 
- D 0 - I - 0x008D34 02:8D24: E8        .byte $E8   ; 
- D 0 - I - 0x008D35 02:8D25: E9        .byte $E9   ; 
- D 0 - I - 0x008D36 02:8D26: 09        .byte $09   ; 
- D 0 - I - 0x008D37 02:8D27: EB        .byte $EB   ; 
- D 0 - I - 0x008D38 02:8D28: 21        .byte $21   ; 
- D 0 - I - 0x008D39 02:8D29: AA        .byte $AA   ; 
- D 0 - I - 0x008D3A 02:8D2A: AB        .byte $AB   ; 
- D 0 - I - 0x008D3B 02:8D2B: DE        .byte $DE   ; 
- D 0 - I - 0x008D3C 02:8D2C: AF        .byte $AF   ; 
- D 0 - I - 0x008D3D 02:8D2D: BA        .byte $BA   ; 
- D 0 - I - 0x008D3E 02:8D2E: BB        .byte $BB   ; 
- D 0 - I - 0x008D3F 02:8D2F: BE        .byte $BE   ; 
- D 0 - I - 0x008D40 02:8D30: DE        .byte $DE   ; 
- D 0 - I - 0x008D41 02:8D31: EA        .byte $EA   ; 
- D 0 - I - 0x008D42 02:8D32: 0C        .byte $0C   ; 
- D 0 - I - 0x008D43 02:8D33: 0A        .byte $0A   ; 
- D 0 - I - 0x008D44 02:8D34: 22        .byte $22   ; 
- D 0 - I - 0x008D45 02:8D35: 60        .byte $60   ; 
- D 0 - I - 0x008D46 02:8D36: 61        .byte $61   ; 
- D 0 - I - 0x008D47 02:8D37: 64        .byte $64   ; 
- D 0 - I - 0x008D48 02:8D38: 65        .byte $65   ; 
- D 0 - I - 0x008D49 02:8D39: 64        .byte $64   ; 
- D 0 - I - 0x008D4A 02:8D3A: 68        .byte $68   ; 
- D 0 - I - 0x008D4B 02:8D3B: 64        .byte $64   ; 
- D 0 - I - 0x008D4C 02:8D3C: 68        .byte $68   ; 
- D 0 - I - 0x008D4D 02:8D3D: 60        .byte $60   ; 
- D 0 - I - 0x008D4E 02:8D3E: 69        .byte $69   ; 
- D 0 - I - 0x008D4F 02:8D3F: 6C        .byte $6C   ; 
- D 0 - I - 0x008D50 02:8D40: 6D        .byte $6D   ; 
- D 0 - I - 0x008D51 02:8D41: 0F        .byte $0F   ; 
- D 0 - I - 0x008D52 02:8D42: 2A        .byte $2A   ; 
- D 0 - I - 0x008D53 02:8D43: 22        .byte $22   ; 
- D 0 - I - 0x008D54 02:8D44: 62        .byte $62   ; 
- D 0 - I - 0x008D55 02:8D45: 63        .byte $63   ; 
- D 0 - I - 0x008D56 02:8D46: 66        .byte $66   ; 
- D 0 - I - 0x008D57 02:8D47: 67        .byte $67   ; 
- D 0 - I - 0x008D58 02:8D48: 66        .byte $66   ; 
- D 0 - I - 0x008D59 02:8D49: 6A        .byte $6A   ; 
- D 0 - I - 0x008D5A 02:8D4A: 66        .byte $66   ; 
- D 0 - I - 0x008D5B 02:8D4B: 6A        .byte $6A   ; 
- D 0 - I - 0x008D5C 02:8D4C: 70        .byte $70   ; 
- D 0 - I - 0x008D5D 02:8D4D: 6B        .byte $6B   ; 
- D 0 - I - 0x008D5E 02:8D4E: 6E        .byte $6E   ; 
- D 0 - I - 0x008D5F 02:8D4F: 6F        .byte $6F   ; 
- D 0 - I - 0x008D60 02:8D50: 00        .byte $00   ; 
- D 0 - I - 0x008D61 02:8D51: 54        .byte $54   ; 
- D 0 - I - 0x008D62 02:8D52: 4D        .byte $4D   ; 
- D 0 - I - 0x008D63 02:8D53: 08        .byte $08   ; 
- D 0 - I - 0x008D64 02:8D54: 6C        .byte $6C   ; 
- D 0 - I - 0x008D65 02:8D55: 22        .byte $22   ; 
- D 0 - I - 0x008D66 02:8D56: 31        .byte $31   ; 
- D 0 - I - 0x008D67 02:8D57: 20        .byte $20   ; 
- D 0 - I - 0x008D68 02:8D58: 50        .byte $50   ; 
- D 0 - I - 0x008D69 02:8D59: 4C        .byte $4C   ; 
- D 0 - I - 0x008D6A 02:8D5A: 41        .byte $41   ; 
- D 0 - I - 0x008D6B 02:8D5B: 59        .byte $59   ; 
- D 0 - I - 0x008D6C 02:8D5C: 45        .byte $45   ; 
- D 0 - I - 0x008D6D 02:8D5D: 52        .byte $52   ; 
- D 0 - I - 0x008D6E 02:8D5E: 09        .byte $09   ; 
- D 0 - I - 0x008D6F 02:8D5F: AC        .byte $AC   ; 
- D 0 - I - 0x008D70 02:8D60: 22        .byte $22   ; 
- D 0 - I - 0x008D71 02:8D61: 32        .byte $32   ; 
- D 0 - I - 0x008D72 02:8D62: 20        .byte $20   ; 
- D 0 - I - 0x008D73 02:8D63: 50        .byte $50   ; 
- D 0 - I - 0x008D74 02:8D64: 4C        .byte $4C   ; 
- D 0 - I - 0x008D75 02:8D65: 41        .byte $41   ; 
- D 0 - I - 0x008D76 02:8D66: 59        .byte $59   ; 
- D 0 - I - 0x008D77 02:8D67: 45        .byte $45   ; 
- D 0 - I - 0x008D78 02:8D68: 52        .byte $52   ; 
- D 0 - I - 0x008D79 02:8D69: 53        .byte $53   ; 
- D 0 - I - 0x008D7A 02:8D6A: 08        .byte $08   ; 
- D 0 - I - 0x008D7B 02:8D6B: EC        .byte $EC   ; 
- D 0 - I - 0x008D7C 02:8D6C: 22        .byte $22   ; 
- D 0 - I - 0x008D7D 02:8D6D: 43        .byte $43   ; 
- D 0 - I - 0x008D7E 02:8D6E: 4F        .byte $4F   ; 
- D 0 - I - 0x008D7F 02:8D6F: 4E        .byte $4E   ; 
- D 0 - I - 0x008D80 02:8D70: 54        .byte $54   ; 
- D 0 - I - 0x008D81 02:8D71: 49        .byte $49   ; 
- D 0 - I - 0x008D82 02:8D72: 4E        .byte $4E   ; 
- D 0 - I - 0x008D83 02:8D73: 55        .byte $55   ; 
- D 0 - I - 0x008D84 02:8D74: 45        .byte $45   ; 
- D 0 - I - 0x008D85 02:8D75: 11        .byte $11   ; 
- D 0 - I - 0x008D86 02:8D76: 28        .byte $28   ; 
- D 0 - I - 0x008D87 02:8D77: 23        .byte $23   ; 
- D 0 - I - 0x008D88 02:8D78: 40        .byte $40   ; 
- D 0 - I - 0x008D89 02:8D79: 20        .byte $20   ; 
- D 0 - I - 0x008D8A 02:8D7A: 31        .byte $31   ; 
- D 0 - I - 0x008D8B 02:8D7B: 39        .byte $39   ; 
- D 0 - I - 0x008D8C 02:8D7C: 39        .byte $39   ; 
- D 0 - I - 0x008D8D 02:8D7D: 30        .byte $30   ; 
- D 0 - I - 0x008D8E 02:8D7E: 20        .byte $20   ; 
- D 0 - I - 0x008D8F 02:8D7F: 54        .byte $54   ; 
- D 0 - I - 0x008D90 02:8D80: 45        .byte $45   ; 
- D 0 - I - 0x008D91 02:8D81: 43        .byte $43   ; 
- D 0 - I - 0x008D92 02:8D82: 4D        .byte $4D   ; 
- D 0 - I - 0x008D93 02:8D83: 4F        .byte $4F   ; 
- D 0 - I - 0x008D94 02:8D84: 2C        .byte $2C   ; 
- D 0 - I - 0x008D95 02:8D85: 4C        .byte $4C   ; 
- D 0 - I - 0x008D96 02:8D86: 54        .byte $54   ; 
- D 0 - I - 0x008D97 02:8D87: 44        .byte $44   ; 
- D 0 - I - 0x008D98 02:8D88: 2E        .byte $2E   ; 
- D 0 - I - 0x008D99 02:8D89: 20        .byte $20   ; 
- D 0 - I - 0x008D9A 02:8D8A: C0        .byte $C0   ; 
- D 0 - I - 0x008D9B 02:8D8B: 23        .byte $23   ; 
- D 0 - I - 0x008D9C 02:8D8C: FF        .byte $FF   ; 
- D 0 - I - 0x008D9D 02:8D8D: FF        .byte $FF   ; 
- D 0 - I - 0x008D9E 02:8D8E: FF        .byte $FF   ; 
- D 0 - I - 0x008D9F 02:8D8F: FF        .byte $FF   ; 
- D 0 - I - 0x008DA0 02:8D90: FF        .byte $FF   ; 
- D 0 - I - 0x008DA1 02:8D91: FF        .byte $FF   ; 
- D 0 - I - 0x008DA2 02:8D92: FF        .byte $FF   ; 
- D 0 - I - 0x008DA3 02:8D93: FF        .byte $FF   ; 
- D 0 - I - 0x008DA4 02:8D94: 0F        .byte $0F   ; 
- D 0 - I - 0x008DA5 02:8D95: 0F        .byte $0F   ; 
- D 0 - I - 0x008DA6 02:8D96: 0F        .byte $0F   ; 
- D 0 - I - 0x008DA7 02:8D97: 0F        .byte $0F   ; 
- D 0 - I - 0x008DA8 02:8D98: 0F        .byte $0F   ; 
- D 0 - I - 0x008DA9 02:8D99: 0F        .byte $0F   ; 
- D 0 - I - 0x008DAA 02:8D9A: 0F        .byte $0F   ; 
- D 0 - I - 0x008DAB 02:8D9B: 0F        .byte $0F   ; 
- D 0 - I - 0x008DAC 02:8D9C: 00        .byte $00   ; 
- D 0 - I - 0x008DAD 02:8D9D: 00        .byte $00   ; 
- D 0 - I - 0x008DAE 02:8D9E: 00        .byte $00   ; 
- D 0 - I - 0x008DAF 02:8D9F: 00        .byte $00   ; 
- D 0 - I - 0x008DB0 02:8DA0: 00        .byte $00   ; 
- D 0 - I - 0x008DB1 02:8DA1: 00        .byte $00   ; 
- D 0 - I - 0x008DB2 02:8DA2: 00        .byte $00   ; 
- D 0 - I - 0x008DB3 02:8DA3: 00        .byte $00   ; 
- D 0 - I - 0x008DB4 02:8DA4: 50        .byte $50   ; 
- D 0 - I - 0x008DB5 02:8DA5: 50        .byte $50   ; 
- D 0 - I - 0x008DB6 02:8DA6: 00        .byte $00   ; 
- D 0 - I - 0x008DB7 02:8DA7: 00        .byte $00   ; 
- D 0 - I - 0x008DB8 02:8DA8: 00        .byte $00   ; 
- D 0 - I - 0x008DB9 02:8DA9: 00        .byte $00   ; 
- D 0 - I - 0x008DBA 02:8DAA: 50        .byte $50   ; 
- D 0 - I - 0x008DBB 02:8DAB: 50        .byte $50   ; 
- D 0 - I - 0x008DBC 02:8DAC: 20        .byte $20   ; 
- D 0 - I - 0x008DBD 02:8DAD: E0        .byte $E0   ; 
- D 0 - I - 0x008DBE 02:8DAE: 23        .byte $23   ; 
- D 0 - I - 0x008DBF 02:8DAF: 55        .byte $55   ; 
- D 0 - I - 0x008DC0 02:8DB0: 55        .byte $55   ; 
- D 0 - I - 0x008DC1 02:8DB1: 59        .byte $59   ; 
- D 0 - I - 0x008DC2 02:8DB2: 5A        .byte $5A   ; 
- D 0 - I - 0x008DC3 02:8DB3: 5A        .byte $5A   ; 
- D 0 - I - 0x008DC4 02:8DB4: 56        .byte $56   ; 
- D 0 - I - 0x008DC5 02:8DB5: 55        .byte $55   ; 
- D 0 - I - 0x008DC6 02:8DB6: 55        .byte $55   ; 
- D 0 - I - 0x008DC7 02:8DB7: 55        .byte $55   ; 
- D 0 - I - 0x008DC8 02:8DB8: 55        .byte $55   ; 
- D 0 - I - 0x008DC9 02:8DB9: 55        .byte $55   ; 
- D 0 - I - 0x008DCA 02:8DBA: 55        .byte $55   ; 
- D 0 - I - 0x008DCB 02:8DBB: 55        .byte $55   ; 
- D 0 - I - 0x008DCC 02:8DBC: 55        .byte $55   ; 
- D 0 - I - 0x008DCD 02:8DBD: 55        .byte $55   ; 
- D 0 - I - 0x008DCE 02:8DBE: 55        .byte $55   ; 
- D 0 - I - 0x008DCF 02:8DBF: 55        .byte $55   ; 
- D 0 - I - 0x008DD0 02:8DC0: 55        .byte $55   ; 
- D 0 - I - 0x008DD1 02:8DC1: 55        .byte $55   ; 
- D 0 - I - 0x008DD2 02:8DC2: 55        .byte $55   ; 
- D 0 - I - 0x008DD3 02:8DC3: 55        .byte $55   ; 
- D 0 - I - 0x008DD4 02:8DC4: 55        .byte $55   ; 
- D 0 - I - 0x008DD5 02:8DC5: 55        .byte $55   ; 
- D 0 - I - 0x008DD6 02:8DC6: 55        .byte $55   ; 
- D 0 - I - 0x008DD7 02:8DC7: 55        .byte $55   ; 
- D 0 - I - 0x008DD8 02:8DC8: 55        .byte $55   ; 
- D 0 - I - 0x008DD9 02:8DC9: 55        .byte $55   ; 
- D 0 - I - 0x008DDA 02:8DCA: 55        .byte $55   ; 
- D 0 - I - 0x008DDB 02:8DCB: 55        .byte $55   ; 
- D 0 - I - 0x008DDC 02:8DCC: 55        .byte $55   ; 
- D 0 - I - 0x008DDD 02:8DCD: 55        .byte $55   ; 
- D 0 - I - 0x008DDE 02:8DCE: 55        .byte $55   ; 
- D 0 - I - 0x008DDF 02:8DCF: 00        .byte $00   ; 



tbl_8DD0:
- D 0 - I - 0x008DE0 02:8DD0: 20        .byte $20   ; 
- D 0 - I - 0x008DE1 02:8DD1: 40        .byte $40   ; 
- D 0 - I - 0x008DE2 02:8DD2: 20        .byte $20   ; 
- D 0 - I - 0x008DE3 02:8DD3: 80        .byte $80   ; 
- D 0 - I - 0x008DE4 02:8DD4: 80        .byte $80   ; 
- D 0 - I - 0x008DE5 02:8DD5: 80        .byte $80   ; 
- D 0 - I - 0x008DE6 02:8DD6: 80        .byte $80   ; 
- D 0 - I - 0x008DE7 02:8DD7: 80        .byte $80   ; 
- D 0 - I - 0x008DE8 02:8DD8: 80        .byte $80   ; 
- D 0 - I - 0x008DE9 02:8DD9: 80        .byte $80   ; 
- D 0 - I - 0x008DEA 02:8DDA: 80        .byte $80   ; 
- D 0 - I - 0x008DEB 02:8DDB: 80        .byte $80   ; 
- D 0 - I - 0x008DEC 02:8DDC: 80        .byte $80   ; 
- D 0 - I - 0x008DED 02:8DDD: 80        .byte $80   ; 
- D 0 - I - 0x008DEE 02:8DDE: 80        .byte $80   ; 
- D 0 - I - 0x008DEF 02:8DDF: 80        .byte $80   ; 
- D 0 - I - 0x008DF0 02:8DE0: 80        .byte $80   ; 
- D 0 - I - 0x008DF1 02:8DE1: 80        .byte $80   ; 
- D 0 - I - 0x008DF2 02:8DE2: 80        .byte $80   ; 
- D 0 - I - 0x008DF3 02:8DE3: 80        .byte $80   ; 
- D 0 - I - 0x008DF4 02:8DE4: 80        .byte $80   ; 
- D 0 - I - 0x008DF5 02:8DE5: 80        .byte $80   ; 
- D 0 - I - 0x008DF6 02:8DE6: 80        .byte $80   ; 
- D 0 - I - 0x008DF7 02:8DE7: 80        .byte $80   ; 
- D 0 - I - 0x008DF8 02:8DE8: 80        .byte $80   ; 
- D 0 - I - 0x008DF9 02:8DE9: 80        .byte $80   ; 
- D 0 - I - 0x008DFA 02:8DEA: 80        .byte $80   ; 
- D 0 - I - 0x008DFB 02:8DEB: 80        .byte $80   ; 
- D 0 - I - 0x008DFC 02:8DEC: 80        .byte $80   ; 
- D 0 - I - 0x008DFD 02:8DED: 80        .byte $80   ; 
- D 0 - I - 0x008DFE 02:8DEE: 80        .byte $80   ; 
- D 0 - I - 0x008DFF 02:8DEF: 80        .byte $80   ; 
- D 0 - I - 0x008E00 02:8DF0: 80        .byte $80   ; 
- D 0 - I - 0x008E01 02:8DF1: 80        .byte $80   ; 
- D 0 - I - 0x008E02 02:8DF2: 80        .byte $80   ; 
- D 0 - I - 0x008E03 02:8DF3: 20        .byte $20   ; 
- D 0 - I - 0x008E04 02:8DF4: 60        .byte $60   ; 
- D 0 - I - 0x008E05 02:8DF5: 20        .byte $20   ; 
- D 0 - I - 0x008E06 02:8DF6: 80        .byte $80   ; 
- D 0 - I - 0x008E07 02:8DF7: 80        .byte $80   ; 
- D 0 - I - 0x008E08 02:8DF8: 80        .byte $80   ; 
- D 0 - I - 0x008E09 02:8DF9: 80        .byte $80   ; 
- D 0 - I - 0x008E0A 02:8DFA: 80        .byte $80   ; 
- D 0 - I - 0x008E0B 02:8DFB: 80        .byte $80   ; 
- D 0 - I - 0x008E0C 02:8DFC: 80        .byte $80   ; 
- D 0 - I - 0x008E0D 02:8DFD: 80        .byte $80   ; 
- D 0 - I - 0x008E0E 02:8DFE: 80        .byte $80   ; 
- D 0 - I - 0x008E0F 02:8DFF: 80        .byte $80   ; 
- D 0 - I - 0x008E10 02:8E00: 80        .byte $80   ; 
- D 0 - I - 0x008E11 02:8E01: 80        .byte $80   ; 
- D 0 - I - 0x008E12 02:8E02: 80        .byte $80   ; 
- D 0 - I - 0x008E13 02:8E03: 80        .byte $80   ; 
- D 0 - I - 0x008E14 02:8E04: 80        .byte $80   ; 
- D 0 - I - 0x008E15 02:8E05: 80        .byte $80   ; 
- D 0 - I - 0x008E16 02:8E06: 80        .byte $80   ; 
- D 0 - I - 0x008E17 02:8E07: 80        .byte $80   ; 
- D 0 - I - 0x008E18 02:8E08: 80        .byte $80   ; 
- D 0 - I - 0x008E19 02:8E09: 80        .byte $80   ; 
- D 0 - I - 0x008E1A 02:8E0A: 80        .byte $80   ; 
- D 0 - I - 0x008E1B 02:8E0B: 80        .byte $80   ; 
- D 0 - I - 0x008E1C 02:8E0C: 80        .byte $80   ; 
- D 0 - I - 0x008E1D 02:8E0D: 80        .byte $80   ; 
- D 0 - I - 0x008E1E 02:8E0E: 80        .byte $80   ; 
- D 0 - I - 0x008E1F 02:8E0F: 80        .byte $80   ; 
- D 0 - I - 0x008E20 02:8E10: 80        .byte $80   ; 
- D 0 - I - 0x008E21 02:8E11: 80        .byte $80   ; 
- D 0 - I - 0x008E22 02:8E12: 80        .byte $80   ; 
- D 0 - I - 0x008E23 02:8E13: 80        .byte $80   ; 
- D 0 - I - 0x008E24 02:8E14: 80        .byte $80   ; 
- D 0 - I - 0x008E25 02:8E15: 80        .byte $80   ; 
- D 0 - I - 0x008E26 02:8E16: 20        .byte $20   ; 
- D 0 - I - 0x008E27 02:8E17: 80        .byte $80   ; 
- D 0 - I - 0x008E28 02:8E18: 20        .byte $20   ; 
- D 0 - I - 0x008E29 02:8E19: 80        .byte $80   ; 
- D 0 - I - 0x008E2A 02:8E1A: 80        .byte $80   ; 
- D 0 - I - 0x008E2B 02:8E1B: 80        .byte $80   ; 
- D 0 - I - 0x008E2C 02:8E1C: 80        .byte $80   ; 
- D 0 - I - 0x008E2D 02:8E1D: B9        .byte $B9   ; 
- D 0 - I - 0x008E2E 02:8E1E: 80        .byte $80   ; 
- D 0 - I - 0x008E2F 02:8E1F: B9        .byte $B9   ; 
- D 0 - I - 0x008E30 02:8E20: 80        .byte $80   ; 
- D 0 - I - 0x008E31 02:8E21: 80        .byte $80   ; 
- D 0 - I - 0x008E32 02:8E22: 80        .byte $80   ; 
- D 0 - I - 0x008E33 02:8E23: B3        .byte $B3   ; 
- D 0 - I - 0x008E34 02:8E24: 80        .byte $80   ; 
- D 0 - I - 0x008E35 02:8E25: B3        .byte $B3   ; 
- D 0 - I - 0x008E36 02:8E26: 80        .byte $80   ; 
- D 0 - I - 0x008E37 02:8E27: B3        .byte $B3   ; 
- D 0 - I - 0x008E38 02:8E28: 80        .byte $80   ; 
- D 0 - I - 0x008E39 02:8E29: B3        .byte $B3   ; 
- D 0 - I - 0x008E3A 02:8E2A: 80        .byte $80   ; 
- D 0 - I - 0x008E3B 02:8E2B: B3        .byte $B3   ; 
- D 0 - I - 0x008E3C 02:8E2C: 80        .byte $80   ; 
- D 0 - I - 0x008E3D 02:8E2D: B3        .byte $B3   ; 
- D 0 - I - 0x008E3E 02:8E2E: 80        .byte $80   ; 
- D 0 - I - 0x008E3F 02:8E2F: 80        .byte $80   ; 
- D 0 - I - 0x008E40 02:8E30: 80        .byte $80   ; 
- D 0 - I - 0x008E41 02:8E31: BB        .byte $BB   ; 
- D 0 - I - 0x008E42 02:8E32: 80        .byte $80   ; 
- D 0 - I - 0x008E43 02:8E33: BB        .byte $BB   ; 
- D 0 - I - 0x008E44 02:8E34: 80        .byte $80   ; 
- D 0 - I - 0x008E45 02:8E35: 80        .byte $80   ; 
- D 0 - I - 0x008E46 02:8E36: 80        .byte $80   ; 
- D 0 - I - 0x008E47 02:8E37: 80        .byte $80   ; 
- D 0 - I - 0x008E48 02:8E38: 80        .byte $80   ; 
- D 0 - I - 0x008E49 02:8E39: 20        .byte $20   ; 
- D 0 - I - 0x008E4A 02:8E3A: A0        .byte $A0   ; 
- D 0 - I - 0x008E4B 02:8E3B: 20        .byte $20   ; 
- D 0 - I - 0x008E4C 02:8E3C: 80        .byte $80   ; 
- D 0 - I - 0x008E4D 02:8E3D: 80        .byte $80   ; 
- D 0 - I - 0x008E4E 02:8E3E: 80        .byte $80   ; 
- D 0 - I - 0x008E4F 02:8E3F: 80        .byte $80   ; 
- D 0 - I - 0x008E50 02:8E40: B9        .byte $B9   ; 
- D 0 - I - 0x008E51 02:8E41: 80        .byte $80   ; 
- D 0 - I - 0x008E52 02:8E42: B9        .byte $B9   ; 
- D 0 - I - 0x008E53 02:8E43: 80        .byte $80   ; 
- D 0 - I - 0x008E54 02:8E44: 80        .byte $80   ; 
- D 0 - I - 0x008E55 02:8E45: 84        .byte $84   ; 
- D 0 - I - 0x008E56 02:8E46: 8A        .byte $8A   ; 
- D 0 - I - 0x008E57 02:8E47: 8A        .byte $8A   ; 
- D 0 - I - 0x008E58 02:8E48: 8A        .byte $8A   ; 
- D 0 - I - 0x008E59 02:8E49: 8A        .byte $8A   ; 
- D 0 - I - 0x008E5A 02:8E4A: 8A        .byte $8A   ; 
- D 0 - I - 0x008E5B 02:8E4B: 8A        .byte $8A   ; 
- D 0 - I - 0x008E5C 02:8E4C: 8A        .byte $8A   ; 
- D 0 - I - 0x008E5D 02:8E4D: 8A        .byte $8A   ; 
- D 0 - I - 0x008E5E 02:8E4E: 8A        .byte $8A   ; 
- D 0 - I - 0x008E5F 02:8E4F: 8A        .byte $8A   ; 
- D 0 - I - 0x008E60 02:8E50: 8A        .byte $8A   ; 
- D 0 - I - 0x008E61 02:8E51: 85        .byte $85   ; 
- D 0 - I - 0x008E62 02:8E52: 80        .byte $80   ; 
- D 0 - I - 0x008E63 02:8E53: 80        .byte $80   ; 
- D 0 - I - 0x008E64 02:8E54: BB        .byte $BB   ; 
- D 0 - I - 0x008E65 02:8E55: 80        .byte $80   ; 
- D 0 - I - 0x008E66 02:8E56: BB        .byte $BB   ; 
- D 0 - I - 0x008E67 02:8E57: 80        .byte $80   ; 
- D 0 - I - 0x008E68 02:8E58: 80        .byte $80   ; 
- D 0 - I - 0x008E69 02:8E59: 80        .byte $80   ; 
- D 0 - I - 0x008E6A 02:8E5A: 80        .byte $80   ; 
- D 0 - I - 0x008E6B 02:8E5B: 80        .byte $80   ; 
- D 0 - I - 0x008E6C 02:8E5C: 20        .byte $20   ; 
- D 0 - I - 0x008E6D 02:8E5D: C0        .byte $C0   ; 
- D 0 - I - 0x008E6E 02:8E5E: 20        .byte $20   ; 
- D 0 - I - 0x008E6F 02:8E5F: 80        .byte $80   ; 
- D 0 - I - 0x008E70 02:8E60: 80        .byte $80   ; 
- D 0 - I - 0x008E71 02:8E61: 80        .byte $80   ; 
- D 0 - I - 0x008E72 02:8E62: 80        .byte $80   ; 
- D 0 - I - 0x008E73 02:8E63: B9        .byte $B9   ; 
- D 0 - I - 0x008E74 02:8E64: 80        .byte $80   ; 
- D 0 - I - 0x008E75 02:8E65: B9        .byte $B9   ; 
- D 0 - I - 0x008E76 02:8E66: 80        .byte $80   ; 
- D 0 - I - 0x008E77 02:8E67: 80        .byte $80   ; 
- D 0 - I - 0x008E78 02:8E68: 88        .byte $88   ; 
- D 0 - I - 0x008E79 02:8E69: 54        .byte $54   ; 
- D 0 - I - 0x008E7A 02:8E6A: 45        .byte $45   ; 
- D 0 - I - 0x008E7B 02:8E6B: 41        .byte $41   ; 
- D 0 - I - 0x008E7C 02:8E6C: 4D        .byte $4D   ; 
- D 0 - I - 0x008E7D 02:8E6D: 20        .byte $20   ; 
- D 0 - I - 0x008E7E 02:8E6E: 53        .byte $53   ; 
- D 0 - I - 0x008E7F 02:8E6F: 45        .byte $45   ; 
- D 0 - I - 0x008E80 02:8E70: 4C        .byte $4C   ; 
- D 0 - I - 0x008E81 02:8E71: 45        .byte $45   ; 
- D 0 - I - 0x008E82 02:8E72: 43        .byte $43   ; 
- D 0 - I - 0x008E83 02:8E73: 54        .byte $54   ; 
- D 0 - I - 0x008E84 02:8E74: 89        .byte $89   ; 
- D 0 - I - 0x008E85 02:8E75: 80        .byte $80   ; 
- D 0 - I - 0x008E86 02:8E76: 80        .byte $80   ; 
- D 0 - I - 0x008E87 02:8E77: BB        .byte $BB   ; 
- D 0 - I - 0x008E88 02:8E78: 80        .byte $80   ; 
- D 0 - I - 0x008E89 02:8E79: BB        .byte $BB   ; 
- D 0 - I - 0x008E8A 02:8E7A: 80        .byte $80   ; 
- D 0 - I - 0x008E8B 02:8E7B: 80        .byte $80   ; 
- D 0 - I - 0x008E8C 02:8E7C: 80        .byte $80   ; 
- D 0 - I - 0x008E8D 02:8E7D: 80        .byte $80   ; 
- D 0 - I - 0x008E8E 02:8E7E: 80        .byte $80   ; 
- D 0 - I - 0x008E8F 02:8E7F: 0A        .byte $0A   ; 
- D 0 - I - 0x008E90 02:8E80: E0        .byte $E0   ; 
- D 0 - I - 0x008E91 02:8E81: 20        .byte $20   ; 
- D 0 - I - 0x008E92 02:8E82: 80        .byte $80   ; 
- D 0 - I - 0x008E93 02:8E83: 80        .byte $80   ; 
- D 0 - I - 0x008E94 02:8E84: 80        .byte $80   ; 
- D 0 - I - 0x008E95 02:8E85: 80        .byte $80   ; 
- D 0 - I - 0x008E96 02:8E86: 84        .byte $84   ; 
- D 0 - I - 0x008E97 02:8E87: 8A        .byte $8A   ; 
- D 0 - I - 0x008E98 02:8E88: 8A        .byte $8A   ; 
- D 0 - I - 0x008E99 02:8E89: 8A        .byte $8A   ; 
- D 0 - I - 0x008E9A 02:8E8A: 8A        .byte $8A   ; 
- D 0 - I - 0x008E9B 02:8E8B: D2        .byte $D2   ; 
- D 0 - I - 0x008E9C 02:8E8C: 0B        .byte $0B   ; 
- D 0 - I - 0x008E9D 02:8E8D: F5        .byte $F5   ; 
- D 0 - I - 0x008E9E 02:8E8E: 20        .byte $20   ; 
- D 0 - I - 0x008E9F 02:8E8F: D3        .byte $D3   ; 
- D 0 - I - 0x008EA0 02:8E90: 8A        .byte $8A   ; 
- D 0 - I - 0x008EA1 02:8E91: 8A        .byte $8A   ; 
- D 0 - I - 0x008EA2 02:8E92: 8A        .byte $8A   ; 
- D 0 - I - 0x008EA3 02:8E93: 8A        .byte $8A   ; 
- D 0 - I - 0x008EA4 02:8E94: 8A        .byte $8A   ; 
- D 0 - I - 0x008EA5 02:8E95: 85        .byte $85   ; 
- D 0 - I - 0x008EA6 02:8E96: 80        .byte $80   ; 
- D 0 - I - 0x008EA7 02:8E97: 80        .byte $80   ; 
- D 0 - I - 0x008EA8 02:8E98: 80        .byte $80   ; 
- D 0 - I - 0x008EA9 02:8E99: 80        .byte $80   ; 
- D 0 - I - 0x008EAA 02:8E9A: 05        .byte $05   ; 
- D 0 - I - 0x008EAB 02:8E9B: 00        .byte $00   ; 
- D 0 - I - 0x008EAC 02:8E9C: 21        .byte $21   ; 
- D 0 - I - 0x008EAD 02:8E9D: 80        .byte $80   ; 
- D 0 - I - 0x008EAE 02:8E9E: 80        .byte $80   ; 
- D 0 - I - 0x008EAF 02:8E9F: 80        .byte $80   ; 
- D 0 - I - 0x008EB0 02:8EA0: 80        .byte $80   ; 
- D 0 - I - 0x008EB1 02:8EA1: 88        .byte $88   ; 
- D 0 - I - 0x008EB2 02:8EA2: 05        .byte $05   ; 
- D 0 - I - 0x008EB3 02:8EA3: 1B        .byte $1B   ; 
- D 0 - I - 0x008EB4 02:8EA4: 21        .byte $21   ; 
- D 0 - I - 0x008EB5 02:8EA5: 89        .byte $89   ; 
- D 0 - I - 0x008EB6 02:8EA6: 80        .byte $80   ; 
- D 0 - I - 0x008EB7 02:8EA7: 80        .byte $80   ; 
- D 0 - I - 0x008EB8 02:8EA8: C8        .byte $C8   ; 
- D 0 - I - 0x008EB9 02:8EA9: C9        .byte $C9   ; 
- D 0 - I - 0x008EBA 02:8EAA: 20        .byte $20   ; 
- D 0 - I - 0x008EBB 02:8EAB: 20        .byte $20   ; 
- D 0 - I - 0x008EBC 02:8EAC: 21        .byte $21   ; 
- D 0 - I - 0x008EBD 02:8EAD: 80        .byte $80   ; 
- D 0 - I - 0x008EBE 02:8EAE: 80        .byte $80   ; 
- D 0 - I - 0x008EBF 02:8EAF: 80        .byte $80   ; 
- D 0 - I - 0x008EC0 02:8EB0: 80        .byte $80   ; 
- D 0 - I - 0x008EC1 02:8EB1: 88        .byte $88   ; 
- D 0 - I - 0x008EC2 02:8EB2: 20        .byte $20   ; 
- D 0 - I - 0x008EC3 02:8EB3: 20        .byte $20   ; 
- D 0 - I - 0x008EC4 02:8EB4: 42        .byte $42   ; 
- D 0 - I - 0x008EC5 02:8EB5: 52        .byte $52   ; 
- D 0 - I - 0x008EC6 02:8EB6: 41        .byte $41   ; 
- D 0 - I - 0x008EC7 02:8EB7: 5A        .byte $5A   ; 
- D 0 - I - 0x008EC8 02:8EB8: 49        .byte $49   ; 
- D 0 - I - 0x008EC9 02:8EB9: 4C        .byte $4C   ; 
- D 0 - I - 0x008ECA 02:8EBA: 20        .byte $20   ; 
- D 0 - I - 0x008ECB 02:8EBB: 20        .byte $20   ; 
- D 0 - I - 0x008ECC 02:8EBC: 20        .byte $20   ; 
- D 0 - I - 0x008ECD 02:8EBD: 20        .byte $20   ; 
- D 0 - I - 0x008ECE 02:8EBE: 20        .byte $20   ; 
- D 0 - I - 0x008ECF 02:8EBF: 20        .byte $20   ; 
- D 0 - I - 0x008ED0 02:8EC0: 45        .byte $45   ; 
- D 0 - I - 0x008ED1 02:8EC1: 4E        .byte $4E   ; 
- D 0 - I - 0x008ED2 02:8EC2: 47        .byte $47   ; 
- D 0 - I - 0x008ED3 02:8EC3: 4C        .byte $4C   ; 
- D 0 - I - 0x008ED4 02:8EC4: 41        .byte $41   ; 
- D 0 - I - 0x008ED5 02:8EC5: 4E        .byte $4E   ; 
- D 0 - I - 0x008ED6 02:8EC6: 44        .byte $44   ; 
- D 0 - I - 0x008ED7 02:8EC7: 20        .byte $20   ; 
- D 0 - I - 0x008ED8 02:8EC8: 89        .byte $89   ; 
- D 0 - I - 0x008ED9 02:8EC9: 80        .byte $80   ; 
- D 0 - I - 0x008EDA 02:8ECA: 80        .byte $80   ; 
- D 0 - I - 0x008EDB 02:8ECB: CA        .byte $CA   ; 
- D 0 - I - 0x008EDC 02:8ECC: CB        .byte $CB   ; 
- D 0 - I - 0x008EDD 02:8ECD: 05        .byte $05   ; 
- D 0 - I - 0x008EDE 02:8ECE: 40        .byte $40   ; 
- D 0 - I - 0x008EDF 02:8ECF: 21        .byte $21   ; 
- D 0 - I - 0x008EE0 02:8ED0: CC        .byte $CC   ; 
- D 0 - I - 0x008EE1 02:8ED1: CD        .byte $CD   ; 
- D 0 - I - 0x008EE2 02:8ED2: 80        .byte $80   ; 
- D 0 - I - 0x008EE3 02:8ED3: 80        .byte $80   ; 
- D 0 - I - 0x008EE4 02:8ED4: 88        .byte $88   ; 
- D 0 - I - 0x008EE5 02:8ED5: 05        .byte $05   ; 
- D 0 - I - 0x008EE6 02:8ED6: 5B        .byte $5B   ; 
- D 0 - I - 0x008EE7 02:8ED7: 21        .byte $21   ; 
- D 0 - I - 0x008EE8 02:8ED8: 89        .byte $89   ; 
- D 0 - I - 0x008EE9 02:8ED9: 80        .byte $80   ; 
- D 0 - I - 0x008EEA 02:8EDA: 80        .byte $80   ; 
- D 0 - I - 0x008EEB 02:8EDB: 80        .byte $80   ; 
- D 0 - I - 0x008EEC 02:8EDC: 80        .byte $80   ; 
- D 0 - I - 0x008EED 02:8EDD: 20        .byte $20   ; 
- D 0 - I - 0x008EEE 02:8EDE: 60        .byte $60   ; 
- D 0 - I - 0x008EEF 02:8EDF: 21        .byte $21   ; 
- D 0 - I - 0x008EF0 02:8EE0: CE        .byte $CE   ; 
- D 0 - I - 0x008EF1 02:8EE1: CF        .byte $CF   ; 
- D 0 - I - 0x008EF2 02:8EE2: 80        .byte $80   ; 
- D 0 - I - 0x008EF3 02:8EE3: 80        .byte $80   ; 
- D 0 - I - 0x008EF4 02:8EE4: 88        .byte $88   ; 
- D 0 - I - 0x008EF5 02:8EE5: 20        .byte $20   ; 
- D 0 - I - 0x008EF6 02:8EE6: 20        .byte $20   ; 
- D 0 - I - 0x008EF7 02:8EE7: 57        .byte $57   ; 
- D 0 - I - 0x008EF8 02:8EE8: 2E        .byte $2E   ; 
- D 0 - I - 0x008EF9 02:8EE9: 47        .byte $47   ; 
- D 0 - I - 0x008EFA 02:8EEA: 45        .byte $45   ; 
- D 0 - I - 0x008EFB 02:8EEB: 52        .byte $52   ; 
- D 0 - I - 0x008EFC 02:8EEC: 4D        .byte $4D   ; 
- D 0 - I - 0x008EFD 02:8EED: 41        .byte $41   ; 
- D 0 - I - 0x008EFE 02:8EEE: 4E        .byte $4E   ; 
- D 0 - I - 0x008EFF 02:8EEF: 59        .byte $59   ; 
- D 0 - I - 0x008F00 02:8EF0: 20        .byte $20   ; 
- D 0 - I - 0x008F01 02:8EF1: 20        .byte $20   ; 
- D 0 - I - 0x008F02 02:8EF2: 20        .byte $20   ; 
- D 0 - I - 0x008F03 02:8EF3: 53        .byte $53   ; 
- D 0 - I - 0x008F04 02:8EF4: 50        .byte $50   ; 
- D 0 - I - 0x008F05 02:8EF5: 41        .byte $41   ; 
- D 0 - I - 0x008F06 02:8EF6: 49        .byte $49   ; 
- D 0 - I - 0x008F07 02:8EF7: 4E        .byte $4E   ; 
- D 0 - I - 0x008F08 02:8EF8: 20        .byte $20   ; 
- D 0 - I - 0x008F09 02:8EF9: 20        .byte $20   ; 
- D 0 - I - 0x008F0A 02:8EFA: 20        .byte $20   ; 
- D 0 - I - 0x008F0B 02:8EFB: 89        .byte $89   ; 
- D 0 - I - 0x008F0C 02:8EFC: 80        .byte $80   ; 
- D 0 - I - 0x008F0D 02:8EFD: 80        .byte $80   ; 
- D 0 - I - 0x008F0E 02:8EFE: 80        .byte $80   ; 
- D 0 - I - 0x008F0F 02:8EFF: 80        .byte $80   ; 
- D 0 - I - 0x008F10 02:8F00: 05        .byte $05   ; 
- D 0 - I - 0x008F11 02:8F01: 80        .byte $80   ; 
- D 0 - I - 0x008F12 02:8F02: 21        .byte $21   ; 
- D 0 - I - 0x008F13 02:8F03: 80        .byte $80   ; 
- D 0 - I - 0x008F14 02:8F04: 80        .byte $80   ; 
- D 0 - I - 0x008F15 02:8F05: 80        .byte $80   ; 
- D 0 - I - 0x008F16 02:8F06: 80        .byte $80   ; 
- D 0 - I - 0x008F17 02:8F07: 88        .byte $88   ; 
- D 0 - I - 0x008F18 02:8F08: 05        .byte $05   ; 
- D 0 - I - 0x008F19 02:8F09: 9B        .byte $9B   ; 
- D 0 - I - 0x008F1A 02:8F0A: 21        .byte $21   ; 
- D 0 - I - 0x008F1B 02:8F0B: 89        .byte $89   ; 
- D 0 - I - 0x008F1C 02:8F0C: 80        .byte $80   ; 
- D 0 - I - 0x008F1D 02:8F0D: 80        .byte $80   ; 
- D 0 - I - 0x008F1E 02:8F0E: 80        .byte $80   ; 
- D 0 - I - 0x008F1F 02:8F0F: 80        .byte $80   ; 
- D 0 - I - 0x008F20 02:8F10: 20        .byte $20   ; 
- D 0 - I - 0x008F21 02:8F11: A0        .byte $A0   ; 
- D 0 - I - 0x008F22 02:8F12: 21        .byte $21   ; 
- D 0 - I - 0x008F23 02:8F13: 80        .byte $80   ; 
- D 0 - I - 0x008F24 02:8F14: 80        .byte $80   ; 
- D 0 - I - 0x008F25 02:8F15: 80        .byte $80   ; 
- D 0 - I - 0x008F26 02:8F16: 80        .byte $80   ; 
- D 0 - I - 0x008F27 02:8F17: 88        .byte $88   ; 
- D 0 - I - 0x008F28 02:8F18: 20        .byte $20   ; 
- D 0 - I - 0x008F29 02:8F19: 20        .byte $20   ; 
- D 0 - I - 0x008F2A 02:8F1A: 49        .byte $49   ; 
- D 0 - I - 0x008F2B 02:8F1B: 54        .byte $54   ; 
- D 0 - I - 0x008F2C 02:8F1C: 41        .byte $41   ; 
- D 0 - I - 0x008F2D 02:8F1D: 4C        .byte $4C   ; 
- D 0 - I - 0x008F2E 02:8F1E: 59        .byte $59   ; 
- D 0 - I - 0x008F2F 02:8F1F: 20        .byte $20   ; 
- D 0 - I - 0x008F30 02:8F20: 20        .byte $20   ; 
- D 0 - I - 0x008F31 02:8F21: 20        .byte $20   ; 
- D 0 - I - 0x008F32 02:8F22: 20        .byte $20   ; 
- D 0 - I - 0x008F33 02:8F23: 20        .byte $20   ; 
- D 0 - I - 0x008F34 02:8F24: 20        .byte $20   ; 
- D 0 - I - 0x008F35 02:8F25: 20        .byte $20   ; 
- D 0 - I - 0x008F36 02:8F26: 43        .byte $43   ; 
- D 0 - I - 0x008F37 02:8F27: 4F        .byte $4F   ; 
- D 0 - I - 0x008F38 02:8F28: 4C        .byte $4C   ; 
- D 0 - I - 0x008F39 02:8F29: 4F        .byte $4F   ; 
- D 0 - I - 0x008F3A 02:8F2A: 4D        .byte $4D   ; 
- D 0 - I - 0x008F3B 02:8F2B: 42        .byte $42   ; 
- D 0 - I - 0x008F3C 02:8F2C: 49        .byte $49   ; 
- D 0 - I - 0x008F3D 02:8F2D: 41        .byte $41   ; 
- D 0 - I - 0x008F3E 02:8F2E: 89        .byte $89   ; 
- D 0 - I - 0x008F3F 02:8F2F: 80        .byte $80   ; 
- D 0 - I - 0x008F40 02:8F30: 80        .byte $80   ; 
- D 0 - I - 0x008F41 02:8F31: 80        .byte $80   ; 
- D 0 - I - 0x008F42 02:8F32: 80        .byte $80   ; 
- D 0 - I - 0x008F43 02:8F33: 05        .byte $05   ; 
- D 0 - I - 0x008F44 02:8F34: C0        .byte $C0   ; 
- D 0 - I - 0x008F45 02:8F35: 21        .byte $21   ; 
- D 0 - I - 0x008F46 02:8F36: 80        .byte $80   ; 
- D 0 - I - 0x008F47 02:8F37: 80        .byte $80   ; 
- D 0 - I - 0x008F48 02:8F38: 80        .byte $80   ; 
- D 0 - I - 0x008F49 02:8F39: 80        .byte $80   ; 
- D 0 - I - 0x008F4A 02:8F3A: 88        .byte $88   ; 
- D 0 - I - 0x008F4B 02:8F3B: 05        .byte $05   ; 
- D 0 - I - 0x008F4C 02:8F3C: DB        .byte $DB   ; 
- D 0 - I - 0x008F4D 02:8F3D: 21        .byte $21   ; 
- D 0 - I - 0x008F4E 02:8F3E: 89        .byte $89   ; 
- D 0 - I - 0x008F4F 02:8F3F: 80        .byte $80   ; 
- D 0 - I - 0x008F50 02:8F40: 80        .byte $80   ; 
- D 0 - I - 0x008F51 02:8F41: 80        .byte $80   ; 
- D 0 - I - 0x008F52 02:8F42: 80        .byte $80   ; 
- D 0 - I - 0x008F53 02:8F43: 20        .byte $20   ; 
- D 0 - I - 0x008F54 02:8F44: E0        .byte $E0   ; 
- D 0 - I - 0x008F55 02:8F45: 21        .byte $21   ; 
- D 0 - I - 0x008F56 02:8F46: 80        .byte $80   ; 
- D 0 - I - 0x008F57 02:8F47: 80        .byte $80   ; 
- D 0 - I - 0x008F58 02:8F48: 80        .byte $80   ; 
- D 0 - I - 0x008F59 02:8F49: 80        .byte $80   ; 
- D 0 - I - 0x008F5A 02:8F4A: 88        .byte $88   ; 
- D 0 - I - 0x008F5B 02:8F4B: 20        .byte $20   ; 
- D 0 - I - 0x008F5C 02:8F4C: 20        .byte $20   ; 
- D 0 - I - 0x008F5D 02:8F4D: 48        .byte $48   ; 
- D 0 - I - 0x008F5E 02:8F4E: 4F        .byte $4F   ; 
- D 0 - I - 0x008F5F 02:8F4F: 4C        .byte $4C   ; 
- D 0 - I - 0x008F60 02:8F50: 4C        .byte $4C   ; 
- D 0 - I - 0x008F61 02:8F51: 41        .byte $41   ; 
- D 0 - I - 0x008F62 02:8F52: 4E        .byte $4E   ; 
- D 0 - I - 0x008F63 02:8F53: 44        .byte $44   ; 
- D 0 - I - 0x008F64 02:8F54: 20        .byte $20   ; 
- D 0 - I - 0x008F65 02:8F55: 20        .byte $20   ; 
- D 0 - I - 0x008F66 02:8F56: 20        .byte $20   ; 
- D 0 - I - 0x008F67 02:8F57: 20        .byte $20   ; 
- D 0 - I - 0x008F68 02:8F58: 20        .byte $20   ; 
- D 0 - I - 0x008F69 02:8F59: 53        .byte $53   ; 
- D 0 - I - 0x008F6A 02:8F5A: 43        .byte $43   ; 
- D 0 - I - 0x008F6B 02:8F5B: 4F        .byte $4F   ; 
- D 0 - I - 0x008F6C 02:8F5C: 54        .byte $54   ; 
- D 0 - I - 0x008F6D 02:8F5D: 4C        .byte $4C   ; 
- D 0 - I - 0x008F6E 02:8F5E: 41        .byte $41   ; 
- D 0 - I - 0x008F6F 02:8F5F: 4E        .byte $4E   ; 
- D 0 - I - 0x008F70 02:8F60: 44        .byte $44   ; 
- D 0 - I - 0x008F71 02:8F61: 89        .byte $89   ; 
- D 0 - I - 0x008F72 02:8F62: 80        .byte $80   ; 
- D 0 - I - 0x008F73 02:8F63: 80        .byte $80   ; 
- D 0 - I - 0x008F74 02:8F64: 80        .byte $80   ; 
- D 0 - I - 0x008F75 02:8F65: 80        .byte $80   ; 
- D 0 - I - 0x008F76 02:8F66: 05        .byte $05   ; 
- D 0 - I - 0x008F77 02:8F67: 00        .byte $00   ; 
- D 0 - I - 0x008F78 02:8F68: 22        .byte $22   ; 
- D 0 - I - 0x008F79 02:8F69: 80        .byte $80   ; 
- D 0 - I - 0x008F7A 02:8F6A: 80        .byte $80   ; 
- D 0 - I - 0x008F7B 02:8F6B: 80        .byte $80   ; 
- D 0 - I - 0x008F7C 02:8F6C: 80        .byte $80   ; 
- D 0 - I - 0x008F7D 02:8F6D: 88        .byte $88   ; 
- D 0 - I - 0x008F7E 02:8F6E: 05        .byte $05   ; 
- D 0 - I - 0x008F7F 02:8F6F: 1B        .byte $1B   ; 
- D 0 - I - 0x008F80 02:8F70: 22        .byte $22   ; 
- D 0 - I - 0x008F81 02:8F71: 89        .byte $89   ; 
- D 0 - I - 0x008F82 02:8F72: 80        .byte $80   ; 
- D 0 - I - 0x008F83 02:8F73: 80        .byte $80   ; 
- D 0 - I - 0x008F84 02:8F74: 80        .byte $80   ; 
- D 0 - I - 0x008F85 02:8F75: 80        .byte $80   ; 
- D 0 - I - 0x008F86 02:8F76: 20        .byte $20   ; 
- D 0 - I - 0x008F87 02:8F77: 20        .byte $20   ; 
- D 0 - I - 0x008F88 02:8F78: 22        .byte $22   ; 
- D 0 - I - 0x008F89 02:8F79: 82        .byte $82   ; 
- D 0 - I - 0x008F8A 02:8F7A: 82        .byte $82   ; 
- D 0 - I - 0x008F8B 02:8F7B: 82        .byte $82   ; 
- D 0 - I - 0x008F8C 02:8F7C: 82        .byte $82   ; 
- D 0 - I - 0x008F8D 02:8F7D: 88        .byte $88   ; 
- D 0 - I - 0x008F8E 02:8F7E: 20        .byte $20   ; 
- D 0 - I - 0x008F8F 02:8F7F: 20        .byte $20   ; 
- D 0 - I - 0x008F90 02:8F80: 41        .byte $41   ; 
- D 0 - I - 0x008F91 02:8F81: 52        .byte $52   ; 
- D 0 - I - 0x008F92 02:8F82: 47        .byte $47   ; 
- D 0 - I - 0x008F93 02:8F83: 45        .byte $45   ; 
- D 0 - I - 0x008F94 02:8F84: 4E        .byte $4E   ; 
- D 0 - I - 0x008F95 02:8F85: 54        .byte $54   ; 
- D 0 - I - 0x008F96 02:8F86: 49        .byte $49   ; 
- D 0 - I - 0x008F97 02:8F87: 4E        .byte $4E   ; 
- D 0 - I - 0x008F98 02:8F88: 41        .byte $41   ; 
- D 0 - I - 0x008F99 02:8F89: 20        .byte $20   ; 
- D 0 - I - 0x008F9A 02:8F8A: 20        .byte $20   ; 
- D 0 - I - 0x008F9B 02:8F8B: 20        .byte $20   ; 
- D 0 - I - 0x008F9C 02:8F8C: 46        .byte $46   ; 
- D 0 - I - 0x008F9D 02:8F8D: 52        .byte $52   ; 
- D 0 - I - 0x008F9E 02:8F8E: 41        .byte $41   ; 
- D 0 - I - 0x008F9F 02:8F8F: 4E        .byte $4E   ; 
- D 0 - I - 0x008FA0 02:8F90: 43        .byte $43   ; 
- D 0 - I - 0x008FA1 02:8F91: 45        .byte $45   ; 
- D 0 - I - 0x008FA2 02:8F92: 20        .byte $20   ; 
- D 0 - I - 0x008FA3 02:8F93: 20        .byte $20   ; 
- D 0 - I - 0x008FA4 02:8F94: 89        .byte $89   ; 
- D 0 - I - 0x008FA5 02:8F95: 82        .byte $82   ; 
- D 0 - I - 0x008FA6 02:8F96: 82        .byte $82   ; 
- D 0 - I - 0x008FA7 02:8F97: 82        .byte $82   ; 
- D 0 - I - 0x008FA8 02:8F98: 82        .byte $82   ; 
- D 0 - I - 0x008FA9 02:8F99: 05        .byte $05   ; 
- D 0 - I - 0x008FAA 02:8F9A: 40        .byte $40   ; 
- D 0 - I - 0x008FAB 02:8F9B: 22        .byte $22   ; 
- D 0 - I - 0x008FAC 02:8F9C: 90        .byte $90   ; 
- D 0 - I - 0x008FAD 02:8F9D: 91        .byte $91   ; 
- D 0 - I - 0x008FAE 02:8F9E: 94        .byte $94   ; 
- D 0 - I - 0x008FAF 02:8F9F: 95        .byte $95   ; 
- D 0 - I - 0x008FB0 02:8FA0: 88        .byte $88   ; 
- D 0 - I - 0x008FB1 02:8FA1: 05        .byte $05   ; 
- D 0 - I - 0x008FB2 02:8FA2: 5B        .byte $5B   ; 
- D 0 - I - 0x008FB3 02:8FA3: 22        .byte $22   ; 
- D 0 - I - 0x008FB4 02:8FA4: 89        .byte $89   ; 
- D 0 - I - 0x008FB5 02:8FA5: 90        .byte $90   ; 
- D 0 - I - 0x008FB6 02:8FA6: 91        .byte $91   ; 
- D 0 - I - 0x008FB7 02:8FA7: 94        .byte $94   ; 
- D 0 - I - 0x008FB8 02:8FA8: 95        .byte $95   ; 
- D 0 - I - 0x008FB9 02:8FA9: 20        .byte $20   ; 
- D 0 - I - 0x008FBA 02:8FAA: 60        .byte $60   ; 
- D 0 - I - 0x008FBB 02:8FAB: 22        .byte $22   ; 
- D 0 - I - 0x008FBC 02:8FAC: 92        .byte $92   ; 
- D 0 - I - 0x008FBD 02:8FAD: 93        .byte $93   ; 
- D 0 - I - 0x008FBE 02:8FAE: 96        .byte $96   ; 
- D 0 - I - 0x008FBF 02:8FAF: 97        .byte $97   ; 
- D 0 - I - 0x008FC0 02:8FB0: 88        .byte $88   ; 
- D 0 - I - 0x008FC1 02:8FB1: 20        .byte $20   ; 
- D 0 - I - 0x008FC2 02:8FB2: 20        .byte $20   ; 
- D 0 - I - 0x008FC3 02:8FB3: 53        .byte $53   ; 
- D 0 - I - 0x008FC4 02:8FB4: 4F        .byte $4F   ; 
- D 0 - I - 0x008FC5 02:8FB5: 56        .byte $56   ; 
- D 0 - I - 0x008FC6 02:8FB6: 49        .byte $49   ; 
- D 0 - I - 0x008FC7 02:8FB7: 45        .byte $45   ; 
- D 0 - I - 0x008FC8 02:8FB8: 54        .byte $54   ; 
- D 0 - I - 0x008FC9 02:8FB9: 20        .byte $20   ; 
- D 0 - I - 0x008FCA 02:8FBA: 20        .byte $20   ; 
- D 0 - I - 0x008FCB 02:8FBB: 20        .byte $20   ; 
- D 0 - I - 0x008FCC 02:8FBC: 20        .byte $20   ; 
- D 0 - I - 0x008FCD 02:8FBD: 20        .byte $20   ; 
- D 0 - I - 0x008FCE 02:8FBE: 20        .byte $20   ; 
- D 0 - I - 0x008FCF 02:8FBF: 55        .byte $55   ; 
- D 0 - I - 0x008FD0 02:8FC0: 53        .byte $53   ; 
- D 0 - I - 0x008FD1 02:8FC1: 41        .byte $41   ; 
- D 0 - I - 0x008FD2 02:8FC2: 20        .byte $20   ; 
- D 0 - I - 0x008FD3 02:8FC3: 20        .byte $20   ; 
- D 0 - I - 0x008FD4 02:8FC4: 20        .byte $20   ; 
- D 0 - I - 0x008FD5 02:8FC5: 20        .byte $20   ; 
- D 0 - I - 0x008FD6 02:8FC6: 20        .byte $20   ; 
- D 0 - I - 0x008FD7 02:8FC7: 89        .byte $89   ; 
- D 0 - I - 0x008FD8 02:8FC8: 92        .byte $92   ; 
- D 0 - I - 0x008FD9 02:8FC9: 93        .byte $93   ; 
- D 0 - I - 0x008FDA 02:8FCA: 96        .byte $96   ; 
- D 0 - I - 0x008FDB 02:8FCB: 97        .byte $97   ; 
- D 0 - I - 0x008FDC 02:8FCC: 05        .byte $05   ; 
- D 0 - I - 0x008FDD 02:8FCD: 80        .byte $80   ; 
- D 0 - I - 0x008FDE 02:8FCE: 22        .byte $22   ; 
- D 0 - I - 0x008FDF 02:8FCF: 94        .byte $94   ; 
- D 0 - I - 0x008FE0 02:8FD0: 95        .byte $95   ; 
- D 0 - I - 0x008FE1 02:8FD1: 90        .byte $90   ; 
- D 0 - I - 0x008FE2 02:8FD2: 91        .byte $91   ; 
- D 0 - I - 0x008FE3 02:8FD3: 88        .byte $88   ; 
- D 0 - I - 0x008FE4 02:8FD4: 05        .byte $05   ; 
- D 0 - I - 0x008FE5 02:8FD5: 9B        .byte $9B   ; 
- D 0 - I - 0x008FE6 02:8FD6: 22        .byte $22   ; 
- D 0 - I - 0x008FE7 02:8FD7: 89        .byte $89   ; 
- D 0 - I - 0x008FE8 02:8FD8: 94        .byte $94   ; 
- D 0 - I - 0x008FE9 02:8FD9: 95        .byte $95   ; 
- D 0 - I - 0x008FEA 02:8FDA: 90        .byte $90   ; 
- D 0 - I - 0x008FEB 02:8FDB: 91        .byte $91   ; 
- D 0 - I - 0x008FEC 02:8FDC: 20        .byte $20   ; 
- D 0 - I - 0x008FED 02:8FDD: A0        .byte $A0   ; 
- D 0 - I - 0x008FEE 02:8FDE: 22        .byte $22   ; 
- D 0 - I - 0x008FEF 02:8FDF: 96        .byte $96   ; 
- D 0 - I - 0x008FF0 02:8FE0: 97        .byte $97   ; 
- D 0 - I - 0x008FF1 02:8FE1: 92        .byte $92   ; 
- D 0 - I - 0x008FF2 02:8FE2: 93        .byte $93   ; 
- D 0 - I - 0x008FF3 02:8FE3: 88        .byte $88   ; 
- D 0 - I - 0x008FF4 02:8FE4: 20        .byte $20   ; 
- D 0 - I - 0x008FF5 02:8FE5: 20        .byte $20   ; 
- D 0 - I - 0x008FF6 02:8FE6: 55        .byte $55   ; 
- D 0 - I - 0x008FF7 02:8FE7: 52        .byte $52   ; 
- D 0 - I - 0x008FF8 02:8FE8: 55        .byte $55   ; 
- D 0 - I - 0x008FF9 02:8FE9: 47        .byte $47   ; 
- D 0 - I - 0x008FFA 02:8FEA: 55        .byte $55   ; 
- D 0 - I - 0x008FFB 02:8FEB: 41        .byte $41   ; 
- D 0 - I - 0x008FFC 02:8FEC: 59        .byte $59   ; 
- D 0 - I - 0x008FFD 02:8FED: 20        .byte $20   ; 
- D 0 - I - 0x008FFE 02:8FEE: 20        .byte $20   ; 
- D 0 - I - 0x008FFF 02:8FEF: 20        .byte $20   ; 
- D 0 - I - 0x009000 02:8FF0: 20        .byte $20   ; 
- D 0 - I - 0x009001 02:8FF1: 20        .byte $20   ; 
- D 0 - I - 0x009002 02:8FF2: 4B        .byte $4B   ; 
- D 0 - I - 0x009003 02:8FF3: 4F        .byte $4F   ; 
- D 0 - I - 0x009004 02:8FF4: 52        .byte $52   ; 
- D 0 - I - 0x009005 02:8FF5: 45        .byte $45   ; 
- D 0 - I - 0x009006 02:8FF6: 41        .byte $41   ; 
- D 0 - I - 0x009007 02:8FF7: 20        .byte $20   ; 
- D 0 - I - 0x009008 02:8FF8: 20        .byte $20   ; 
- D 0 - I - 0x009009 02:8FF9: 20        .byte $20   ; 
- D 0 - I - 0x00900A 02:8FFA: 89        .byte $89   ; 
- D 0 - I - 0x00900B 02:8FFB: 96        .byte $96   ; 
- D 0 - I - 0x00900C 02:8FFC: 97        .byte $97   ; 
- D 0 - I - 0x00900D 02:8FFD: 92        .byte $92   ; 
- D 0 - I - 0x00900E 02:8FFE: 93        .byte $93   ; 
- D 0 - I - 0x00900F 02:8FFF: 05        .byte $05   ; 
- D 0 - I - 0x009010 02:9000: C0        .byte $C0   ; 
- D 0 - I - 0x009011 02:9001: 22        .byte $22   ; 
- D 0 - I - 0x009012 02:9002: 90        .byte $90   ; 
- D 0 - I - 0x009013 02:9003: 91        .byte $91   ; 
- D 0 - I - 0x009014 02:9004: 94        .byte $94   ; 
- D 0 - I - 0x009015 02:9005: 95        .byte $95   ; 
- D 0 - I - 0x009016 02:9006: 88        .byte $88   ; 
- D 0 - I - 0x009017 02:9007: 05        .byte $05   ; 
- D 0 - I - 0x009018 02:9008: DB        .byte $DB   ; 
- D 0 - I - 0x009019 02:9009: 22        .byte $22   ; 
- D 0 - I - 0x00901A 02:900A: 89        .byte $89   ; 
- D 0 - I - 0x00901B 02:900B: 90        .byte $90   ; 
- D 0 - I - 0x00901C 02:900C: 91        .byte $91   ; 
- D 0 - I - 0x00901D 02:900D: 94        .byte $94   ; 
- D 0 - I - 0x00901E 02:900E: 95        .byte $95   ; 
- D 0 - I - 0x00901F 02:900F: 20        .byte $20   ; 
- D 0 - I - 0x009020 02:9010: E0        .byte $E0   ; 
- D 0 - I - 0x009021 02:9011: 22        .byte $22   ; 
- D 0 - I - 0x009022 02:9012: 92        .byte $92   ; 
- D 0 - I - 0x009023 02:9013: 93        .byte $93   ; 
- D 0 - I - 0x009024 02:9014: 96        .byte $96   ; 
- D 0 - I - 0x009025 02:9015: 97        .byte $97   ; 
- D 0 - I - 0x009026 02:9016: 88        .byte $88   ; 
- D 0 - I - 0x009027 02:9017: 20        .byte $20   ; 
- D 0 - I - 0x009028 02:9018: 20        .byte $20   ; 
- D 0 - I - 0x009029 02:9019: 50        .byte $50   ; 
- D 0 - I - 0x00902A 02:901A: 4F        .byte $4F   ; 
- D 0 - I - 0x00902B 02:901B: 4C        .byte $4C   ; 
- D 0 - I - 0x00902C 02:901C: 41        .byte $41   ; 
- D 0 - I - 0x00902D 02:901D: 4E        .byte $4E   ; 
- D 0 - I - 0x00902E 02:901E: 44        .byte $44   ; 
- D 0 - I - 0x00902F 02:901F: 20        .byte $20   ; 
- D 0 - I - 0x009030 02:9020: 20        .byte $20   ; 
- D 0 - I - 0x009031 02:9021: 20        .byte $20   ; 
- D 0 - I - 0x009032 02:9022: 20        .byte $20   ; 
- D 0 - I - 0x009033 02:9023: 20        .byte $20   ; 
- D 0 - I - 0x009034 02:9024: 20        .byte $20   ; 
- D 0 - I - 0x009035 02:9025: 4A        .byte $4A   ; 
- D 0 - I - 0x009036 02:9026: 41        .byte $41   ; 
- D 0 - I - 0x009037 02:9027: 50        .byte $50   ; 
- D 0 - I - 0x009038 02:9028: 41        .byte $41   ; 
- D 0 - I - 0x009039 02:9029: 4E        .byte $4E   ; 
- D 0 - I - 0x00903A 02:902A: 20        .byte $20   ; 
- D 0 - I - 0x00903B 02:902B: 20        .byte $20   ; 
- D 0 - I - 0x00903C 02:902C: 20        .byte $20   ; 
- D 0 - I - 0x00903D 02:902D: 89        .byte $89   ; 
- D 0 - I - 0x00903E 02:902E: 92        .byte $92   ; 
- D 0 - I - 0x00903F 02:902F: 93        .byte $93   ; 
- D 0 - I - 0x009040 02:9030: 96        .byte $96   ; 
- D 0 - I - 0x009041 02:9031: 97        .byte $97   ; 
- D 0 - I - 0x009042 02:9032: 20        .byte $20   ; 
- D 0 - I - 0x009043 02:9033: 00        .byte $00   ; 
- D 0 - I - 0x009044 02:9034: 23        .byte $23   ; 
- D 0 - I - 0x009045 02:9035: 94        .byte $94   ; 
- D 0 - I - 0x009046 02:9036: 95        .byte $95   ; 
- D 0 - I - 0x009047 02:9037: 90        .byte $90   ; 
- D 0 - I - 0x009048 02:9038: 91        .byte $91   ; 
- D 0 - I - 0x009049 02:9039: D0        .byte $D0   ; 
- D 0 - I - 0x00904A 02:903A: D1        .byte $D1   ; 
- D 0 - I - 0x00904B 02:903B: D1        .byte $D1   ; 
- D 0 - I - 0x00904C 02:903C: D1        .byte $D1   ; 
- D 0 - I - 0x00904D 02:903D: D1        .byte $D1   ; 
- D 0 - I - 0x00904E 02:903E: D1        .byte $D1   ; 
- D 0 - I - 0x00904F 02:903F: D1        .byte $D1   ; 
- D 0 - I - 0x009050 02:9040: D1        .byte $D1   ; 
- D 0 - I - 0x009051 02:9041: D1        .byte $D1   ; 
- D 0 - I - 0x009052 02:9042: 20        .byte $20   ; 
- D 0 - I - 0x009053 02:9043: C0        .byte $C0   ; 
- D 0 - I - 0x009054 02:9044: C1        .byte $C1   ; 
- D 0 - I - 0x009055 02:9045: C4        .byte $C4   ; 
- D 0 - I - 0x009056 02:9046: C5        .byte $C5   ; 
- D 0 - I - 0x009057 02:9047: 20        .byte $20   ; 
- D 0 - I - 0x009058 02:9048: D1        .byte $D1   ; 
- D 0 - I - 0x009059 02:9049: D1        .byte $D1   ; 
- D 0 - I - 0x00905A 02:904A: D1        .byte $D1   ; 
- D 0 - I - 0x00905B 02:904B: D1        .byte $D1   ; 
- D 0 - I - 0x00905C 02:904C: D1        .byte $D1   ; 
- D 0 - I - 0x00905D 02:904D: D1        .byte $D1   ; 
- D 0 - I - 0x00905E 02:904E: D1        .byte $D1   ; 
- D 0 - I - 0x00905F 02:904F: D1        .byte $D1   ; 
- D 0 - I - 0x009060 02:9050: D4        .byte $D4   ; 
- D 0 - I - 0x009061 02:9051: 94        .byte $94   ; 
- D 0 - I - 0x009062 02:9052: 95        .byte $95   ; 
- D 0 - I - 0x009063 02:9053: 90        .byte $90   ; 
- D 0 - I - 0x009064 02:9054: 91        .byte $91   ; 
- D 0 - I - 0x009065 02:9055: 05        .byte $05   ; 
- D 0 - I - 0x009066 02:9056: 20        .byte $20   ; 
- D 0 - I - 0x009067 02:9057: 23        .byte $23   ; 
- D 0 - I - 0x009068 02:9058: 96        .byte $96   ; 
- D 0 - I - 0x009069 02:9059: 97        .byte $97   ; 
- D 0 - I - 0x00906A 02:905A: 92        .byte $92   ; 
- D 0 - I - 0x00906B 02:905B: 93        .byte $93   ; 
- D 0 - I - 0x00906C 02:905C: 88        .byte $88   ; 
- D 0 - I - 0x00906D 02:905D: 04        .byte $04   ; 
- D 0 - I - 0x00906E 02:905E: 2E        .byte $2E   ; 
- D 0 - I - 0x00906F 02:905F: 23        .byte $23   ; 
- D 0 - I - 0x009070 02:9060: C2        .byte $C2   ; 
- D 0 - I - 0x009071 02:9061: C3        .byte $C3   ; 
- D 0 - I - 0x009072 02:9062: C6        .byte $C6   ; 
- D 0 - I - 0x009073 02:9063: C7        .byte $C7   ; 
- D 0 - I - 0x009074 02:9064: 05        .byte $05   ; 
- D 0 - I - 0x009075 02:9065: 3B        .byte $3B   ; 
- D 0 - I - 0x009076 02:9066: 23        .byte $23   ; 
- D 0 - I - 0x009077 02:9067: 89        .byte $89   ; 
- D 0 - I - 0x009078 02:9068: 96        .byte $96   ; 
- D 0 - I - 0x009079 02:9069: 97        .byte $97   ; 
- D 0 - I - 0x00907A 02:906A: 92        .byte $92   ; 
- D 0 - I - 0x00907B 02:906B: 93        .byte $93   ; 
- D 0 - I - 0x00907C 02:906C: 10        .byte $10   ; 
- D 0 - I - 0x00907D 02:906D: 40        .byte $40   ; 
- D 0 - I - 0x00907E 02:906E: 23        .byte $23   ; 
- D 0 - I - 0x00907F 02:906F: 81        .byte $81   ; 
- D 0 - I - 0x009080 02:9070: 81        .byte $81   ; 
- D 0 - I - 0x009081 02:9071: 81        .byte $81   ; 
- D 0 - I - 0x009082 02:9072: 81        .byte $81   ; 
- D 0 - I - 0x009083 02:9073: 88        .byte $88   ; 
- D 0 - I - 0x009084 02:9074: 20        .byte $20   ; 
- D 0 - I - 0x009085 02:9075: 20        .byte $20   ; 
- D 0 - I - 0x009086 02:9076: 20        .byte $20   ; 
- D 0 - I - 0x009087 02:9077: 20        .byte $20   ; 
- D 0 - I - 0x009088 02:9078: 20        .byte $20   ; 
- D 0 - I - 0x009089 02:9079: 20        .byte $20   ; 
- D 0 - I - 0x00908A 02:907A: 20        .byte $20   ; 
- D 0 - I - 0x00908B 02:907B: 20        .byte $20   ; 
- D 0 - I - 0x00908C 02:907C: 20        .byte $20   ; 
- D 0 - I - 0x00908D 02:907D: 20        .byte $20   ; 
- D 0 - I - 0x00908E 02:907E: 20        .byte $20   ; 
- D 0 - I - 0x00908F 02:907F: 05        .byte $05   ; 
- D 0 - I - 0x009090 02:9080: 5B        .byte $5B   ; 
- D 0 - I - 0x009091 02:9081: 23        .byte $23   ; 
- D 0 - I - 0x009092 02:9082: 89        .byte $89   ; 
- D 0 - I - 0x009093 02:9083: 81        .byte $81   ; 
- D 0 - I - 0x009094 02:9084: 81        .byte $81   ; 
- D 0 - I - 0x009095 02:9085: 81        .byte $81   ; 
- D 0 - I - 0x009096 02:9086: 81        .byte $81   ; 
- D 0 - I - 0x009097 02:9087: 20        .byte $20   ; 
- D 0 - I - 0x009098 02:9088: 60        .byte $60   ; 
- D 0 - I - 0x009099 02:9089: 23        .byte $23   ; 
- D 0 - I - 0x00909A 02:908A: 83        .byte $83   ; 
- D 0 - I - 0x00909B 02:908B: 83        .byte $83   ; 
- D 0 - I - 0x00909C 02:908C: 83        .byte $83   ; 
- D 0 - I - 0x00909D 02:908D: 83        .byte $83   ; 
- D 0 - I - 0x00909E 02:908E: 86        .byte $86   ; 
- D 0 - I - 0x00909F 02:908F: 8B        .byte $8B   ; 
- D 0 - I - 0x0090A0 02:9090: D7        .byte $D7   ; 
- D 0 - I - 0x0090A1 02:9091: D7        .byte $D7   ; 
- D 0 - I - 0x0090A2 02:9092: D7        .byte $D7   ; 
- D 0 - I - 0x0090A3 02:9093: D7        .byte $D7   ; 
- D 0 - I - 0x0090A4 02:9094: D7        .byte $D7   ; 
- D 0 - I - 0x0090A5 02:9095: D7        .byte $D7   ; 
- D 0 - I - 0x0090A6 02:9096: D7        .byte $D7   ; 
- D 0 - I - 0x0090A7 02:9097: D7        .byte $D7   ; 
- D 0 - I - 0x0090A8 02:9098: D7        .byte $D7   ; 
- D 0 - I - 0x0090A9 02:9099: D7        .byte $D7   ; 
- D 0 - I - 0x0090AA 02:909A: D7        .byte $D7   ; 
- D 0 - I - 0x0090AB 02:909B: D7        .byte $D7   ; 
- D 0 - I - 0x0090AC 02:909C: D7        .byte $D7   ; 
- D 0 - I - 0x0090AD 02:909D: D7        .byte $D7   ; 
- D 0 - I - 0x0090AE 02:909E: D7        .byte $D7   ; 
- D 0 - I - 0x0090AF 02:909F: D7        .byte $D7   ; 
- D 0 - I - 0x0090B0 02:90A0: D7        .byte $D7   ; 
- D 0 - I - 0x0090B1 02:90A1: D7        .byte $D7   ; 
- D 0 - I - 0x0090B2 02:90A2: D7        .byte $D7   ; 
- D 0 - I - 0x0090B3 02:90A3: D7        .byte $D7   ; 
- D 0 - I - 0x0090B4 02:90A4: 8B        .byte $8B   ; 
- D 0 - I - 0x0090B5 02:90A5: 87        .byte $87   ; 
- D 0 - I - 0x0090B6 02:90A6: 83        .byte $83   ; 
- D 0 - I - 0x0090B7 02:90A7: 83        .byte $83   ; 
- D 0 - I - 0x0090B8 02:90A8: 83        .byte $83   ; 
- D 0 - I - 0x0090B9 02:90A9: 83        .byte $83   ; 
- D 0 - I - 0x0090BA 02:90AA: 20        .byte $20   ; 
- D 0 - I - 0x0090BB 02:90AB: 80        .byte $80   ; 
- D 0 - I - 0x0090BC 02:90AC: 23        .byte $23   ; 
- D 0 - I - 0x0090BD 02:90AD: 80        .byte $80   ; 
- D 0 - I - 0x0090BE 02:90AE: 80        .byte $80   ; 
- D 0 - I - 0x0090BF 02:90AF: 80        .byte $80   ; 
- D 0 - I - 0x0090C0 02:90B0: 80        .byte $80   ; 
- D 0 - I - 0x0090C1 02:90B1: 80        .byte $80   ; 
- D 0 - I - 0x0090C2 02:90B2: 80        .byte $80   ; 
- D 0 - I - 0x0090C3 02:90B3: 80        .byte $80   ; 
- D 0 - I - 0x0090C4 02:90B4: 80        .byte $80   ; 
- D 0 - I - 0x0090C5 02:90B5: 80        .byte $80   ; 
- D 0 - I - 0x0090C6 02:90B6: 80        .byte $80   ; 
- D 0 - I - 0x0090C7 02:90B7: 80        .byte $80   ; 
- D 0 - I - 0x0090C8 02:90B8: 80        .byte $80   ; 
- D 0 - I - 0x0090C9 02:90B9: 80        .byte $80   ; 
- D 0 - I - 0x0090CA 02:90BA: 80        .byte $80   ; 
- D 0 - I - 0x0090CB 02:90BB: 80        .byte $80   ; 
- D 0 - I - 0x0090CC 02:90BC: 80        .byte $80   ; 
- D 0 - I - 0x0090CD 02:90BD: 80        .byte $80   ; 
- D 0 - I - 0x0090CE 02:90BE: 80        .byte $80   ; 
- D 0 - I - 0x0090CF 02:90BF: 80        .byte $80   ; 
- D 0 - I - 0x0090D0 02:90C0: 80        .byte $80   ; 
- D 0 - I - 0x0090D1 02:90C1: 80        .byte $80   ; 
- D 0 - I - 0x0090D2 02:90C2: 80        .byte $80   ; 
- D 0 - I - 0x0090D3 02:90C3: 80        .byte $80   ; 
- D 0 - I - 0x0090D4 02:90C4: 80        .byte $80   ; 
- D 0 - I - 0x0090D5 02:90C5: 80        .byte $80   ; 
- D 0 - I - 0x0090D6 02:90C6: 80        .byte $80   ; 
- D 0 - I - 0x0090D7 02:90C7: 80        .byte $80   ; 
- D 0 - I - 0x0090D8 02:90C8: 80        .byte $80   ; 
- D 0 - I - 0x0090D9 02:90C9: 80        .byte $80   ; 
- D 0 - I - 0x0090DA 02:90CA: 80        .byte $80   ; 
- D 0 - I - 0x0090DB 02:90CB: 80        .byte $80   ; 
- D 0 - I - 0x0090DC 02:90CC: 80        .byte $80   ; 
- D 0 - I - 0x0090DD 02:90CD: 20        .byte $20   ; 
- D 0 - I - 0x0090DE 02:90CE: A0        .byte $A0   ; 
- D 0 - I - 0x0090DF 02:90CF: 23        .byte $23   ; 
- D 0 - I - 0x0090E0 02:90D0: 80        .byte $80   ; 
- D 0 - I - 0x0090E1 02:90D1: 80        .byte $80   ; 
- D 0 - I - 0x0090E2 02:90D2: 80        .byte $80   ; 
- D 0 - I - 0x0090E3 02:90D3: 80        .byte $80   ; 
- D 0 - I - 0x0090E4 02:90D4: 80        .byte $80   ; 
- D 0 - I - 0x0090E5 02:90D5: 80        .byte $80   ; 
- D 0 - I - 0x0090E6 02:90D6: 80        .byte $80   ; 
- D 0 - I - 0x0090E7 02:90D7: 80        .byte $80   ; 
- D 0 - I - 0x0090E8 02:90D8: 80        .byte $80   ; 
- D 0 - I - 0x0090E9 02:90D9: 80        .byte $80   ; 
- D 0 - I - 0x0090EA 02:90DA: 80        .byte $80   ; 
- D 0 - I - 0x0090EB 02:90DB: 80        .byte $80   ; 
- D 0 - I - 0x0090EC 02:90DC: 80        .byte $80   ; 
- D 0 - I - 0x0090ED 02:90DD: 80        .byte $80   ; 
- D 0 - I - 0x0090EE 02:90DE: 80        .byte $80   ; 
- D 0 - I - 0x0090EF 02:90DF: 80        .byte $80   ; 
- D 0 - I - 0x0090F0 02:90E0: 80        .byte $80   ; 
- D 0 - I - 0x0090F1 02:90E1: 80        .byte $80   ; 
- D 0 - I - 0x0090F2 02:90E2: 80        .byte $80   ; 
- D 0 - I - 0x0090F3 02:90E3: 80        .byte $80   ; 
- D 0 - I - 0x0090F4 02:90E4: 80        .byte $80   ; 
- D 0 - I - 0x0090F5 02:90E5: 80        .byte $80   ; 
- D 0 - I - 0x0090F6 02:90E6: 80        .byte $80   ; 
- D 0 - I - 0x0090F7 02:90E7: 80        .byte $80   ; 
- D 0 - I - 0x0090F8 02:90E8: 80        .byte $80   ; 
- D 0 - I - 0x0090F9 02:90E9: 80        .byte $80   ; 
- D 0 - I - 0x0090FA 02:90EA: 80        .byte $80   ; 
- D 0 - I - 0x0090FB 02:90EB: 80        .byte $80   ; 
- D 0 - I - 0x0090FC 02:90EC: 80        .byte $80   ; 
- D 0 - I - 0x0090FD 02:90ED: 80        .byte $80   ; 
- D 0 - I - 0x0090FE 02:90EE: 80        .byte $80   ; 
- D 0 - I - 0x0090FF 02:90EF: 80        .byte $80   ; 
- D 0 - I - 0x009100 02:90F0: 20        .byte $20   ; 
- D 0 - I - 0x009101 02:90F1: C0        .byte $C0   ; 
- D 0 - I - 0x009102 02:90F2: 23        .byte $23   ; 
- D 0 - I - 0x009103 02:90F3: A0        .byte $A0   ; 
- D 0 - I - 0x009104 02:90F4: A0        .byte $A0   ; 
- D 0 - I - 0x009105 02:90F5: A0        .byte $A0   ; 
- D 0 - I - 0x009106 02:90F6: A0        .byte $A0   ; 
- D 0 - I - 0x009107 02:90F7: A0        .byte $A0   ; 
- D 0 - I - 0x009108 02:90F8: A0        .byte $A0   ; 
- D 0 - I - 0x009109 02:90F9: A0        .byte $A0   ; 
- D 0 - I - 0x00910A 02:90FA: A0        .byte $A0   ; 
- D 0 - I - 0x00910B 02:90FB: AA        .byte $AA   ; 
- D 0 - I - 0x00910C 02:90FC: AA        .byte $AA   ; 
- D 0 - I - 0x00910D 02:90FD: EA        .byte $EA   ; 
- D 0 - I - 0x00910E 02:90FE: FA        .byte $FA   ; 
- D 0 - I - 0x00910F 02:90FF: FA        .byte $FA   ; 
- D 0 - I - 0x009110 02:9100: BA        .byte $BA   ; 
- D 0 - I - 0x009111 02:9101: AA        .byte $AA   ; 
- D 0 - I - 0x009112 02:9102: AA        .byte $AA   ; 
- D 0 - I - 0x009113 02:9103: AA        .byte $AA   ; 
- D 0 - I - 0x009114 02:9104: FF        .byte $FF   ; 
- D 0 - I - 0x009115 02:9105: FF        .byte $FF   ; 
- D 0 - I - 0x009116 02:9106: FF        .byte $FF   ; 
- D 0 - I - 0x009117 02:9107: FF        .byte $FF   ; 
- D 0 - I - 0x009118 02:9108: FF        .byte $FF   ; 
- D 0 - I - 0x009119 02:9109: FF        .byte $FF   ; 
- D 0 - I - 0x00911A 02:910A: AA        .byte $AA   ; 
- D 0 - I - 0x00911B 02:910B: AA        .byte $AA   ; 
- D 0 - I - 0x00911C 02:910C: FF        .byte $FF   ; 
- D 0 - I - 0x00911D 02:910D: FF        .byte $FF   ; 
- D 0 - I - 0x00911E 02:910E: FF        .byte $FF   ; 
- D 0 - I - 0x00911F 02:910F: FF        .byte $FF   ; 
- D 0 - I - 0x009120 02:9110: FF        .byte $FF   ; 
- D 0 - I - 0x009121 02:9111: FF        .byte $FF   ; 
- D 0 - I - 0x009122 02:9112: AA        .byte $AA   ; 
- D 0 - I - 0x009123 02:9113: 20        .byte $20   ; 
- D 0 - I - 0x009124 02:9114: E0        .byte $E0   ; 
- D 0 - I - 0x009125 02:9115: 23        .byte $23   ; 
- D 0 - I - 0x009126 02:9116: FA        .byte $FA   ; 
- D 0 - I - 0x009127 02:9117: FF        .byte $FF   ; 
- D 0 - I - 0x009128 02:9118: FF        .byte $FF   ; 
- D 0 - I - 0x009129 02:9119: FF        .byte $FF   ; 
- D 0 - I - 0x00912A 02:911A: FF        .byte $FF   ; 
- D 0 - I - 0x00912B 02:911B: FF        .byte $FF   ; 
- D 0 - I - 0x00912C 02:911C: FF        .byte $FF   ; 
- D 0 - I - 0x00912D 02:911D: FA        .byte $FA   ; 
- D 0 - I - 0x00912E 02:911E: FF        .byte $FF   ; 
- D 0 - I - 0x00912F 02:911F: FF        .byte $FF   ; 
- D 0 - I - 0x009130 02:9120: FF        .byte $FF   ; 
- D 0 - I - 0x009131 02:9121: FF        .byte $FF   ; 
- D 0 - I - 0x009132 02:9122: FF        .byte $FF   ; 
- D 0 - I - 0x009133 02:9123: FF        .byte $FF   ; 
- D 0 - I - 0x009134 02:9124: FF        .byte $FF   ; 
- D 0 - I - 0x009135 02:9125: FF        .byte $FF   ; 
- D 0 - I - 0x009136 02:9126: 0F        .byte $0F   ; 
- D 0 - I - 0x009137 02:9127: 7F        .byte $7F   ; 
- D 0 - I - 0x009138 02:9128: 5F        .byte $5F   ; 
- D 0 - I - 0x009139 02:9129: 53        .byte $53   ; 
- D 0 - I - 0x00913A 02:912A: 5C        .byte $5C   ; 
- D 0 - I - 0x00913B 02:912B: 5F        .byte $5F   ; 
- D 0 - I - 0x00913C 02:912C: DF        .byte $DF   ; 
- D 0 - I - 0x00913D 02:912D: 0F        .byte $0F   ; 
- D 0 - I - 0x00913E 02:912E: 00        .byte $00   ; 
- D 0 - I - 0x00913F 02:912F: 00        .byte $00   ; 
- D 0 - I - 0x009140 02:9130: 00        .byte $00   ; 
- D 0 - I - 0x009141 02:9131: 00        .byte $00   ; 
- D 0 - I - 0x009142 02:9132: 00        .byte $00   ; 
- D 0 - I - 0x009143 02:9133: 00        .byte $00   ; 
- D 0 - I - 0x009144 02:9134: 00        .byte $00   ; 
- D 0 - I - 0x009145 02:9135: 00        .byte $00   ; 
- D 0 - I - 0x009146 02:9136: 00        .byte $00   ; 



tbl_9137:
- D 0 - I - 0x009147 02:9137: 09        .byte $09   ; 
- D 0 - I - 0x009148 02:9138: 47        .byte $47   ; 
- D 0 - I - 0x009149 02:9139: 23        .byte $23   ; 
- D 0 - I - 0x00914A 02:913A: 47        .byte $47   ; 
- D 0 - I - 0x00914B 02:913B: 41        .byte $41   ; 
- D 0 - I - 0x00914C 02:913C: 4D        .byte $4D   ; 
- D 0 - I - 0x00914D 02:913D: 45        .byte $45   ; 
- D 0 - I - 0x00914E 02:913E: 20        .byte $20   ; 
- D 0 - I - 0x00914F 02:913F: 54        .byte $54   ; 
- D 0 - I - 0x009150 02:9140: 49        .byte $49   ; 
- D 0 - I - 0x009151 02:9141: 4D        .byte $4D   ; 
- D 0 - I - 0x009152 02:9142: 45        .byte $45   ; 
- D 0 - I - 0x009153 02:9143: 00        .byte $00   ; 



tbl_9144:
- D 0 - I - 0x009154 02:9144: 02        .byte $02   ; 
- D 0 - I - 0x009155 02:9145: D9        .byte $D9   ; 
- D 0 - I - 0x009156 02:9146: 04        .byte $04   ; 
- D 0 - I - 0x009157 02:9147: F1        .byte $F1   ; 
- D 0 - I - 0x009158 02:9148: 5C        .byte $5C   ; 
- D 0 - I - 0x009159 02:9149: F7        .byte $F7   ; 
- D 0 - I - 0x00915A 02:914A: 04        .byte $04   ; 
- D 0 - I - 0x00915B 02:914B: E1        .byte $E1   ; 
- D 0 - I - 0x00915C 02:914C: 00        .byte $00   ; 
- D 0 - I - 0x00915D 02:914D: F7        .byte $F7   ; 
- D 0 - I - 0x00915E 02:914E: 45        .byte $45   ; 
- D 0 - I - 0x00915F 02:914F: F7        .byte $F7   ; 
- D 0 - I - 0x009160 02:9150: 01        .byte $01   ; 
- D 0 - I - 0x009161 02:9151: FF        .byte $FF   ; 
- D 0 - I - 0x009162 02:9152: 50        .byte $50   ; 
- D 0 - I - 0x009163 02:9153: FF        .byte $FF   ; 
- D 0 - I - 0x009164 02:9154: 04        .byte $04   ; 
- D 0 - I - 0x009165 02:9155: E9        .byte $E9   ; 
- D 0 - I - 0x009166 02:9156: 02        .byte $02   ; 
- D 0 - I - 0x009167 02:9157: F9        .byte $F9   ; 
- D 0 - I - 0x009168 02:9158: 47        .byte $47   ; 
- D 0 - I - 0x009169 02:9159: F9        .byte $F9   ; 
- D 0 - I - 0x00916A 02:915A: 03        .byte $03   ; 
- D 0 - I - 0x00916B 02:915B: 01        .byte $01   ; 
- D 0 - I - 0x00916C 02:915C: 52        .byte $52   ; 
- D 0 - I - 0x00916D 02:915D: 01        .byte $01   ; 
- D 0 - I - 0x00916E 02:915E: 07        .byte $07   ; 
- D 0 - I - 0x00916F 02:915F: F1        .byte $F1   ; 
- D 0 - I - 0x009170 02:9160: 08        .byte $08   ; 
- D 0 - I - 0x009171 02:9161: F9        .byte $F9   ; 
- D 0 - I - 0x009172 02:9162: 4D        .byte $4D   ; 
- D 0 - I - 0x009173 02:9163: F9        .byte $F9   ; 
- D 0 - I - 0x009174 02:9164: 09        .byte $09   ; 
- D 0 - I - 0x009175 02:9165: 01        .byte $01   ; 
- D 0 - I - 0x009176 02:9166: 58        .byte $58   ; 
- D 0 - I - 0x009177 02:9167: 01        .byte $01   ; 
- D 0 - I - 0x009178 02:9168: 0C        .byte $0C   ; 
- D 0 - I - 0x009179 02:9169: 09        .byte $09   ; 
- D 0 - I - 0x00917A 02:916A: 59        .byte $59   ; 
- D 0 - I - 0x00917B 02:916B: 09        .byte $09   ; 
- D 0 - I - 0x00917C 02:916C: 91        .byte $91   ; 
- D 0 - I - 0x00917D 02:916D: 09        .byte $09   ; 
- D 0 - I - 0x00917E 02:916E: 08        .byte $08   ; 
- D 0 - I - 0x00917F 02:916F: F9        .byte $F9   ; 
- D 0 - I - 0x009180 02:9170: 0A        .byte $0A   ; 
- D 0 - I - 0x009181 02:9171: F5        .byte $F5   ; 
- D 0 - I - 0x009182 02:9172: 0B        .byte $0B   ; 
- D 0 - I - 0x009183 02:9173: FD        .byte $FD   ; 
- D 0 - I - 0x009184 02:9174: 0E        .byte $0E   ; 
- D 0 - I - 0x009185 02:9175: 04        .byte $04   ; 
- D 0 - I - 0x009186 02:9176: 5E        .byte $5E   ; 
- D 0 - I - 0x009187 02:9177: F1        .byte $F1   ; 
- D 0 - I - 0x009188 02:9178: 4F        .byte $4F   ; 
- D 0 - I - 0x009189 02:9179: F9        .byte $F9   ; 
- D 0 - I - 0x00918A 02:917A: 5A        .byte $5A   ; 
- D 0 - I - 0x00918B 02:917B: 01        .byte $01   ; 
- D 0 - I - 0x00918C 02:917C: 5B        .byte $5B   ; 
- D 0 - I - 0x00918D 02:917D: 09        .byte $09   ; 
- D 0 - I - 0x00918E 02:917E: 93        .byte $93   ; 
- D 0 - I - 0x00918F 02:917F: 09        .byte $09   ; 
- D 0 - I - 0x009190 02:9180: 05        .byte $05   ; 
- D 0 - I - 0x009191 02:9181: 01        .byte $01   ; 
- D 0 - I - 0x009192 02:9182: 94        .byte $94   ; 
- D 0 - I - 0x009193 02:9183: F1        .byte $F1   ; 
- D 0 - I - 0x009194 02:9184: 20        .byte $20   ; 
- D 0 - I - 0x009195 02:9185: F5        .byte $F5   ; 
- D 0 - I - 0x009196 02:9186: 21        .byte $21   ; 
- D 0 - I - 0x009197 02:9187: FD        .byte $FD   ; 
- D 0 - I - 0x009198 02:9188: 64        .byte $64   ; 
- D 0 - I - 0x009199 02:9189: F3        .byte $F3   ; 
- D 0 - I - 0x00919A 02:918A: 65        .byte $65   ; 
- D 0 - I - 0x00919B 02:918B: FB        .byte $FB   ; 
- D 0 - I - 0x00919C 02:918C: 05        .byte $05   ; 
- D 0 - I - 0x00919D 02:918D: 09        .byte $09   ; 
- D 0 - I - 0x00919E 02:918E: 96        .byte $96   ; 
- D 0 - I - 0x00919F 02:918F: F1        .byte $F1   ; 
- D 0 - I - 0x0091A0 02:9190: 22        .byte $22   ; 
- D 0 - I - 0x0091A1 02:9191: F5        .byte $F5   ; 
- D 0 - I - 0x0091A2 02:9192: 23        .byte $23   ; 
- D 0 - I - 0x0091A3 02:9193: FD        .byte $FD   ; 
- D 0 - I - 0x0091A4 02:9194: 66        .byte $66   ; 
- D 0 - I - 0x0091A5 02:9195: F3        .byte $F3   ; 
- D 0 - I - 0x0091A6 02:9196: 67        .byte $67   ; 
- D 0 - I - 0x0091A7 02:9197: FB        .byte $FB   ; 
- D 0 - I - 0x0091A8 02:9198: 07        .byte $07   ; 
- D 0 - I - 0x0091A9 02:9199: 11        .byte $11   ; 
- D 0 - I - 0x0091AA 02:919A: 6C        .byte $6C   ; 
- D 0 - I - 0x0091AB 02:919B: F1        .byte $F1   ; 
- D 0 - I - 0x0091AC 02:919C: 95        .byte $95   ; 
- D 0 - I - 0x0091AD 02:919D: F1        .byte $F1   ; 
- D 0 - I - 0x0091AE 02:919E: EE        .byte $EE   ; 
- D 0 - I - 0x0091AF 02:919F: F1        .byte $F1   ; 
- D 0 - I - 0x0091B0 02:91A0: 06        .byte $06   ; 
- D 0 - I - 0x0091B1 02:91A1: F9        .byte $F9   ; 
- D 0 - I - 0x0091B2 02:91A2: 6D        .byte $6D   ; 
- D 0 - I - 0x0091B3 02:91A3: F9        .byte $F9   ; 
- D 0 - I - 0x0091B4 02:91A4: 97        .byte $97   ; 
- D 0 - I - 0x0091B5 02:91A5: F9        .byte $F9   ; 
- D 0 - I - 0x0091B6 02:91A6: EF        .byte $EF   ; 
- D 0 - I - 0x0091B7 02:91A7: F9        .byte $F9   ; 
- D 0 - I - 0x0091B8 02:91A8: 02        .byte $02   ; 
- D 0 - I - 0x0091B9 02:91A9: 19        .byte $19   ; 
- D 0 - I - 0x0091BA 02:91AA: E8        .byte $E8   ; 
- D 0 - I - 0x0091BB 02:91AB: F1        .byte $F1   ; 
- D 0 - I - 0x0091BC 02:91AC: E9        .byte $E9   ; 
- D 0 - I - 0x0091BD 02:91AD: F9        .byte $F9   ; 
- D 0 - I - 0x0091BE 02:91AE: 02        .byte $02   ; 
- D 0 - I - 0x0091BF 02:91AF: 21        .byte $21   ; 
- D 0 - I - 0x0091C0 02:91B0: EA        .byte $EA   ; 
- D 0 - I - 0x0091C1 02:91B1: F1        .byte $F1   ; 
- D 0 - I - 0x0091C2 02:91B2: EB        .byte $EB   ; 
- D 0 - I - 0x0091C3 02:91B3: F9        .byte $F9   ; 
- D 0 - I - 0x0091C4 02:91B4: 00        .byte $00   ; 



tbl_91B5_large_text:
; текст крупными буквами
- D 0 - - - 0x0091C5 02:91B5: 03 92     .word _off006_9203_00
- D 0 - - - 0x0091C7 02:91B7: 14 92     .word _off006_9214_01
- D 0 - - - 0x0091C9 02:91B9: 1F 92     .word _off006_921F_02
- D 0 - - - 0x0091CB 02:91BB: 2A 92     .word _off006_922A_03
- - - - - - 0x0091CD 02:91BD: 35 92     .word _off006_9235_04
- - - - - - 0x0091CF 02:91BF: 40 92     .word _off006_9240_05
- - - - - - 0x0091D1 02:91C1: 4B 92     .word _off006_924B_06
- - - - - - 0x0091D3 02:91C3: 56 92     .word _off006_9256_07
- - - - - - 0x0091D5 02:91C5: 61 92     .word _off006_9261_08
- - - - - - 0x0091D7 02:91C7: 6C 92     .word _off006_926C_09
- - - - - - 0x0091D9 02:91C9: 77 92     .word _off006_9277_0A
- - - - - - 0x0091DB 02:91CB: 83 92     .word _off006_9283_0B
- - - - - - 0x0091DD 02:91CD: 8F 92     .word _off006_928F_0C
- - - - - - 0x0091DF 02:91CF: 9B 92     .word _off006_929B_0D
- - - - - - 0x0091E1 02:91D1: A7 92     .word _off006_92A7_0E
- D 0 - - - 0x0091E3 02:91D3: B4 92     .word _off006_92B4_0F
- D 0 - - - 0x0091E5 02:91D5: C1 92     .word _off006_92C1_10
- D 0 - - - 0x0091E7 02:91D7: C9 92     .word _off006_92C9_11
- D 0 - - - 0x0091E9 02:91D9: DC 92     .word _off006_92DC_12
- D 0 - - - 0x0091EB 02:91DB: EF 92     .word _off006_92EF_13
- D 0 - - - 0x0091ED 02:91DD: 02 93     .word _off006_9302_14
- D 0 - - - 0x0091EF 02:91DF: 15 93     .word _off006_9315_15
- D 0 - - - 0x0091F1 02:91E1: 28 93     .word _off006_9328_16
- D 0 - - - 0x0091F3 02:91E3: 3B 93     .word _off006_933B_17
- D 0 - - - 0x0091F5 02:91E5: 4E 93     .word _off006_934E_18
- D 0 - - - 0x0091F7 02:91E7: 61 93     .word _off006_9361_19
- D 0 - - - 0x0091F9 02:91E9: 74 93     .word _off006_9374_1A
- D 0 - - - 0x0091FB 02:91EB: 87 93     .word _off006_9387_1B
- D 0 - - - 0x0091FD 02:91ED: 9A 93     .word _off006_939A_1C
- D 0 - - - 0x0091FF 02:91EF: AD 93     .word _off006_93AD_1D
- D 0 - - - 0x009201 02:91F1: C0 93     .word _off006_93C0_1E
- D 0 - - - 0x009203 02:91F3: D3 93     .word _off006_93D3_1F
- D 0 - - - 0x009205 02:91F5: E6 93     .word _off006_93E6_20
- D 0 - - - 0x009207 02:91F7: F1 93     .word _off006_93F1_21
- D 0 - - - 0x009209 02:91F9: F8 93     .word _off006_93F8_22
- D 0 - - - 0x00920B 02:91FB: 0B 94     .word _off006_940B_23
- - - - - - 0x00920D 02:91FD: 1E 94     .word _off006_941E_24
- - - - - - 0x00920F 02:91FF: 31 94     .word _off006_9431_25
- D 0 - - - 0x009211 02:9201: 44 94     .word _off006_9444_26



_off006_9203_00:
- D 0 - I - 0x009213 02:9203: C2        .byte $C2   ; 
- D 0 - I - 0x009214 02:9204: 20        .byte $20   ; 
- D 0 - I - 0x009215 02:9205: 54        .byte $54   ; 
- D 0 - I - 0x009216 02:9206: 45        .byte $45   ; 
- D 0 - I - 0x009217 02:9207: 43        .byte $43   ; 
- D 0 - I - 0x009218 02:9208: 4D        .byte $4D   ; 
- D 0 - I - 0x009219 02:9209: 4F        .byte $4F   ; 
- D 0 - I - 0x00921A 02:920A: 20        .byte $20   ; 
- D 0 - I - 0x00921B 02:920B: 57        .byte $57   ; 
- D 0 - I - 0x00921C 02:920C: 4F        .byte $4F   ; 
- D 0 - I - 0x00921D 02:920D: 52        .byte $52   ; 
- D 0 - I - 0x00921E 02:920E: 4C        .byte $4C   ; 
- D 0 - I - 0x00921F 02:920F: 44        .byte $44   ; 
- D 0 - I - 0x009220 02:9210: 43        .byte $43   ; 
- D 0 - I - 0x009221 02:9211: 55        .byte $55   ; 
- D 0 - I - 0x009222 02:9212: 50        .byte $50   ; 
- D 0 - I - 0x009223 02:9213: FF        .byte $FF   ; 



_off006_9214_01:
- D 0 - I - 0x009224 02:9214: C8        .byte $C8   ; 
- D 0 - I - 0x009225 02:9215: 22        .byte $22   ; 
- D 0 - I - 0x009226 02:9216: 31        .byte $31   ; 
- D 0 - I - 0x009227 02:9217: 53        .byte $53   ; 
- D 0 - I - 0x009228 02:9218: 54        .byte $54   ; 
- D 0 - I - 0x009229 02:9219: 20        .byte $20   ; 
- D 0 - I - 0x00922A 02:921A: 47        .byte $47   ; 
- D 0 - I - 0x00922B 02:921B: 41        .byte $41   ; 
- D 0 - I - 0x00922C 02:921C: 4D        .byte $4D   ; 
- D 0 - I - 0x00922D 02:921D: 45        .byte $45   ; 
- D 0 - I - 0x00922E 02:921E: FF        .byte $FF   ; 



_off006_921F_02:
- D 0 - I - 0x00922F 02:921F: C8        .byte $C8   ; 
- D 0 - I - 0x009230 02:9220: 22        .byte $22   ; 
- D 0 - I - 0x009231 02:9221: 32        .byte $32   ; 
- D 0 - I - 0x009232 02:9222: 4E        .byte $4E   ; 
- D 0 - I - 0x009233 02:9223: 44        .byte $44   ; 
- D 0 - I - 0x009234 02:9224: 20        .byte $20   ; 
- D 0 - I - 0x009235 02:9225: 47        .byte $47   ; 
- D 0 - I - 0x009236 02:9226: 41        .byte $41   ; 
- D 0 - I - 0x009237 02:9227: 4D        .byte $4D   ; 
- D 0 - I - 0x009238 02:9228: 45        .byte $45   ; 
- D 0 - I - 0x009239 02:9229: FF        .byte $FF   ; 



_off006_922A_03:
- D 0 - I - 0x00923A 02:922A: C8        .byte $C8   ; 
- D 0 - I - 0x00923B 02:922B: 22        .byte $22   ; 
- D 0 - I - 0x00923C 02:922C: 33        .byte $33   ; 
- D 0 - I - 0x00923D 02:922D: 52        .byte $52   ; 
- D 0 - I - 0x00923E 02:922E: 44        .byte $44   ; 
- D 0 - I - 0x00923F 02:922F: 20        .byte $20   ; 
- D 0 - I - 0x009240 02:9230: 47        .byte $47   ; 
- D 0 - I - 0x009241 02:9231: 41        .byte $41   ; 
- D 0 - I - 0x009242 02:9232: 4D        .byte $4D   ; 
- D 0 - I - 0x009243 02:9233: 45        .byte $45   ; 
- D 0 - I - 0x009244 02:9234: FF        .byte $FF   ; 



_off006_9235_04:
- - - - - - 0x009245 02:9235: C8        .byte $C8   ; 
- - - - - - 0x009246 02:9236: 22        .byte $22   ; 
- - - - - - 0x009247 02:9237: 34        .byte $34   ; 
- - - - - - 0x009248 02:9238: 54        .byte $54   ; 
- - - - - - 0x009249 02:9239: 48        .byte $48   ; 
- - - - - - 0x00924A 02:923A: 20        .byte $20   ; 
- - - - - - 0x00924B 02:923B: 47        .byte $47   ; 
- - - - - - 0x00924C 02:923C: 41        .byte $41   ; 
- - - - - - 0x00924D 02:923D: 4D        .byte $4D   ; 
- - - - - - 0x00924E 02:923E: 45        .byte $45   ; 
- - - - - - 0x00924F 02:923F: FF        .byte $FF   ; 



_off006_9240_05:
- - - - - - 0x009250 02:9240: C8        .byte $C8   ; 
- - - - - - 0x009251 02:9241: 22        .byte $22   ; 
- - - - - - 0x009252 02:9242: 35        .byte $35   ; 
- - - - - - 0x009253 02:9243: 54        .byte $54   ; 
- - - - - - 0x009254 02:9244: 48        .byte $48   ; 
- - - - - - 0x009255 02:9245: 20        .byte $20   ; 
- - - - - - 0x009256 02:9246: 47        .byte $47   ; 
- - - - - - 0x009257 02:9247: 41        .byte $41   ; 
- - - - - - 0x009258 02:9248: 4D        .byte $4D   ; 
- - - - - - 0x009259 02:9249: 45        .byte $45   ; 
- - - - - - 0x00925A 02:924A: FF        .byte $FF   ; 



_off006_924B_06:
- - - - - - 0x00925B 02:924B: C8        .byte $C8   ; 
- - - - - - 0x00925C 02:924C: 22        .byte $22   ; 
- - - - - - 0x00925D 02:924D: 36        .byte $36   ; 
- - - - - - 0x00925E 02:924E: 54        .byte $54   ; 
- - - - - - 0x00925F 02:924F: 48        .byte $48   ; 
- - - - - - 0x009260 02:9250: 20        .byte $20   ; 
- - - - - - 0x009261 02:9251: 47        .byte $47   ; 
- - - - - - 0x009262 02:9252: 41        .byte $41   ; 
- - - - - - 0x009263 02:9253: 4D        .byte $4D   ; 
- - - - - - 0x009264 02:9254: 45        .byte $45   ; 
- - - - - - 0x009265 02:9255: FF        .byte $FF   ; 



_off006_9256_07:
- - - - - - 0x009266 02:9256: C8        .byte $C8   ; 
- - - - - - 0x009267 02:9257: 22        .byte $22   ; 
- - - - - - 0x009268 02:9258: 37        .byte $37   ; 
- - - - - - 0x009269 02:9259: 54        .byte $54   ; 
- - - - - - 0x00926A 02:925A: 48        .byte $48   ; 
- - - - - - 0x00926B 02:925B: 20        .byte $20   ; 
- - - - - - 0x00926C 02:925C: 47        .byte $47   ; 
- - - - - - 0x00926D 02:925D: 41        .byte $41   ; 
- - - - - - 0x00926E 02:925E: 4D        .byte $4D   ; 
- - - - - - 0x00926F 02:925F: 45        .byte $45   ; 
- - - - - - 0x009270 02:9260: FF        .byte $FF   ; 



_off006_9261_08:
- - - - - - 0x009271 02:9261: C8        .byte $C8   ; 
- - - - - - 0x009272 02:9262: 22        .byte $22   ; 
- - - - - - 0x009273 02:9263: 38        .byte $38   ; 
- - - - - - 0x009274 02:9264: 54        .byte $54   ; 
- - - - - - 0x009275 02:9265: 48        .byte $48   ; 
- - - - - - 0x009276 02:9266: 20        .byte $20   ; 
- - - - - - 0x009277 02:9267: 47        .byte $47   ; 
- - - - - - 0x009278 02:9268: 41        .byte $41   ; 
- - - - - - 0x009279 02:9269: 4D        .byte $4D   ; 
- - - - - - 0x00927A 02:926A: 45        .byte $45   ; 
- - - - - - 0x00927B 02:926B: FF        .byte $FF   ; 



_off006_926C_09:
- - - - - - 0x00927C 02:926C: C8        .byte $C8   ; 
- - - - - - 0x00927D 02:926D: 22        .byte $22   ; 
- - - - - - 0x00927E 02:926E: 39        .byte $39   ; 
- - - - - - 0x00927F 02:926F: 54        .byte $54   ; 
- - - - - - 0x009280 02:9270: 48        .byte $48   ; 
- - - - - - 0x009281 02:9271: 20        .byte $20   ; 
- - - - - - 0x009282 02:9272: 47        .byte $47   ; 
- - - - - - 0x009283 02:9273: 41        .byte $41   ; 
- - - - - - 0x009284 02:9274: 4D        .byte $4D   ; 
- - - - - - 0x009285 02:9275: 45        .byte $45   ; 
- - - - - - 0x009286 02:9276: FF        .byte $FF   ; 



_off006_9277_0A:
- - - - - - 0x009287 02:9277: C7        .byte $C7   ; 
- - - - - - 0x009288 02:9278: 22        .byte $22   ; 
- - - - - - 0x009289 02:9279: 31        .byte $31   ; 
- - - - - - 0x00928A 02:927A: 30        .byte $30   ; 
- - - - - - 0x00928B 02:927B: 54        .byte $54   ; 
- - - - - - 0x00928C 02:927C: 48        .byte $48   ; 
- - - - - - 0x00928D 02:927D: 20        .byte $20   ; 
- - - - - - 0x00928E 02:927E: 47        .byte $47   ; 
- - - - - - 0x00928F 02:927F: 41        .byte $41   ; 
- - - - - - 0x009290 02:9280: 4D        .byte $4D   ; 
- - - - - - 0x009291 02:9281: 45        .byte $45   ; 
- - - - - - 0x009292 02:9282: FF        .byte $FF   ; 



_off006_9283_0B:
- - - - - - 0x009293 02:9283: C7        .byte $C7   ; 
- - - - - - 0x009294 02:9284: 22        .byte $22   ; 
- - - - - - 0x009295 02:9285: 31        .byte $31   ; 
- - - - - - 0x009296 02:9286: 31        .byte $31   ; 
- - - - - - 0x009297 02:9287: 54        .byte $54   ; 
- - - - - - 0x009298 02:9288: 48        .byte $48   ; 
- - - - - - 0x009299 02:9289: 20        .byte $20   ; 
- - - - - - 0x00929A 02:928A: 47        .byte $47   ; 
- - - - - - 0x00929B 02:928B: 41        .byte $41   ; 
- - - - - - 0x00929C 02:928C: 4D        .byte $4D   ; 
- - - - - - 0x00929D 02:928D: 45        .byte $45   ; 
- - - - - - 0x00929E 02:928E: FF        .byte $FF   ; 



_off006_928F_0C:
- - - - - - 0x00929F 02:928F: C7        .byte $C7   ; 
- - - - - - 0x0092A0 02:9290: 22        .byte $22   ; 
- - - - - - 0x0092A1 02:9291: 31        .byte $31   ; 
- - - - - - 0x0092A2 02:9292: 32        .byte $32   ; 
- - - - - - 0x0092A3 02:9293: 54        .byte $54   ; 
- - - - - - 0x0092A4 02:9294: 48        .byte $48   ; 
- - - - - - 0x0092A5 02:9295: 20        .byte $20   ; 
- - - - - - 0x0092A6 02:9296: 47        .byte $47   ; 
- - - - - - 0x0092A7 02:9297: 41        .byte $41   ; 
- - - - - - 0x0092A8 02:9298: 4D        .byte $4D   ; 
- - - - - - 0x0092A9 02:9299: 45        .byte $45   ; 
- - - - - - 0x0092AA 02:929A: FF        .byte $FF   ; 



_off006_929B_0D:
- - - - - - 0x0092AB 02:929B: C7        .byte $C7   ; 
- - - - - - 0x0092AC 02:929C: 22        .byte $22   ; 
- - - - - - 0x0092AD 02:929D: 31        .byte $31   ; 
- - - - - - 0x0092AE 02:929E: 33        .byte $33   ; 
- - - - - - 0x0092AF 02:929F: 54        .byte $54   ; 
- - - - - - 0x0092B0 02:92A0: 48        .byte $48   ; 
- - - - - - 0x0092B1 02:92A1: 20        .byte $20   ; 
- - - - - - 0x0092B2 02:92A2: 47        .byte $47   ; 
- - - - - - 0x0092B3 02:92A3: 41        .byte $41   ; 
- - - - - - 0x0092B4 02:92A4: 4D        .byte $4D   ; 
- - - - - - 0x0092B5 02:92A5: 45        .byte $45   ; 
- - - - - - 0x0092B6 02:92A6: FF        .byte $FF   ; 



_off006_92A7_0E:
- - - - - - 0x0092B7 02:92A7: C6        .byte $C6   ; 
- - - - - - 0x0092B8 02:92A8: 22        .byte $22   ; 
- - - - - - 0x0092B9 02:92A9: 53        .byte $53   ; 
- - - - - - 0x0092BA 02:92AA: 45        .byte $45   ; 
- - - - - - 0x0092BB 02:92AB: 4D        .byte $4D   ; 
- - - - - - 0x0092BC 02:92AC: 49        .byte $49   ; 
- - - - - - 0x0092BD 02:92AD: 2D        .byte $2D   ; 
- - - - - - 0x0092BE 02:92AE: 46        .byte $46   ; 
- - - - - - 0x0092BF 02:92AF: 49        .byte $49   ; 
- - - - - - 0x0092C0 02:92B0: 4E        .byte $4E   ; 
- - - - - - 0x0092C1 02:92B1: 41        .byte $41   ; 
- - - - - - 0x0092C2 02:92B2: 4C        .byte $4C   ; 
- - - - - - 0x0092C3 02:92B3: FF        .byte $FF   ; 



_off006_92B4_0F:
- D 0 - I - 0x0092C4 02:92B4: C6        .byte $C6   ; 
- D 0 - I - 0x0092C5 02:92B5: 22        .byte $22   ; 
- D 0 - I - 0x0092C6 02:92B6: 46        .byte $46   ; 
- D 0 - I - 0x0092C7 02:92B7: 49        .byte $49   ; 
- D 0 - I - 0x0092C8 02:92B8: 4E        .byte $4E   ; 
- D 0 - I - 0x0092C9 02:92B9: 41        .byte $41   ; 
- D 0 - I - 0x0092CA 02:92BA: 4C        .byte $4C   ; 
- D 0 - I - 0x0092CB 02:92BB: 20        .byte $20   ; 
- D 0 - I - 0x0092CC 02:92BC: 47        .byte $47   ; 
- D 0 - I - 0x0092CD 02:92BD: 41        .byte $41   ; 
- D 0 - I - 0x0092CE 02:92BE: 4D        .byte $4D   ; 
- D 0 - I - 0x0092CF 02:92BF: 45        .byte $45   ; 
- D 0 - I - 0x0092D0 02:92C0: FF        .byte $FF   ; 



_off006_92C1_10:
- D 0 - I - 0x0092D1 02:92C1: CB        .byte $CB   ; 
- D 0 - I - 0x0092D2 02:92C2: 22        .byte $22   ; 
- D 0 - I - 0x0092D3 02:92C3: 53        .byte $53   ; 
- D 0 - I - 0x0092D4 02:92C4: 54        .byte $54   ; 
- D 0 - I - 0x0092D5 02:92C5: 41        .byte $41   ; 
- D 0 - I - 0x0092D6 02:92C6: 46        .byte $46   ; 
- D 0 - I - 0x0092D7 02:92C7: 46        .byte $46   ; 
- D 0 - I - 0x0092D8 02:92C8: FF        .byte $FF   ; 



_off006_92C9_11:
- D 0 - I - 0x0092D9 02:92C9: 00        .byte $00   ; 
- D 0 - I - 0x0092DA 02:92CA: 00        .byte $00   ; 
- D 0 - I - 0x0092DB 02:92CB: 20        .byte $20   ; 
- D 0 - I - 0x0092DC 02:92CC: 20        .byte $20   ; 
- D 0 - I - 0x0092DD 02:92CD: 20        .byte $20   ; 
- D 0 - I - 0x0092DE 02:92CE: 20        .byte $20   ; 
- D 0 - I - 0x0092DF 02:92CF: 20        .byte $20   ; 
- D 0 - I - 0x0092E0 02:92D0: 20        .byte $20   ; 
- D 0 - I - 0x0092E1 02:92D1: 20        .byte $20   ; 
- D 0 - I - 0x0092E2 02:92D2: 20        .byte $20   ; 
- D 0 - I - 0x0092E3 02:92D3: 20        .byte $20   ; 
- D 0 - I - 0x0092E4 02:92D4: 20        .byte $20   ; 
- D 0 - I - 0x0092E5 02:92D5: 20        .byte $20   ; 
- D 0 - I - 0x0092E6 02:92D6: 20        .byte $20   ; 
- D 0 - I - 0x0092E7 02:92D7: 20        .byte $20   ; 
- D 0 - I - 0x0092E8 02:92D8: 20        .byte $20   ; 
- D 0 - I - 0x0092E9 02:92D9: 20        .byte $20   ; 
- D 0 - I - 0x0092EA 02:92DA: 20        .byte $20   ; 
- D 0 - I - 0x0092EB 02:92DB: FF        .byte $FF   ; 



_off006_92DC_12:
- D 0 - I - 0x0092EC 02:92DC: 01        .byte $01   ; 
- D 0 - I - 0x0092ED 02:92DD: 00        .byte $00   ; 
- D 0 - I - 0x0092EE 02:92DE: 20        .byte $20   ; 
- D 0 - I - 0x0092EF 02:92DF: 20        .byte $20   ; 
- D 0 - I - 0x0092F0 02:92E0: 20        .byte $20   ; 
- D 0 - I - 0x0092F1 02:92E1: 20        .byte $20   ; 
- D 0 - I - 0x0092F2 02:92E2: 41        .byte $41   ; 
- D 0 - I - 0x0092F3 02:92E3: 44        .byte $44   ; 
- D 0 - I - 0x0092F4 02:92E4: 56        .byte $56   ; 
- D 0 - I - 0x0092F5 02:92E5: 49        .byte $49   ; 
- D 0 - I - 0x0092F6 02:92E6: 53        .byte $53   ; 
- D 0 - I - 0x0092F7 02:92E7: 45        .byte $45   ; 
- D 0 - I - 0x0092F8 02:92E8: 52        .byte $52   ; 
- D 0 - I - 0x0092F9 02:92E9: 20        .byte $20   ; 
- D 0 - I - 0x0092FA 02:92EA: 20        .byte $20   ; 
- D 0 - I - 0x0092FB 02:92EB: 20        .byte $20   ; 
- D 0 - I - 0x0092FC 02:92EC: 20        .byte $20   ; 
- D 0 - I - 0x0092FD 02:92ED: 20        .byte $20   ; 
- D 0 - I - 0x0092FE 02:92EE: FF        .byte $FF   ; 



_off006_92EF_13:
- D 0 - I - 0x0092FF 02:92EF: 01        .byte $01   ; 
- D 0 - I - 0x009300 02:92F0: 00        .byte $00   ; 
- D 0 - I - 0x009301 02:92F1: 20        .byte $20   ; 
- D 0 - I - 0x009302 02:92F2: 20        .byte $20   ; 
- D 0 - I - 0x009303 02:92F3: 20        .byte $20   ; 
- D 0 - I - 0x009304 02:92F4: 20        .byte $20   ; 
- D 0 - I - 0x009305 02:92F5: 53        .byte $53   ; 
- D 0 - I - 0x009306 02:92F6: 2E        .byte $2E   ; 
- D 0 - I - 0x009307 02:92F7: 54        .byte $54   ; 
- D 0 - I - 0x009308 02:92F8: 4F        .byte $4F   ; 
- D 0 - I - 0x009309 02:92F9: 4D        .byte $4D   ; 
- D 0 - I - 0x00930A 02:92FA: 49        .byte $49   ; 
- D 0 - I - 0x00930B 02:92FB: 45        .byte $45   ; 
- D 0 - I - 0x00930C 02:92FC: 20        .byte $20   ; 
- D 0 - I - 0x00930D 02:92FD: 20        .byte $20   ; 
- D 0 - I - 0x00930E 02:92FE: 20        .byte $20   ; 
- D 0 - I - 0x00930F 02:92FF: 20        .byte $20   ; 
- D 0 - I - 0x009310 02:9300: 20        .byte $20   ; 
- D 0 - I - 0x009311 02:9301: FF        .byte $FF   ; 



_off006_9302_14:
- D 0 - I - 0x009312 02:9302: 01        .byte $01   ; 
- D 0 - I - 0x009313 02:9303: 00        .byte $00   ; 
- D 0 - I - 0x009314 02:9304: 20        .byte $20   ; 
- D 0 - I - 0x009315 02:9305: 20        .byte $20   ; 
- D 0 - I - 0x009316 02:9306: 20        .byte $20   ; 
- D 0 - I - 0x009317 02:9307: 20        .byte $20   ; 
- D 0 - I - 0x009318 02:9308: 50        .byte $50   ; 
- D 0 - I - 0x009319 02:9309: 4C        .byte $4C   ; 
- D 0 - I - 0x00931A 02:930A: 41        .byte $41   ; 
- D 0 - I - 0x00931B 02:930B: 4E        .byte $4E   ; 
- D 0 - I - 0x00931C 02:930C: 4E        .byte $4E   ; 
- D 0 - I - 0x00931D 02:930D: 45        .byte $45   ; 
- D 0 - I - 0x00931E 02:930E: 52        .byte $52   ; 
- D 0 - I - 0x00931F 02:930F: 20        .byte $20   ; 
- D 0 - I - 0x009320 02:9310: 20        .byte $20   ; 
- D 0 - I - 0x009321 02:9311: 20        .byte $20   ; 
- D 0 - I - 0x009322 02:9312: 20        .byte $20   ; 
- D 0 - I - 0x009323 02:9313: 20        .byte $20   ; 
- D 0 - I - 0x009324 02:9314: FF        .byte $FF   ; 



_off006_9315_15:
- D 0 - I - 0x009325 02:9315: 01        .byte $01   ; 
- D 0 - I - 0x009326 02:9316: 00        .byte $00   ; 
- D 0 - I - 0x009327 02:9317: 20        .byte $20   ; 
- D 0 - I - 0x009328 02:9318: 20        .byte $20   ; 
- D 0 - I - 0x009329 02:9319: 20        .byte $20   ; 
- D 0 - I - 0x00932A 02:931A: 20        .byte $20   ; 
- D 0 - I - 0x00932B 02:931B: 20        .byte $20   ; 
- D 0 - I - 0x00932C 02:931C: 20        .byte $20   ; 
- D 0 - I - 0x00932D 02:931D: 41        .byte $41   ; 
- D 0 - I - 0x00932E 02:931E: 4E        .byte $4E   ; 
- D 0 - I - 0x00932F 02:931F: 44        .byte $44   ; 
- D 0 - I - 0x009330 02:9320: 20        .byte $20   ; 
- D 0 - I - 0x009331 02:9321: 20        .byte $20   ; 
- D 0 - I - 0x009332 02:9322: 20        .byte $20   ; 
- D 0 - I - 0x009333 02:9323: 20        .byte $20   ; 
- D 0 - I - 0x009334 02:9324: 20        .byte $20   ; 
- D 0 - I - 0x009335 02:9325: 20        .byte $20   ; 
- D 0 - I - 0x009336 02:9326: 20        .byte $20   ; 
- D 0 - I - 0x009337 02:9327: FF        .byte $FF   ; 



_off006_9328_16:
- D 0 - I - 0x009338 02:9328: 00        .byte $00   ; 
- D 0 - I - 0x009339 02:9329: 00        .byte $00   ; 
- D 0 - I - 0x00933A 02:932A: 20        .byte $20   ; 
- D 0 - I - 0x00933B 02:932B: 20        .byte $20   ; 
- D 0 - I - 0x00933C 02:932C: 20        .byte $20   ; 
- D 0 - I - 0x00933D 02:932D: 20        .byte $20   ; 
- D 0 - I - 0x00933E 02:932E: 50        .byte $50   ; 
- D 0 - I - 0x00933F 02:932F: 49        .byte $49   ; 
- D 0 - I - 0x009340 02:9330: 43        .byte $43   ; 
- D 0 - I - 0x009341 02:9331: 54        .byte $54   ; 
- D 0 - I - 0x009342 02:9332: 55        .byte $55   ; 
- D 0 - I - 0x009343 02:9333: 52        .byte $52   ; 
- D 0 - I - 0x009344 02:9334: 45        .byte $45   ; 
- D 0 - I - 0x009345 02:9335: 53        .byte $53   ; 
- D 0 - I - 0x009346 02:9336: 20        .byte $20   ; 
- D 0 - I - 0x009347 02:9337: 20        .byte $20   ; 
- D 0 - I - 0x009348 02:9338: 20        .byte $20   ; 
- D 0 - I - 0x009349 02:9339: 20        .byte $20   ; 
- D 0 - I - 0x00934A 02:933A: FF        .byte $FF   ; 



_off006_933B_17:
- D 0 - I - 0x00934B 02:933B: 00        .byte $00   ; 
- D 0 - I - 0x00934C 02:933C: 00        .byte $00   ; 
- D 0 - I - 0x00934D 02:933D: 20        .byte $20   ; 
- D 0 - I - 0x00934E 02:933E: 20        .byte $20   ; 
- D 0 - I - 0x00934F 02:933F: 20        .byte $20   ; 
- D 0 - I - 0x009350 02:9340: 20        .byte $20   ; 
- D 0 - I - 0x009351 02:9341: 20        .byte $20   ; 
- D 0 - I - 0x009352 02:9342: 4B        .byte $4B   ; 
- D 0 - I - 0x009353 02:9343: 2E        .byte $2E   ; 
- D 0 - I - 0x009354 02:9344: 55        .byte $55   ; 
- D 0 - I - 0x009355 02:9345: 45        .byte $45   ; 
- D 0 - I - 0x009356 02:9346: 44        .byte $44   ; 
- D 0 - I - 0x009357 02:9347: 41        .byte $41   ; 
- D 0 - I - 0x009358 02:9348: 20        .byte $20   ; 
- D 0 - I - 0x009359 02:9349: 20        .byte $20   ; 
- D 0 - I - 0x00935A 02:934A: 20        .byte $20   ; 
- D 0 - I - 0x00935B 02:934B: 20        .byte $20   ; 
- D 0 - I - 0x00935C 02:934C: 20        .byte $20   ; 
- D 0 - I - 0x00935D 02:934D: FF        .byte $FF   ; 



_off006_934E_18:
- D 0 - I - 0x00935E 02:934E: 01        .byte $01   ; 
- D 0 - I - 0x00935F 02:934F: 00        .byte $00   ; 
- D 0 - I - 0x009360 02:9350: 20        .byte $20   ; 
- D 0 - I - 0x009361 02:9351: 20        .byte $20   ; 
- D 0 - I - 0x009362 02:9352: 20        .byte $20   ; 
- D 0 - I - 0x009363 02:9353: 20        .byte $20   ; 
- D 0 - I - 0x009364 02:9354: 20        .byte $20   ; 
- D 0 - I - 0x009365 02:9355: 53        .byte $53   ; 
- D 0 - I - 0x009366 02:9356: 4F        .byte $4F   ; 
- D 0 - I - 0x009367 02:9357: 55        .byte $55   ; 
- D 0 - I - 0x009368 02:9358: 4E        .byte $4E   ; 
- D 0 - I - 0x009369 02:9359: 44        .byte $44   ; 
- D 0 - I - 0x00936A 02:935A: 20        .byte $20   ; 
- D 0 - I - 0x00936B 02:935B: 20        .byte $20   ; 
- D 0 - I - 0x00936C 02:935C: 20        .byte $20   ; 
- D 0 - I - 0x00936D 02:935D: 20        .byte $20   ; 
- D 0 - I - 0x00936E 02:935E: 20        .byte $20   ; 
- D 0 - I - 0x00936F 02:935F: 20        .byte $20   ; 
- D 0 - I - 0x009370 02:9360: FF        .byte $FF   ; 



_off006_9361_19:
- D 0 - I - 0x009371 02:9361: 01        .byte $01   ; 
- D 0 - I - 0x009372 02:9362: 00        .byte $00   ; 
- D 0 - I - 0x009373 02:9363: 20        .byte $20   ; 
- D 0 - I - 0x009374 02:9364: 20        .byte $20   ; 
- D 0 - I - 0x009375 02:9365: 20        .byte $20   ; 
- D 0 - I - 0x009376 02:9366: 20        .byte $20   ; 
- D 0 - I - 0x009377 02:9367: 52        .byte $52   ; 
- D 0 - I - 0x009378 02:9368: 2E        .byte $2E   ; 
- D 0 - I - 0x009379 02:9369: 4E        .byte $4E   ; 
- D 0 - I - 0x00937A 02:936A: 49        .byte $49   ; 
- D 0 - I - 0x00937B 02:936B: 54        .byte $54   ; 
- D 0 - I - 0x00937C 02:936C: 54        .byte $54   ; 
- D 0 - I - 0x00937D 02:936D: 41        .byte $41   ; 
- D 0 - I - 0x00937E 02:936E: 20        .byte $20   ; 
- D 0 - I - 0x00937F 02:936F: 20        .byte $20   ; 
- D 0 - I - 0x009380 02:9370: 20        .byte $20   ; 
- D 0 - I - 0x009381 02:9371: 20        .byte $20   ; 
- D 0 - I - 0x009382 02:9372: 20        .byte $20   ; 
- D 0 - I - 0x009383 02:9373: FF        .byte $FF   ; 



_off006_9374_1A:
- D 0 - I - 0x009384 02:9374: 00        .byte $00   ; 
- D 0 - I - 0x009385 02:9375: 00        .byte $00   ; 
- D 0 - I - 0x009386 02:9376: 20        .byte $20   ; 
- D 0 - I - 0x009387 02:9377: 20        .byte $20   ; 
- D 0 - I - 0x009388 02:9378: 20        .byte $20   ; 
- D 0 - I - 0x009389 02:9379: 50        .byte $50   ; 
- D 0 - I - 0x00938A 02:937A: 52        .byte $52   ; 
- D 0 - I - 0x00938B 02:937B: 4F        .byte $4F   ; 
- D 0 - I - 0x00938C 02:937C: 47        .byte $47   ; 
- D 0 - I - 0x00938D 02:937D: 52        .byte $52   ; 
- D 0 - I - 0x00938E 02:937E: 41        .byte $41   ; 
- D 0 - I - 0x00938F 02:937F: 4D        .byte $4D   ; 
- D 0 - I - 0x009390 02:9380: 4D        .byte $4D   ; 
- D 0 - I - 0x009391 02:9381: 45        .byte $45   ; 
- D 0 - I - 0x009392 02:9382: 52        .byte $52   ; 
- D 0 - I - 0x009393 02:9383: 20        .byte $20   ; 
- D 0 - I - 0x009394 02:9384: 20        .byte $20   ; 
- D 0 - I - 0x009395 02:9385: 20        .byte $20   ; 
- D 0 - I - 0x009396 02:9386: FF        .byte $FF   ; 



_off006_9387_1B:
- D 0 - I - 0x009397 02:9387: 01        .byte $01   ; 
- D 0 - I - 0x009398 02:9388: 00        .byte $00   ; 
- D 0 - I - 0x009399 02:9389: 20        .byte $20   ; 
- D 0 - I - 0x00939A 02:938A: 20        .byte $20   ; 
- D 0 - I - 0x00939B 02:938B: 20        .byte $20   ; 
- D 0 - I - 0x00939C 02:938C: 20        .byte $20   ; 
- D 0 - I - 0x00939D 02:938D: 59        .byte $59   ; 
- D 0 - I - 0x00939E 02:938E: 2E        .byte $2E   ; 
- D 0 - I - 0x00939F 02:938F: 49        .byte $49   ; 
- D 0 - I - 0x0093A0 02:9390: 4E        .byte $4E   ; 
- D 0 - I - 0x0093A1 02:9391: 4F        .byte $4F   ; 
- D 0 - I - 0x0093A2 02:9392: 53        .byte $53   ; 
- D 0 - I - 0x0093A3 02:9393: 45        .byte $45   ; 
- D 0 - I - 0x0093A4 02:9394: 20        .byte $20   ; 
- D 0 - I - 0x0093A5 02:9395: 20        .byte $20   ; 
- D 0 - I - 0x0093A6 02:9396: 20        .byte $20   ; 
- D 0 - I - 0x0093A7 02:9397: 20        .byte $20   ; 
- D 0 - I - 0x0093A8 02:9398: 20        .byte $20   ; 
- D 0 - I - 0x0093A9 02:9399: FF        .byte $FF   ; 



_off006_939A_1C:
- D 0 - I - 0x0093AA 02:939A: 00        .byte $00   ; 
- D 0 - I - 0x0093AB 02:939B: 00        .byte $00   ; 
- D 0 - I - 0x0093AC 02:939C: 20        .byte $20   ; 
- D 0 - I - 0x0093AD 02:939D: 20        .byte $20   ; 
- D 0 - I - 0x0093AE 02:939E: 20        .byte $20   ; 
- D 0 - I - 0x0093AF 02:939F: 20        .byte $20   ; 
- D 0 - I - 0x0093B0 02:93A0: 20        .byte $20   ; 
- D 0 - I - 0x0093B1 02:93A1: 41        .byte $41   ; 
- D 0 - I - 0x0093B2 02:93A2: 2E        .byte $2E   ; 
- D 0 - I - 0x0093B3 02:93A3: 4F        .byte $4F   ; 
- D 0 - I - 0x0093B4 02:93A4: 48        .byte $48   ; 
- D 0 - I - 0x0093B5 02:93A5: 42        .byte $42   ; 
- D 0 - I - 0x0093B6 02:93A6: 41        .byte $41   ; 
- D 0 - I - 0x0093B7 02:93A7: 20        .byte $20   ; 
- D 0 - I - 0x0093B8 02:93A8: 20        .byte $20   ; 
- D 0 - I - 0x0093B9 02:93A9: 20        .byte $20   ; 
- D 0 - I - 0x0093BA 02:93AA: 20        .byte $20   ; 
- D 0 - I - 0x0093BB 02:93AB: 20        .byte $20   ; 
- D 0 - I - 0x0093BC 02:93AC: FF        .byte $FF   ; 



_off006_93AD_1D:
- D 0 - I - 0x0093BD 02:93AD: 00        .byte $00   ; 
- D 0 - I - 0x0093BE 02:93AE: 00        .byte $00   ; 
- D 0 - I - 0x0093BF 02:93AF: 20        .byte $20   ; 
- D 0 - I - 0x0093C0 02:93B0: 20        .byte $20   ; 
- D 0 - I - 0x0093C1 02:93B1: 20        .byte $20   ; 
- D 0 - I - 0x0093C2 02:93B2: 53        .byte $53   ; 
- D 0 - I - 0x0093C3 02:93B3: 2E        .byte $2E   ; 
- D 0 - I - 0x0093C4 02:93B4: 57        .byte $57   ; 
- D 0 - I - 0x0093C5 02:93B5: 41        .byte $41   ; 
- D 0 - I - 0x0093C6 02:93B6: 4B        .byte $4B   ; 
- D 0 - I - 0x0093C7 02:93B7: 41        .byte $41   ; 
- D 0 - I - 0x0093C8 02:93B8: 59        .byte $59   ; 
- D 0 - I - 0x0093C9 02:93B9: 41        .byte $41   ; 
- D 0 - I - 0x0093CA 02:93BA: 4D        .byte $4D   ; 
- D 0 - I - 0x0093CB 02:93BB: 41        .byte $41   ; 
- D 0 - I - 0x0093CC 02:93BC: 20        .byte $20   ; 
- D 0 - I - 0x0093CD 02:93BD: 20        .byte $20   ; 
- D 0 - I - 0x0093CE 02:93BE: 20        .byte $20   ; 
- D 0 - I - 0x0093CF 02:93BF: FF        .byte $FF   ; 



_off006_93C0_1E:
- D 0 - I - 0x0093D0 02:93C0: 01        .byte $01   ; 
- D 0 - I - 0x0093D1 02:93C1: 00        .byte $00   ; 
- D 0 - I - 0x0093D2 02:93C2: 20        .byte $20   ; 
- D 0 - I - 0x0093D3 02:93C3: 20        .byte $20   ; 
- D 0 - I - 0x0093D4 02:93C4: 20        .byte $20   ; 
- D 0 - I - 0x0093D5 02:93C5: 45        .byte $45   ; 
- D 0 - I - 0x0093D6 02:93C6: 44        .byte $44   ; 
- D 0 - I - 0x0093D7 02:93C7: 2E        .byte $2E   ; 
- D 0 - I - 0x0093D8 02:93C8: 44        .byte $44   ; 
- D 0 - I - 0x0093D9 02:93C9: 45        .byte $45   ; 
- D 0 - I - 0x0093DA 02:93CA: 53        .byte $53   ; 
- D 0 - I - 0x0093DB 02:93CB: 49        .byte $49   ; 
- D 0 - I - 0x0093DC 02:93CC: 47        .byte $47   ; 
- D 0 - I - 0x0093DD 02:93CD: 4E        .byte $4E   ; 
- D 0 - I - 0x0093DE 02:93CE: 20        .byte $20   ; 
- D 0 - I - 0x0093DF 02:93CF: 20        .byte $20   ; 
- D 0 - I - 0x0093E0 02:93D0: 20        .byte $20   ; 
- D 0 - I - 0x0093E1 02:93D1: 20        .byte $20   ; 
- D 0 - I - 0x0093E2 02:93D2: FF        .byte $FF   ; 



_off006_93D3_1F:
- D 0 - I - 0x0093E3 02:93D3: 01        .byte $01   ; 
- D 0 - I - 0x0093E4 02:93D4: 00        .byte $00   ; 
- D 0 - I - 0x0093E5 02:93D5: 20        .byte $20   ; 
- D 0 - I - 0x0093E6 02:93D6: 20        .byte $20   ; 
- D 0 - I - 0x0093E7 02:93D7: 20        .byte $20   ; 
- D 0 - I - 0x0093E8 02:93D8: 54        .byte $54   ; 
- D 0 - I - 0x0093E9 02:93D9: 2E        .byte $2E   ; 
- D 0 - I - 0x0093EA 02:93DA: 4D        .byte $4D   ; 
- D 0 - I - 0x0093EB 02:93DB: 49        .byte $49   ; 
- D 0 - I - 0x0093EC 02:93DC: 59        .byte $59   ; 
- D 0 - I - 0x0093ED 02:93DD: 41        .byte $41   ; 
- D 0 - I - 0x0093EE 02:93DE: 4D        .byte $4D   ; 
- D 0 - I - 0x0093EF 02:93DF: 41        .byte $41   ; 
- D 0 - I - 0x0093F0 02:93E0: 45        .byte $45   ; 
- D 0 - I - 0x0093F1 02:93E1: 20        .byte $20   ; 
- D 0 - I - 0x0093F2 02:93E2: 20        .byte $20   ; 
- D 0 - I - 0x0093F3 02:93E3: 20        .byte $20   ; 
- D 0 - I - 0x0093F4 02:93E4: 20        .byte $20   ; 
- D 0 - I - 0x0093F5 02:93E5: FF        .byte $FF   ; 



_off006_93E6_20:
- D 0 - I - 0x0093F6 02:93E6: 88        .byte $88   ; 
- D 0 - I - 0x0093F7 02:93E7: 20        .byte $20   ; 
- D 0 - I - 0x0093F8 02:93E8: 56        .byte $56   ; 
- D 0 - I - 0x0093F9 02:93E9: 49        .byte $49   ; 
- D 0 - I - 0x0093FA 02:93EA: 43        .byte $43   ; 
- D 0 - I - 0x0093FB 02:93EB: 54        .byte $54   ; 
- D 0 - I - 0x0093FC 02:93EC: 4F        .byte $4F   ; 
- D 0 - I - 0x0093FD 02:93ED: 52        .byte $52   ; 
- D 0 - I - 0x0093FE 02:93EE: 59        .byte $59   ; 
- D 0 - I - 0x0093FF 02:93EF: 21        .byte $21   ; 
- D 0 - I - 0x009400 02:93F0: FF        .byte $FF   ; 



_off006_93F1_21:
- D 0 - I - 0x009401 02:93F1: D0        .byte $D0   ; 
- D 0 - I - 0x009402 02:93F2: 22        .byte $22   ; 
- D 0 - I - 0x009403 02:93F3: 54        .byte $54   ; 
- D 0 - I - 0x009404 02:93F4: 45        .byte $45   ; 
- D 0 - I - 0x009405 02:93F5: 41        .byte $41   ; 
- D 0 - I - 0x009406 02:93F6: 4D        .byte $4D   ; 
- D 0 - I - 0x009407 02:93F7: FF        .byte $FF   ; 



_off006_93F8_22:
- D 0 - I - 0x009408 02:93F8: 01        .byte $01   ; 
- D 0 - I - 0x009409 02:93F9: 00        .byte $00   ; 
- D 0 - I - 0x00940A 02:93FA: 20        .byte $20   ; 
- D 0 - I - 0x00940B 02:93FB: 20        .byte $20   ; 
- D 0 - I - 0x00940C 02:93FC: 4B        .byte $4B   ; 
- D 0 - I - 0x00940D 02:93FD: 2E        .byte $2E   ; 
- D 0 - I - 0x00940E 02:93FE: 4B        .byte $4B   ; 
- D 0 - I - 0x00940F 02:93FF: 41        .byte $41   ; 
- D 0 - I - 0x009410 02:9400: 57        .byte $57   ; 
- D 0 - I - 0x009411 02:9401: 41        .byte $41   ; 
- D 0 - I - 0x009412 02:9402: 53        .byte $53   ; 
- D 0 - I - 0x009413 02:9403: 48        .byte $48   ; 
- D 0 - I - 0x009414 02:9404: 49        .byte $49   ; 
- D 0 - I - 0x009415 02:9405: 4D        .byte $4D   ; 
- D 0 - I - 0x009416 02:9406: 41        .byte $41   ; 
- D 0 - I - 0x009417 02:9407: 20        .byte $20   ; 
- D 0 - I - 0x009418 02:9408: 20        .byte $20   ; 
- D 0 - I - 0x009419 02:9409: 20        .byte $20   ; 
- D 0 - I - 0x00941A 02:940A: FF        .byte $FF   ; 



_off006_940B_23:
- D 0 - I - 0x00941B 02:940B: 00        .byte $00   ; 
- D 0 - I - 0x00941C 02:940C: 00        .byte $00   ; 
- D 0 - I - 0x00941D 02:940D: 20        .byte $20   ; 
- D 0 - I - 0x00941E 02:940E: 20        .byte $20   ; 
- D 0 - I - 0x00941F 02:940F: 53        .byte $53   ; 
- D 0 - I - 0x009420 02:9410: 2E        .byte $2E   ; 
- D 0 - I - 0x009421 02:9411: 49        .byte $49   ; 
- D 0 - I - 0x009422 02:9412: 57        .byte $57   ; 
- D 0 - I - 0x009423 02:9413: 41        .byte $41   ; 
- D 0 - I - 0x009424 02:9414: 42        .byte $42   ; 
- D 0 - I - 0x009425 02:9415: 41        .byte $41   ; 
- D 0 - I - 0x009426 02:9416: 59        .byte $59   ; 
- D 0 - I - 0x009427 02:9417: 41        .byte $41   ; 
- D 0 - I - 0x009428 02:9418: 53        .byte $53   ; 
- D 0 - I - 0x009429 02:9419: 48        .byte $48   ; 
- D 0 - I - 0x00942A 02:941A: 49        .byte $49   ; 
- D 0 - I - 0x00942B 02:941B: 20        .byte $20   ; 
- D 0 - I - 0x00942C 02:941C: 20        .byte $20   ; 
- D 0 - I - 0x00942D 02:941D: FF        .byte $FF   ; 



_off006_941E_24:
- - - - - - 0x00942E 02:941E: 01        .byte $01   ; 
- - - - - - 0x00942F 02:941F: 00        .byte $00   ; 
- - - - - - 0x009430 02:9420: 20        .byte $20   ; 
- - - - - - 0x009431 02:9421: 20        .byte $20   ; 
- - - - - - 0x009432 02:9422: 20        .byte $20   ; 
- - - - - - 0x009433 02:9423: 50        .byte $50   ; 
- - - - - - 0x009434 02:9424: 52        .byte $52   ; 
- - - - - - 0x009435 02:9425: 45        .byte $45   ; 
- - - - - - 0x009436 02:9426: 53        .byte $53   ; 
- - - - - - 0x009437 02:9427: 45        .byte $45   ; 
- - - - - - 0x009438 02:9428: 4E        .byte $4E   ; 
- - - - - - 0x009439 02:9429: 54        .byte $54   ; 
- - - - - - 0x00943A 02:942A: 45        .byte $45   ; 
- - - - - - 0x00943B 02:942B: 44        .byte $44   ; 
- - - - - - 0x00943C 02:942C: 20        .byte $20   ; 
- - - - - - 0x00943D 02:942D: 20        .byte $20   ; 
- - - - - - 0x00943E 02:942E: 20        .byte $20   ; 
- - - - - - 0x00943F 02:942F: 20        .byte $20   ; 
- - - - - - 0x009440 02:9430: FF        .byte $FF   ; 



_off006_9431_25:
- - - - - - 0x009441 02:9431: 00        .byte $00   ; 
- - - - - - 0x009442 02:9432: 00        .byte $00   ; 
- - - - - - 0x009443 02:9433: 20        .byte $20   ; 
- - - - - - 0x009444 02:9434: 20        .byte $20   ; 
- - - - - - 0x009445 02:9435: 20        .byte $20   ; 
- - - - - - 0x009446 02:9436: 20        .byte $20   ; 
- - - - - - 0x009447 02:9437: 20        .byte $20   ; 
- - - - - - 0x009448 02:9438: 20        .byte $20   ; 
- - - - - - 0x009449 02:9439: 20        .byte $20   ; 
- - - - - - 0x00944A 02:943A: 42        .byte $42   ; 
- - - - - - 0x00944B 02:943B: 59        .byte $59   ; 
- - - - - - 0x00944C 02:943C: 20        .byte $20   ; 
- - - - - - 0x00944D 02:943D: 20        .byte $20   ; 
- - - - - - 0x00944E 02:943E: 20        .byte $20   ; 
- - - - - - 0x00944F 02:943F: 20        .byte $20   ; 
- - - - - - 0x009450 02:9440: 20        .byte $20   ; 
- - - - - - 0x009451 02:9441: 20        .byte $20   ; 
- - - - - - 0x009452 02:9442: 20        .byte $20   ; 
- - - - - - 0x009453 02:9443: FF        .byte $FF   ; 



_off006_9444_26:
- D 0 - I - 0x009454 02:9444: 01        .byte $01   ; 
- D 0 - I - 0x009455 02:9445: 00        .byte $00   ; 
- D 0 - I - 0x009456 02:9446: 20        .byte $20   ; 
- D 0 - I - 0x009457 02:9447: 20        .byte $20   ; 
- D 0 - I - 0x009458 02:9448: 20        .byte $20   ; 
- D 0 - I - 0x009459 02:9449: 20        .byte $20   ; 
- D 0 - I - 0x00945A 02:944A: 20        .byte $20   ; 
- D 0 - I - 0x00945B 02:944B: 28        .byte $28   ; 
- D 0 - I - 0x00945C 02:944C: 29        .byte $29   ; 
- D 0 - I - 0x00945D 02:944D: 2A        .byte $2A   ; 
- D 0 - I - 0x00945E 02:944E: 2B        .byte $2B   ; 
- D 0 - I - 0x00945F 02:944F: 2C        .byte $2C   ; 
- D 0 - I - 0x009460 02:9450: 20        .byte $20   ; 
- D 0 - I - 0x009461 02:9451: 20        .byte $20   ; 
- D 0 - I - 0x009462 02:9452: 20        .byte $20   ; 
- D 0 - I - 0x009463 02:9453: 20        .byte $20   ; 
- D 0 - I - 0x009464 02:9454: 20        .byte $20   ; 
- D 0 - I - 0x009465 02:9455: 20        .byte $20   ; 
- D 0 - I - 0x009466 02:9456: FF        .byte $FF   ; 



tbl_9457:
; номера тайлов крупного шрифта
- D 0 - - - 0x009467 02:9457: 00        .byte $00, $00, $00, $00   ; пробел
- - - - - - 0x00946B 02:945B: 50        .byte $50, $51, $52, $53   ; символ -
- - - - - - 0x00946F 02:945F: 08        .byte $08, $01, $0A, $0F   ; цифра 0
- D 0 - - - 0x009473 02:9463: 41        .byte $41, $43, $1A, $1B   ; цифра 1
- D 0 - - - 0x009477 02:9467: 44        .byte $44, $05, $46, $47   ; цифра 2
- D 0 - - - 0x00947B 02:946B: 44        .byte $44, $05, $32, $07   ; цифра 3
- - - - - - 0x00947F 02:946F: 48        .byte $48, $49, $4A, $4B   ; цифра 4
- - - - - - 0x009483 02:9473: 04        .byte $04, $4C, $4E, $07   ; цифра 5
- - - - - - 0x009487 02:9477: 4D        .byte $4D, $31, $4F, $07   ; цифра 6
- - - - - - 0x00948B 02:947B: 3C        .byte $3C, $3D, $36, $37   ; цифра 7
- - - - - - 0x00948F 02:947F: 30        .byte $30, $05, $45, $07   ; цифра 8
- - - - - - 0x009493 02:9483: 30        .byte $30, $58, $32, $5A   ; цифра 9
- D 0 - - - 0x009497 02:9487: 08        .byte $08, $01, $02, $03   ; буква A
- D 0 - - - 0x00949B 02:948B: 04        .byte $04, $05, $06, $07   ; 
- D 0 - - - 0x00949F 02:948F: 08        .byte $08, $09, $0A, $0B   ; 
- D 0 - - - 0x0094A3 02:9493: 0C        .byte $0C, $01, $0E, $0F   ; 
- D 0 - - - 0x0094A7 02:9497: 04        .byte $04, $10, $06, $12   ; 
- D 0 - - - 0x0094AB 02:949B: 04        .byte $04, $10, $16, $0D   ; 
- D 0 - - - 0x0094AF 02:949F: 08        .byte $08, $11, $0A, $13   ; 
- D 0 - - - 0x0094B3 02:94A3: 14        .byte $14, $15, $16, $17   ; 
- D 0 - - - 0x0094B7 02:94A7: 18        .byte $18, $19, $1A, $1B   ; 
- - - - - - 0x0094BB 02:94AB: 00        .byte $00, $1D, $1E, $1F   ; 
- D 0 - - - 0x0094BF 02:94AF: 14        .byte $14, $21, $16, $23   ; 
- D 0 - - - 0x0094C3 02:94B3: 28        .byte $28, $00, $0E, $2A   ; 
- D 0 - - - 0x0094C7 02:94B7: 24        .byte $24, $25, $26, $27   ; 
- D 0 - - - 0x0094CB 02:94BB: 24        .byte $24, $2D, $26, $2F   ; 
- D 0 - - - 0x0094CF 02:94BF: 08        .byte $08, $01, $0A, $0F   ; 
- D 0 - - - 0x0094D3 02:94C3: 0C        .byte $0C, $29, $02, $2B   ; 
- - - - - - 0x0094D7 02:94C7: 08        .byte $08, $01, $0A, $40   ; 
- D 0 - - - 0x0094DB 02:94CB: 0C        .byte $0C, $29, $02, $42   ; 
- D 0 - - - 0x0094DF 02:94CF: 30        .byte $30, $31, $32, $07   ; 
- D 0 - - - 0x0094E3 02:94D3: 34        .byte $34, $35, $36, $37   ; 
- D 0 - - - 0x0094E7 02:94D7: 28        .byte $28, $33, $0A, $0F   ; 
- D 0 - - - 0x0094EB 02:94DB: 38        .byte $38, $39, $3A, $3B   ; 
- D 0 - - - 0x0094EF 02:94DF: 2C        .byte $2C, $2D, $2E, $2F   ; 
- - - - - - 0x0094F3 02:94E3: 20        .byte $20, $21, $22, $23   ; 
- D 0 - - - 0x0094F7 02:94E7: 20        .byte $20, $21, $36, $37   ; 
- - - - - - 0x0094FB 02:94EB: 3C        .byte $3C, $3D, $3E, $3F   ; 
- D 0 - - - 0x0094FF 02:94EF: 60        .byte $60, $60, $62, $62   ; 
- D 0 - - - 0x009503 02:94F3: 00        .byte $00, $00, $68, $00   ; 
- D 0 - - - 0x009507 02:94F7: EB        .byte $EB, $EC, $00, $EE   ; 
- D 0 - - - 0x00950B 02:94FB: ED        .byte $ED, $F0, $EF, $F2   ; 
- D 0 - - - 0x00950F 02:94FF: F1        .byte $F1, $F4, $F3, $F6   ; 
- D 0 - - - 0x009513 02:9503: F5        .byte $F5, $F8, $F7, $FA   ; 
- D 0 - - - 0x009517 02:9507: F9        .byte $F9, $FC, $FB, $FE   ; 
- - - - - - 0x00951B 02:950B: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00951F 02:950F: 44        .byte $44, $45, $46, $47   ; 
- - - - - - 0x009523 02:9513: 08        .byte $08, $38, $0A, $3A   ; 
- - - - - - 0x009527 02:9517: 40        .byte $40, $41, $36, $37   ; 
- - - - - - 0x00952B 02:951B: 68        .byte $68, $01, $06, $0F   ; 
- - - - - - 0x00952F 02:951F: 68        .byte $68, $01, $30, $31   ; 
- - - - - - 0x009533 02:9523: 14        .byte $14, $15, $1C, $03   ; 
- - - - - - 0x009537 02:9527: 04        .byte $04, $0D, $30, $31   ; 
- - - - - - 0x00953B 02:952B: 04        .byte $04, $0D, $06, $31   ; 
- - - - - - 0x00953F 02:952F: 3C        .byte $3C, $3D, $36, $37   ; 
- - - - - - 0x009543 02:9533: 42        .byte $42, $43, $06, $31   ; 
- - - - - - 0x009547 02:9537: 04        .byte $04, $01, $30, $31   ; 
- - - - - - 0x00954B 02:953B: 04        .byte $04, $01, $02, $03   ; 
- - - - - - 0x00954F 02:953F: 04        .byte $04, $05, $06, $07   ; 
- - - - - - 0x009553 02:9543: 08        .byte $08, $09, $0A, $0B   ; 
- - - - - - 0x009557 02:9547: 08        .byte $08, $0C, $0A, $0E   ; 
- - - - - - 0x00955B 02:954B: 04        .byte $04, $0D, $06, $0F   ; 
- - - - - - 0x00955F 02:954F: 04        .byte $04, $0D, $02, $47   ; 
- - - - - - 0x009563 02:9553: 08        .byte $08, $11, $0A, $13   ; 
- - - - - - 0x009567 02:9557: 14        .byte $14, $15, $02, $03   ; 
- - - - - - 0x00956B 02:955B: 18        .byte $18, $19, $1A, $1B   ; 
- - - - - - 0x00956F 02:955F: 00        .byte $00, $1D, $1E, $1F   ; 
- - - - - - 0x009573 02:9563: 14        .byte $14, $17, $02, $39   ; 
- - - - - - 0x009577 02:9567: 20        .byte $20, $00, $22, $23   ; 
- - - - - - 0x00957B 02:956B: 24        .byte $24, $25, $26, $27   ; 
- - - - - - 0x00957F 02:956F: 28        .byte $28, $29, $2A, $2B   ; 
- - - - - - 0x009583 02:9573: 08        .byte $08, $38, $0A, $3A   ; 
- - - - - - 0x009587 02:9577: 04        .byte $04, $01, $02, $47   ; 
- - - - - - 0x00958B 02:957B: 08        .byte $08, $38, $0A, $12   ; 
- - - - - - 0x00958F 02:957F: 04        .byte $04, $01, $02, $10   ; 
- - - - - - 0x009593 02:9583: 04        .byte $04, $0D, $30, $31   ; 
- - - - - - 0x009597 02:9587: 34        .byte $34, $35, $36, $37   ; 
- - - - - - 0x00959B 02:958B: 20        .byte $20, $21, $0A, $3A   ; 
- - - - - - 0x00959F 02:958F: 20        .byte $20, $21, $32, $33   ; 
- - - - - - 0x0095A3 02:9593: 2C        .byte $2C, $2D, $2E, $2F   ; 
- - - - - - 0x0095A7 02:9597: 16        .byte $16, $17, $36, $37   ; 
- - - - - - 0x0095AB 02:959B: 16        .byte $16, $17, $36, $37   ; 
- - - - - - 0x0095AF 02:959F: 3C        .byte $3C, $3D, $3E, $3F   ; 
- - - - - - 0x0095B3 02:95A3: 60        .byte $60, $60, $62, $62   ; 
- - - - - - 0x0095B7 02:95A7: 00        .byte $00, $00, $4A, $00   ; 
- - - - - - 0x0095BB 02:95AB: EB        .byte $EB, $EC, $00, $EE   ; 
- - - - - - 0x0095BF 02:95AF: ED        .byte $ED, $F0, $EF, $F2   ; 
- - - - - - 0x0095C3 02:95B3: F1        .byte $F1, $F4, $F3, $F6   ; 
- - - - - - 0x0095C7 02:95B7: F5        .byte $F5, $F8, $F7, $FA   ; 
- - - - - - 0x0095CB 02:95BB: F9        .byte $F9, $FC, $FB, $FE   ; 



tbl_95BF:
- D 0 - I - 0x0095CF 02:95BF: 1C        .byte $1C   ; 
- D 0 - I - 0x0095D0 02:95C0: 02        .byte $02   ; 
- D 0 - I - 0x0095D1 02:95C1: 21        .byte $21   ; 
- D 0 - I - 0x0095D2 02:95C2: 80        .byte $80   ; 
- D 0 - I - 0x0095D3 02:95C3: 80        .byte $80   ; 
- D 0 - I - 0x0095D4 02:95C4: 80        .byte $80   ; 
- D 0 - I - 0x0095D5 02:95C5: 80        .byte $80   ; 
- D 0 - I - 0x0095D6 02:95C6: 80        .byte $80   ; 
- D 0 - I - 0x0095D7 02:95C7: 80        .byte $80   ; 
- D 0 - I - 0x0095D8 02:95C8: 80        .byte $80   ; 
- D 0 - I - 0x0095D9 02:95C9: 80        .byte $80   ; 
- D 0 - I - 0x0095DA 02:95CA: 80        .byte $80   ; 
- D 0 - I - 0x0095DB 02:95CB: 80        .byte $80   ; 
- D 0 - I - 0x0095DC 02:95CC: 80        .byte $80   ; 
- D 0 - I - 0x0095DD 02:95CD: 80        .byte $80   ; 
- D 0 - I - 0x0095DE 02:95CE: 80        .byte $80   ; 
- D 0 - I - 0x0095DF 02:95CF: 80        .byte $80   ; 
- D 0 - I - 0x0095E0 02:95D0: 80        .byte $80   ; 
- D 0 - I - 0x0095E1 02:95D1: 80        .byte $80   ; 
- D 0 - I - 0x0095E2 02:95D2: 80        .byte $80   ; 
- D 0 - I - 0x0095E3 02:95D3: 80        .byte $80   ; 
- D 0 - I - 0x0095E4 02:95D4: 80        .byte $80   ; 
- D 0 - I - 0x0095E5 02:95D5: 80        .byte $80   ; 
- D 0 - I - 0x0095E6 02:95D6: 80        .byte $80   ; 
- D 0 - I - 0x0095E7 02:95D7: 80        .byte $80   ; 
- D 0 - I - 0x0095E8 02:95D8: 80        .byte $80   ; 
- D 0 - I - 0x0095E9 02:95D9: 80        .byte $80   ; 
- D 0 - I - 0x0095EA 02:95DA: 80        .byte $80   ; 
- D 0 - I - 0x0095EB 02:95DB: 80        .byte $80   ; 
- D 0 - I - 0x0095EC 02:95DC: 80        .byte $80   ; 
- D 0 - I - 0x0095ED 02:95DD: 80        .byte $80   ; 
- D 0 - I - 0x0095EE 02:95DE: 1C        .byte $1C   ; 
- D 0 - I - 0x0095EF 02:95DF: 22        .byte $22   ; 
- D 0 - I - 0x0095F0 02:95E0: 21        .byte $21   ; 
- D 0 - I - 0x0095F1 02:95E1: 80        .byte $80   ; 
- D 0 - I - 0x0095F2 02:95E2: 80        .byte $80   ; 
- D 0 - I - 0x0095F3 02:95E3: 80        .byte $80   ; 
- D 0 - I - 0x0095F4 02:95E4: 80        .byte $80   ; 
- D 0 - I - 0x0095F5 02:95E5: 80        .byte $80   ; 
- D 0 - I - 0x0095F6 02:95E6: 80        .byte $80   ; 
- D 0 - I - 0x0095F7 02:95E7: 80        .byte $80   ; 
- D 0 - I - 0x0095F8 02:95E8: 80        .byte $80   ; 
- D 0 - I - 0x0095F9 02:95E9: 80        .byte $80   ; 
- D 0 - I - 0x0095FA 02:95EA: 80        .byte $80   ; 
- D 0 - I - 0x0095FB 02:95EB: 80        .byte $80   ; 
- D 0 - I - 0x0095FC 02:95EC: 80        .byte $80   ; 
- D 0 - I - 0x0095FD 02:95ED: 80        .byte $80   ; 
- D 0 - I - 0x0095FE 02:95EE: 80        .byte $80   ; 
- D 0 - I - 0x0095FF 02:95EF: 80        .byte $80   ; 
- D 0 - I - 0x009600 02:95F0: 80        .byte $80   ; 
- D 0 - I - 0x009601 02:95F1: 80        .byte $80   ; 
- D 0 - I - 0x009602 02:95F2: 80        .byte $80   ; 
- D 0 - I - 0x009603 02:95F3: 80        .byte $80   ; 
- D 0 - I - 0x009604 02:95F4: 80        .byte $80   ; 
- D 0 - I - 0x009605 02:95F5: 80        .byte $80   ; 
- D 0 - I - 0x009606 02:95F6: 80        .byte $80   ; 
- D 0 - I - 0x009607 02:95F7: 80        .byte $80   ; 
- D 0 - I - 0x009608 02:95F8: 80        .byte $80   ; 
- D 0 - I - 0x009609 02:95F9: 80        .byte $80   ; 
- D 0 - I - 0x00960A 02:95FA: 80        .byte $80   ; 
- D 0 - I - 0x00960B 02:95FB: 80        .byte $80   ; 
- D 0 - I - 0x00960C 02:95FC: 80        .byte $80   ; 
- D 0 - I - 0x00960D 02:95FD: 1C        .byte $1C   ; 
- D 0 - I - 0x00960E 02:95FE: 42        .byte $42   ; 
- D 0 - I - 0x00960F 02:95FF: 21        .byte $21   ; 
- D 0 - I - 0x009610 02:9600: 80        .byte $80   ; 
- D 0 - I - 0x009611 02:9601: 80        .byte $80   ; 
- D 0 - I - 0x009612 02:9602: 84        .byte $84   ; 
- D 0 - I - 0x009613 02:9603: 85        .byte $85   ; 
- D 0 - I - 0x009614 02:9604: 80        .byte $80   ; 
- D 0 - I - 0x009615 02:9605: 80        .byte $80   ; 
- D 0 - I - 0x009616 02:9606: 80        .byte $80   ; 
- D 0 - I - 0x009617 02:9607: 80        .byte $80   ; 
- D 0 - I - 0x009618 02:9608: 80        .byte $80   ; 
- D 0 - I - 0x009619 02:9609: 80        .byte $80   ; 
- D 0 - I - 0x00961A 02:960A: 80        .byte $80   ; 
- D 0 - I - 0x00961B 02:960B: 80        .byte $80   ; 
- D 0 - I - 0x00961C 02:960C: 80        .byte $80   ; 
- D 0 - I - 0x00961D 02:960D: 80        .byte $80   ; 
- D 0 - I - 0x00961E 02:960E: 80        .byte $80   ; 
- D 0 - I - 0x00961F 02:960F: 80        .byte $80   ; 
- D 0 - I - 0x009620 02:9610: 80        .byte $80   ; 
- D 0 - I - 0x009621 02:9611: 80        .byte $80   ; 
- D 0 - I - 0x009622 02:9612: 80        .byte $80   ; 
- D 0 - I - 0x009623 02:9613: 80        .byte $80   ; 
- D 0 - I - 0x009624 02:9614: 80        .byte $80   ; 
- D 0 - I - 0x009625 02:9615: 80        .byte $80   ; 
- D 0 - I - 0x009626 02:9616: 80        .byte $80   ; 
- D 0 - I - 0x009627 02:9617: 80        .byte $80   ; 
- D 0 - I - 0x009628 02:9618: 80        .byte $80   ; 
- D 0 - I - 0x009629 02:9619: 80        .byte $80   ; 
- D 0 - I - 0x00962A 02:961A: 80        .byte $80   ; 
- D 0 - I - 0x00962B 02:961B: 80        .byte $80   ; 
- D 0 - I - 0x00962C 02:961C: 1C        .byte $1C   ; 
- D 0 - I - 0x00962D 02:961D: 62        .byte $62   ; 
- D 0 - I - 0x00962E 02:961E: 21        .byte $21   ; 
- D 0 - I - 0x00962F 02:961F: 82        .byte $82   ; 
- D 0 - I - 0x009630 02:9620: 83        .byte $83   ; 
- D 0 - I - 0x009631 02:9621: 86        .byte $86   ; 
- D 0 - I - 0x009632 02:9622: 87        .byte $87   ; 
- D 0 - I - 0x009633 02:9623: 80        .byte $80   ; 
- D 0 - I - 0x009634 02:9624: 80        .byte $80   ; 
- D 0 - I - 0x009635 02:9625: 80        .byte $80   ; 
- D 0 - I - 0x009636 02:9626: 80        .byte $80   ; 
- D 0 - I - 0x009637 02:9627: 88        .byte $88   ; 
- D 0 - I - 0x009638 02:9628: 83        .byte $83   ; 
- D 0 - I - 0x009639 02:9629: 80        .byte $80   ; 
- D 0 - I - 0x00963A 02:962A: 80        .byte $80   ; 
- D 0 - I - 0x00963B 02:962B: 80        .byte $80   ; 
- D 0 - I - 0x00963C 02:962C: 80        .byte $80   ; 
- D 0 - I - 0x00963D 02:962D: 80        .byte $80   ; 
- D 0 - I - 0x00963E 02:962E: 80        .byte $80   ; 
- D 0 - I - 0x00963F 02:962F: 80        .byte $80   ; 
- D 0 - I - 0x009640 02:9630: 88        .byte $88   ; 
- D 0 - I - 0x009641 02:9631: 82        .byte $82   ; 
- D 0 - I - 0x009642 02:9632: 83        .byte $83   ; 
- D 0 - I - 0x009643 02:9633: 80        .byte $80   ; 
- D 0 - I - 0x009644 02:9634: 80        .byte $80   ; 
- D 0 - I - 0x009645 02:9635: 80        .byte $80   ; 
- D 0 - I - 0x009646 02:9636: 80        .byte $80   ; 
- D 0 - I - 0x009647 02:9637: 80        .byte $80   ; 
- D 0 - I - 0x009648 02:9638: 80        .byte $80   ; 
- D 0 - I - 0x009649 02:9639: 80        .byte $80   ; 
- D 0 - I - 0x00964A 02:963A: 80        .byte $80   ; 
- D 0 - I - 0x00964B 02:963B: 1C        .byte $1C   ; 
- D 0 - I - 0x00964C 02:963C: 82        .byte $82   ; 
- D 0 - I - 0x00964D 02:963D: 21        .byte $21   ; 
- D 0 - I - 0x00964E 02:963E: 88        .byte $88   ; 
- D 0 - I - 0x00964F 02:963F: 89        .byte $89   ; 
- D 0 - I - 0x009650 02:9640: 8C        .byte $8C   ; 
- D 0 - I - 0x009651 02:9641: 8D        .byte $8D   ; 
- D 0 - I - 0x009652 02:9642: 90        .byte $90   ; 
- D 0 - I - 0x009653 02:9643: 80        .byte $80   ; 
- D 0 - I - 0x009654 02:9644: 91        .byte $91   ; 
- D 0 - I - 0x009655 02:9645: 94        .byte $94   ; 
- D 0 - I - 0x009656 02:9646: 80        .byte $80   ; 
- D 0 - I - 0x009657 02:9647: 80        .byte $80   ; 
- D 0 - I - 0x009658 02:9648: 80        .byte $80   ; 
- D 0 - I - 0x009659 02:9649: 80        .byte $80   ; 
- D 0 - I - 0x00965A 02:964A: 80        .byte $80   ; 
- D 0 - I - 0x00965B 02:964B: 80        .byte $80   ; 
- D 0 - I - 0x00965C 02:964C: C5        .byte $C5   ; 
- D 0 - I - 0x00965D 02:964D: D0        .byte $D0   ; 
- D 0 - I - 0x00965E 02:964E: 80        .byte $80   ; 
- D 0 - I - 0x00965F 02:964F: 80        .byte $80   ; 
- D 0 - I - 0x009660 02:9650: 80        .byte $80   ; 
- D 0 - I - 0x009661 02:9651: 80        .byte $80   ; 
- D 0 - I - 0x009662 02:9652: D4        .byte $D4   ; 
- D 0 - I - 0x009663 02:9653: D5        .byte $D5   ; 
- D 0 - I - 0x009664 02:9654: 80        .byte $80   ; 
- D 0 - I - 0x009665 02:9655: 80        .byte $80   ; 
- D 0 - I - 0x009666 02:9656: 82        .byte $82   ; 
- D 0 - I - 0x009667 02:9657: 83        .byte $83   ; 
- D 0 - I - 0x009668 02:9658: 80        .byte $80   ; 
- D 0 - I - 0x009669 02:9659: 80        .byte $80   ; 
- D 0 - I - 0x00966A 02:965A: 1C        .byte $1C   ; 
- D 0 - I - 0x00966B 02:965B: A2        .byte $A2   ; 
- D 0 - I - 0x00966C 02:965C: 21        .byte $21   ; 
- D 0 - I - 0x00966D 02:965D: 80        .byte $80   ; 
- D 0 - I - 0x00966E 02:965E: 8B        .byte $8B   ; 
- D 0 - I - 0x00966F 02:965F: 8E        .byte $8E   ; 
- D 0 - I - 0x009670 02:9660: 8F        .byte $8F   ; 
- D 0 - I - 0x009671 02:9661: 92        .byte $92   ; 
- D 0 - I - 0x009672 02:9662: 80        .byte $80   ; 
- D 0 - I - 0x009673 02:9663: 93        .byte $93   ; 
- D 0 - I - 0x009674 02:9664: 96        .byte $96   ; 
- D 0 - I - 0x009675 02:9665: 80        .byte $80   ; 
- D 0 - I - 0x009676 02:9666: 97        .byte $97   ; 
- D 0 - I - 0x009677 02:9667: C2        .byte $C2   ; 
- D 0 - I - 0x009678 02:9668: 80        .byte $80   ; 
- D 0 - I - 0x009679 02:9669: C3        .byte $C3   ; 
- D 0 - I - 0x00967A 02:966A: C6        .byte $C6   ; 
- D 0 - I - 0x00967B 02:966B: C7        .byte $C7   ; 
- D 0 - I - 0x00967C 02:966C: D2        .byte $D2   ; 
- D 0 - I - 0x00967D 02:966D: D3        .byte $D3   ; 
- D 0 - I - 0x00967E 02:966E: D6        .byte $D6   ; 
- D 0 - I - 0x00967F 02:966F: D7        .byte $D7   ; 
- D 0 - I - 0x009680 02:9670: 80        .byte $80   ; 
- D 0 - I - 0x009681 02:9671: C0        .byte $C0   ; 
- D 0 - I - 0x009682 02:9672: C1        .byte $C1   ; 
- D 0 - I - 0x009683 02:9673: C4        .byte $C4   ; 
- D 0 - I - 0x009684 02:9674: 80        .byte $80   ; 
- D 0 - I - 0x009685 02:9675: 80        .byte $80   ; 
- D 0 - I - 0x009686 02:9676: 80        .byte $80   ; 
- D 0 - I - 0x009687 02:9677: 80        .byte $80   ; 
- D 0 - I - 0x009688 02:9678: 80        .byte $80   ; 
- D 0 - I - 0x009689 02:9679: 1C        .byte $1C   ; 
- D 0 - I - 0x00968A 02:967A: C2        .byte $C2   ; 
- D 0 - I - 0x00968B 02:967B: 21        .byte $21   ; 
- D 0 - I - 0x00968C 02:967C: A0        .byte $A0   ; 
- D 0 - I - 0x00968D 02:967D: A1        .byte $A1   ; 
- D 0 - I - 0x00968E 02:967E: A4        .byte $A4   ; 
- D 0 - I - 0x00968F 02:967F: A5        .byte $A5   ; 
- D 0 - I - 0x009690 02:9680: 98        .byte $98   ; 
- D 0 - I - 0x009691 02:9681: 9A        .byte $9A   ; 
- D 0 - I - 0x009692 02:9682: 99        .byte $99   ; 
- D 0 - I - 0x009693 02:9683: 9C        .byte $9C   ; 
- D 0 - I - 0x009694 02:9684: DB        .byte $DB   ; 
- D 0 - I - 0x009695 02:9685: 9D        .byte $9D   ; 
- D 0 - I - 0x009696 02:9686: C8        .byte $C8   ; 
- D 0 - I - 0x009697 02:9687: 95        .byte $95   ; 
- D 0 - I - 0x009698 02:9688: C9        .byte $C9   ; 
- D 0 - I - 0x009699 02:9689: CC        .byte $CC   ; 
- D 0 - I - 0x00969A 02:968A: CD        .byte $CD   ; 
- D 0 - I - 0x00969B 02:968B: D8        .byte $D8   ; 
- D 0 - I - 0x00969C 02:968C: D9        .byte $D9   ; 
- D 0 - I - 0x00969D 02:968D: DC        .byte $DC   ; 
- D 0 - I - 0x00969E 02:968E: DD        .byte $DD   ; 
- D 0 - I - 0x00969F 02:968F: DF        .byte $DF   ; 
- D 0 - I - 0x0096A0 02:9690: 61        .byte $61   ; 
- D 0 - I - 0x0096A1 02:9691: 64        .byte $64   ; 
- D 0 - I - 0x0096A2 02:9692: 65        .byte $65   ; 
- D 0 - I - 0x0096A3 02:9693: 70        .byte $70   ; 
- D 0 - I - 0x0096A4 02:9694: 71        .byte $71   ; 
- D 0 - I - 0x0096A5 02:9695: 74        .byte $74   ; 
- D 0 - I - 0x0096A6 02:9696: 75        .byte $75   ; 
- D 0 - I - 0x0096A7 02:9697: 88        .byte $88   ; 
- D 0 - I - 0x0096A8 02:9698: 1C        .byte $1C   ; 
- D 0 - I - 0x0096A9 02:9699: E2        .byte $E2   ; 
- D 0 - I - 0x0096AA 02:969A: 21        .byte $21   ; 
- D 0 - I - 0x0096AB 02:969B: A2        .byte $A2   ; 
- D 0 - I - 0x0096AC 02:969C: A3        .byte $A3   ; 
- D 0 - I - 0x0096AD 02:969D: 00        .byte $00   ; 
- D 0 - I - 0x0096AE 02:969E: 00        .byte $00   ; 
- D 0 - I - 0x0096AF 02:969F: A2        .byte $A2   ; 
- D 0 - I - 0x0096B0 02:96A0: B0        .byte $B0   ; 
- D 0 - I - 0x0096B1 02:96A1: 9B        .byte $9B   ; 
- D 0 - I - 0x0096B2 02:96A2: 9E        .byte $9E   ; 
- D 0 - I - 0x0096B3 02:96A3: F1        .byte $F1   ; 
- D 0 - I - 0x0096B4 02:96A4: 9F        .byte $9F   ; 
- D 0 - I - 0x0096B5 02:96A5: CA        .byte $CA   ; 
- D 0 - I - 0x0096B6 02:96A6: CB        .byte $CB   ; 
- D 0 - I - 0x0096B7 02:96A7: 00        .byte $00   ; 
- D 0 - I - 0x0096B8 02:96A8: CE        .byte $CE   ; 
- D 0 - I - 0x0096B9 02:96A9: CF        .byte $CF   ; 
- D 0 - I - 0x0096BA 02:96AA: DA        .byte $DA   ; 
- D 0 - I - 0x0096BB 02:96AB: 00        .byte $00   ; 
- D 0 - I - 0x0096BC 02:96AC: DE        .byte $DE   ; 
- D 0 - I - 0x0096BD 02:96AD: 00        .byte $00   ; 
- D 0 - I - 0x0096BE 02:96AE: 6A        .byte $6A   ; 
- D 0 - I - 0x0096BF 02:96AF: 63        .byte $63   ; 
- D 0 - I - 0x0096C0 02:96B0: 66        .byte $66   ; 
- D 0 - I - 0x0096C1 02:96B1: 67        .byte $67   ; 
- D 0 - I - 0x0096C2 02:96B2: 72        .byte $72   ; 
- D 0 - I - 0x0096C3 02:96B3: 73        .byte $73   ; 
- D 0 - I - 0x0096C4 02:96B4: 76        .byte $76   ; 
- D 0 - I - 0x0096C5 02:96B5: 77        .byte $77   ; 
- D 0 - I - 0x0096C6 02:96B6: FD        .byte $FD   ; 
- D 0 - I - 0x0096C7 02:96B7: 1C        .byte $1C   ; 
- D 0 - I - 0x0096C8 02:96B8: 02        .byte $02   ; 
- D 0 - I - 0x0096C9 02:96B9: 22        .byte $22   ; 
- D 0 - I - 0x0096CA 02:96BA: A0        .byte $A0   ; 
- D 0 - I - 0x0096CB 02:96BB: A0        .byte $A0   ; 
- D 0 - I - 0x0096CC 02:96BC: 00        .byte $00   ; 
- D 0 - I - 0x0096CD 02:96BD: 00        .byte $00   ; 
- D 0 - I - 0x0096CE 02:96BE: 8A        .byte $8A   ; 
- D 0 - I - 0x0096CF 02:96BF: B2        .byte $B2   ; 
- D 0 - I - 0x0096D0 02:96C0: B1        .byte $B1   ; 
- D 0 - I - 0x0096D1 02:96C1: B4        .byte $B4   ; 
- D 0 - I - 0x0096D2 02:96C2: D1        .byte $D1   ; 
- D 0 - I - 0x0096D3 02:96C3: B5        .byte $B5   ; 
- D 0 - I - 0x0096D4 02:96C4: E0        .byte $E0   ; 
- D 0 - I - 0x0096D5 02:96C5: E1        .byte $E1   ; 
- D 0 - I - 0x0096D6 02:96C6: 00        .byte $00   ; 
- D 0 - I - 0x0096D7 02:96C7: E4        .byte $E4   ; 
- D 0 - I - 0x0096D8 02:96C8: E5        .byte $E5   ; 
- D 0 - I - 0x0096D9 02:96C9: F0        .byte $F0   ; 
- D 0 - I - 0x0096DA 02:96CA: 00        .byte $00   ; 
- D 0 - I - 0x0096DB 02:96CB: F4        .byte $F4   ; 
- D 0 - I - 0x0096DC 02:96CC: F5        .byte $F5   ; 
- D 0 - I - 0x0096DD 02:96CD: 69        .byte $69   ; 
- D 0 - I - 0x0096DE 02:96CE: 00        .byte $00   ; 
- D 0 - I - 0x0096DF 02:96CF: 6C        .byte $6C   ; 
- D 0 - I - 0x0096E0 02:96D0: 6D        .byte $6D   ; 
- D 0 - I - 0x0096E1 02:96D1: 78        .byte $78   ; 
- D 0 - I - 0x0096E2 02:96D2: 79        .byte $79   ; 
- D 0 - I - 0x0096E3 02:96D3: 7C        .byte $7C   ; 
- D 0 - I - 0x0096E4 02:96D4: 7D        .byte $7D   ; 
- D 0 - I - 0x0096E5 02:96D5: A2        .byte $A2   ; 
- D 0 - I - 0x0096E6 02:96D6: 1C        .byte $1C   ; 
- D 0 - I - 0x0096E7 02:96D7: 22        .byte $22   ; 
- D 0 - I - 0x0096E8 02:96D8: 22        .byte $22   ; 
- D 0 - I - 0x0096E9 02:96D9: A2        .byte $A2   ; 
- D 0 - I - 0x0096EA 02:96DA: A2        .byte $A2   ; 
- D 0 - I - 0x0096EB 02:96DB: A6        .byte $A6   ; 
- D 0 - I - 0x0096EC 02:96DC: A7        .byte $A7   ; 
- D 0 - I - 0x0096ED 02:96DD: A2        .byte $A2   ; 
- D 0 - I - 0x0096EE 02:96DE: A2        .byte $A2   ; 
- D 0 - I - 0x0096EF 02:96DF: B3        .byte $B3   ; 
- D 0 - I - 0x0096F0 02:96E0: B6        .byte $B6   ; 
- D 0 - I - 0x0096F1 02:96E1: A2        .byte $A2   ; 
- D 0 - I - 0x0096F2 02:96E2: B7        .byte $B7   ; 
- D 0 - I - 0x0096F3 02:96E3: 00        .byte $00   ; 
- D 0 - I - 0x0096F4 02:96E4: E2        .byte $E2   ; 
- D 0 - I - 0x0096F5 02:96E5: E3        .byte $E3   ; 
- D 0 - I - 0x0096F6 02:96E6: E6        .byte $E6   ; 
- D 0 - I - 0x0096F7 02:96E7: E7        .byte $E7   ; 
- D 0 - I - 0x0096F8 02:96E8: F2        .byte $F2   ; 
- D 0 - I - 0x0096F9 02:96E9: F3        .byte $F3   ; 
- D 0 - I - 0x0096FA 02:96EA: F6        .byte $F6   ; 
- D 0 - I - 0x0096FB 02:96EB: F7        .byte $F7   ; 
- D 0 - I - 0x0096FC 02:96EC: 6B        .byte $6B   ; 
- D 0 - I - 0x0096FD 02:96ED: 00        .byte $00   ; 
- D 0 - I - 0x0096FE 02:96EE: 6E        .byte $6E   ; 
- D 0 - I - 0x0096FF 02:96EF: 6F        .byte $6F   ; 
- D 0 - I - 0x009700 02:96F0: 7A        .byte $7A   ; 
- D 0 - I - 0x009701 02:96F1: 7B        .byte $7B   ; 
- D 0 - I - 0x009702 02:96F2: 7E        .byte $7E   ; 
- D 0 - I - 0x009703 02:96F3: 7F        .byte $7F   ; 
- D 0 - I - 0x009704 02:96F4: FF        .byte $FF   ; 
- D 0 - I - 0x009705 02:96F5: 1C        .byte $1C   ; 
- D 0 - I - 0x009706 02:96F6: 42        .byte $42   ; 
- D 0 - I - 0x009707 02:96F7: 22        .byte $22   ; 
- D 0 - I - 0x009708 02:96F8: A8        .byte $A8   ; 
- D 0 - I - 0x009709 02:96F9: A8        .byte $A8   ; 
- D 0 - I - 0x00970A 02:96FA: A8        .byte $A8   ; 
- D 0 - I - 0x00970B 02:96FB: A8        .byte $A8   ; 
- D 0 - I - 0x00970C 02:96FC: A9        .byte $A9   ; 
- D 0 - I - 0x00970D 02:96FD: AC        .byte $AC   ; 
- D 0 - I - 0x00970E 02:96FE: AC        .byte $AC   ; 
- D 0 - I - 0x00970F 02:96FF: AC        .byte $AC   ; 
- D 0 - I - 0x009710 02:9700: AD        .byte $AD   ; 
- D 0 - I - 0x009711 02:9701: B8        .byte $B8   ; 
- D 0 - I - 0x009712 02:9702: B8        .byte $B8   ; 
- D 0 - I - 0x009713 02:9703: B9        .byte $B9   ; 
- D 0 - I - 0x009714 02:9704: BC        .byte $BC   ; 
- D 0 - I - 0x009715 02:9705: BD        .byte $BD   ; 
- D 0 - I - 0x009716 02:9706: E8        .byte $E8   ; 
- D 0 - I - 0x009717 02:9707: BD        .byte $BD   ; 
- D 0 - I - 0x009718 02:9708: E9        .byte $E9   ; 
- D 0 - I - 0x009719 02:9709: EB        .byte $EB   ; 
- D 0 - I - 0x00971A 02:970A: EE        .byte $EE   ; 
- D 0 - I - 0x00971B 02:970B: EF        .byte $EF   ; 
- D 0 - I - 0x00971C 02:970C: FA        .byte $FA   ; 
- D 0 - I - 0x00971D 02:970D: FB        .byte $FB   ; 
- D 0 - I - 0x00971E 02:970E: FE        .byte $FE   ; 
- D 0 - I - 0x00971F 02:970F: EC        .byte $EC   ; 
- D 0 - I - 0x009720 02:9710: ED        .byte $ED   ; 
- D 0 - I - 0x009721 02:9711: F8        .byte $F8   ; 
- D 0 - I - 0x009722 02:9712: F9        .byte $F9   ; 
- D 0 - I - 0x009723 02:9713: FC        .byte $FC   ; 
- D 0 - I - 0x009724 02:9714: 1C        .byte $1C   ; 
- D 0 - I - 0x009725 02:9715: 62        .byte $62   ; 
- D 0 - I - 0x009726 02:9716: 22        .byte $22   ; 
- D 0 - I - 0x009727 02:9717: 81        .byte $81   ; 
- D 0 - I - 0x009728 02:9718: 81        .byte $81   ; 
- D 0 - I - 0x009729 02:9719: 81        .byte $81   ; 
- D 0 - I - 0x00972A 02:971A: 81        .byte $81   ; 
- D 0 - I - 0x00972B 02:971B: AA        .byte $AA   ; 
- D 0 - I - 0x00972C 02:971C: 81        .byte $81   ; 
- D 0 - I - 0x00972D 02:971D: 81        .byte $81   ; 
- D 0 - I - 0x00972E 02:971E: 81        .byte $81   ; 
- D 0 - I - 0x00972F 02:971F: AA        .byte $AA   ; 
- D 0 - I - 0x009730 02:9720: 81        .byte $81   ; 
- D 0 - I - 0x009731 02:9721: 81        .byte $81   ; 
- D 0 - I - 0x009732 02:9722: 81        .byte $81   ; 
- D 0 - I - 0x009733 02:9723: AB        .byte $AB   ; 
- D 0 - I - 0x009734 02:9724: AE        .byte $AE   ; 
- D 0 - I - 0x009735 02:9725: AE        .byte $AE   ; 
- D 0 - I - 0x009736 02:9726: AE        .byte $AE   ; 
- D 0 - I - 0x009737 02:9727: AF        .byte $AF   ; 
- D 0 - I - 0x009738 02:9728: BA        .byte $BA   ; 
- D 0 - I - 0x009739 02:9729: BA        .byte $BA   ; 
- D 0 - I - 0x00973A 02:972A: BA        .byte $BA   ; 
- D 0 - I - 0x00973B 02:972B: BB        .byte $BB   ; 
- D 0 - I - 0x00973C 02:972C: BE        .byte $BE   ; 
- D 0 - I - 0x00973D 02:972D: BE        .byte $BE   ; 
- D 0 - I - 0x00973E 02:972E: BE        .byte $BE   ; 
- D 0 - I - 0x00973F 02:972F: BF        .byte $BF   ; 
- D 0 - I - 0x009740 02:9730: EA        .byte $EA   ; 
- D 0 - I - 0x009741 02:9731: EA        .byte $EA   ; 
- D 0 - I - 0x009742 02:9732: EA        .byte $EA   ; 
- D 0 - I - 0x009743 02:9733: 18        .byte $18   ; 
- D 0 - I - 0x009744 02:9734: D0        .byte $D0   ; 
- D 0 - I - 0x009745 02:9735: 23        .byte $23   ; 
- D 0 - I - 0x009746 02:9736: 55        .byte $55   ; 
- D 0 - I - 0x009747 02:9737: 55        .byte $55   ; 
- D 0 - I - 0x009748 02:9738: 55        .byte $55   ; 
- D 0 - I - 0x009749 02:9739: 55        .byte $55   ; 
- D 0 - I - 0x00974A 02:973A: 55        .byte $55   ; 
- D 0 - I - 0x00974B 02:973B: 55        .byte $55   ; 
- D 0 - I - 0x00974C 02:973C: 55        .byte $55   ; 
- D 0 - I - 0x00974D 02:973D: 55        .byte $55   ; 
- D 0 - I - 0x00974E 02:973E: 55        .byte $55   ; 
- D 0 - I - 0x00974F 02:973F: 55        .byte $55   ; 
- D 0 - I - 0x009750 02:9740: 55        .byte $55   ; 
- D 0 - I - 0x009751 02:9741: 55        .byte $55   ; 
- D 0 - I - 0x009752 02:9742: 55        .byte $55   ; 
- D 0 - I - 0x009753 02:9743: 55        .byte $55   ; 
- D 0 - I - 0x009754 02:9744: 55        .byte $55   ; 
- D 0 - I - 0x009755 02:9745: 55        .byte $55   ; 
- D 0 - I - 0x009756 02:9746: 55        .byte $55   ; 
- D 0 - I - 0x009757 02:9747: 55        .byte $55   ; 
- D 0 - I - 0x009758 02:9748: 55        .byte $55   ; 
- D 0 - I - 0x009759 02:9749: 55        .byte $55   ; 
- D 0 - I - 0x00975A 02:974A: 55        .byte $55   ; 
- D 0 - I - 0x00975B 02:974B: 55        .byte $55   ; 
- D 0 - I - 0x00975C 02:974C: 55        .byte $55   ; 
- D 0 - I - 0x00975D 02:974D: 55        .byte $55   ; 
- D 0 - I - 0x00975E 02:974E: 00        .byte $00   ; 



sub_0x00975F:
C D 0 - - - 0x00975F 02:974F: A2 00     LDX #$00
C - - - - - 0x009761 02:9751: 86 2C     STX ram_002C
C - - - - - 0x009763 02:9753: 48        PHA
C - - - - - 0x009764 02:9754: 20 64 97  JSR sub_9764
C - - - - - 0x009767 02:9757: 68        PLA
C - - - - - 0x009768 02:9758: 38        SEC
C - - - - - 0x009769 02:9759: E9 04     SBC #$04
C - - - - - 0x00976B 02:975B: 49 0F     EOR #$0F
C - - - - - 0x00976D 02:975D: 18        CLC
C - - - - - 0x00976E 02:975E: 69 04     ADC #$04
C - - - - - 0x009770 02:9760: 20 64 97  JSR sub_9764
C - - - - - 0x009773 02:9763: 60        RTS



sub_9764:
C - - - - - 0x009774 02:9764: 0A        ASL
C - - - - - 0x009775 02:9765: AA        TAX
C - - - - - 0x009776 02:9766: BD 22 99  LDA tbl_9922,X
C - - - - - 0x009779 02:9769: 85 2A     STA ram_002A
C - - - - - 0x00977B 02:976B: BD 23 99  LDA tbl_9922 + 1,X
C - - - - - 0x00977E 02:976E: 85 2B     STA ram_002B
C - - - - - 0x009780 02:9770: A9 0B     LDA #$0B
C - - - - - 0x009782 02:9772: 85 2D     STA ram_002D
loc_9774:
C D 0 - - - 0x009784 02:9774: A5 2C     LDA ram_002C
C - - - - - 0x009786 02:9776: CD 29 04  CMP ram_plr_w_ball
C - - - - - 0x009789 02:9779: D0 03     BNE bra_977E
C - - - - - 0x00978B 02:977B: 4C 38 98  JMP loc_9838
bra_977E:
C - - - - - 0x00978E 02:977E: 20 57 C0  JSR sub_0x00CBF3_get_base_player_address
                                        JSR sub_0x00C953_clear_player_flag___control
C - - - - - 0x009799 02:9789: A9 00     LDA #con_behavior_idle
C - - - - - 0x00979B 02:978B: 20 5A C0  JSR sub_0x00C63F_player_state_handler
C - - - - - 0x00979E 02:978E: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x0097A1 02:9791: A6 2C     LDX ram_002C
C - - - - - 0x0097A3 02:9793: E0 0B     CPX #$0B
C - - - - - 0x0097A5 02:9795: 90 09     BCC bra_97A0
C - - - - - 0x0097A7 02:9797: 8A        TXA
C - - - - - 0x0097A8 02:9798: E9 0B     SBC #$0B
C - - - - - 0x0097AA 02:979A: AA        TAX
C - - - - - 0x0097AB 02:979B: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x0097AE 02:979E: 49 0B     EOR #$0B
bra_97A0:
C - - - - - 0x0097B0 02:97A0: A8        TAY
C - - - - - 0x0097B1 02:97A1: F0 06     BEQ bra_97A9
C - - - - - 0x0097B3 02:97A3: 86 2E     STX ram_002E
C - - - - - 0x0097B5 02:97A5: 18        CLC
C - - - - - 0x0097B6 02:97A6: 65 2E     ADC ram_002E
C - - - - - 0x0097B8 02:97A8: AA        TAX
bra_97A9:
C - - - - - 0x0097B9 02:97A9: 8A        TXA
C - - - - - 0x0097BA 02:97AA: 0A        ASL
C - - - - - 0x0097BB 02:97AB: 0A        ASL
C - - - - - 0x0097BC 02:97AC: A8        TAY
C - - - - - 0x0097BD 02:97AD: B1 2A     LDA (ram_002A),Y
C - - - - - 0x0097BF 02:97AF: AA        TAX
C - - - - - 0x0097C0 02:97B0: C8        INY
C - - - - - 0x0097C1 02:97B1: B1 2A     LDA (ram_002A),Y
C - - - - - 0x0097C3 02:97B3: C8        INY
C - - - - - 0x0097C4 02:97B4: 84 2E     STY ram_002E
C - - - - - 0x0097C6 02:97B6: A8        TAY
C - - - - - 0x0097C7 02:97B7: 30 3A     BMI bra_97F3
C - - - - - 0x0097C9 02:97B9: 29 60     AND #$60
C - - - - - 0x0097CB 02:97BB: F0 23     BEQ bra_97E0
C - - - - - 0x0097CD 02:97BD: 29 20     AND #$20
C - - - - - 0x0097CF 02:97BF: 08        PHP
C - - - - - 0x0097D0 02:97C0: 98        TYA
C - - - - - 0x0097D1 02:97C1: 29 1F     AND #$1F
C - - - - - 0x0097D3 02:97C3: 28        PLP
C - - - - - 0x0097D4 02:97C4: F0 02     BEQ bra_97C8
C - - - - - 0x0097D6 02:97C6: 09 E0     ORA #$E0
bra_97C8:
C - - - - - 0x0097D8 02:97C8: A8        TAY
C - - - - - 0x0097D9 02:97C9: A5 2C     LDA ram_002C
C - - - - - 0x0097DB 02:97CB: C9 0B     CMP #$0B
C - - - - - 0x0097DD 02:97CD: 90 03     BCC bra_97D2
C - - - - - 0x0097DF 02:97CF: 20 42 C0  JSR sub_0x00C92E_EOR_16bit
bra_97D2:
C - - - - - 0x0097E2 02:97D2: 18        CLC
C - - - - - 0x0097E3 02:97D3: 8A        TXA
C - - - - - 0x0097E4 02:97D4: 6D D8 03  ADC ram_ball_pos_X_lo
C - - - - - 0x0097E7 02:97D7: AA        TAX
C - - - - - 0x0097E8 02:97D8: 98        TYA
C - - - - - 0x0097E9 02:97D9: 6D DA 03  ADC ram_ball_pos_X_hi
C - - - - - 0x0097EC 02:97DC: A8        TAY
C - - - - - 0x0097ED 02:97DD: 4C E9 97  JMP loc_97E9
bra_97E0:
C - - - - - 0x0097F0 02:97E0: A5 2C     LDA ram_002C
C - - - - - 0x0097F2 02:97E2: C9 0B     CMP #$0B
C - - - - - 0x0097F4 02:97E4: 90 03     BCC bra_97E9
C - - - - - 0x0097F6 02:97E6: 20 36 C0  JSR sub_0x00CB5A
bra_97E9:
loc_97E9:
C D 0 - - - 0x0097F9 02:97E9: 98        TYA
C - - - - - 0x0097FA 02:97EA: A0 07     LDY #con_plr_pos_X_hi
C - - - - - 0x0097FC 02:97EC: 91 61     STA (ram_plr_data),Y
C - - - - - 0x0097FE 02:97EE: 88        DEY
C - - - - - 0x0097FF 02:97EF: 88        DEY ; con_plr_pos_X_lo
C - - - - - 0x009800 02:97F0: 8A        TXA
C - - - - - 0x009801 02:97F1: 91 61     STA (ram_plr_data),Y
bra_97F3:
C - - - - - 0x009803 02:97F3: A4 2E     LDY ram_002E
C - - - - - 0x009805 02:97F5: B1 2A     LDA (ram_002A),Y
C - - - - - 0x009807 02:97F7: AA        TAX
C - - - - - 0x009808 02:97F8: C8        INY
C - - - - - 0x009809 02:97F9: B1 2A     LDA (ram_002A),Y
C - - - - - 0x00980B 02:97FB: A8        TAY
C - - - - - 0x00980C 02:97FC: 30 3A     BMI bra_9838
C - - - - - 0x00980E 02:97FE: 29 60     AND #$60
C - - - - - 0x009810 02:9800: F0 23     BEQ bra_9825
C - - - - - 0x009812 02:9802: 29 20     AND #$20
C - - - - - 0x009814 02:9804: 08        PHP
C - - - - - 0x009815 02:9805: 98        TYA
C - - - - - 0x009816 02:9806: 29 1F     AND #$1F
C - - - - - 0x009818 02:9808: 28        PLP
C - - - - - 0x009819 02:9809: F0 02     BEQ bra_980D
C - - - - - 0x00981B 02:980B: 09 E0     ORA #$E0
bra_980D:
C - - - - - 0x00981D 02:980D: A8        TAY
C - - - - - 0x00981E 02:980E: A5 2C     LDA ram_002C
C - - - - - 0x009820 02:9810: C9 0B     CMP #$0B
C - - - - - 0x009822 02:9812: 90 03     BCC bra_9817
C - - - - - 0x009824 02:9814: 20 42 C0  JSR sub_0x00C92E_EOR_16bit
bra_9817:
C - - - - - 0x009827 02:9817: 18        CLC
C - - - - - 0x009828 02:9818: 8A        TXA
C - - - - - 0x009829 02:9819: 6D DE 03  ADC ram_ball_pos_Y_lo
C - - - - - 0x00982C 02:981C: AA        TAX
C - - - - - 0x00982D 02:981D: 98        TYA
C - - - - - 0x00982E 02:981E: 6D E0 03  ADC ram_ball_pos_Y_hi
C - - - - - 0x009831 02:9821: A8        TAY
C - - - - - 0x009832 02:9822: 4C 2E 98  JMP loc_982E
bra_9825:
C - - - - - 0x009835 02:9825: A5 2C     LDA ram_002C
C - - - - - 0x009837 02:9827: C9 0B     CMP #$0B
C - - - - - 0x009839 02:9829: 90 03     BCC bra_982E
C - - - - - 0x00983B 02:982B: 20 39 C0  JSR sub_0x00CB60
bra_982E:
loc_982E:
C D 0 - - - 0x00983E 02:982E: 98        TYA
C - - - - - 0x00983F 02:982F: A0 0D     LDY #con_plr_pos_Y_hi
C - - - - - 0x009841 02:9831: 91 61     STA (ram_plr_data),Y
C - - - - - 0x009843 02:9833: 88        DEY
C - - - - - 0x009844 02:9834: 88        DEY ; con_plr_pos_Y_lo
C - - - - - 0x009845 02:9835: 8A        TXA
C - - - - - 0x009846 02:9836: 91 61     STA (ram_plr_data),Y
bra_9838:
loc_9838:
C D 0 - - - 0x009848 02:9838: E6 2C     INC ram_002C
C - - - - - 0x00984A 02:983A: C6 2D     DEC ram_002D
C - - - - - 0x00984C 02:983C: F0 03     BEQ bra_9841_RTS
C - - - - - 0x00984E 02:983E: 4C 74 97  JMP loc_9774
bra_9841_RTS:
C - - - - - 0x009851 02:9841: 60        RTS



sub_0x009852:   ; bzk опт, похожая рутина выше в 0x009774
C D 0 - - - 0x009852 02:9842: 0A        ASL
C - - - - - 0x009853 02:9843: AA        TAX
C - - - - - 0x009854 02:9844: BD 22 99  LDA tbl_9922,X
C - - - - - 0x009857 02:9847: 85 2A     STA ram_002A
C - - - - - 0x009859 02:9849: BD 23 99  LDA tbl_9922 + 1,X
C - - - - - 0x00985C 02:984C: 85 2B     STA ram_002B
C - - - - - 0x00985E 02:984E: A9 00     LDA #$00
C - - - - - 0x009860 02:9850: 85 2C     STA ram_002C
loc_9852:
C D 0 - - - 0x009862 02:9852: A5 2C     LDA ram_002C
C - - - - - 0x009864 02:9854: CD 29 04  CMP ram_plr_w_ball
C - - - - - 0x009867 02:9857: D0 03     BNE bra_985C
C - - - - - 0x009869 02:9859: 4C 16 99  JMP loc_9916
bra_985C:
C - - - - - 0x00986C 02:985C: 20 57 C0  JSR sub_0x00CBF3_get_base_player_address
                                        JSR sub_0x00C953_clear_player_flag___control
C - - - - - 0x009877 02:9867: A9 00     LDA #con_behavior_idle
C - - - - - 0x009879 02:9869: 20 5A C0  JSR sub_0x00C63F_player_state_handler
C - - - - - 0x00987C 02:986C: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00987F 02:986F: A6 2C     LDX ram_002C
C - - - - - 0x009881 02:9871: E0 0B     CPX #$0B
C - - - - - 0x009883 02:9873: 90 09     BCC bra_987E
C - - - - - 0x009885 02:9875: 8A        TXA
C - - - - - 0x009886 02:9876: E9 0B     SBC #$0B
C - - - - - 0x009888 02:9878: AA        TAX
C - - - - - 0x009889 02:9879: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00988C 02:987C: 49 0B     EOR #$0B
bra_987E:
C - - - - - 0x00988E 02:987E: A8        TAY
C - - - - - 0x00988F 02:987F: F0 06     BEQ bra_9887
C - - - - - 0x009891 02:9881: 86 2D     STX ram_002D
C - - - - - 0x009893 02:9883: 18        CLC
C - - - - - 0x009894 02:9884: 65 2D     ADC ram_002D
C - - - - - 0x009896 02:9886: AA        TAX
bra_9887:
C - - - - - 0x009897 02:9887: 8A        TXA
C - - - - - 0x009898 02:9888: 0A        ASL
C - - - - - 0x009899 02:9889: 0A        ASL
C - - - - - 0x00989A 02:988A: A8        TAY
C - - - - - 0x00989B 02:988B: B1 2A     LDA (ram_002A),Y
C - - - - - 0x00989D 02:988D: AA        TAX
C - - - - - 0x00989E 02:988E: C8        INY
C - - - - - 0x00989F 02:988F: B1 2A     LDA (ram_002A),Y
C - - - - - 0x0098A1 02:9891: C8        INY
C - - - - - 0x0098A2 02:9892: 84 2D     STY ram_002D
C - - - - - 0x0098A4 02:9894: A8        TAY
C - - - - - 0x0098A5 02:9895: 30 3A     BMI bra_98D1
C - - - - - 0x0098A7 02:9897: 29 60     AND #$60
C - - - - - 0x0098A9 02:9899: F0 23     BEQ bra_98BE
C - - - - - 0x0098AB 02:989B: 29 20     AND #$20
C - - - - - 0x0098AD 02:989D: 08        PHP
C - - - - - 0x0098AE 02:989E: 98        TYA
C - - - - - 0x0098AF 02:989F: 29 1F     AND #$1F
C - - - - - 0x0098B1 02:98A1: 28        PLP
C - - - - - 0x0098B2 02:98A2: F0 02     BEQ bra_98A6
C - - - - - 0x0098B4 02:98A4: 09 E0     ORA #$E0
bra_98A6:
C - - - - - 0x0098B6 02:98A6: A8        TAY
C - - - - - 0x0098B7 02:98A7: A5 2C     LDA ram_002C
C - - - - - 0x0098B9 02:98A9: C9 0B     CMP #$0B
C - - - - - 0x0098BB 02:98AB: 90 03     BCC bra_98B0
C - - - - - 0x0098BD 02:98AD: 20 42 C0  JSR sub_0x00C92E_EOR_16bit
bra_98B0:
C - - - - - 0x0098C0 02:98B0: 18        CLC
C - - - - - 0x0098C1 02:98B1: 8A        TXA
C - - - - - 0x0098C2 02:98B2: 6D D8 03  ADC ram_ball_pos_X_lo
C - - - - - 0x0098C5 02:98B5: AA        TAX
C - - - - - 0x0098C6 02:98B6: 98        TYA
C - - - - - 0x0098C7 02:98B7: 6D DA 03  ADC ram_ball_pos_X_hi
C - - - - - 0x0098CA 02:98BA: A8        TAY
C - - - - - 0x0098CB 02:98BB: 4C C7 98  JMP loc_98C7
bra_98BE:
C - - - - - 0x0098CE 02:98BE: A5 2C     LDA ram_002C
C - - - - - 0x0098D0 02:98C0: C9 0B     CMP #$0B
C - - - - - 0x0098D2 02:98C2: 90 03     BCC bra_98C7
C - - - - - 0x0098D4 02:98C4: 20 36 C0  JSR sub_0x00CB5A
bra_98C7:
loc_98C7:
C D 0 - - - 0x0098D7 02:98C7: 98        TYA
C - - - - - 0x0098D8 02:98C8: A0 07     LDY #con_plr_pos_X_hi
C - - - - - 0x0098DA 02:98CA: 91 61     STA (ram_plr_data),Y
C - - - - - 0x0098DC 02:98CC: 88        DEY
C - - - - - 0x0098DD 02:98CD: 88        DEY ; con_plr_pos_X_lo
C - - - - - 0x0098DE 02:98CE: 8A        TXA
C - - - - - 0x0098DF 02:98CF: 91 61     STA (ram_plr_data),Y
bra_98D1:
C - - - - - 0x0098E1 02:98D1: A4 2D     LDY ram_002D
C - - - - - 0x0098E3 02:98D3: B1 2A     LDA (ram_002A),Y
C - - - - - 0x0098E5 02:98D5: AA        TAX
C - - - - - 0x0098E6 02:98D6: C8        INY
C - - - - - 0x0098E7 02:98D7: B1 2A     LDA (ram_002A),Y
C - - - - - 0x0098E9 02:98D9: A8        TAY
C - - - - - 0x0098EA 02:98DA: 30 3A     BMI bra_9916
C - - - - - 0x0098EC 02:98DC: 29 60     AND #$60
C - - - - - 0x0098EE 02:98DE: F0 23     BEQ bra_9903
C - - - - - 0x0098F0 02:98E0: 29 20     AND #$20
C - - - - - 0x0098F2 02:98E2: 08        PHP
C - - - - - 0x0098F3 02:98E3: 98        TYA
C - - - - - 0x0098F4 02:98E4: 29 1F     AND #$1F
C - - - - - 0x0098F6 02:98E6: 28        PLP
C - - - - - 0x0098F7 02:98E7: F0 02     BEQ bra_98EB
C - - - - - 0x0098F9 02:98E9: 09 E0     ORA #$E0
bra_98EB:
C - - - - - 0x0098FB 02:98EB: A8        TAY
C - - - - - 0x0098FC 02:98EC: A5 2C     LDA ram_002C
C - - - - - 0x0098FE 02:98EE: C9 0B     CMP #$0B
C - - - - - 0x009900 02:98F0: 90 03     BCC bra_98F5
C - - - - - 0x009902 02:98F2: 20 42 C0  JSR sub_0x00C92E_EOR_16bit
bra_98F5:
C - - - - - 0x009905 02:98F5: 18        CLC
C - - - - - 0x009906 02:98F6: 8A        TXA
C - - - - - 0x009907 02:98F7: 6D DE 03  ADC ram_ball_pos_Y_lo
C - - - - - 0x00990A 02:98FA: AA        TAX
C - - - - - 0x00990B 02:98FB: 98        TYA
C - - - - - 0x00990C 02:98FC: 6D E0 03  ADC ram_ball_pos_Y_hi
C - - - - - 0x00990F 02:98FF: A8        TAY
C - - - - - 0x009910 02:9900: 4C 0C 99  JMP loc_990C
bra_9903:
C - - - - - 0x009913 02:9903: A5 2C     LDA ram_002C
C - - - - - 0x009915 02:9905: C9 0B     CMP #$0B
C - - - - - 0x009917 02:9907: 90 03     BCC bra_990C
C - - - - - 0x009919 02:9909: 20 39 C0  JSR sub_0x00CB60
bra_990C:
loc_990C:
C D 0 - - - 0x00991C 02:990C: 98        TYA
C - - - - - 0x00991D 02:990D: A0 0D     LDY #con_plr_pos_Y_hi
C - - - - - 0x00991F 02:990F: 91 61     STA (ram_plr_data),Y
C - - - - - 0x009921 02:9911: 88        DEY
C - - - - - 0x009922 02:9912: 88        DEY ; con_plr_pos_Y_lo
C - - - - - 0x009923 02:9913: 8A        TXA
C - - - - - 0x009924 02:9914: 91 61     STA (ram_plr_data),Y
bra_9916:
loc_9916:
C D 0 - - - 0x009926 02:9916: E6 2C     INC ram_002C
C - - - - - 0x009928 02:9918: A5 2C     LDA ram_002C
C - - - - - 0x00992A 02:991A: C9 16     CMP #$16
C - - - - - 0x00992C 02:991C: F0 03     BEQ bra_9921_RTS
C - - - - - 0x00992E 02:991E: 4C 52 98  JMP loc_9852
bra_9921_RTS:
C - - - - - 0x009931 02:9921: 60        RTS



tbl_9922:
; 20 кусков по 88 байтов
- D 0 - - - 0x009932 02:9922: 4A 99     .word _off007_994A_00
- D 0 - - - 0x009934 02:9924: A2 99     .word _off007_99A2_01
- D 0 - - - 0x009936 02:9926: FA 99     .word _off007_99FA_02
- D 0 - - - 0x009938 02:9928: 52 9A     .word _off007_9A52_03
- D 0 - - - 0x00993A 02:992A: AA 9A     .word _off007_9AAA_04
- D 0 - - - 0x00993C 02:992C: 02 9B     .word _off007_9B02_05
- D 0 - - - 0x00993E 02:992E: 5A 9B     .word _off007_9B5A_06
- D 0 - - - 0x009940 02:9930: B2 9B     .word _off007_9BB2_07
- - - - - - 0x009942 02:9932: 0A 9C     .word _off007_9C0A_08
- D 0 - - - 0x009944 02:9934: 62 9C     .word _off007_9C62_09
- D 0 - - - 0x009946 02:9936: BA 9C     .word _off007_9CBA_0A
- D 0 - - - 0x009948 02:9938: 12 9D     .word _off007_9D12_0B
- D 0 - - - 0x00994A 02:993A: 6A 9D     .word _off007_9D6A_0C
- D 0 - - - 0x00994C 02:993C: C2 9D     .word _off007_9DC2_0D
- D 0 - - - 0x00994E 02:993E: 1A 9E     .word _off007_9E1A_0E
- - - - - - 0x009950 02:9940: 72 9E     .word _off007_9E72_0F
- D 0 - - - 0x009952 02:9942: CA 9E     .word _off007_9ECA_10
- D 0 - - - 0x009954 02:9944: 22 9F     .word _off007_9F22_11
- D 0 - - - 0x009956 02:9946: 7A 9F     .word _off007_9F7A_12
- D 0 - - - 0x009958 02:9948: D2 9F     .word _off007_9FD2_13



_off007_994A_00:
- D 0 - I - 0x00995A 02:994A: FF        .byte $FF   ; 
- D 0 - I - 0x00995B 02:994B: 00        .byte $00   ; 
- D 0 - I - 0x00995C 02:994C: 47        .byte $47   ; 
- D 0 - I - 0x00995D 02:994D: 03        .byte $03   ; 
- D 0 - I - 0x00995E 02:994E: FF        .byte $FF   ; 
- D 0 - I - 0x00995F 02:994F: 00        .byte $00   ; 
- D 0 - I - 0x009960 02:9950: A7        .byte $A7   ; 
- D 0 - I - 0x009961 02:9951: 02        .byte $02   ; 
- D 0 - I - 0x009962 02:9952: 97        .byte $97   ; 
- D 0 - I - 0x009963 02:9953: 01        .byte $01   ; 
- D 0 - I - 0x009964 02:9954: 77        .byte $77   ; 
- D 0 - I - 0x009965 02:9955: 02        .byte $02   ; 
- D 0 - I - 0x009966 02:9956: FF        .byte $FF   ; 
- D 0 - I - 0x009967 02:9957: 00        .byte $00   ; 
- D 0 - I - 0x009968 02:9958: 67        .byte $67   ; 
- D 0 - I - 0x009969 02:9959: 02        .byte $02   ; 
- D 0 - I - 0x00996A 02:995A: 67        .byte $67   ; 
- D 0 - I - 0x00996B 02:995B: 00        .byte $00   ; 
- D 0 - I - 0x00996C 02:995C: 77        .byte $77   ; 
- D 0 - I - 0x00996D 02:995D: 02        .byte $02   ; 
- D 0 - I - 0x00996E 02:995E: 37        .byte $37   ; 
- D 0 - I - 0x00996F 02:995F: 01        .byte $01   ; 
- D 0 - I - 0x009970 02:9960: 37        .byte $37   ; 
- D 0 - I - 0x009971 02:9961: 02        .byte $02   ; 
- D 0 - I - 0x009972 02:9962: 07        .byte $07   ; 
- D 0 - I - 0x009973 02:9963: 01        .byte $01   ; 
- D 0 - I - 0x009974 02:9964: 07        .byte $07   ; 
- D 0 - I - 0x009975 02:9965: 02        .byte $02   ; 
- D 0 - I - 0x009976 02:9966: C7        .byte $C7   ; 
- D 0 - I - 0x009977 02:9967: 00        .byte $00   ; 
- D 0 - I - 0x009978 02:9968: 37        .byte $37   ; 
- D 0 - I - 0x009979 02:9969: 02        .byte $02   ; 
- D 0 - I - 0x00997A 02:996A: DF        .byte $DF   ; 
- D 0 - I - 0x00997B 02:996B: 01        .byte $01   ; 
- D 0 - I - 0x00997C 02:996C: 07        .byte $07   ; 
- D 0 - I - 0x00997D 02:996D: 02        .byte $02   ; 
- D 0 - I - 0x00997E 02:996E: F7        .byte $F7   ; 
- D 0 - I - 0x00997F 02:996F: 00        .byte $00   ; 
- D 0 - I - 0x009980 02:9970: 04        .byte $04   ; 
- D 0 - I - 0x009981 02:9971: 02        .byte $02   ; 
- D 0 - I - 0x009982 02:9972: 1F        .byte $1F   ; 
- D 0 - I - 0x009983 02:9973: 00        .byte $00   ; 
- D 0 - I - 0x009984 02:9974: 07        .byte $07   ; 
- D 0 - I - 0x009985 02:9975: 02        .byte $02   ; 
- D 0 - I - 0x009986 02:9976: FF        .byte $FF   ; 
- D 0 - I - 0x009987 02:9977: 00        .byte $00   ; 
- D 0 - I - 0x009988 02:9978: 47        .byte $47   ; 
- D 0 - I - 0x009989 02:9979: 03        .byte $03   ; 
- D 0 - I - 0x00998A 02:997A: FF        .byte $FF   ; 
- D 0 - I - 0x00998B 02:997B: 00        .byte $00   ; 
- D 0 - I - 0x00998C 02:997C: AF        .byte $AF   ; 
- D 0 - I - 0x00998D 02:997D: 02        .byte $02   ; 
- D 0 - I - 0x00998E 02:997E: 87        .byte $87   ; 
- D 0 - I - 0x00998F 02:997F: 01        .byte $01   ; 
- D 0 - I - 0x009990 02:9980: 87        .byte $87   ; 
- D 0 - I - 0x009991 02:9981: 02        .byte $02   ; 
- D 0 - I - 0x009992 02:9982: CF        .byte $CF   ; 
- D 0 - I - 0x009993 02:9983: 00        .byte $00   ; 
- D 0 - I - 0x009994 02:9984: 77        .byte $77   ; 
- D 0 - I - 0x009995 02:9985: 02        .byte $02   ; 
- D 0 - I - 0x009996 02:9986: 77        .byte $77   ; 
- D 0 - I - 0x009997 02:9987: 00        .byte $00   ; 
- D 0 - I - 0x009998 02:9988: 87        .byte $87   ; 
- D 0 - I - 0x009999 02:9989: 02        .byte $02   ; 
- D 0 - I - 0x00999A 02:998A: 2F        .byte $2F   ; 
- D 0 - I - 0x00999B 02:998B: 01        .byte $01   ; 
- D 0 - I - 0x00999C 02:998C: 77        .byte $77   ; 
- D 0 - I - 0x00999D 02:998D: 02        .byte $02   ; 
- D 0 - I - 0x00999E 02:998E: BF        .byte $BF   ; 
- D 0 - I - 0x00999F 02:998F: 00        .byte $00   ; 
- D 0 - I - 0x0099A0 02:9990: 23        .byte $23   ; 
- D 0 - I - 0x0099A1 02:9991: 02        .byte $02   ; 
- D 0 - I - 0x0099A2 02:9992: FF        .byte $FF   ; 
- D 0 - I - 0x0099A3 02:9993: 00        .byte $00   ; 
- D 0 - I - 0x0099A4 02:9994: 4F        .byte $4F   ; 
- D 0 - I - 0x0099A5 02:9995: 02        .byte $02   ; 
- D 0 - I - 0x0099A6 02:9996: A7        .byte $A7   ; 
- D 0 - I - 0x0099A7 02:9997: 01        .byte $01   ; 
- D 0 - I - 0x0099A8 02:9998: 37        .byte $37   ; 
- D 0 - I - 0x0099A9 02:9999: 02        .byte $02   ; 
- D 0 - I - 0x0099AA 02:999A: 3F        .byte $3F   ; 
- D 0 - I - 0x0099AB 02:999B: 01        .byte $01   ; 
- D 0 - I - 0x0099AC 02:999C: 23        .byte $23   ; 
- D 0 - I - 0x0099AD 02:999D: 02        .byte $02   ; 
- D 0 - I - 0x0099AE 02:999E: 57        .byte $57   ; 
- D 0 - I - 0x0099AF 02:999F: 00        .byte $00   ; 
- D 0 - I - 0x0099B0 02:99A0: 37        .byte $37   ; 
- D 0 - I - 0x0099B1 02:99A1: 02        .byte $02   ; 



_off007_99A2_01:
- - - - - - 0x0099B2 02:99A2: 4E        .byte $4E   ; 
- - - - - - 0x0099B3 02:99A3: 01        .byte $01   ; 
- - - - - - 0x0099B4 02:99A4: 39        .byte $39   ; 
- - - - - - 0x0099B5 02:99A5: 03        .byte $03   ; 
- D 0 - I - 0x0099B6 02:99A6: 60        .byte $60   ; 
- D 0 - I - 0x0099B7 02:99A7: 00        .byte $00   ; 
- D 0 - I - 0x0099B8 02:99A8: E0        .byte $E0   ; 
- D 0 - I - 0x0099B9 02:99A9: 02        .byte $02   ; 
- D 0 - I - 0x0099BA 02:99AA: 48        .byte $48   ; 
- D 0 - I - 0x0099BB 02:99AB: 40        .byte $40   ; 
- D 0 - I - 0x0099BC 02:99AC: F0        .byte $F0   ; 
- D 0 - I - 0x0099BD 02:99AD: 7F        .byte $7F   ; 
- D 0 - I - 0x0099BE 02:99AE: A0        .byte $A0   ; 
- D 0 - I - 0x0099BF 02:99AF: 00        .byte $00   ; 
- D 0 - I - 0x0099C0 02:99B0: 80        .byte $80   ; 
- D 0 - I - 0x0099C1 02:99B1: 02        .byte $02   ; 
- D 0 - I - 0x0099C2 02:99B2: 60        .byte $60   ; 
- D 0 - I - 0x0099C3 02:99B3: 01        .byte $01   ; 
- D 0 - I - 0x0099C4 02:99B4: 80        .byte $80   ; 
- D 0 - I - 0x0099C5 02:99B5: 02        .byte $02   ; 
- D 0 - I - 0x0099C6 02:99B6: 80        .byte $80   ; 
- D 0 - I - 0x0099C7 02:99B7: 00        .byte $00   ; 
- D 0 - I - 0x0099C8 02:99B8: 20        .byte $20   ; 
- D 0 - I - 0x0099C9 02:99B9: 02        .byte $02   ; 
- D 0 - I - 0x0099CA 02:99BA: C0        .byte $C0   ; 
- D 0 - I - 0x0099CB 02:99BB: 01        .byte $01   ; 
- D 0 - I - 0x0099CC 02:99BC: E0        .byte $E0   ; 
- D 0 - I - 0x0099CD 02:99BD: 01        .byte $01   ; 
- D 0 - I - 0x0099CE 02:99BE: 80        .byte $80   ; 
- D 0 - I - 0x0099CF 02:99BF: 01        .byte $01   ; 
- D 0 - I - 0x0099D0 02:99C0: 20        .byte $20   ; 
- D 0 - I - 0x0099D1 02:99C1: 02        .byte $02   ; 
- D 0 - I - 0x0099D2 02:99C2: 00        .byte $00   ; 
- D 0 - I - 0x0099D3 02:99C3: 01        .byte $01   ; 
- D 0 - I - 0x0099D4 02:99C4: D0        .byte $D0   ; 
- D 0 - I - 0x0099D5 02:99C5: 01        .byte $01   ; 
- D 0 - I - 0x0099D6 02:99C6: 00        .byte $00   ; 
- D 0 - I - 0x0099D7 02:99C7: 01        .byte $01   ; 
- D 0 - I - 0x0099D8 02:99C8: 20        .byte $20   ; 
- D 0 - I - 0x0099D9 02:99C9: 02        .byte $02   ; 
- D 0 - I - 0x0099DA 02:99CA: 40        .byte $40   ; 
- D 0 - I - 0x0099DB 02:99CB: 00        .byte $00   ; 
- D 0 - I - 0x0099DC 02:99CC: E0        .byte $E0   ; 
- D 0 - I - 0x0099DD 02:99CD: 01        .byte $01   ; 
- D 0 - I - 0x0099DE 02:99CE: 00        .byte $00   ; 
- D 0 - I - 0x0099DF 02:99CF: 80        .byte $80   ; 
- D 0 - I - 0x0099E0 02:99D0: 00        .byte $00   ; 
- D 0 - I - 0x0099E1 02:99D1: 80        .byte $80   ; 
- D 0 - I - 0x0099E2 02:99D2: 40        .byte $40   ; 
- D 0 - I - 0x0099E3 02:99D3: 00        .byte $00   ; 
- D 0 - I - 0x0099E4 02:99D4: 20        .byte $20   ; 
- D 0 - I - 0x0099E5 02:99D5: 02        .byte $02   ; 
- D 0 - I - 0x0099E6 02:99D6: C0        .byte $C0   ; 
- D 0 - I - 0x0099E7 02:99D7: 01        .byte $01   ; 
- D 0 - I - 0x0099E8 02:99D8: 20        .byte $20   ; 
- D 0 - I - 0x0099E9 02:99D9: 02        .byte $02   ; 
- D 0 - I - 0x0099EA 02:99DA: 00        .byte $00   ; 
- D 0 - I - 0x0099EB 02:99DB: 01        .byte $01   ; 
- D 0 - I - 0x0099EC 02:99DC: 20        .byte $20   ; 
- D 0 - I - 0x0099ED 02:99DD: 02        .byte $02   ; 
- D 0 - I - 0x0099EE 02:99DE: 00        .byte $00   ; 
- D 0 - I - 0x0099EF 02:99DF: 01        .byte $01   ; 
- D 0 - I - 0x0099F0 02:99E0: 60        .byte $60   ; 
- D 0 - I - 0x0099F1 02:99E1: 02        .byte $02   ; 
- D 0 - I - 0x0099F2 02:99E2: C0        .byte $C0   ; 
- D 0 - I - 0x0099F3 02:99E3: 00        .byte $00   ; 
- D 0 - I - 0x0099F4 02:99E4: 30        .byte $30   ; 
- D 0 - I - 0x0099F5 02:99E5: 02        .byte $02   ; 
- D 0 - I - 0x0099F6 02:99E6: A0        .byte $A0   ; 
- D 0 - I - 0x0099F7 02:99E7: 01        .byte $01   ; 
- D 0 - I - 0x0099F8 02:99E8: E0        .byte $E0   ; 
- D 0 - I - 0x0099F9 02:99E9: 01        .byte $01   ; 
- D 0 - I - 0x0099FA 02:99EA: 40        .byte $40   ; 
- D 0 - I - 0x0099FB 02:99EB: 01        .byte $01   ; 
- D 0 - I - 0x0099FC 02:99EC: 30        .byte $30   ; 
- D 0 - I - 0x0099FD 02:99ED: 02        .byte $02   ; 
- D 0 - I - 0x0099FE 02:99EE: 00        .byte $00   ; 
- D 0 - I - 0x0099FF 02:99EF: 01        .byte $01   ; 
- D 0 - I - 0x009A00 02:99F0: 80        .byte $80   ; 
- D 0 - I - 0x009A01 02:99F1: 01        .byte $01   ; 
- D 0 - I - 0x009A02 02:99F2: 00        .byte $00   ; 
- D 0 - I - 0x009A03 02:99F3: 01        .byte $01   ; 
- D 0 - I - 0x009A04 02:99F4: C0        .byte $C0   ; 
- D 0 - I - 0x009A05 02:99F5: 01        .byte $01   ; 
- D 0 - I - 0x009A06 02:99F6: 60        .byte $60   ; 
- D 0 - I - 0x009A07 02:99F7: 00        .byte $00   ; 
- D 0 - I - 0x009A08 02:99F8: C0        .byte $C0   ; 
- D 0 - I - 0x009A09 02:99F9: 01        .byte $01   ; 



_off007_99FA_02:
- D 0 - I - 0x009A0A 02:99FA: 00        .byte $00   ; 
- D 0 - I - 0x009A0B 02:99FB: 80        .byte $80   ; 
- D 0 - I - 0x009A0C 02:99FC: 00        .byte $00   ; 
- D 0 - I - 0x009A0D 02:99FD: 80        .byte $80   ; 
- D 0 - I - 0x009A0E 02:99FE: 60        .byte $60   ; 
- D 0 - I - 0x009A0F 02:99FF: 00        .byte $00   ; 
- D 0 - I - 0x009A10 02:9A00: C0        .byte $C0   ; 
- D 0 - I - 0x009A11 02:9A01: 01        .byte $01   ; 
- D 0 - I - 0x009A12 02:9A02: A0        .byte $A0   ; 
- D 0 - I - 0x009A13 02:9A03: 01        .byte $01   ; 
- D 0 - I - 0x009A14 02:9A04: C0        .byte $C0   ; 
- D 0 - I - 0x009A15 02:9A05: 01        .byte $01   ; 
- D 0 - I - 0x009A16 02:9A06: 00        .byte $00   ; 
- D 0 - I - 0x009A17 02:9A07: 01        .byte $01   ; 
- D 0 - I - 0x009A18 02:9A08: C0        .byte $C0   ; 
- D 0 - I - 0x009A19 02:9A09: 01        .byte $01   ; 
- D 0 - I - 0x009A1A 02:9A0A: E0        .byte $E0   ; 
- D 0 - I - 0x009A1B 02:9A0B: 00        .byte $00   ; 
- D 0 - I - 0x009A1C 02:9A0C: 00        .byte $00   ; 
- D 0 - I - 0x009A1D 02:9A0D: 02        .byte $02   ; 
- D 0 - I - 0x009A1E 02:9A0E: 40        .byte $40   ; 
- D 0 - I - 0x009A1F 02:9A0F: 00        .byte $00   ; 
- D 0 - I - 0x009A20 02:9A10: 00        .byte $00   ; 
- D 0 - I - 0x009A21 02:9A11: 01        .byte $01   ; 
- D 0 - I - 0x009A22 02:9A12: 40        .byte $40   ; 
- D 0 - I - 0x009A23 02:9A13: 01        .byte $01   ; 
- D 0 - I - 0x009A24 02:9A14: 20        .byte $20   ; 
- D 0 - I - 0x009A25 02:9A15: 01        .byte $01   ; 
- D 0 - I - 0x009A26 02:9A16: F0        .byte $F0   ; 
- D 0 - I - 0x009A27 02:9A17: 40        .byte $40   ; 
- D 0 - I - 0x009A28 02:9A18: 48        .byte $48   ; 
- D 0 - I - 0x009A29 02:9A19: 40        .byte $40   ; 
- D 0 - I - 0x009A2A 02:9A1A: 60        .byte $60   ; 
- D 0 - I - 0x009A2B 02:9A1B: 41        .byte $41   ; 
- D 0 - I - 0x009A2C 02:9A1C: 30        .byte $30   ; 
- D 0 - I - 0x009A2D 02:9A1D: 40        .byte $40   ; 
- D 0 - I - 0x009A2E 02:9A1E: A0        .byte $A0   ; 
- D 0 - I - 0x009A2F 02:9A1F: 40        .byte $40   ; 
- D 0 - I - 0x009A30 02:9A20: 28        .byte $28   ; 
- D 0 - I - 0x009A31 02:9A21: 40        .byte $40   ; 
- - - - - - 0x009A32 02:9A22: 00        .byte $00   ; 
- - - - - - 0x009A33 02:9A23: 80        .byte $80   ; 
- - - - - - 0x009A34 02:9A24: 00        .byte $00   ; 
- - - - - - 0x009A35 02:9A25: 80        .byte $80   ; 
- D 0 - I - 0x009A36 02:9A26: 00        .byte $00   ; 
- D 0 - I - 0x009A37 02:9A27: 80        .byte $80   ; 
- D 0 - I - 0x009A38 02:9A28: 00        .byte $00   ; 
- D 0 - I - 0x009A39 02:9A29: 80        .byte $80   ; 
- D 0 - I - 0x009A3A 02:9A2A: 80        .byte $80   ; 
- D 0 - I - 0x009A3B 02:9A2B: 00        .byte $00   ; 
- D 0 - I - 0x009A3C 02:9A2C: 40        .byte $40   ; 
- D 0 - I - 0x009A3D 02:9A2D: 03        .byte $03   ; 
- D 0 - I - 0x009A3E 02:9A2E: 60        .byte $60   ; 
- D 0 - I - 0x009A3F 02:9A2F: 01        .byte $01   ; 
- D 0 - I - 0x009A40 02:9A30: 80        .byte $80   ; 
- D 0 - I - 0x009A41 02:9A31: 02        .byte $02   ; 
- D 0 - I - 0x009A42 02:9A32: 40        .byte $40   ; 
- D 0 - I - 0x009A43 02:9A33: 01        .byte $01   ; 
- D 0 - I - 0x009A44 02:9A34: 30        .byte $30   ; 
- D 0 - I - 0x009A45 02:9A35: 03        .byte $03   ; 
- D 0 - I - 0x009A46 02:9A36: E0        .byte $E0   ; 
- D 0 - I - 0x009A47 02:9A37: 00        .byte $00   ; 
- D 0 - I - 0x009A48 02:9A38: 20        .byte $20   ; 
- D 0 - I - 0x009A49 02:9A39: 03        .byte $03   ; 
- D 0 - I - 0x009A4A 02:9A3A: A0        .byte $A0   ; 
- D 0 - I - 0x009A4B 02:9A3B: 00        .byte $00   ; 
- D 0 - I - 0x009A4C 02:9A3C: A0        .byte $A0   ; 
- D 0 - I - 0x009A4D 02:9A3D: 02        .byte $02   ; 
- D 0 - I - 0x009A4E 02:9A3E: A0        .byte $A0   ; 
- D 0 - I - 0x009A4F 02:9A3F: 01        .byte $01   ; 
- D 0 - I - 0x009A50 02:9A40: 40        .byte $40   ; 
- D 0 - I - 0x009A51 02:9A41: 02        .byte $02   ; 
- D 0 - I - 0x009A52 02:9A42: 00        .byte $00   ; 
- D 0 - I - 0x009A53 02:9A43: 01        .byte $01   ; 
- D 0 - I - 0x009A54 02:9A44: E0        .byte $E0   ; 
- D 0 - I - 0x009A55 02:9A45: 02        .byte $02   ; 
- D 0 - I - 0x009A56 02:9A46: 00        .byte $00   ; 
- D 0 - I - 0x009A57 02:9A47: 01        .byte $01   ; 
- D 0 - I - 0x009A58 02:9A48: 40        .byte $40   ; 
- D 0 - I - 0x009A59 02:9A49: 02        .byte $02   ; 
- D 0 - I - 0x009A5A 02:9A4A: E0        .byte $E0   ; 
- D 0 - I - 0x009A5B 02:9A4B: 00        .byte $00   ; 
- D 0 - I - 0x009A5C 02:9A4C: A0        .byte $A0   ; 
- D 0 - I - 0x009A5D 02:9A4D: 02        .byte $02   ; 
- D 0 - I - 0x009A5E 02:9A4E: 40        .byte $40   ; 
- D 0 - I - 0x009A5F 02:9A4F: 00        .byte $00   ; 
- D 0 - I - 0x009A60 02:9A50: 80        .byte $80   ; 
- D 0 - I - 0x009A61 02:9A51: 02        .byte $02   ; 



_off007_9A52_03:
- D 0 - I - 0x009A62 02:9A52: 00        .byte $00   ; 
- D 0 - I - 0x009A63 02:9A53: 80        .byte $80   ; 
- D 0 - I - 0x009A64 02:9A54: 00        .byte $00   ; 
- D 0 - I - 0x009A65 02:9A55: 80        .byte $80   ; 
- D 0 - I - 0x009A66 02:9A56: 60        .byte $60   ; 
- D 0 - I - 0x009A67 02:9A57: 00        .byte $00   ; 
- D 0 - I - 0x009A68 02:9A58: C0        .byte $C0   ; 
- D 0 - I - 0x009A69 02:9A59: 01        .byte $01   ; 
- D 0 - I - 0x009A6A 02:9A5A: C0        .byte $C0   ; 
- D 0 - I - 0x009A6B 02:9A5B: 01        .byte $01   ; 
- D 0 - I - 0x009A6C 02:9A5C: C0        .byte $C0   ; 
- D 0 - I - 0x009A6D 02:9A5D: 01        .byte $01   ; 
- D 0 - I - 0x009A6E 02:9A5E: 00        .byte $00   ; 
- D 0 - I - 0x009A6F 02:9A5F: 01        .byte $01   ; 
- D 0 - I - 0x009A70 02:9A60: C0        .byte $C0   ; 
- D 0 - I - 0x009A71 02:9A61: 01        .byte $01   ; 
- D 0 - I - 0x009A72 02:9A62: E0        .byte $E0   ; 
- D 0 - I - 0x009A73 02:9A63: 00        .byte $00   ; 
- D 0 - I - 0x009A74 02:9A64: 00        .byte $00   ; 
- D 0 - I - 0x009A75 02:9A65: 02        .byte $02   ; 
- D 0 - I - 0x009A76 02:9A66: 10        .byte $10   ; 
- D 0 - I - 0x009A77 02:9A67: 7F        .byte $7F   ; 
- D 0 - I - 0x009A78 02:9A68: 48        .byte $48   ; 
- D 0 - I - 0x009A79 02:9A69: 40        .byte $40   ; 
- - - - - - 0x009A7A 02:9A6A: 00        .byte $00   ; 
- - - - - - 0x009A7B 02:9A6B: 80        .byte $80   ; 
- - - - - - 0x009A7C 02:9A6C: 00        .byte $00   ; 
- - - - - - 0x009A7D 02:9A6D: 80        .byte $80   ; 
- D 0 - I - 0x009A7E 02:9A6E: C0        .byte $C0   ; 
- D 0 - I - 0x009A7F 02:9A6F: 01        .byte $01   ; 
- D 0 - I - 0x009A80 02:9A70: 00        .byte $00   ; 
- D 0 - I - 0x009A81 02:9A71: 01        .byte $01   ; 
- D 0 - I - 0x009A82 02:9A72: 60        .byte $60   ; 
- D 0 - I - 0x009A83 02:9A73: 7F        .byte $7F   ; 
- D 0 - I - 0x009A84 02:9A74: 28        .byte $28   ; 
- D 0 - I - 0x009A85 02:9A75: 40        .byte $40   ; 
- D 0 - I - 0x009A86 02:9A76: C0        .byte $C0   ; 
- D 0 - I - 0x009A87 02:9A77: 00        .byte $00   ; 
- D 0 - I - 0x009A88 02:9A78: 20        .byte $20   ; 
- D 0 - I - 0x009A89 02:9A79: 01        .byte $01   ; 
- D 0 - I - 0x009A8A 02:9A7A: A0        .byte $A0   ; 
- D 0 - I - 0x009A8B 02:9A7B: 7E        .byte $7E   ; 
- D 0 - I - 0x009A8C 02:9A7C: 30        .byte $30   ; 
- D 0 - I - 0x009A8D 02:9A7D: 40        .byte $40   ; 
- D 0 - I - 0x009A8E 02:9A7E: 00        .byte $00   ; 
- D 0 - I - 0x009A8F 02:9A7F: 80        .byte $80   ; 
- D 0 - I - 0x009A90 02:9A80: 00        .byte $00   ; 
- D 0 - I - 0x009A91 02:9A81: 80        .byte $80   ; 
- D 0 - I - 0x009A92 02:9A82: A0        .byte $A0   ; 
- D 0 - I - 0x009A93 02:9A83: 00        .byte $00   ; 
- D 0 - I - 0x009A94 02:9A84: 80        .byte $80   ; 
- D 0 - I - 0x009A95 02:9A85: 02        .byte $02   ; 
- D 0 - I - 0x009A96 02:9A86: 80        .byte $80   ; 
- D 0 - I - 0x009A97 02:9A87: 01        .byte $01   ; 
- D 0 - I - 0x009A98 02:9A88: 40        .byte $40   ; 
- D 0 - I - 0x009A99 02:9A89: 03        .byte $03   ; 
- D 0 - I - 0x009A9A 02:9A8A: C0        .byte $C0   ; 
- D 0 - I - 0x009A9B 02:9A8B: 00        .byte $00   ; 
- D 0 - I - 0x009A9C 02:9A8C: 30        .byte $30   ; 
- D 0 - I - 0x009A9D 02:9A8D: 03        .byte $03   ; 
- D 0 - I - 0x009A9E 02:9A8E: 20        .byte $20   ; 
- D 0 - I - 0x009A9F 02:9A8F: 01        .byte $01   ; 
- D 0 - I - 0x009AA0 02:9A90: 20        .byte $20   ; 
- D 0 - I - 0x009AA1 02:9A91: 03        .byte $03   ; 
- D 0 - I - 0x009AA2 02:9A92: 00        .byte $00   ; 
- D 0 - I - 0x009AA3 02:9A93: 01        .byte $01   ; 
- D 0 - I - 0x009AA4 02:9A94: E0        .byte $E0   ; 
- D 0 - I - 0x009AA5 02:9A95: 02        .byte $02   ; 
- D 0 - I - 0x009AA6 02:9A96: C0        .byte $C0   ; 
- D 0 - I - 0x009AA7 02:9A97: 01        .byte $01   ; 
- D 0 - I - 0x009AA8 02:9A98: 80        .byte $80   ; 
- D 0 - I - 0x009AA9 02:9A99: 02        .byte $02   ; 
- D 0 - I - 0x009AAA 02:9A9A: 60        .byte $60   ; 
- D 0 - I - 0x009AAB 02:9A9B: 01        .byte $01   ; 
- D 0 - I - 0x009AAC 02:9A9C: A0        .byte $A0   ; 
- D 0 - I - 0x009AAD 02:9A9D: 02        .byte $02   ; 
- D 0 - I - 0x009AAE 02:9A9E: 00        .byte $00   ; 
- D 0 - I - 0x009AAF 02:9A9F: 01        .byte $01   ; 
- D 0 - I - 0x009AB0 02:9AA0: 40        .byte $40   ; 
- D 0 - I - 0x009AB1 02:9AA1: 02        .byte $02   ; 
- D 0 - I - 0x009AB2 02:9AA2: 20        .byte $20   ; 
- D 0 - I - 0x009AB3 02:9AA3: 01        .byte $01   ; 
- D 0 - I - 0x009AB4 02:9AA4: A0        .byte $A0   ; 
- D 0 - I - 0x009AB5 02:9AA5: 02        .byte $02   ; 
- D 0 - I - 0x009AB6 02:9AA6: 60        .byte $60   ; 
- D 0 - I - 0x009AB7 02:9AA7: 00        .byte $00   ; 
- D 0 - I - 0x009AB8 02:9AA8: 40        .byte $40   ; 
- D 0 - I - 0x009AB9 02:9AA9: 02        .byte $02   ; 



_off007_9AAA_04:
- D 0 - I - 0x009ABA 02:9AAA: 00        .byte $00   ; 
- D 0 - I - 0x009ABB 02:9AAB: 80        .byte $80   ; 
- D 0 - I - 0x009ABC 02:9AAC: 00        .byte $00   ; 
- D 0 - I - 0x009ABD 02:9AAD: 80        .byte $80   ; 
- D 0 - I - 0x009ABE 02:9AAE: 40        .byte $40   ; 
- D 0 - I - 0x009ABF 02:9AAF: 00        .byte $00   ; 
- D 0 - I - 0x009AC0 02:9AB0: C0        .byte $C0   ; 
- D 0 - I - 0x009AC1 02:9AB1: 01        .byte $01   ; 
- D 0 - I - 0x009AC2 02:9AB2: A0        .byte $A0   ; 
- D 0 - I - 0x009AC3 02:9AB3: 01        .byte $01   ; 
- D 0 - I - 0x009AC4 02:9AB4: C0        .byte $C0   ; 
- D 0 - I - 0x009AC5 02:9AB5: 01        .byte $01   ; 
- D 0 - I - 0x009AC6 02:9AB6: 00        .byte $00   ; 
- D 0 - I - 0x009AC7 02:9AB7: 01        .byte $01   ; 
- D 0 - I - 0x009AC8 02:9AB8: 00        .byte $00   ; 
- D 0 - I - 0x009AC9 02:9AB9: 02        .byte $02   ; 
- D 0 - I - 0x009ACA 02:9ABA: 00        .byte $00   ; 
- D 0 - I - 0x009ACB 02:9ABB: 01        .byte $01   ; 
- D 0 - I - 0x009ACC 02:9ABC: 80        .byte $80   ; 
- D 0 - I - 0x009ACD 02:9ABD: 02        .byte $02   ; 
- D 0 - I - 0x009ACE 02:9ABE: 40        .byte $40   ; 
- D 0 - I - 0x009ACF 02:9ABF: 40        .byte $40   ; 
- D 0 - I - 0x009AD0 02:9AC0: 40        .byte $40   ; 
- D 0 - I - 0x009AD1 02:9AC1: 40        .byte $40   ; 
- D 0 - I - 0x009AD2 02:9AC2: 40        .byte $40   ; 
- D 0 - I - 0x009AD3 02:9AC3: 01        .byte $01   ; 
- D 0 - I - 0x009AD4 02:9AC4: 00        .byte $00   ; 
- D 0 - I - 0x009AD5 02:9AC5: 01        .byte $01   ; 
- D 0 - I - 0x009AD6 02:9AC6: 00        .byte $00   ; 
- D 0 - I - 0x009AD7 02:9AC7: 01        .byte $01   ; 
- D 0 - I - 0x009AD8 02:9AC8: 20        .byte $20   ; 
- D 0 - I - 0x009AD9 02:9AC9: 01        .byte $01   ; 
- D 0 - I - 0x009ADA 02:9ACA: 48        .byte $48   ; 
- D 0 - I - 0x009ADB 02:9ACB: 40        .byte $40   ; 
- D 0 - I - 0x009ADC 02:9ACC: 00        .byte $00   ; 
- D 0 - I - 0x009ADD 02:9ACD: 40        .byte $40   ; 
- D 0 - I - 0x009ADE 02:9ACE: 00        .byte $00   ; 
- D 0 - I - 0x009ADF 02:9ACF: 01        .byte $01   ; 
- D 0 - I - 0x009AE0 02:9AD0: 80        .byte $80   ; 
- D 0 - I - 0x009AE1 02:9AD1: 01        .byte $01   ; 
- D 0 - I - 0x009AE2 02:9AD2: 00        .byte $00   ; 
- D 0 - I - 0x009AE3 02:9AD3: 80        .byte $80   ; 
- D 0 - I - 0x009AE4 02:9AD4: 00        .byte $00   ; 
- D 0 - I - 0x009AE5 02:9AD5: 80        .byte $80   ; 
- D 0 - I - 0x009AE6 02:9AD6: 00        .byte $00   ; 
- D 0 - I - 0x009AE7 02:9AD7: 80        .byte $80   ; 
- D 0 - I - 0x009AE8 02:9AD8: 00        .byte $00   ; 
- D 0 - I - 0x009AE9 02:9AD9: 80        .byte $80   ; 
- D 0 - I - 0x009AEA 02:9ADA: 60        .byte $60   ; 
- D 0 - I - 0x009AEB 02:9ADB: 00        .byte $00   ; 
- D 0 - I - 0x009AEC 02:9ADC: B0        .byte $B0   ; 
- D 0 - I - 0x009AED 02:9ADD: 01        .byte $01   ; 
- D 0 - I - 0x009AEE 02:9ADE: C0        .byte $C0   ; 
- D 0 - I - 0x009AEF 02:9ADF: 01        .byte $01   ; 
- D 0 - I - 0x009AF0 02:9AE0: B0        .byte $B0   ; 
- D 0 - I - 0x009AF1 02:9AE1: 01        .byte $01   ; 
- D 0 - I - 0x009AF2 02:9AE2: 00        .byte $00   ; 
- D 0 - I - 0x009AF3 02:9AE3: 01        .byte $01   ; 
- D 0 - I - 0x009AF4 02:9AE4: 20        .byte $20   ; 
- D 0 - I - 0x009AF5 02:9AE5: 02        .byte $02   ; 
- D 0 - I - 0x009AF6 02:9AE6: 00        .byte $00   ; 
- D 0 - I - 0x009AF7 02:9AE7: 01        .byte $01   ; 
- D 0 - I - 0x009AF8 02:9AE8: 60        .byte $60   ; 
- D 0 - I - 0x009AF9 02:9AE9: 02        .byte $02   ; 
- D 0 - I - 0x009AFA 02:9AEA: 80        .byte $80   ; 
- D 0 - I - 0x009AFB 02:9AEB: 00        .byte $00   ; 
- D 0 - I - 0x009AFC 02:9AEC: 60        .byte $60   ; 
- D 0 - I - 0x009AFD 02:9AED: 01        .byte $01   ; 
- D 0 - I - 0x009AFE 02:9AEE: 40        .byte $40   ; 
- D 0 - I - 0x009AFF 02:9AEF: 01        .byte $01   ; 
- D 0 - I - 0x009B00 02:9AF0: 20        .byte $20   ; 
- D 0 - I - 0x009B01 02:9AF1: 01        .byte $01   ; 
- D 0 - I - 0x009B02 02:9AF2: 40        .byte $40   ; 
- D 0 - I - 0x009B03 02:9AF3: 01        .byte $01   ; 
- D 0 - I - 0x009B04 02:9AF4: 50        .byte $50   ; 
- D 0 - I - 0x009B05 02:9AF5: 01        .byte $01   ; 
- D 0 - I - 0x009B06 02:9AF6: 80        .byte $80   ; 
- D 0 - I - 0x009B07 02:9AF7: 00        .byte $00   ; 
- D 0 - I - 0x009B08 02:9AF8: C0        .byte $C0   ; 
- D 0 - I - 0x009B09 02:9AF9: 00        .byte $00   ; 
- D 0 - I - 0x009B0A 02:9AFA: 00        .byte $00   ; 
- D 0 - I - 0x009B0B 02:9AFB: 01        .byte $01   ; 
- D 0 - I - 0x009B0C 02:9AFC: 60        .byte $60   ; 
- D 0 - I - 0x009B0D 02:9AFD: 01        .byte $01   ; 
- D 0 - I - 0x009B0E 02:9AFE: A0        .byte $A0   ; 
- D 0 - I - 0x009B0F 02:9AFF: 00        .byte $00   ; 
- D 0 - I - 0x009B10 02:9B00: 20        .byte $20   ; 
- D 0 - I - 0x009B11 02:9B01: 01        .byte $01   ; 



_off007_9B02_05:
- - - - - - 0x009B12 02:9B02: 00        .byte $00   ; 
- - - - - - 0x009B13 02:9B03: 80        .byte $80   ; 
- - - - - - 0x009B14 02:9B04: 00        .byte $00   ; 
- - - - - - 0x009B15 02:9B05: 80        .byte $80   ; 
- - - - - - 0x009B16 02:9B06: 40        .byte $40   ; 
- - - - - - 0x009B17 02:9B07: 00        .byte $00   ; 
- - - - - - 0x009B18 02:9B08: C0        .byte $C0   ; 
- - - - - - 0x009B19 02:9B09: 01        .byte $01   ; 
- - - - - - 0x009B1A 02:9B0A: A0        .byte $A0   ; 
- - - - - - 0x009B1B 02:9B0B: 01        .byte $01   ; 
- - - - - - 0x009B1C 02:9B0C: C0        .byte $C0   ; 
- - - - - - 0x009B1D 02:9B0D: 01        .byte $01   ; 
- - - - - - 0x009B1E 02:9B0E: 00        .byte $00   ; 
- - - - - - 0x009B1F 02:9B0F: 01        .byte $01   ; 
- - - - - - 0x009B20 02:9B10: 00        .byte $00   ; 
- - - - - - 0x009B21 02:9B11: 02        .byte $02   ; 
- - - - - - 0x009B22 02:9B12: 00        .byte $00   ; 
- - - - - - 0x009B23 02:9B13: 01        .byte $01   ; 
- - - - - - 0x009B24 02:9B14: 80        .byte $80   ; 
- - - - - - 0x009B25 02:9B15: 02        .byte $02   ; 
- - - - - - 0x009B26 02:9B16: 48        .byte $48   ; 
- - - - - - 0x009B27 02:9B17: 40        .byte $40   ; 
- - - - - - 0x009B28 02:9B18: 00        .byte $00   ; 
- - - - - - 0x009B29 02:9B19: 40        .byte $40   ; 
- - - - - - 0x009B2A 02:9B1A: 40        .byte $40   ; 
- - - - - - 0x009B2B 02:9B1B: 01        .byte $01   ; 
- - - - - - 0x009B2C 02:9B1C: 00        .byte $00   ; 
- - - - - - 0x009B2D 02:9B1D: 01        .byte $01   ; 
- - - - - - 0x009B2E 02:9B1E: 00        .byte $00   ; 
- - - - - - 0x009B2F 02:9B1F: 01        .byte $01   ; 
- - - - - - 0x009B30 02:9B20: 20        .byte $20   ; 
- - - - - - 0x009B31 02:9B21: 01        .byte $01   ; 
- - - - - - 0x009B32 02:9B22: A0        .byte $A0   ; 
- - - - - - 0x009B33 02:9B23: 00        .byte $00   ; 
- - - - - - 0x009B34 02:9B24: C0        .byte $C0   ; 
- - - - - - 0x009B35 02:9B25: 01        .byte $01   ; 
- - - - - - 0x009B36 02:9B26: 00        .byte $00   ; 
- - - - - - 0x009B37 02:9B27: 01        .byte $01   ; 
- - - - - - 0x009B38 02:9B28: 80        .byte $80   ; 
- - - - - - 0x009B39 02:9B29: 01        .byte $01   ; 
- - - - - - 0x009B3A 02:9B2A: 00        .byte $00   ; 
- - - - - - 0x009B3B 02:9B2B: 80        .byte $80   ; 
- - - - - - 0x009B3C 02:9B2C: 00        .byte $00   ; 
- - - - - - 0x009B3D 02:9B2D: 80        .byte $80   ; 
- D 0 - I - 0x009B3E 02:9B2E: 00        .byte $00   ; 
- D 0 - I - 0x009B3F 02:9B2F: 80        .byte $80   ; 
- D 0 - I - 0x009B40 02:9B30: 00        .byte $00   ; 
- D 0 - I - 0x009B41 02:9B31: 80        .byte $80   ; 
- D 0 - I - 0x009B42 02:9B32: 40        .byte $40   ; 
- D 0 - I - 0x009B43 02:9B33: 00        .byte $00   ; 
- D 0 - I - 0x009B44 02:9B34: 20        .byte $20   ; 
- D 0 - I - 0x009B45 02:9B35: 02        .byte $02   ; 
- D 0 - I - 0x009B46 02:9B36: C0        .byte $C0   ; 
- D 0 - I - 0x009B47 02:9B37: 01        .byte $01   ; 
- D 0 - I - 0x009B48 02:9B38: B0        .byte $B0   ; 
- D 0 - I - 0x009B49 02:9B39: 01        .byte $01   ; 
- D 0 - I - 0x009B4A 02:9B3A: 00        .byte $00   ; 
- D 0 - I - 0x009B4B 02:9B3B: 01        .byte $01   ; 
- D 0 - I - 0x009B4C 02:9B3C: 20        .byte $20   ; 
- D 0 - I - 0x009B4D 02:9B3D: 02        .byte $02   ; 
- D 0 - I - 0x009B4E 02:9B3E: A0        .byte $A0   ; 
- D 0 - I - 0x009B4F 02:9B3F: 00        .byte $00   ; 
- D 0 - I - 0x009B50 02:9B40: 80        .byte $80   ; 
- D 0 - I - 0x009B51 02:9B41: 02        .byte $02   ; 
- D 0 - I - 0x009B52 02:9B42: 80        .byte $80   ; 
- D 0 - I - 0x009B53 02:9B43: 00        .byte $00   ; 
- D 0 - I - 0x009B54 02:9B44: B0        .byte $B0   ; 
- D 0 - I - 0x009B55 02:9B45: 01        .byte $01   ; 
- D 0 - I - 0x009B56 02:9B46: 60        .byte $60   ; 
- D 0 - I - 0x009B57 02:9B47: 01        .byte $01   ; 
- D 0 - I - 0x009B58 02:9B48: 60        .byte $60   ; 
- D 0 - I - 0x009B59 02:9B49: 01        .byte $01   ; 
- D 0 - I - 0x009B5A 02:9B4A: 40        .byte $40   ; 
- D 0 - I - 0x009B5B 02:9B4B: 01        .byte $01   ; 
- D 0 - I - 0x009B5C 02:9B4C: C0        .byte $C0   ; 
- D 0 - I - 0x009B5D 02:9B4D: 01        .byte $01   ; 
- D 0 - I - 0x009B5E 02:9B4E: A0        .byte $A0   ; 
- D 0 - I - 0x009B5F 02:9B4F: 01        .byte $01   ; 
- D 0 - I - 0x009B60 02:9B50: 20        .byte $20   ; 
- D 0 - I - 0x009B61 02:9B51: 01        .byte $01   ; 
- D 0 - I - 0x009B62 02:9B52: 00        .byte $00   ; 
- D 0 - I - 0x009B63 02:9B53: 01        .byte $01   ; 
- D 0 - I - 0x009B64 02:9B54: C0        .byte $C0   ; 
- D 0 - I - 0x009B65 02:9B55: 01        .byte $01   ; 
- D 0 - I - 0x009B66 02:9B56: A0        .byte $A0   ; 
- D 0 - I - 0x009B67 02:9B57: 00        .byte $00   ; 
- D 0 - I - 0x009B68 02:9B58: 60        .byte $60   ; 
- D 0 - I - 0x009B69 02:9B59: 01        .byte $01   ; 



_off007_9B5A_06:
- D 0 - I - 0x009B6A 02:9B5A: 00        .byte $00   ; 
- D 0 - I - 0x009B6B 02:9B5B: 80        .byte $80   ; 
- D 0 - I - 0x009B6C 02:9B5C: 00        .byte $00   ; 
- D 0 - I - 0x009B6D 02:9B5D: 80        .byte $80   ; 
- D 0 - I - 0x009B6E 02:9B5E: 40        .byte $40   ; 
- D 0 - I - 0x009B6F 02:9B5F: 00        .byte $00   ; 
- D 0 - I - 0x009B70 02:9B60: E0        .byte $E0   ; 
- D 0 - I - 0x009B71 02:9B61: 01        .byte $01   ; 
- D 0 - I - 0x009B72 02:9B62: A0        .byte $A0   ; 
- D 0 - I - 0x009B73 02:9B63: 01        .byte $01   ; 
- D 0 - I - 0x009B74 02:9B64: E0        .byte $E0   ; 
- D 0 - I - 0x009B75 02:9B65: 01        .byte $01   ; 
- D 0 - I - 0x009B76 02:9B66: E0        .byte $E0   ; 
- D 0 - I - 0x009B77 02:9B67: 00        .byte $00   ; 
- D 0 - I - 0x009B78 02:9B68: 20        .byte $20   ; 
- D 0 - I - 0x009B79 02:9B69: 02        .byte $02   ; 
- D 0 - I - 0x009B7A 02:9B6A: E0        .byte $E0   ; 
- D 0 - I - 0x009B7B 02:9B6B: 00        .byte $00   ; 
- D 0 - I - 0x009B7C 02:9B6C: 60        .byte $60   ; 
- D 0 - I - 0x009B7D 02:9B6D: 02        .byte $02   ; 
- D 0 - I - 0x009B7E 02:9B6E: 48        .byte $48   ; 
- D 0 - I - 0x009B7F 02:9B6F: 40        .byte $40   ; 
- D 0 - I - 0x009B80 02:9B70: 00        .byte $00   ; 
- D 0 - I - 0x009B81 02:9B71: 40        .byte $40   ; 
- D 0 - I - 0x009B82 02:9B72: A0        .byte $A0   ; 
- D 0 - I - 0x009B83 02:9B73: 01        .byte $01   ; 
- D 0 - I - 0x009B84 02:9B74: 40        .byte $40   ; 
- D 0 - I - 0x009B85 02:9B75: 01        .byte $01   ; 
- D 0 - I - 0x009B86 02:9B76: 40        .byte $40   ; 
- D 0 - I - 0x009B87 02:9B77: 01        .byte $01   ; 
- D 0 - I - 0x009B88 02:9B78: 80        .byte $80   ; 
- D 0 - I - 0x009B89 02:9B79: 01        .byte $01   ; 
- D 0 - I - 0x009B8A 02:9B7A: 40        .byte $40   ; 
- D 0 - I - 0x009B8B 02:9B7B: 40        .byte $40   ; 
- D 0 - I - 0x009B8C 02:9B7C: C0        .byte $C0   ; 
- D 0 - I - 0x009B8D 02:9B7D: 7F        .byte $7F   ; 
- D 0 - I - 0x009B8E 02:9B7E: E0        .byte $E0   ; 
- D 0 - I - 0x009B8F 02:9B7F: 00        .byte $00   ; 
- D 0 - I - 0x009B90 02:9B80: 40        .byte $40   ; 
- D 0 - I - 0x009B91 02:9B81: 01        .byte $01   ; 
- D 0 - I - 0x009B92 02:9B82: 00        .byte $00   ; 
- D 0 - I - 0x009B93 02:9B83: 80        .byte $80   ; 
- D 0 - I - 0x009B94 02:9B84: 00        .byte $00   ; 
- D 0 - I - 0x009B95 02:9B85: 80        .byte $80   ; 
- D 0 - I - 0x009B96 02:9B86: 00        .byte $00   ; 
- D 0 - I - 0x009B97 02:9B87: 80        .byte $80   ; 
- D 0 - I - 0x009B98 02:9B88: 00        .byte $00   ; 
- D 0 - I - 0x009B99 02:9B89: 80        .byte $80   ; 
- D 0 - I - 0x009B9A 02:9B8A: 40        .byte $40   ; 
- D 0 - I - 0x009B9B 02:9B8B: 00        .byte $00   ; 
- D 0 - I - 0x009B9C 02:9B8C: 80        .byte $80   ; 
- D 0 - I - 0x009B9D 02:9B8D: 02        .byte $02   ; 
- D 0 - I - 0x009B9E 02:9B8E: C0        .byte $C0   ; 
- D 0 - I - 0x009B9F 02:9B8F: 01        .byte $01   ; 
- D 0 - I - 0x009BA0 02:9B90: 20        .byte $20   ; 
- D 0 - I - 0x009BA1 02:9B91: 02        .byte $02   ; 
- D 0 - I - 0x009BA2 02:9B92: 00        .byte $00   ; 
- D 0 - I - 0x009BA3 02:9B93: 01        .byte $01   ; 
- D 0 - I - 0x009BA4 02:9B94: 20        .byte $20   ; 
- D 0 - I - 0x009BA5 02:9B95: 02        .byte $02   ; 
- D 0 - I - 0x009BA6 02:9B96: A0        .byte $A0   ; 
- D 0 - I - 0x009BA7 02:9B97: 00        .byte $00   ; 
- D 0 - I - 0x009BA8 02:9B98: 80        .byte $80   ; 
- D 0 - I - 0x009BA9 02:9B99: 02        .byte $02   ; 
- D 0 - I - 0x009BAA 02:9B9A: 20        .byte $20   ; 
- D 0 - I - 0x009BAB 02:9B9B: 01        .byte $01   ; 
- D 0 - I - 0x009BAC 02:9B9C: C0        .byte $C0   ; 
- D 0 - I - 0x009BAD 02:9B9D: 01        .byte $01   ; 
- D 0 - I - 0x009BAE 02:9B9E: C0        .byte $C0   ; 
- D 0 - I - 0x009BAF 02:9B9F: 01        .byte $01   ; 
- D 0 - I - 0x009BB0 02:9BA0: C0        .byte $C0   ; 
- D 0 - I - 0x009BB1 02:9BA1: 01        .byte $01   ; 
- D 0 - I - 0x009BB2 02:9BA2: 00        .byte $00   ; 
- D 0 - I - 0x009BB3 02:9BA3: 01        .byte $01   ; 
- D 0 - I - 0x009BB4 02:9BA4: E0        .byte $E0   ; 
- D 0 - I - 0x009BB5 02:9BA5: 01        .byte $01   ; 
- D 0 - I - 0x009BB6 02:9BA6: A0        .byte $A0   ; 
- D 0 - I - 0x009BB7 02:9BA7: 00        .byte $00   ; 
- D 0 - I - 0x009BB8 02:9BA8: 80        .byte $80   ; 
- D 0 - I - 0x009BB9 02:9BA9: 01        .byte $01   ; 
- D 0 - I - 0x009BBA 02:9BAA: A0        .byte $A0   ; 
- D 0 - I - 0x009BBB 02:9BAB: 00        .byte $00   ; 
- D 0 - I - 0x009BBC 02:9BAC: D0        .byte $D0   ; 
- D 0 - I - 0x009BBD 02:9BAD: 01        .byte $01   ; 
- D 0 - I - 0x009BBE 02:9BAE: 40        .byte $40   ; 
- D 0 - I - 0x009BBF 02:9BAF: 00        .byte $00   ; 
- D 0 - I - 0x009BC0 02:9BB0: E0        .byte $E0   ; 
- D 0 - I - 0x009BC1 02:9BB1: 00        .byte $00   ; 



_off007_9BB2_07:
- D 0 - I - 0x009BC2 02:9BB2: 00        .byte $00   ; 
- D 0 - I - 0x009BC3 02:9BB3: 80        .byte $80   ; 
- D 0 - I - 0x009BC4 02:9BB4: 00        .byte $00   ; 
- D 0 - I - 0x009BC5 02:9BB5: 80        .byte $80   ; 
- D 0 - I - 0x009BC6 02:9BB6: 40        .byte $40   ; 
- D 0 - I - 0x009BC7 02:9BB7: 40        .byte $40   ; 
- D 0 - I - 0x009BC8 02:9BB8: 40        .byte $40   ; 
- D 0 - I - 0x009BC9 02:9BB9: 40        .byte $40   ; 
- D 0 - I - 0x009BCA 02:9BBA: C0        .byte $C0   ; 
- D 0 - I - 0x009BCB 02:9BBB: 01        .byte $01   ; 
- D 0 - I - 0x009BCC 02:9BBC: E0        .byte $E0   ; 
- D 0 - I - 0x009BCD 02:9BBD: 01        .byte $01   ; 
- D 0 - I - 0x009BCE 02:9BBE: A0        .byte $A0   ; 
- D 0 - I - 0x009BCF 02:9BBF: 00        .byte $00   ; 
- D 0 - I - 0x009BD0 02:9BC0: 40        .byte $40   ; 
- D 0 - I - 0x009BD1 02:9BC1: 02        .byte $02   ; 
- D 0 - I - 0x009BD2 02:9BC2: E0        .byte $E0   ; 
- D 0 - I - 0x009BD3 02:9BC3: 00        .byte $00   ; 
- D 0 - I - 0x009BD4 02:9BC4: 80        .byte $80   ; 
- D 0 - I - 0x009BD5 02:9BC5: 02        .byte $02   ; 
- D 0 - I - 0x009BD6 02:9BC6: 40        .byte $40   ; 
- D 0 - I - 0x009BD7 02:9BC7: 40        .byte $40   ; 
- D 0 - I - 0x009BD8 02:9BC8: C0        .byte $C0   ; 
- D 0 - I - 0x009BD9 02:9BC9: 7F        .byte $7F   ; 
- D 0 - I - 0x009BDA 02:9BCA: A0        .byte $A0   ; 
- D 0 - I - 0x009BDB 02:9BCB: 01        .byte $01   ; 
- D 0 - I - 0x009BDC 02:9BCC: 80        .byte $80   ; 
- D 0 - I - 0x009BDD 02:9BCD: 01        .byte $01   ; 
- D 0 - I - 0x009BDE 02:9BCE: 60        .byte $60   ; 
- D 0 - I - 0x009BDF 02:9BCF: 01        .byte $01   ; 
- D 0 - I - 0x009BE0 02:9BD0: 20        .byte $20   ; 
- D 0 - I - 0x009BE1 02:9BD1: 02        .byte $02   ; 
- D 0 - I - 0x009BE2 02:9BD2: 80        .byte $80   ; 
- D 0 - I - 0x009BE3 02:9BD3: 00        .byte $00   ; 
- D 0 - I - 0x009BE4 02:9BD4: 20        .byte $20   ; 
- D 0 - I - 0x009BE5 02:9BD5: 02        .byte $02   ; 
- D 0 - I - 0x009BE6 02:9BD6: 48        .byte $48   ; 
- D 0 - I - 0x009BE7 02:9BD7: 40        .byte $40   ; 
- D 0 - I - 0x009BE8 02:9BD8: 00        .byte $00   ; 
- D 0 - I - 0x009BE9 02:9BD9: 40        .byte $40   ; 
- - - - - - 0x009BEA 02:9BDA: 00        .byte $00   ; 
- - - - - - 0x009BEB 02:9BDB: 80        .byte $80   ; 
- - - - - - 0x009BEC 02:9BDC: 00        .byte $00   ; 
- - - - - - 0x009BED 02:9BDD: 80        .byte $80   ; 
- D 0 - I - 0x009BEE 02:9BDE: 00        .byte $00   ; 
- D 0 - I - 0x009BEF 02:9BDF: 80        .byte $80   ; 
- D 0 - I - 0x009BF0 02:9BE0: 00        .byte $00   ; 
- D 0 - I - 0x009BF1 02:9BE1: 80        .byte $80   ; 
- D 0 - I - 0x009BF2 02:9BE2: 40        .byte $40   ; 
- D 0 - I - 0x009BF3 02:9BE3: 00        .byte $00   ; 
- D 0 - I - 0x009BF4 02:9BE4: 80        .byte $80   ; 
- D 0 - I - 0x009BF5 02:9BE5: 02        .byte $02   ; 
- D 0 - I - 0x009BF6 02:9BE6: C0        .byte $C0   ; 
- D 0 - I - 0x009BF7 02:9BE7: 01        .byte $01   ; 
- D 0 - I - 0x009BF8 02:9BE8: 80        .byte $80   ; 
- D 0 - I - 0x009BF9 02:9BE9: 02        .byte $02   ; 
- D 0 - I - 0x009BFA 02:9BEA: 00        .byte $00   ; 
- D 0 - I - 0x009BFB 02:9BEB: 01        .byte $01   ; 
- D 0 - I - 0x009BFC 02:9BEC: 90        .byte $90   ; 
- D 0 - I - 0x009BFD 02:9BED: 02        .byte $02   ; 
- D 0 - I - 0x009BFE 02:9BEE: A0        .byte $A0   ; 
- D 0 - I - 0x009BFF 02:9BEF: 00        .byte $00   ; 
- D 0 - I - 0x009C00 02:9BF0: E0        .byte $E0   ; 
- D 0 - I - 0x009C01 02:9BF1: 02        .byte $02   ; 
- D 0 - I - 0x009C02 02:9BF2: A0        .byte $A0   ; 
- D 0 - I - 0x009C03 02:9BF3: 00        .byte $00   ; 
- D 0 - I - 0x009C04 02:9BF4: 20        .byte $20   ; 
- D 0 - I - 0x009C05 02:9BF5: 02        .byte $02   ; 
- D 0 - I - 0x009C06 02:9BF6: 60        .byte $60   ; 
- D 0 - I - 0x009C07 02:9BF7: 01        .byte $01   ; 
- D 0 - I - 0x009C08 02:9BF8: E0        .byte $E0   ; 
- D 0 - I - 0x009C09 02:9BF9: 01        .byte $01   ; 
- D 0 - I - 0x009C0A 02:9BFA: 40        .byte $40   ; 
- D 0 - I - 0x009C0B 02:9BFB: 01        .byte $01   ; 
- D 0 - I - 0x009C0C 02:9BFC: 40        .byte $40   ; 
- D 0 - I - 0x009C0D 02:9BFD: 02        .byte $02   ; 
- D 0 - I - 0x009C0E 02:9BFE: 40        .byte $40   ; 
- D 0 - I - 0x009C0F 02:9BFF: 00        .byte $00   ; 
- D 0 - I - 0x009C10 02:9C00: D0        .byte $D0   ; 
- D 0 - I - 0x009C11 02:9C01: 01        .byte $01   ; 
- D 0 - I - 0x009C12 02:9C02: 00        .byte $00   ; 
- D 0 - I - 0x009C13 02:9C03: 01        .byte $01   ; 
- D 0 - I - 0x009C14 02:9C04: 20        .byte $20   ; 
- D 0 - I - 0x009C15 02:9C05: 02        .byte $02   ; 
- D 0 - I - 0x009C16 02:9C06: A0        .byte $A0   ; 
- D 0 - I - 0x009C17 02:9C07: 00        .byte $00   ; 
- D 0 - I - 0x009C18 02:9C08: C0        .byte $C0   ; 
- D 0 - I - 0x009C19 02:9C09: 01        .byte $01   ; 



_off007_9C0A_08:
- - - - - - 0x009C1A 02:9C0A: 00        .byte $00   ; 
- - - - - - 0x009C1B 02:9C0B: 80        .byte $80   ; 
- - - - - - 0x009C1C 02:9C0C: 00        .byte $00   ; 
- - - - - - 0x009C1D 02:9C0D: 80        .byte $80   ; 
- - - - - - 0x009C1E 02:9C0E: 00        .byte $00   ; 
- - - - - - 0x009C1F 02:9C0F: 80        .byte $80   ; 
- - - - - - 0x009C20 02:9C10: 00        .byte $00   ; 
- - - - - - 0x009C21 02:9C11: 80        .byte $80   ; 
- - - - - - 0x009C22 02:9C12: 80        .byte $80   ; 
- - - - - - 0x009C23 02:9C13: 01        .byte $01   ; 
- - - - - - 0x009C24 02:9C14: 40        .byte $40   ; 
- - - - - - 0x009C25 02:9C15: 02        .byte $02   ; 
- - - - - - 0x009C26 02:9C16: 48        .byte $48   ; 
- - - - - - 0x009C27 02:9C17: 40        .byte $40   ; 
- - - - - - 0x009C28 02:9C18: 00        .byte $00   ; 
- - - - - - 0x009C29 02:9C19: 40        .byte $40   ; 
- - - - - - 0x009C2A 02:9C1A: E0        .byte $E0   ; 
- - - - - - 0x009C2B 02:9C1B: 00        .byte $00   ; 
- - - - - - 0x009C2C 02:9C1C: A0        .byte $A0   ; 
- - - - - - 0x009C2D 02:9C1D: 02        .byte $02   ; 
- - - - - - 0x009C2E 02:9C1E: 40        .byte $40   ; 
- - - - - - 0x009C2F 02:9C1F: 40        .byte $40   ; 
- - - - - - 0x009C30 02:9C20: C0        .byte $C0   ; 
- - - - - - 0x009C31 02:9C21: 7F        .byte $7F   ; 
- - - - - - 0x009C32 02:9C22: A0        .byte $A0   ; 
- - - - - - 0x009C33 02:9C23: 01        .byte $01   ; 
- - - - - - 0x009C34 02:9C24: E0        .byte $E0   ; 
- - - - - - 0x009C35 02:9C25: 01        .byte $01   ; 
- - - - - - 0x009C36 02:9C26: 60        .byte $60   ; 
- - - - - - 0x009C37 02:9C27: 01        .byte $01   ; 
- - - - - - 0x009C38 02:9C28: 20        .byte $20   ; 
- - - - - - 0x009C39 02:9C29: 02        .byte $02   ; 
- - - - - - 0x009C3A 02:9C2A: A0        .byte $A0   ; 
- - - - - - 0x009C3B 02:9C2B: 00        .byte $00   ; 
- - - - - - 0x009C3C 02:9C2C: 30        .byte $30   ; 
- - - - - - 0x009C3D 02:9C2D: 02        .byte $02   ; 
- - - - - - 0x009C3E 02:9C2E: 00        .byte $00   ; 
- - - - - - 0x009C3F 02:9C2F: 01        .byte $01   ; 
- - - - - - 0x009C40 02:9C30: E0        .byte $E0   ; 
- - - - - - 0x009C41 02:9C31: 01        .byte $01   ; 
- - - - - - 0x009C42 02:9C32: 20        .byte $20   ; 
- - - - - - 0x009C43 02:9C33: 00        .byte $00   ; 
- - - - - - 0x009C44 02:9C34: A0        .byte $A0   ; 
- - - - - - 0x009C45 02:9C35: 01        .byte $01   ; 
- - - - - - 0x009C46 02:9C36: 00        .byte $00   ; 
- - - - - - 0x009C47 02:9C37: 80        .byte $80   ; 
- - - - - - 0x009C48 02:9C38: 00        .byte $00   ; 
- - - - - - 0x009C49 02:9C39: 80        .byte $80   ; 
- - - - - - 0x009C4A 02:9C3A: 80        .byte $80   ; 
- - - - - - 0x009C4B 02:9C3B: 00        .byte $00   ; 
- - - - - - 0x009C4C 02:9C3C: 20        .byte $20   ; 
- - - - - - 0x009C4D 02:9C3D: 03        .byte $03   ; 
- - - - - - 0x009C4E 02:9C3E: C0        .byte $C0   ; 
- - - - - - 0x009C4F 02:9C3F: 01        .byte $01   ; 
- - - - - - 0x009C50 02:9C40: E0        .byte $E0   ; 
- - - - - - 0x009C51 02:9C41: 02        .byte $02   ; 
- - - - - - 0x009C52 02:9C42: 00        .byte $00   ; 
- - - - - - 0x009C53 02:9C43: 01        .byte $01   ; 
- - - - - - 0x009C54 02:9C44: 80        .byte $80   ; 
- - - - - - 0x009C55 02:9C45: 02        .byte $02   ; 
- - - - - - 0x009C56 02:9C46: C0        .byte $C0   ; 
- - - - - - 0x009C57 02:9C47: 00        .byte $00   ; 
- - - - - - 0x009C58 02:9C48: E0        .byte $E0   ; 
- - - - - - 0x009C59 02:9C49: 02        .byte $02   ; 
- - - - - - 0x009C5A 02:9C4A: 80        .byte $80   ; 
- - - - - - 0x009C5B 02:9C4B: 00        .byte $00   ; 
- - - - - - 0x009C5C 02:9C4C: A0        .byte $A0   ; 
- - - - - - 0x009C5D 02:9C4D: 02        .byte $02   ; 
- - - - - - 0x009C5E 02:9C4E: C0        .byte $C0   ; 
- - - - - - 0x009C5F 02:9C4F: 01        .byte $01   ; 
- - - - - - 0x009C60 02:9C50: C0        .byte $C0   ; 
- - - - - - 0x009C61 02:9C51: 01        .byte $01   ; 
- - - - - - 0x009C62 02:9C52: 60        .byte $60   ; 
- - - - - - 0x009C63 02:9C53: 01        .byte $01   ; 
- - - - - - 0x009C64 02:9C54: 80        .byte $80   ; 
- - - - - - 0x009C65 02:9C55: 02        .byte $02   ; 
- - - - - - 0x009C66 02:9C56: A0        .byte $A0   ; 
- - - - - - 0x009C67 02:9C57: 00        .byte $00   ; 
- - - - - - 0x009C68 02:9C58: 80        .byte $80   ; 
- - - - - - 0x009C69 02:9C59: 02        .byte $02   ; 
- - - - - - 0x009C6A 02:9C5A: 80        .byte $80   ; 
- - - - - - 0x009C6B 02:9C5B: 00        .byte $00   ; 
- - - - - - 0x009C6C 02:9C5C: 40        .byte $40   ; 
- - - - - - 0x009C6D 02:9C5D: 02        .byte $02   ; 
- - - - - - 0x009C6E 02:9C5E: 40        .byte $40   ; 
- - - - - - 0x009C6F 02:9C5F: 00        .byte $00   ; 
- - - - - - 0x009C70 02:9C60: 80        .byte $80   ; 
- - - - - - 0x009C71 02:9C61: 01        .byte $01   ; 



_off007_9C62_09:
- D 0 - I - 0x009C72 02:9C62: 00        .byte $00   ; 
- D 0 - I - 0x009C73 02:9C63: 80        .byte $80   ; 
- D 0 - I - 0x009C74 02:9C64: 00        .byte $00   ; 
- D 0 - I - 0x009C75 02:9C65: 80        .byte $80   ; 
- D 0 - I - 0x009C76 02:9C66: 00        .byte $00   ; 
- D 0 - I - 0x009C77 02:9C67: 80        .byte $80   ; 
- D 0 - I - 0x009C78 02:9C68: 00        .byte $00   ; 
- D 0 - I - 0x009C79 02:9C69: 80        .byte $80   ; 
- D 0 - I - 0x009C7A 02:9C6A: 80        .byte $80   ; 
- D 0 - I - 0x009C7B 02:9C6B: 01        .byte $01   ; 
- D 0 - I - 0x009C7C 02:9C6C: A0        .byte $A0   ; 
- D 0 - I - 0x009C7D 02:9C6D: 02        .byte $02   ; 
- D 0 - I - 0x009C7E 02:9C6E: 48        .byte $48   ; 
- D 0 - I - 0x009C7F 02:9C6F: 40        .byte $40   ; 
- D 0 - I - 0x009C80 02:9C70: 00        .byte $00   ; 
- D 0 - I - 0x009C81 02:9C71: 40        .byte $40   ; 
- D 0 - I - 0x009C82 02:9C72: 00        .byte $00   ; 
- D 0 - I - 0x009C83 02:9C73: 01        .byte $01   ; 
- D 0 - I - 0x009C84 02:9C74: E0        .byte $E0   ; 
- D 0 - I - 0x009C85 02:9C75: 02        .byte $02   ; 
- D 0 - I - 0x009C86 02:9C76: 40        .byte $40   ; 
- D 0 - I - 0x009C87 02:9C77: 40        .byte $40   ; 
- D 0 - I - 0x009C88 02:9C78: C0        .byte $C0   ; 
- D 0 - I - 0x009C89 02:9C79: 7F        .byte $7F   ; 
- D 0 - I - 0x009C8A 02:9C7A: A0        .byte $A0   ; 
- D 0 - I - 0x009C8B 02:9C7B: 01        .byte $01   ; 
- D 0 - I - 0x009C8C 02:9C7C: E0        .byte $E0   ; 
- D 0 - I - 0x009C8D 02:9C7D: 01        .byte $01   ; 
- D 0 - I - 0x009C8E 02:9C7E: 40        .byte $40   ; 
- D 0 - I - 0x009C8F 02:9C7F: 01        .byte $01   ; 
- D 0 - I - 0x009C90 02:9C80: 40        .byte $40   ; 
- D 0 - I - 0x009C91 02:9C81: 02        .byte $02   ; 
- D 0 - I - 0x009C92 02:9C82: A0        .byte $A0   ; 
- D 0 - I - 0x009C93 02:9C83: 00        .byte $00   ; 
- D 0 - I - 0x009C94 02:9C84: 80        .byte $80   ; 
- D 0 - I - 0x009C95 02:9C85: 02        .byte $02   ; 
- D 0 - I - 0x009C96 02:9C86: E0        .byte $E0   ; 
- D 0 - I - 0x009C97 02:9C87: 00        .byte $00   ; 
- D 0 - I - 0x009C98 02:9C88: 40        .byte $40   ; 
- D 0 - I - 0x009C99 02:9C89: 02        .byte $02   ; 
- D 0 - I - 0x009C9A 02:9C8A: 20        .byte $20   ; 
- D 0 - I - 0x009C9B 02:9C8B: 00        .byte $00   ; 
- D 0 - I - 0x009C9C 02:9C8C: 00        .byte $00   ; 
- D 0 - I - 0x009C9D 02:9C8D: 02        .byte $02   ; 
- D 0 - I - 0x009C9E 02:9C8E: 00        .byte $00   ; 
- D 0 - I - 0x009C9F 02:9C8F: 80        .byte $80   ; 
- D 0 - I - 0x009CA0 02:9C90: 00        .byte $00   ; 
- D 0 - I - 0x009CA1 02:9C91: 80        .byte $80   ; 
- D 0 - I - 0x009CA2 02:9C92: 40        .byte $40   ; 
- D 0 - I - 0x009CA3 02:9C93: 00        .byte $00   ; 
- D 0 - I - 0x009CA4 02:9C94: 20        .byte $20   ; 
- D 0 - I - 0x009CA5 02:9C95: 03        .byte $03   ; 
- D 0 - I - 0x009CA6 02:9C96: A0        .byte $A0   ; 
- D 0 - I - 0x009CA7 02:9C97: 01        .byte $01   ; 
- D 0 - I - 0x009CA8 02:9C98: 00        .byte $00   ; 
- D 0 - I - 0x009CA9 02:9C99: 03        .byte $03   ; 
- D 0 - I - 0x009CAA 02:9C9A: 20        .byte $20   ; 
- D 0 - I - 0x009CAB 02:9C9B: 01        .byte $01   ; 
- D 0 - I - 0x009CAC 02:9C9C: E0        .byte $E0   ; 
- D 0 - I - 0x009CAD 02:9C9D: 02        .byte $02   ; 
- D 0 - I - 0x009CAE 02:9C9E: 80        .byte $80   ; 
- D 0 - I - 0x009CAF 02:9C9F: 00        .byte $00   ; 
- D 0 - I - 0x009CB0 02:9CA0: 00        .byte $00   ; 
- D 0 - I - 0x009CB1 02:9CA1: 03        .byte $03   ; 
- D 0 - I - 0x009CB2 02:9CA2: 80        .byte $80   ; 
- D 0 - I - 0x009CB3 02:9CA3: 00        .byte $00   ; 
- D 0 - I - 0x009CB4 02:9CA4: 60        .byte $60   ; 
- D 0 - I - 0x009CB5 02:9CA5: 02        .byte $02   ; 
- D 0 - I - 0x009CB6 02:9CA6: C0        .byte $C0   ; 
- D 0 - I - 0x009CB7 02:9CA7: 01        .byte $01   ; 
- D 0 - I - 0x009CB8 02:9CA8: C0        .byte $C0   ; 
- D 0 - I - 0x009CB9 02:9CA9: 01        .byte $01   ; 
- D 0 - I - 0x009CBA 02:9CAA: E0        .byte $E0   ; 
- D 0 - I - 0x009CBB 02:9CAB: 00        .byte $00   ; 
- D 0 - I - 0x009CBC 02:9CAC: 00        .byte $00   ; 
- D 0 - I - 0x009CBD 02:9CAD: 03        .byte $03   ; 
- D 0 - I - 0x009CBE 02:9CAE: C0        .byte $C0   ; 
- D 0 - I - 0x009CBF 02:9CAF: 00        .byte $00   ; 
- D 0 - I - 0x009CC0 02:9CB0: A0        .byte $A0   ; 
- D 0 - I - 0x009CC1 02:9CB1: 02        .byte $02   ; 
- D 0 - I - 0x009CC2 02:9CB2: C0        .byte $C0   ; 
- D 0 - I - 0x009CC3 02:9CB3: 00        .byte $00   ; 
- D 0 - I - 0x009CC4 02:9CB4: E0        .byte $E0   ; 
- D 0 - I - 0x009CC5 02:9CB5: 02        .byte $02   ; 
- D 0 - I - 0x009CC6 02:9CB6: 40        .byte $40   ; 
- D 0 - I - 0x009CC7 02:9CB7: 00        .byte $00   ; 
- D 0 - I - 0x009CC8 02:9CB8: E0        .byte $E0   ; 
- D 0 - I - 0x009CC9 02:9CB9: 01        .byte $01   ; 



_off007_9CBA_0A:
- - - - - - 0x009CCA 02:9CBA: 00        .byte $00   ; 
- - - - - - 0x009CCB 02:9CBB: 80        .byte $80   ; 
- - - - - - 0x009CCC 02:9CBC: 00        .byte $00   ; 
- - - - - - 0x009CCD 02:9CBD: 80        .byte $80   ; 
- - - - - - 0x009CCE 02:9CBE: 00        .byte $00   ; 
- - - - - - 0x009CCF 02:9CBF: 80        .byte $80   ; 
- - - - - - 0x009CD0 02:9CC0: 00        .byte $00   ; 
- - - - - - 0x009CD1 02:9CC1: 80        .byte $80   ; 
- - - - - - 0x009CD2 02:9CC2: 60        .byte $60   ; 
- - - - - - 0x009CD3 02:9CC3: 01        .byte $01   ; 
- - - - - - 0x009CD4 02:9CC4: 00        .byte $00   ; 
- - - - - - 0x009CD5 02:9CC5: 03        .byte $03   ; 
- - - - - - 0x009CD6 02:9CC6: 20        .byte $20   ; 
- - - - - - 0x009CD7 02:9CC7: 01        .byte $01   ; 
- - - - - - 0x009CD8 02:9CC8: A0        .byte $A0   ; 
- - - - - - 0x009CD9 02:9CC9: 02        .byte $02   ; 
- - - - - - 0x009CDA 02:9CCA: 48        .byte $48   ; 
- - - - - - 0x009CDB 02:9CCB: 40        .byte $40   ; 
- - - - - - 0x009CDC 02:9CCC: 00        .byte $00   ; 
- - - - - - 0x009CDD 02:9CCD: 40        .byte $40   ; 
- - - - - - 0x009CDE 02:9CCE: 40        .byte $40   ; 
- - - - - - 0x009CDF 02:9CCF: 40        .byte $40   ; 
- - - - - - 0x009CE0 02:9CD0: C0        .byte $C0   ; 
- - - - - - 0x009CE1 02:9CD1: 7F        .byte $7F   ; 
- - - - - - 0x009CE2 02:9CD2: C0        .byte $C0   ; 
- - - - - - 0x009CE3 02:9CD3: 01        .byte $01   ; 
- - - - - - 0x009CE4 02:9CD4: 20        .byte $20   ; 
- - - - - - 0x009CE5 02:9CD5: 02        .byte $02   ; 
- - - - - - 0x009CE6 02:9CD6: 00        .byte $00   ; 
- - - - - - 0x009CE7 02:9CD7: 01        .byte $01   ; 
- - - - - - 0x009CE8 02:9CD8: 40        .byte $40   ; 
- - - - - - 0x009CE9 02:9CD9: 02        .byte $02   ; 
- - - - - - 0x009CEA 02:9CDA: C0        .byte $C0   ; 
- - - - - - 0x009CEB 02:9CDB: 00        .byte $00   ; 
- - - - - - 0x009CEC 02:9CDC: A0        .byte $A0   ; 
- - - - - - 0x009CED 02:9CDD: 02        .byte $02   ; 
- - - - - - 0x009CEE 02:9CDE: 80        .byte $80   ; 
- - - - - - 0x009CEF 02:9CDF: 00        .byte $00   ; 
- - - - - - 0x009CF0 02:9CE0: 60        .byte $60   ; 
- - - - - - 0x009CF1 02:9CE1: 02        .byte $02   ; 
- - - - - - 0x009CF2 02:9CE2: 40        .byte $40   ; 
- - - - - - 0x009CF3 02:9CE3: 00        .byte $00   ; 
- - - - - - 0x009CF4 02:9CE4: E0        .byte $E0   ; 
- - - - - - 0x009CF5 02:9CE5: 01        .byte $01   ; 
- D 0 - I - 0x009CF6 02:9CE6: 00        .byte $00   ; 
- D 0 - I - 0x009CF7 02:9CE7: 80        .byte $80   ; 
- D 0 - I - 0x009CF8 02:9CE8: 00        .byte $00   ; 
- D 0 - I - 0x009CF9 02:9CE9: 80        .byte $80   ; 
- D 0 - I - 0x009CFA 02:9CEA: A0        .byte $A0   ; 
- D 0 - I - 0x009CFB 02:9CEB: 00        .byte $00   ; 
- D 0 - I - 0x009CFC 02:9CEC: E0        .byte $E0   ; 
- D 0 - I - 0x009CFD 02:9CED: 02        .byte $02   ; 
- D 0 - I - 0x009CFE 02:9CEE: 80        .byte $80   ; 
- D 0 - I - 0x009CFF 02:9CEF: 01        .byte $01   ; 
- D 0 - I - 0x009D00 02:9CF0: E0        .byte $E0   ; 
- D 0 - I - 0x009D01 02:9CF1: 02        .byte $02   ; 
- D 0 - I - 0x009D02 02:9CF2: E0        .byte $E0   ; 
- D 0 - I - 0x009D03 02:9CF3: 00        .byte $00   ; 
- D 0 - I - 0x009D04 02:9CF4: 20        .byte $20   ; 
- D 0 - I - 0x009D05 02:9CF5: 03        .byte $03   ; 
- D 0 - I - 0x009D06 02:9CF6: 80        .byte $80   ; 
- D 0 - I - 0x009D07 02:9CF7: 00        .byte $00   ; 
- D 0 - I - 0x009D08 02:9CF8: 20        .byte $20   ; 
- D 0 - I - 0x009D09 02:9CF9: 03        .byte $03   ; 
- D 0 - I - 0x009D0A 02:9CFA: B0        .byte $B0   ; 
- D 0 - I - 0x009D0B 02:9CFB: 00        .byte $00   ; 
- D 0 - I - 0x009D0C 02:9CFC: 70        .byte $70   ; 
- D 0 - I - 0x009D0D 02:9CFD: 02        .byte $02   ; 
- D 0 - I - 0x009D0E 02:9CFE: C0        .byte $C0   ; 
- D 0 - I - 0x009D0F 02:9CFF: 01        .byte $01   ; 
- D 0 - I - 0x009D10 02:9D00: E0        .byte $E0   ; 
- D 0 - I - 0x009D11 02:9D01: 01        .byte $01   ; 
- D 0 - I - 0x009D12 02:9D02: 00        .byte $00   ; 
- D 0 - I - 0x009D13 02:9D03: 01        .byte $01   ; 
- D 0 - I - 0x009D14 02:9D04: A0        .byte $A0   ; 
- D 0 - I - 0x009D15 02:9D05: 02        .byte $02   ; 
- D 0 - I - 0x009D16 02:9D06: A0        .byte $A0   ; 
- D 0 - I - 0x009D17 02:9D07: 00        .byte $00   ; 
- D 0 - I - 0x009D18 02:9D08: A0        .byte $A0   ; 
- D 0 - I - 0x009D19 02:9D09: 02        .byte $02   ; 
- D 0 - I - 0x009D1A 02:9D0A: 00        .byte $00   ; 
- D 0 - I - 0x009D1B 02:9D0B: 01        .byte $01   ; 
- D 0 - I - 0x009D1C 02:9D0C: 00        .byte $00   ; 
- D 0 - I - 0x009D1D 02:9D0D: 03        .byte $03   ; 
- D 0 - I - 0x009D1E 02:9D0E: 60        .byte $60   ; 
- D 0 - I - 0x009D1F 02:9D0F: 00        .byte $00   ; 
- D 0 - I - 0x009D20 02:9D10: 00        .byte $00   ; 
- D 0 - I - 0x009D21 02:9D11: 02        .byte $02   ; 



_off007_9D12_0B:
- - - - - - 0x009D22 02:9D12: 00        .byte $00   ; 
- - - - - - 0x009D23 02:9D13: 80        .byte $80   ; 
- - - - - - 0x009D24 02:9D14: 00        .byte $00   ; 
- - - - - - 0x009D25 02:9D15: 80        .byte $80   ; 
- - - - - - 0x009D26 02:9D16: 00        .byte $00   ; 
- - - - - - 0x009D27 02:9D17: 80        .byte $80   ; 
- - - - - - 0x009D28 02:9D18: 00        .byte $00   ; 
- - - - - - 0x009D29 02:9D19: 80        .byte $80   ; 
- - - - - - 0x009D2A 02:9D1A: 60        .byte $60   ; 
- - - - - - 0x009D2B 02:9D1B: 01        .byte $01   ; 
- - - - - - 0x009D2C 02:9D1C: 00        .byte $00   ; 
- - - - - - 0x009D2D 02:9D1D: 03        .byte $03   ; 
- - - - - - 0x009D2E 02:9D1E: 00        .byte $00   ; 
- - - - - - 0x009D2F 02:9D1F: 01        .byte $01   ; 
- - - - - - 0x009D30 02:9D20: E0        .byte $E0   ; 
- - - - - - 0x009D31 02:9D21: 02        .byte $02   ; 
- - - - - - 0x009D32 02:9D22: 48        .byte $48   ; 
- - - - - - 0x009D33 02:9D23: 40        .byte $40   ; 
- - - - - - 0x009D34 02:9D24: 00        .byte $00   ; 
- - - - - - 0x009D35 02:9D25: 40        .byte $40   ; 
- - - - - - 0x009D36 02:9D26: 40        .byte $40   ; 
- - - - - - 0x009D37 02:9D27: 40        .byte $40   ; 
- - - - - - 0x009D38 02:9D28: C0        .byte $C0   ; 
- - - - - - 0x009D39 02:9D29: 7F        .byte $7F   ; 
- - - - - - 0x009D3A 02:9D2A: A0        .byte $A0   ; 
- - - - - - 0x009D3B 02:9D2B: 01        .byte $01   ; 
- - - - - - 0x009D3C 02:9D2C: 40        .byte $40   ; 
- - - - - - 0x009D3D 02:9D2D: 02        .byte $02   ; 
- - - - - - 0x009D3E 02:9D2E: 00        .byte $00   ; 
- - - - - - 0x009D3F 02:9D2F: 01        .byte $01   ; 
- - - - - - 0x009D40 02:9D30: C0        .byte $C0   ; 
- - - - - - 0x009D41 02:9D31: 02        .byte $02   ; 
- - - - - - 0x009D42 02:9D32: 80        .byte $80   ; 
- - - - - - 0x009D43 02:9D33: 00        .byte $00   ; 
- - - - - - 0x009D44 02:9D34: A0        .byte $A0   ; 
- - - - - - 0x009D45 02:9D35: 02        .byte $02   ; 
- - - - - - 0x009D46 02:9D36: A0        .byte $A0   ; 
- - - - - - 0x009D47 02:9D37: 00        .byte $00   ; 
- - - - - - 0x009D48 02:9D38: 00        .byte $00   ; 
- - - - - - 0x009D49 02:9D39: 03        .byte $03   ; 
- - - - - - 0x009D4A 02:9D3A: 40        .byte $40   ; 
- - - - - - 0x009D4B 02:9D3B: 00        .byte $00   ; 
- - - - - - 0x009D4C 02:9D3C: 20        .byte $20   ; 
- - - - - - 0x009D4D 02:9D3D: 02        .byte $02   ; 
- D 0 - I - 0x009D4E 02:9D3E: 00        .byte $00   ; 
- D 0 - I - 0x009D4F 02:9D3F: 80        .byte $80   ; 
- D 0 - I - 0x009D50 02:9D40: 00        .byte $00   ; 
- D 0 - I - 0x009D51 02:9D41: 80        .byte $80   ; 
- D 0 - I - 0x009D52 02:9D42: C0        .byte $C0   ; 
- D 0 - I - 0x009D53 02:9D43: 00        .byte $00   ; 
- D 0 - I - 0x009D54 02:9D44: 50        .byte $50   ; 
- D 0 - I - 0x009D55 02:9D45: 03        .byte $03   ; 
- D 0 - I - 0x009D56 02:9D46: 80        .byte $80   ; 
- D 0 - I - 0x009D57 02:9D47: 01        .byte $01   ; 
- D 0 - I - 0x009D58 02:9D48: E0        .byte $E0   ; 
- D 0 - I - 0x009D59 02:9D49: 02        .byte $02   ; 
- D 0 - I - 0x009D5A 02:9D4A: E0        .byte $E0   ; 
- D 0 - I - 0x009D5B 02:9D4B: 00        .byte $00   ; 
- D 0 - I - 0x009D5C 02:9D4C: 40        .byte $40   ; 
- D 0 - I - 0x009D5D 02:9D4D: 03        .byte $03   ; 
- D 0 - I - 0x009D5E 02:9D4E: A0        .byte $A0   ; 
- D 0 - I - 0x009D5F 02:9D4F: 00        .byte $00   ; 
- D 0 - I - 0x009D60 02:9D50: 30        .byte $30   ; 
- D 0 - I - 0x009D61 02:9D51: 03        .byte $03   ; 
- D 0 - I - 0x009D62 02:9D52: 80        .byte $80   ; 
- D 0 - I - 0x009D63 02:9D53: 00        .byte $00   ; 
- D 0 - I - 0x009D64 02:9D54: E0        .byte $E0   ; 
- D 0 - I - 0x009D65 02:9D55: 02        .byte $02   ; 
- D 0 - I - 0x009D66 02:9D56: C0        .byte $C0   ; 
- D 0 - I - 0x009D67 02:9D57: 01        .byte $01   ; 
- D 0 - I - 0x009D68 02:9D58: E0        .byte $E0   ; 
- D 0 - I - 0x009D69 02:9D59: 01        .byte $01   ; 
- D 0 - I - 0x009D6A 02:9D5A: E0        .byte $E0   ; 
- D 0 - I - 0x009D6B 02:9D5B: 00        .byte $00   ; 
- D 0 - I - 0x009D6C 02:9D5C: F0        .byte $F0   ; 
- D 0 - I - 0x009D6D 02:9D5D: 02        .byte $02   ; 
- D 0 - I - 0x009D6E 02:9D5E: E0        .byte $E0   ; 
- D 0 - I - 0x009D6F 02:9D5F: 00        .byte $00   ; 
- D 0 - I - 0x009D70 02:9D60: E0        .byte $E0   ; 
- D 0 - I - 0x009D71 02:9D61: 02        .byte $02   ; 
- D 0 - I - 0x009D72 02:9D62: 00        .byte $00   ; 
- D 0 - I - 0x009D73 02:9D63: 01        .byte $01   ; 
- D 0 - I - 0x009D74 02:9D64: 00        .byte $00   ; 
- D 0 - I - 0x009D75 02:9D65: 03        .byte $03   ; 
- D 0 - I - 0x009D76 02:9D66: 40        .byte $40   ; 
- D 0 - I - 0x009D77 02:9D67: 00        .byte $00   ; 
- D 0 - I - 0x009D78 02:9D68: E0        .byte $E0   ; 
- D 0 - I - 0x009D79 02:9D69: 01        .byte $01   ; 



_off007_9D6A_0C:
- D 0 - I - 0x009D7A 02:9D6A: 00        .byte $00   ; 
- D 0 - I - 0x009D7B 02:9D6B: 80        .byte $80   ; 
- D 0 - I - 0x009D7C 02:9D6C: 00        .byte $00   ; 
- D 0 - I - 0x009D7D 02:9D6D: 80        .byte $80   ; 
- D 0 - I - 0x009D7E 02:9D6E: 40        .byte $40   ; 
- D 0 - I - 0x009D7F 02:9D6F: 00        .byte $00   ; 
- D 0 - I - 0x009D80 02:9D70: C0        .byte $C0   ; 
- D 0 - I - 0x009D81 02:9D71: 01        .byte $01   ; 
- D 0 - I - 0x009D82 02:9D72: E0        .byte $E0   ; 
- D 0 - I - 0x009D83 02:9D73: 01        .byte $01   ; 
- D 0 - I - 0x009D84 02:9D74: C0        .byte $C0   ; 
- D 0 - I - 0x009D85 02:9D75: 01        .byte $01   ; 
- D 0 - I - 0x009D86 02:9D76: 00        .byte $00   ; 
- D 0 - I - 0x009D87 02:9D77: 01        .byte $01   ; 
- D 0 - I - 0x009D88 02:9D78: 00        .byte $00   ; 
- D 0 - I - 0x009D89 02:9D79: 02        .byte $02   ; 
- D 0 - I - 0x009D8A 02:9D7A: 00        .byte $00   ; 
- D 0 - I - 0x009D8B 02:9D7B: 01        .byte $01   ; 
- D 0 - I - 0x009D8C 02:9D7C: 80        .byte $80   ; 
- D 0 - I - 0x009D8D 02:9D7D: 02        .byte $02   ; 
- D 0 - I - 0x009D8E 02:9D7E: A0        .byte $A0   ; 
- D 0 - I - 0x009D8F 02:9D7F: 00        .byte $00   ; 
- D 0 - I - 0x009D90 02:9D80: E0        .byte $E0   ; 
- D 0 - I - 0x009D91 02:9D81: 01        .byte $01   ; 
- - - - - - 0x009D92 02:9D82: 00        .byte $00   ; 
- - - - - - 0x009D93 02:9D83: 80        .byte $80   ; 
- - - - - - 0x009D94 02:9D84: 00        .byte $00   ; 
- - - - - - 0x009D95 02:9D85: 80        .byte $80   ; 
- D 0 - I - 0x009D96 02:9D86: C0        .byte $C0   ; 
- D 0 - I - 0x009D97 02:9D87: 7F        .byte $7F   ; 
- D 0 - I - 0x009D98 02:9D88: 40        .byte $40   ; 
- D 0 - I - 0x009D99 02:9D89: 40        .byte $40   ; 
- D 0 - I - 0x009D9A 02:9D8A: B8        .byte $B8   ; 
- D 0 - I - 0x009D9B 02:9D8B: 7F        .byte $7F   ; 
- D 0 - I - 0x009D9C 02:9D8C: 00        .byte $00   ; 
- D 0 - I - 0x009D9D 02:9D8D: 40        .byte $40   ; 
- D 0 - I - 0x009D9E 02:9D8E: 00        .byte $00   ; 
- D 0 - I - 0x009D9F 02:9D8F: 01        .byte $01   ; 
- D 0 - I - 0x009DA0 02:9D90: 20        .byte $20   ; 
- D 0 - I - 0x009DA1 02:9D91: 01        .byte $01   ; 
- D 0 - I - 0x009DA2 02:9D92: 80        .byte $80   ; 
- D 0 - I - 0x009DA3 02:9D93: 00        .byte $00   ; 
- D 0 - I - 0x009DA4 02:9D94: 00        .byte $00   ; 
- D 0 - I - 0x009DA5 02:9D95: 01        .byte $01   ; 
- - - - - - 0x009DA6 02:9D96: 00        .byte $00   ; 
- - - - - - 0x009DA7 02:9D97: 80        .byte $80   ; 
- - - - - - 0x009DA8 02:9D98: 00        .byte $00   ; 
- - - - - - 0x009DA9 02:9D99: 80        .byte $80   ; 
- - - - - - 0x009DAA 02:9D9A: 60        .byte $60   ; 
- - - - - - 0x009DAB 02:9D9B: 00        .byte $00   ; 
- - - - - - 0x009DAC 02:9D9C: E0        .byte $E0   ; 
- - - - - - 0x009DAD 02:9D9D: 01        .byte $01   ; 
- - - - - - 0x009DAE 02:9D9E: C0        .byte $C0   ; 
- - - - - - 0x009DAF 02:9D9F: 01        .byte $01   ; 
- - - - - - 0x009DB0 02:9DA0: C0        .byte $C0   ; 
- - - - - - 0x009DB1 02:9DA1: 01        .byte $01   ; 
- - - - - - 0x009DB2 02:9DA2: 00        .byte $00   ; 
- - - - - - 0x009DB3 02:9DA3: 01        .byte $01   ; 
- - - - - - 0x009DB4 02:9DA4: 00        .byte $00   ; 
- - - - - - 0x009DB5 02:9DA5: 02        .byte $02   ; 
- - - - - - 0x009DB6 02:9DA6: 00        .byte $00   ; 
- - - - - - 0x009DB7 02:9DA7: 01        .byte $01   ; 
- - - - - - 0x009DB8 02:9DA8: 80        .byte $80   ; 
- - - - - - 0x009DB9 02:9DA9: 02        .byte $02   ; 
- - - - - - 0x009DBA 02:9DAA: A0        .byte $A0   ; 
- - - - - - 0x009DBB 02:9DAB: 00        .byte $00   ; 
- - - - - - 0x009DBC 02:9DAC: 80        .byte $80   ; 
- - - - - - 0x009DBD 02:9DAD: 01        .byte $01   ; 
- - - - - - 0x009DBE 02:9DAE: 80        .byte $80   ; 
- - - - - - 0x009DBF 02:9DAF: 01        .byte $01   ; 
- - - - - - 0x009DC0 02:9DB0: 20        .byte $20   ; 
- - - - - - 0x009DC1 02:9DB1: 01        .byte $01   ; 
- - - - - - 0x009DC2 02:9DB2: 60        .byte $60   ; 
- - - - - - 0x009DC3 02:9DB3: 01        .byte $01   ; 
- - - - - - 0x009DC4 02:9DB4: 80        .byte $80   ; 
- - - - - - 0x009DC5 02:9DB5: 01        .byte $01   ; 
- - - - - - 0x009DC6 02:9DB6: 60        .byte $60   ; 
- - - - - - 0x009DC7 02:9DB7: 01        .byte $01   ; 
- - - - - - 0x009DC8 02:9DB8: E0        .byte $E0   ; 
- - - - - - 0x009DC9 02:9DB9: 00        .byte $00   ; 
- - - - - - 0x009DCA 02:9DBA: 20        .byte $20   ; 
- - - - - - 0x009DCB 02:9DBB: 01        .byte $01   ; 
- - - - - - 0x009DCC 02:9DBC: 60        .byte $60   ; 
- - - - - - 0x009DCD 02:9DBD: 01        .byte $01   ; 
- - - - - - 0x009DCE 02:9DBE: A0        .byte $A0   ; 
- - - - - - 0x009DCF 02:9DBF: 00        .byte $00   ; 
- - - - - - 0x009DD0 02:9DC0: 20        .byte $20   ; 
- - - - - - 0x009DD1 02:9DC1: 01        .byte $01   ; 



_off007_9DC2_0D:
- D 0 - I - 0x009DD2 02:9DC2: 00        .byte $00   ; 
- D 0 - I - 0x009DD3 02:9DC3: 80        .byte $80   ; 
- D 0 - I - 0x009DD4 02:9DC4: 00        .byte $00   ; 
- D 0 - I - 0x009DD5 02:9DC5: 80        .byte $80   ; 
- D 0 - I - 0x009DD6 02:9DC6: 40        .byte $40   ; 
- D 0 - I - 0x009DD7 02:9DC7: 00        .byte $00   ; 
- D 0 - I - 0x009DD8 02:9DC8: C0        .byte $C0   ; 
- D 0 - I - 0x009DD9 02:9DC9: 01        .byte $01   ; 
- D 0 - I - 0x009DDA 02:9DCA: E0        .byte $E0   ; 
- D 0 - I - 0x009DDB 02:9DCB: 01        .byte $01   ; 
- D 0 - I - 0x009DDC 02:9DCC: C0        .byte $C0   ; 
- D 0 - I - 0x009DDD 02:9DCD: 01        .byte $01   ; 
- D 0 - I - 0x009DDE 02:9DCE: 00        .byte $00   ; 
- D 0 - I - 0x009DDF 02:9DCF: 01        .byte $01   ; 
- D 0 - I - 0x009DE0 02:9DD0: 00        .byte $00   ; 
- D 0 - I - 0x009DE1 02:9DD1: 02        .byte $02   ; 
- D 0 - I - 0x009DE2 02:9DD2: 00        .byte $00   ; 
- D 0 - I - 0x009DE3 02:9DD3: 01        .byte $01   ; 
- D 0 - I - 0x009DE4 02:9DD4: 80        .byte $80   ; 
- D 0 - I - 0x009DE5 02:9DD5: 02        .byte $02   ; 
- D 0 - I - 0x009DE6 02:9DD6: C0        .byte $C0   ; 
- D 0 - I - 0x009DE7 02:9DD7: 00        .byte $00   ; 
- D 0 - I - 0x009DE8 02:9DD8: 00        .byte $00   ; 
- D 0 - I - 0x009DE9 02:9DD9: 02        .byte $02   ; 
- - - - - - 0x009DEA 02:9DDA: 00        .byte $00   ; 
- - - - - - 0x009DEB 02:9DDB: 80        .byte $80   ; 
- - - - - - 0x009DEC 02:9DDC: 00        .byte $00   ; 
- - - - - - 0x009DED 02:9DDD: 80        .byte $80   ; 
- D 0 - I - 0x009DEE 02:9DDE: B8        .byte $B8   ; 
- D 0 - I - 0x009DEF 02:9DDF: 7F        .byte $7F   ; 
- D 0 - I - 0x009DF0 02:9DE0: 00        .byte $00   ; 
- D 0 - I - 0x009DF1 02:9DE1: 40        .byte $40   ; 
- D 0 - I - 0x009DF2 02:9DE2: C0        .byte $C0   ; 
- D 0 - I - 0x009DF3 02:9DE3: 00        .byte $00   ; 
- D 0 - I - 0x009DF4 02:9DE4: C0        .byte $C0   ; 
- D 0 - I - 0x009DF5 02:9DE5: 01        .byte $01   ; 
- D 0 - I - 0x009DF6 02:9DE6: 00        .byte $00   ; 
- D 0 - I - 0x009DF7 02:9DE7: 01        .byte $01   ; 
- D 0 - I - 0x009DF8 02:9DE8: 00        .byte $00   ; 
- D 0 - I - 0x009DF9 02:9DE9: 01        .byte $01   ; 
- D 0 - I - 0x009DFA 02:9DEA: 80        .byte $80   ; 
- D 0 - I - 0x009DFB 02:9DEB: 00        .byte $00   ; 
- D 0 - I - 0x009DFC 02:9DEC: 00        .byte $00   ; 
- D 0 - I - 0x009DFD 02:9DED: 01        .byte $01   ; 
- - - - - - 0x009DFE 02:9DEE: 00        .byte $00   ; 
- - - - - - 0x009DFF 02:9DEF: 80        .byte $80   ; 
- - - - - - 0x009E00 02:9DF0: 00        .byte $00   ; 
- - - - - - 0x009E01 02:9DF1: 80        .byte $80   ; 
- - - - - - 0x009E02 02:9DF2: 60        .byte $60   ; 
- - - - - - 0x009E03 02:9DF3: 00        .byte $00   ; 
- - - - - - 0x009E04 02:9DF4: E0        .byte $E0   ; 
- - - - - - 0x009E05 02:9DF5: 01        .byte $01   ; 
- - - - - - 0x009E06 02:9DF6: C0        .byte $C0   ; 
- - - - - - 0x009E07 02:9DF7: 01        .byte $01   ; 
- - - - - - 0x009E08 02:9DF8: 20        .byte $20   ; 
- - - - - - 0x009E09 02:9DF9: 02        .byte $02   ; 
- - - - - - 0x009E0A 02:9DFA: 20        .byte $20   ; 
- - - - - - 0x009E0B 02:9DFB: 01        .byte $01   ; 
- - - - - - 0x009E0C 02:9DFC: 20        .byte $20   ; 
- - - - - - 0x009E0D 02:9DFD: 02        .byte $02   ; 
- - - - - - 0x009E0E 02:9DFE: 60        .byte $60   ; 
- - - - - - 0x009E0F 02:9DFF: 01        .byte $01   ; 
- - - - - - 0x009E10 02:9E00: 80        .byte $80   ; 
- - - - - - 0x009E11 02:9E01: 02        .byte $02   ; 
- - - - - - 0x009E12 02:9E02: A0        .byte $A0   ; 
- - - - - - 0x009E13 02:9E03: 00        .byte $00   ; 
- - - - - - 0x009E14 02:9E04: E0        .byte $E0   ; 
- - - - - - 0x009E15 02:9E05: 01        .byte $01   ; 
- - - - - - 0x009E16 02:9E06: 60        .byte $60   ; 
- - - - - - 0x009E17 02:9E07: 01        .byte $01   ; 
- - - - - - 0x009E18 02:9E08: 80        .byte $80   ; 
- - - - - - 0x009E19 02:9E09: 01        .byte $01   ; 
- - - - - - 0x009E1A 02:9E0A: 80        .byte $80   ; 
- - - - - - 0x009E1B 02:9E0B: 01        .byte $01   ; 
- - - - - - 0x009E1C 02:9E0C: C0        .byte $C0   ; 
- - - - - - 0x009E1D 02:9E0D: 01        .byte $01   ; 
- - - - - - 0x009E1E 02:9E0E: 80        .byte $80   ; 
- - - - - - 0x009E1F 02:9E0F: 01        .byte $01   ; 
- - - - - - 0x009E20 02:9E10: 20        .byte $20   ; 
- - - - - - 0x009E21 02:9E11: 01        .byte $01   ; 
- - - - - - 0x009E22 02:9E12: 00        .byte $00   ; 
- - - - - - 0x009E23 02:9E13: 01        .byte $01   ; 
- - - - - - 0x009E24 02:9E14: E0        .byte $E0   ; 
- - - - - - 0x009E25 02:9E15: 01        .byte $01   ; 
- - - - - - 0x009E26 02:9E16: A0        .byte $A0   ; 
- - - - - - 0x009E27 02:9E17: 00        .byte $00   ; 
- - - - - - 0x009E28 02:9E18: 80        .byte $80   ; 
- - - - - - 0x009E29 02:9E19: 01        .byte $01   ; 



_off007_9E1A_0E:
- D 0 - I - 0x009E2A 02:9E1A: 00        .byte $00   ; 
- D 0 - I - 0x009E2B 02:9E1B: 80        .byte $80   ; 
- D 0 - I - 0x009E2C 02:9E1C: 00        .byte $00   ; 
- D 0 - I - 0x009E2D 02:9E1D: 80        .byte $80   ; 
- D 0 - I - 0x009E2E 02:9E1E: 60        .byte $60   ; 
- D 0 - I - 0x009E2F 02:9E1F: 00        .byte $00   ; 
- D 0 - I - 0x009E30 02:9E20: C0        .byte $C0   ; 
- D 0 - I - 0x009E31 02:9E21: 01        .byte $01   ; 
- D 0 - I - 0x009E32 02:9E22: C0        .byte $C0   ; 
- D 0 - I - 0x009E33 02:9E23: 01        .byte $01   ; 
- D 0 - I - 0x009E34 02:9E24: E0        .byte $E0   ; 
- D 0 - I - 0x009E35 02:9E25: 01        .byte $01   ; 
- D 0 - I - 0x009E36 02:9E26: 00        .byte $00   ; 
- D 0 - I - 0x009E37 02:9E27: 01        .byte $01   ; 
- D 0 - I - 0x009E38 02:9E28: 20        .byte $20   ; 
- D 0 - I - 0x009E39 02:9E29: 02        .byte $02   ; 
- D 0 - I - 0x009E3A 02:9E2A: 00        .byte $00   ; 
- D 0 - I - 0x009E3B 02:9E2B: 01        .byte $01   ; 
- D 0 - I - 0x009E3C 02:9E2C: 80        .byte $80   ; 
- D 0 - I - 0x009E3D 02:9E2D: 02        .byte $02   ; 
- D 0 - I - 0x009E3E 02:9E2E: A0        .byte $A0   ; 
- D 0 - I - 0x009E3F 02:9E2F: 00        .byte $00   ; 
- D 0 - I - 0x009E40 02:9E30: 80        .byte $80   ; 
- D 0 - I - 0x009E41 02:9E31: 01        .byte $01   ; 
- - - - - - 0x009E42 02:9E32: 00        .byte $00   ; 
- - - - - - 0x009E43 02:9E33: 80        .byte $80   ; 
- - - - - - 0x009E44 02:9E34: 00        .byte $00   ; 
- - - - - - 0x009E45 02:9E35: 80        .byte $80   ; 
- D 0 - I - 0x009E46 02:9E36: B8        .byte $B8   ; 
- D 0 - I - 0x009E47 02:9E37: 7F        .byte $7F   ; 
- D 0 - I - 0x009E48 02:9E38: 00        .byte $00   ; 
- D 0 - I - 0x009E49 02:9E39: 40        .byte $40   ; 
- D 0 - I - 0x009E4A 02:9E3A: C0        .byte $C0   ; 
- D 0 - I - 0x009E4B 02:9E3B: 7F        .byte $7F   ; 
- D 0 - I - 0x009E4C 02:9E3C: C0        .byte $C0   ; 
- D 0 - I - 0x009E4D 02:9E3D: 7F        .byte $7F   ; 
- D 0 - I - 0x009E4E 02:9E3E: 00        .byte $00   ; 
- D 0 - I - 0x009E4F 02:9E3F: 01        .byte $01   ; 
- D 0 - I - 0x009E50 02:9E40: 00        .byte $00   ; 
- D 0 - I - 0x009E51 02:9E41: 01        .byte $01   ; 
- D 0 - I - 0x009E52 02:9E42: 40        .byte $40   ; 
- D 0 - I - 0x009E53 02:9E43: 00        .byte $00   ; 
- D 0 - I - 0x009E54 02:9E44: 00        .byte $00   ; 
- D 0 - I - 0x009E55 02:9E45: 01        .byte $01   ; 
- D 0 - I - 0x009E56 02:9E46: 00        .byte $00   ; 
- D 0 - I - 0x009E57 02:9E47: 80        .byte $80   ; 
- D 0 - I - 0x009E58 02:9E48: 00        .byte $00   ; 
- D 0 - I - 0x009E59 02:9E49: 80        .byte $80   ; 
- D 0 - I - 0x009E5A 02:9E4A: 40        .byte $40   ; 
- D 0 - I - 0x009E5B 02:9E4B: 00        .byte $00   ; 
- D 0 - I - 0x009E5C 02:9E4C: 40        .byte $40   ; 
- D 0 - I - 0x009E5D 02:9E4D: 02        .byte $02   ; 
- D 0 - I - 0x009E5E 02:9E4E: C0        .byte $C0   ; 
- D 0 - I - 0x009E5F 02:9E4F: 01        .byte $01   ; 
- D 0 - I - 0x009E60 02:9E50: 20        .byte $20   ; 
- D 0 - I - 0x009E61 02:9E51: 02        .byte $02   ; 
- D 0 - I - 0x009E62 02:9E52: 20        .byte $20   ; 
- D 0 - I - 0x009E63 02:9E53: 01        .byte $01   ; 
- D 0 - I - 0x009E64 02:9E54: 40        .byte $40   ; 
- D 0 - I - 0x009E65 02:9E55: 02        .byte $02   ; 
- D 0 - I - 0x009E66 02:9E56: 60        .byte $60   ; 
- D 0 - I - 0x009E67 02:9E57: 01        .byte $01   ; 
- D 0 - I - 0x009E68 02:9E58: 80        .byte $80   ; 
- D 0 - I - 0x009E69 02:9E59: 02        .byte $02   ; 
- D 0 - I - 0x009E6A 02:9E5A: 20        .byte $20   ; 
- D 0 - I - 0x009E6B 02:9E5B: 01        .byte $01   ; 
- D 0 - I - 0x009E6C 02:9E5C: C0        .byte $C0   ; 
- D 0 - I - 0x009E6D 02:9E5D: 01        .byte $01   ; 
- D 0 - I - 0x009E6E 02:9E5E: 80        .byte $80   ; 
- D 0 - I - 0x009E6F 02:9E5F: 01        .byte $01   ; 
- D 0 - I - 0x009E70 02:9E60: A0        .byte $A0   ; 
- D 0 - I - 0x009E71 02:9E61: 01        .byte $01   ; 
- D 0 - I - 0x009E72 02:9E62: 00        .byte $00   ; 
- D 0 - I - 0x009E73 02:9E63: 01        .byte $01   ; 
- D 0 - I - 0x009E74 02:9E64: E0        .byte $E0   ; 
- D 0 - I - 0x009E75 02:9E65: 01        .byte $01   ; 
- D 0 - I - 0x009E76 02:9E66: 60        .byte $60   ; 
- D 0 - I - 0x009E77 02:9E67: 01        .byte $01   ; 
- D 0 - I - 0x009E78 02:9E68: 80        .byte $80   ; 
- D 0 - I - 0x009E79 02:9E69: 01        .byte $01   ; 
- D 0 - I - 0x009E7A 02:9E6A: 80        .byte $80   ; 
- D 0 - I - 0x009E7B 02:9E6B: 01        .byte $01   ; 
- D 0 - I - 0x009E7C 02:9E6C: C0        .byte $C0   ; 
- D 0 - I - 0x009E7D 02:9E6D: 01        .byte $01   ; 
- D 0 - I - 0x009E7E 02:9E6E: C0        .byte $C0   ; 
- D 0 - I - 0x009E7F 02:9E6F: 00        .byte $00   ; 
- D 0 - I - 0x009E80 02:9E70: 60        .byte $60   ; 
- D 0 - I - 0x009E81 02:9E71: 01        .byte $01   ; 



_off007_9E72_0F:
- - - - - - 0x009E82 02:9E72: 00        .byte $00   ; 
- - - - - - 0x009E83 02:9E73: 80        .byte $80   ; 
- - - - - - 0x009E84 02:9E74: 00        .byte $00   ; 
- - - - - - 0x009E85 02:9E75: 80        .byte $80   ; 
- - - - - - 0x009E86 02:9E76: 60        .byte $60   ; 
- - - - - - 0x009E87 02:9E77: 00        .byte $00   ; 
- - - - - - 0x009E88 02:9E78: E0        .byte $E0   ; 
- - - - - - 0x009E89 02:9E79: 01        .byte $01   ; 
- - - - - - 0x009E8A 02:9E7A: C0        .byte $C0   ; 
- - - - - - 0x009E8B 02:9E7B: 7F        .byte $7F   ; 
- - - - - - 0x009E8C 02:9E7C: 40        .byte $40   ; 
- - - - - - 0x009E8D 02:9E7D: 40        .byte $40   ; 
- - - - - - 0x009E8E 02:9E7E: 60        .byte $60   ; 
- - - - - - 0x009E8F 02:9E7F: 01        .byte $01   ; 
- - - - - - 0x009E90 02:9E80: 40        .byte $40   ; 
- - - - - - 0x009E91 02:9E81: 02        .byte $02   ; 
- - - - - - 0x009E92 02:9E82: 00        .byte $00   ; 
- - - - - - 0x009E93 02:9E83: 01        .byte $01   ; 
- - - - - - 0x009E94 02:9E84: 80        .byte $80   ; 
- - - - - - 0x009E95 02:9E85: 02        .byte $02   ; 
- - - - - - 0x009E96 02:9E86: C0        .byte $C0   ; 
- - - - - - 0x009E97 02:9E87: 00        .byte $00   ; 
- - - - - - 0x009E98 02:9E88: 40        .byte $40   ; 
- - - - - - 0x009E99 02:9E89: 02        .byte $02   ; 
- - - - - - 0x009E9A 02:9E8A: 00        .byte $00   ; 
- - - - - - 0x009E9B 02:9E8B: 80        .byte $80   ; 
- - - - - - 0x009E9C 02:9E8C: 00        .byte $00   ; 
- - - - - - 0x009E9D 02:9E8D: 80        .byte $80   ; 
- - - - - - 0x009E9E 02:9E8E: C0        .byte $C0   ; 
- - - - - - 0x009E9F 02:9E8F: 7F        .byte $7F   ; 
- - - - - - 0x009EA0 02:9E90: C0        .byte $C0   ; 
- - - - - - 0x009EA1 02:9E91: 7F        .byte $7F   ; 
- - - - - - 0x009EA2 02:9E92: A0        .byte $A0   ; 
- - - - - - 0x009EA3 02:9E93: 00        .byte $00   ; 
- - - - - - 0x009EA4 02:9E94: 20        .byte $20   ; 
- - - - - - 0x009EA5 02:9E95: 02        .byte $02   ; 
- - - - - - 0x009EA6 02:9E96: B8        .byte $B8   ; 
- - - - - - 0x009EA7 02:9E97: 7F        .byte $7F   ; 
- - - - - - 0x009EA8 02:9E98: 00        .byte $00   ; 
- - - - - - 0x009EA9 02:9E99: 40        .byte $40   ; 
- - - - - - 0x009EAA 02:9E9A: 40        .byte $40   ; 
- - - - - - 0x009EAB 02:9E9B: 00        .byte $00   ; 
- - - - - - 0x009EAC 02:9E9C: 80        .byte $80   ; 
- - - - - - 0x009EAD 02:9E9D: 01        .byte $01   ; 
- - - - - - 0x009EAE 02:9E9E: 00        .byte $00   ; 
- - - - - - 0x009EAF 02:9E9F: 80        .byte $80   ; 
- - - - - - 0x009EB0 02:9EA0: 00        .byte $00   ; 
- - - - - - 0x009EB1 02:9EA1: 80        .byte $80   ; 
- - - - - - 0x009EB2 02:9EA2: 40        .byte $40   ; 
- - - - - - 0x009EB3 02:9EA3: 00        .byte $00   ; 
- - - - - - 0x009EB4 02:9EA4: 80        .byte $80   ; 
- - - - - - 0x009EB5 02:9EA5: 02        .byte $02   ; 
- - - - - - 0x009EB6 02:9EA6: C0        .byte $C0   ; 
- - - - - - 0x009EB7 02:9EA7: 01        .byte $01   ; 
- - - - - - 0x009EB8 02:9EA8: 80        .byte $80   ; 
- - - - - - 0x009EB9 02:9EA9: 02        .byte $02   ; 
- - - - - - 0x009EBA 02:9EAA: 20        .byte $20   ; 
- - - - - - 0x009EBB 02:9EAB: 01        .byte $01   ; 
- - - - - - 0x009EBC 02:9EAC: A0        .byte $A0   ; 
- - - - - - 0x009EBD 02:9EAD: 02        .byte $02   ; 
- - - - - - 0x009EBE 02:9EAE: 60        .byte $60   ; 
- - - - - - 0x009EBF 02:9EAF: 01        .byte $01   ; 
- - - - - - 0x009EC0 02:9EB0: E0        .byte $E0   ; 
- - - - - - 0x009EC1 02:9EB1: 02        .byte $02   ; 
- - - - - - 0x009EC2 02:9EB2: A0        .byte $A0   ; 
- - - - - - 0x009EC3 02:9EB3: 00        .byte $00   ; 
- - - - - - 0x009EC4 02:9EB4: 50        .byte $50   ; 
- - - - - - 0x009EC5 02:9EB5: 02        .byte $02   ; 
- - - - - - 0x009EC6 02:9EB6: 80        .byte $80   ; 
- - - - - - 0x009EC7 02:9EB7: 01        .byte $01   ; 
- - - - - - 0x009EC8 02:9EB8: E0        .byte $E0   ; 
- - - - - - 0x009EC9 02:9EB9: 01        .byte $01   ; 
- - - - - - 0x009ECA 02:9EBA: 80        .byte $80   ; 
- - - - - - 0x009ECB 02:9EBB: 01        .byte $01   ; 
- - - - - - 0x009ECC 02:9EBC: 20        .byte $20   ; 
- - - - - - 0x009ECD 02:9EBD: 02        .byte $02   ; 
- - - - - - 0x009ECE 02:9EBE: 20        .byte $20   ; 
- - - - - - 0x009ECF 02:9EBF: 01        .byte $01   ; 
- - - - - - 0x009ED0 02:9EC0: 40        .byte $40   ; 
- - - - - - 0x009ED1 02:9EC1: 02        .byte $02   ; 
- - - - - - 0x009ED2 02:9EC2: 00        .byte $00   ; 
- - - - - - 0x009ED3 02:9EC3: 01        .byte $01   ; 
- - - - - - 0x009ED4 02:9EC4: 20        .byte $20   ; 
- - - - - - 0x009ED5 02:9EC5: 02        .byte $02   ; 
- - - - - - 0x009ED6 02:9EC6: A0        .byte $A0   ; 
- - - - - - 0x009ED7 02:9EC7: 00        .byte $00   ; 
- - - - - - 0x009ED8 02:9EC8: E0        .byte $E0   ; 
- - - - - - 0x009ED9 02:9EC9: 01        .byte $01   ; 



_off007_9ECA_10:
- D 0 - I - 0x009EDA 02:9ECA: 00        .byte $00   ; 
- D 0 - I - 0x009EDB 02:9ECB: 80        .byte $80   ; 
- D 0 - I - 0x009EDC 02:9ECC: 00        .byte $00   ; 
- D 0 - I - 0x009EDD 02:9ECD: 80        .byte $80   ; 
- D 0 - I - 0x009EDE 02:9ECE: C0        .byte $C0   ; 
- D 0 - I - 0x009EDF 02:9ECF: 00        .byte $00   ; 
- D 0 - I - 0x009EE0 02:9ED0: 80        .byte $80   ; 
- D 0 - I - 0x009EE1 02:9ED1: 02        .byte $02   ; 
- - - - - - 0x009EE2 02:9ED2: 00        .byte $00   ; 
- - - - - - 0x009EE3 02:9ED3: 80        .byte $80   ; 
- - - - - - 0x009EE4 02:9ED4: 00        .byte $00   ; 
- - - - - - 0x009EE5 02:9ED5: 80        .byte $80   ; 
- D 0 - I - 0x009EE6 02:9ED6: B8        .byte $B8   ; 
- D 0 - I - 0x009EE7 02:9ED7: 7F        .byte $7F   ; 
- D 0 - I - 0x009EE8 02:9ED8: 00        .byte $00   ; 
- D 0 - I - 0x009EE9 02:9ED9: 40        .byte $40   ; 
- D 0 - I - 0x009EEA 02:9EDA: 00        .byte $00   ; 
- D 0 - I - 0x009EEB 02:9EDB: 01        .byte $01   ; 
- D 0 - I - 0x009EEC 02:9EDC: A0        .byte $A0   ; 
- D 0 - I - 0x009EED 02:9EDD: 02        .byte $02   ; 
- D 0 - I - 0x009EEE 02:9EDE: A0        .byte $A0   ; 
- D 0 - I - 0x009EEF 02:9EDF: 00        .byte $00   ; 
- D 0 - I - 0x009EF0 02:9EE0: 40        .byte $40   ; 
- D 0 - I - 0x009EF1 02:9EE1: 02        .byte $02   ; 
- D 0 - I - 0x009EF2 02:9EE2: E0        .byte $E0   ; 
- D 0 - I - 0x009EF3 02:9EE3: 01        .byte $01   ; 
- D 0 - I - 0x009EF4 02:9EE4: 80        .byte $80   ; 
- D 0 - I - 0x009EF5 02:9EE5: 01        .byte $01   ; 
- D 0 - I - 0x009EF6 02:9EE6: C0        .byte $C0   ; 
- D 0 - I - 0x009EF7 02:9EE7: 7F        .byte $7F   ; 
- D 0 - I - 0x009EF8 02:9EE8: C0        .byte $C0   ; 
- D 0 - I - 0x009EF9 02:9EE9: 7F        .byte $7F   ; 
- D 0 - I - 0x009EFA 02:9EEA: C0        .byte $C0   ; 
- D 0 - I - 0x009EFB 02:9EEB: 00        .byte $00   ; 
- D 0 - I - 0x009EFC 02:9EEC: 00        .byte $00   ; 
- D 0 - I - 0x009EFD 02:9EED: 02        .byte $02   ; 
- D 0 - I - 0x009EFE 02:9EEE: 20        .byte $20   ; 
- D 0 - I - 0x009EFF 02:9EEF: 01        .byte $01   ; 
- D 0 - I - 0x009F00 02:9EF0: E0        .byte $E0   ; 
- D 0 - I - 0x009F01 02:9EF1: 01        .byte $01   ; 
- D 0 - I - 0x009F02 02:9EF2: 60        .byte $60   ; 
- D 0 - I - 0x009F03 02:9EF3: 00        .byte $00   ; 
- D 0 - I - 0x009F04 02:9EF4: 80        .byte $80   ; 
- D 0 - I - 0x009F05 02:9EF5: 01        .byte $01   ; 
- D 0 - I - 0x009F06 02:9EF6: 00        .byte $00   ; 
- D 0 - I - 0x009F07 02:9EF7: 80        .byte $80   ; 
- D 0 - I - 0x009F08 02:9EF8: 00        .byte $00   ; 
- D 0 - I - 0x009F09 02:9EF9: 80        .byte $80   ; 
- D 0 - I - 0x009F0A 02:9EFA: 60        .byte $60   ; 
- D 0 - I - 0x009F0B 02:9EFB: 00        .byte $00   ; 
- D 0 - I - 0x009F0C 02:9EFC: E0        .byte $E0   ; 
- D 0 - I - 0x009F0D 02:9EFD: 02        .byte $02   ; 
- D 0 - I - 0x009F0E 02:9EFE: A0        .byte $A0   ; 
- D 0 - I - 0x009F0F 02:9EFF: 01        .byte $01   ; 
- D 0 - I - 0x009F10 02:9F00: 00        .byte $00   ; 
- D 0 - I - 0x009F11 02:9F01: 03        .byte $03   ; 
- D 0 - I - 0x009F12 02:9F02: 20        .byte $20   ; 
- D 0 - I - 0x009F13 02:9F03: 01        .byte $01   ; 
- D 0 - I - 0x009F14 02:9F04: A0        .byte $A0   ; 
- D 0 - I - 0x009F15 02:9F05: 02        .byte $02   ; 
- D 0 - I - 0x009F16 02:9F06: 60        .byte $60   ; 
- D 0 - I - 0x009F17 02:9F07: 01        .byte $01   ; 
- D 0 - I - 0x009F18 02:9F08: E0        .byte $E0   ; 
- D 0 - I - 0x009F19 02:9F09: 02        .byte $02   ; 
- D 0 - I - 0x009F1A 02:9F0A: A0        .byte $A0   ; 
- D 0 - I - 0x009F1B 02:9F0B: 00        .byte $00   ; 
- D 0 - I - 0x009F1C 02:9F0C: A0        .byte $A0   ; 
- D 0 - I - 0x009F1D 02:9F0D: 02        .byte $02   ; 
- D 0 - I - 0x009F1E 02:9F0E: C0        .byte $C0   ; 
- D 0 - I - 0x009F1F 02:9F0F: 01        .byte $01   ; 
- D 0 - I - 0x009F20 02:9F10: A0        .byte $A0   ; 
- D 0 - I - 0x009F21 02:9F11: 01        .byte $01   ; 
- D 0 - I - 0x009F22 02:9F12: 80        .byte $80   ; 
- D 0 - I - 0x009F23 02:9F13: 01        .byte $01   ; 
- D 0 - I - 0x009F24 02:9F14: A0        .byte $A0   ; 
- D 0 - I - 0x009F25 02:9F15: 02        .byte $02   ; 
- D 0 - I - 0x009F26 02:9F16: 00        .byte $00   ; 
- D 0 - I - 0x009F27 02:9F17: 01        .byte $01   ; 
- D 0 - I - 0x009F28 02:9F18: C0        .byte $C0   ; 
- D 0 - I - 0x009F29 02:9F19: 01        .byte $01   ; 
- D 0 - I - 0x009F2A 02:9F1A: 80        .byte $80   ; 
- D 0 - I - 0x009F2B 02:9F1B: 01        .byte $01   ; 
- D 0 - I - 0x009F2C 02:9F1C: 20        .byte $20   ; 
- D 0 - I - 0x009F2D 02:9F1D: 02        .byte $02   ; 
- D 0 - I - 0x009F2E 02:9F1E: 40        .byte $40   ; 
- D 0 - I - 0x009F2F 02:9F1F: 00        .byte $00   ; 
- D 0 - I - 0x009F30 02:9F20: E0        .byte $E0   ; 
- D 0 - I - 0x009F31 02:9F21: 01        .byte $01   ; 



_off007_9F22_11:
- D 0 - I - 0x009F32 02:9F22: 00        .byte $00   ; 
- D 0 - I - 0x009F33 02:9F23: 80        .byte $80   ; 
- D 0 - I - 0x009F34 02:9F24: 00        .byte $00   ; 
- D 0 - I - 0x009F35 02:9F25: 80        .byte $80   ; 
- D 0 - I - 0x009F36 02:9F26: A0        .byte $A0   ; 
- D 0 - I - 0x009F37 02:9F27: 00        .byte $00   ; 
- D 0 - I - 0x009F38 02:9F28: E0        .byte $E0   ; 
- D 0 - I - 0x009F39 02:9F29: 02        .byte $02   ; 
- - - - - - 0x009F3A 02:9F2A: 00        .byte $00   ; 
- - - - - - 0x009F3B 02:9F2B: 80        .byte $80   ; 
- - - - - - 0x009F3C 02:9F2C: 00        .byte $00   ; 
- - - - - - 0x009F3D 02:9F2D: 80        .byte $80   ; 
- D 0 - I - 0x009F3E 02:9F2E: B8        .byte $B8   ; 
- D 0 - I - 0x009F3F 02:9F2F: 7F        .byte $7F   ; 
- D 0 - I - 0x009F40 02:9F30: 00        .byte $00   ; 
- D 0 - I - 0x009F41 02:9F31: 40        .byte $40   ; 
- D 0 - I - 0x009F42 02:9F32: 00        .byte $00   ; 
- D 0 - I - 0x009F43 02:9F33: 01        .byte $01   ; 
- D 0 - I - 0x009F44 02:9F34: E0        .byte $E0   ; 
- D 0 - I - 0x009F45 02:9F35: 02        .byte $02   ; 
- D 0 - I - 0x009F46 02:9F36: A0        .byte $A0   ; 
- D 0 - I - 0x009F47 02:9F37: 00        .byte $00   ; 
- D 0 - I - 0x009F48 02:9F38: 40        .byte $40   ; 
- D 0 - I - 0x009F49 02:9F39: 02        .byte $02   ; 
- D 0 - I - 0x009F4A 02:9F3A: C0        .byte $C0   ; 
- D 0 - I - 0x009F4B 02:9F3B: 01        .byte $01   ; 
- D 0 - I - 0x009F4C 02:9F3C: E0        .byte $E0   ; 
- D 0 - I - 0x009F4D 02:9F3D: 01        .byte $01   ; 
- D 0 - I - 0x009F4E 02:9F3E: C0        .byte $C0   ; 
- D 0 - I - 0x009F4F 02:9F3F: 7F        .byte $7F   ; 
- D 0 - I - 0x009F50 02:9F40: C0        .byte $C0   ; 
- D 0 - I - 0x009F51 02:9F41: 7F        .byte $7F   ; 
- D 0 - I - 0x009F52 02:9F42: C0        .byte $C0   ; 
- D 0 - I - 0x009F53 02:9F43: 00        .byte $00   ; 
- D 0 - I - 0x009F54 02:9F44: 60        .byte $60   ; 
- D 0 - I - 0x009F55 02:9F45: 02        .byte $02   ; 
- D 0 - I - 0x009F56 02:9F46: 20        .byte $20   ; 
- D 0 - I - 0x009F57 02:9F47: 01        .byte $01   ; 
- D 0 - I - 0x009F58 02:9F48: 20        .byte $20   ; 
- D 0 - I - 0x009F59 02:9F49: 02        .byte $02   ; 
- D 0 - I - 0x009F5A 02:9F4A: 40        .byte $40   ; 
- D 0 - I - 0x009F5B 02:9F4B: 00        .byte $00   ; 
- D 0 - I - 0x009F5C 02:9F4C: C0        .byte $C0   ; 
- D 0 - I - 0x009F5D 02:9F4D: 01        .byte $01   ; 
- D 0 - I - 0x009F5E 02:9F4E: 00        .byte $00   ; 
- D 0 - I - 0x009F5F 02:9F4F: 80        .byte $80   ; 
- D 0 - I - 0x009F60 02:9F50: 00        .byte $00   ; 
- D 0 - I - 0x009F61 02:9F51: 80        .byte $80   ; 
- D 0 - I - 0x009F62 02:9F52: 60        .byte $60   ; 
- D 0 - I - 0x009F63 02:9F53: 00        .byte $00   ; 
- D 0 - I - 0x009F64 02:9F54: E0        .byte $E0   ; 
- D 0 - I - 0x009F65 02:9F55: 02        .byte $02   ; 
- D 0 - I - 0x009F66 02:9F56: A0        .byte $A0   ; 
- D 0 - I - 0x009F67 02:9F57: 01        .byte $01   ; 
- D 0 - I - 0x009F68 02:9F58: 20        .byte $20   ; 
- D 0 - I - 0x009F69 02:9F59: 03        .byte $03   ; 
- D 0 - I - 0x009F6A 02:9F5A: E0        .byte $E0   ; 
- D 0 - I - 0x009F6B 02:9F5B: 00        .byte $00   ; 
- D 0 - I - 0x009F6C 02:9F5C: E0        .byte $E0   ; 
- D 0 - I - 0x009F6D 02:9F5D: 02        .byte $02   ; 
- D 0 - I - 0x009F6E 02:9F5E: 60        .byte $60   ; 
- D 0 - I - 0x009F6F 02:9F5F: 01        .byte $01   ; 
- D 0 - I - 0x009F70 02:9F60: E0        .byte $E0   ; 
- D 0 - I - 0x009F71 02:9F61: 02        .byte $02   ; 
- D 0 - I - 0x009F72 02:9F62: 20        .byte $20   ; 
- D 0 - I - 0x009F73 02:9F63: 01        .byte $01   ; 
- D 0 - I - 0x009F74 02:9F64: 00        .byte $00   ; 
- D 0 - I - 0x009F75 02:9F65: 03        .byte $03   ; 
- D 0 - I - 0x009F76 02:9F66: E0        .byte $E0   ; 
- D 0 - I - 0x009F77 02:9F67: 01        .byte $01   ; 
- D 0 - I - 0x009F78 02:9F68: 00        .byte $00   ; 
- D 0 - I - 0x009F79 02:9F69: 02        .byte $02   ; 
- D 0 - I - 0x009F7A 02:9F6A: 40        .byte $40   ; 
- D 0 - I - 0x009F7B 02:9F6B: 01        .byte $01   ; 
- D 0 - I - 0x009F7C 02:9F6C: A0        .byte $A0   ; 
- D 0 - I - 0x009F7D 02:9F6D: 02        .byte $02   ; 
- D 0 - I - 0x009F7E 02:9F6E: 20        .byte $20   ; 
- D 0 - I - 0x009F7F 02:9F6F: 01        .byte $01   ; 
- D 0 - I - 0x009F80 02:9F70: E0        .byte $E0   ; 
- D 0 - I - 0x009F81 02:9F71: 01        .byte $01   ; 
- D 0 - I - 0x009F82 02:9F72: 80        .byte $80   ; 
- D 0 - I - 0x009F83 02:9F73: 01        .byte $01   ; 
- D 0 - I - 0x009F84 02:9F74: 00        .byte $00   ; 
- D 0 - I - 0x009F85 02:9F75: 03        .byte $03   ; 
- D 0 - I - 0x009F86 02:9F76: 60        .byte $60   ; 
- D 0 - I - 0x009F87 02:9F77: 00        .byte $00   ; 
- D 0 - I - 0x009F88 02:9F78: 00        .byte $00   ; 
- D 0 - I - 0x009F89 02:9F79: 02        .byte $02   ; 



_off007_9F7A_12:
- D 0 - I - 0x009F8A 02:9F7A: 00        .byte $00   ; 
- D 0 - I - 0x009F8B 02:9F7B: 80        .byte $80   ; 
- D 0 - I - 0x009F8C 02:9F7C: 00        .byte $00   ; 
- D 0 - I - 0x009F8D 02:9F7D: 80        .byte $80   ; 
- D 0 - I - 0x009F8E 02:9F7E: C0        .byte $C0   ; 
- D 0 - I - 0x009F8F 02:9F7F: 00        .byte $00   ; 
- D 0 - I - 0x009F90 02:9F80: E0        .byte $E0   ; 
- D 0 - I - 0x009F91 02:9F81: 02        .byte $02   ; 
- - - - - - 0x009F92 02:9F82: 00        .byte $00   ; 
- - - - - - 0x009F93 02:9F83: 80        .byte $80   ; 
- - - - - - 0x009F94 02:9F84: 00        .byte $00   ; 
- - - - - - 0x009F95 02:9F85: 80        .byte $80   ; 
- D 0 - I - 0x009F96 02:9F86: 00        .byte $00   ; 
- D 0 - I - 0x009F97 02:9F87: 01        .byte $01   ; 
- D 0 - I - 0x009F98 02:9F88: 90        .byte $90   ; 
- D 0 - I - 0x009F99 02:9F89: 02        .byte $02   ; 
- D 0 - I - 0x009F9A 02:9F8A: B8        .byte $B8   ; 
- D 0 - I - 0x009F9B 02:9F8B: 7F        .byte $7F   ; 
- D 0 - I - 0x009F9C 02:9F8C: 00        .byte $00   ; 
- D 0 - I - 0x009F9D 02:9F8D: 40        .byte $40   ; 
- D 0 - I - 0x009F9E 02:9F8E: 00        .byte $00   ; 
- D 0 - I - 0x009F9F 02:9F8F: 01        .byte $01   ; 
- D 0 - I - 0x009FA0 02:9F90: 40        .byte $40   ; 
- D 0 - I - 0x009FA1 02:9F91: 02        .byte $02   ; 
- D 0 - I - 0x009FA2 02:9F92: C0        .byte $C0   ; 
- D 0 - I - 0x009FA3 02:9F93: 01        .byte $01   ; 
- D 0 - I - 0x009FA4 02:9F94: E0        .byte $E0   ; 
- D 0 - I - 0x009FA5 02:9F95: 01        .byte $01   ; 
- D 0 - I - 0x009FA6 02:9F96: C0        .byte $C0   ; 
- D 0 - I - 0x009FA7 02:9F97: 7F        .byte $7F   ; 
- D 0 - I - 0x009FA8 02:9F98: C0        .byte $C0   ; 
- D 0 - I - 0x009FA9 02:9F99: 7F        .byte $7F   ; 
- D 0 - I - 0x009FAA 02:9F9A: A0        .byte $A0   ; 
- D 0 - I - 0x009FAB 02:9F9B: 00        .byte $00   ; 
- D 0 - I - 0x009FAC 02:9F9C: 80        .byte $80   ; 
- D 0 - I - 0x009FAD 02:9F9D: 02        .byte $02   ; 
- D 0 - I - 0x009FAE 02:9F9E: 60        .byte $60   ; 
- D 0 - I - 0x009FAF 02:9F9F: 01        .byte $01   ; 
- D 0 - I - 0x009FB0 02:9FA0: 80        .byte $80   ; 
- D 0 - I - 0x009FB1 02:9FA1: 02        .byte $02   ; 
- D 0 - I - 0x009FB2 02:9FA2: A0        .byte $A0   ; 
- D 0 - I - 0x009FB3 02:9FA3: 00        .byte $00   ; 
- D 0 - I - 0x009FB4 02:9FA4: 20        .byte $20   ; 
- D 0 - I - 0x009FB5 02:9FA5: 02        .byte $02   ; 
- - - - - - 0x009FB6 02:9FA6: 00        .byte $00   ; 
- - - - - - 0x009FB7 02:9FA7: 80        .byte $80   ; 
- - - - - - 0x009FB8 02:9FA8: 00        .byte $00   ; 
- - - - - - 0x009FB9 02:9FA9: 80        .byte $80   ; 
- - - - - - 0x009FBA 02:9FAA: A0        .byte $A0   ; 
- - - - - - 0x009FBB 02:9FAB: 00        .byte $00   ; 
- - - - - - 0x009FBC 02:9FAC: 00        .byte $00   ; 
- - - - - - 0x009FBD 02:9FAD: 03        .byte $03   ; 
- - - - - - 0x009FBE 02:9FAE: 40        .byte $40   ; 
- - - - - - 0x009FBF 02:9FAF: 01        .byte $01   ; 
- - - - - - 0x009FC0 02:9FB0: 00        .byte $00   ; 
- - - - - - 0x009FC1 02:9FB1: 03        .byte $03   ; 
- - - - - - 0x009FC2 02:9FB2: 00        .byte $00   ; 
- - - - - - 0x009FC3 02:9FB3: 01        .byte $01   ; 
- - - - - - 0x009FC4 02:9FB4: 30        .byte $30   ; 
- - - - - - 0x009FC5 02:9FB5: 03        .byte $03   ; 
- - - - - - 0x009FC6 02:9FB6: 60        .byte $60   ; 
- - - - - - 0x009FC7 02:9FB7: 01        .byte $01   ; 
- - - - - - 0x009FC8 02:9FB8: 20        .byte $20   ; 
- - - - - - 0x009FC9 02:9FB9: 03        .byte $03   ; 
- - - - - - 0x009FCA 02:9FBA: 00        .byte $00   ; 
- - - - - - 0x009FCB 02:9FBB: 01        .byte $01   ; 
- - - - - - 0x009FCC 02:9FBC: E0        .byte $E0   ; 
- - - - - - 0x009FCD 02:9FBD: 02        .byte $02   ; 
- - - - - - 0x009FCE 02:9FBE: E0        .byte $E0   ; 
- - - - - - 0x009FCF 02:9FBF: 01        .byte $01   ; 
- - - - - - 0x009FD0 02:9FC0: C0        .byte $C0   ; 
- - - - - - 0x009FD1 02:9FC1: 01        .byte $01   ; 
- - - - - - 0x009FD2 02:9FC2: 80        .byte $80   ; 
- - - - - - 0x009FD3 02:9FC3: 01        .byte $01   ; 
- - - - - - 0x009FD4 02:9FC4: E0        .byte $E0   ; 
- - - - - - 0x009FD5 02:9FC5: 02        .byte $02   ; 
- - - - - - 0x009FD6 02:9FC6: 00        .byte $00   ; 
- - - - - - 0x009FD7 02:9FC7: 01        .byte $01   ; 
- - - - - - 0x009FD8 02:9FC8: E0        .byte $E0   ; 
- - - - - - 0x009FD9 02:9FC9: 01        .byte $01   ; 
- - - - - - 0x009FDA 02:9FCA: 20        .byte $20   ; 
- - - - - - 0x009FDB 02:9FCB: 01        .byte $01   ; 
- - - - - - 0x009FDC 02:9FCC: 00        .byte $00   ; 
- - - - - - 0x009FDD 02:9FCD: 03        .byte $03   ; 
- - - - - - 0x009FDE 02:9FCE: 60        .byte $60   ; 
- - - - - - 0x009FDF 02:9FCF: 00        .byte $00   ; 
- - - - - - 0x009FE0 02:9FD0: 00        .byte $00   ; 
- - - - - - 0x009FE1 02:9FD1: 02        .byte $02   ; 



_off007_9FD2_13:
- D 0 - I - 0x009FE2 02:9FD2: 00        .byte $00   ; 
- D 0 - I - 0x009FE3 02:9FD3: 80        .byte $80   ; 
- D 0 - I - 0x009FE4 02:9FD4: 00        .byte $00   ; 
- D 0 - I - 0x009FE5 02:9FD5: 80        .byte $80   ; 
- D 0 - I - 0x009FE6 02:9FD6: C0        .byte $C0   ; 
- D 0 - I - 0x009FE7 02:9FD7: 00        .byte $00   ; 
- D 0 - I - 0x009FE8 02:9FD8: 00        .byte $00   ; 
- D 0 - I - 0x009FE9 02:9FD9: 03        .byte $03   ; 
- - - - - - 0x009FEA 02:9FDA: 00        .byte $00   ; 
- - - - - - 0x009FEB 02:9FDB: 80        .byte $80   ; 
- - - - - - 0x009FEC 02:9FDC: 00        .byte $00   ; 
- - - - - - 0x009FED 02:9FDD: 80        .byte $80   ; 
- D 0 - I - 0x009FEE 02:9FDE: 00        .byte $00   ; 
- D 0 - I - 0x009FEF 02:9FDF: 01        .byte $01   ; 
- D 0 - I - 0x009FF0 02:9FE0: 00        .byte $00   ; 
- D 0 - I - 0x009FF1 02:9FE1: 03        .byte $03   ; 
- D 0 - I - 0x009FF2 02:9FE2: B8        .byte $B8   ; 
- D 0 - I - 0x009FF3 02:9FE3: 7F        .byte $7F   ; 
- D 0 - I - 0x009FF4 02:9FE4: 00        .byte $00   ; 
- D 0 - I - 0x009FF5 02:9FE5: 40        .byte $40   ; 
- D 0 - I - 0x009FF6 02:9FE6: 00        .byte $00   ; 
- D 0 - I - 0x009FF7 02:9FE7: 01        .byte $01   ; 
- D 0 - I - 0x009FF8 02:9FE8: 80        .byte $80   ; 
- D 0 - I - 0x009FF9 02:9FE9: 02        .byte $02   ; 
- D 0 - I - 0x009FFA 02:9FEA: C0        .byte $C0   ; 
- D 0 - I - 0x009FFB 02:9FEB: 01        .byte $01   ; 
- D 0 - I - 0x009FFC 02:9FEC: 40        .byte $40   ; 
- D 0 - I - 0x009FFD 02:9FED: 02        .byte $02   ; 
- D 0 - I - 0x009FFE 02:9FEE: C0        .byte $C0   ; 
- D 0 - I - 0x009FFF 02:9FEF: 7F        .byte $7F   ; 
- D 0 - I - 0x00A000 02:9FF0: C0        .byte $C0   ; 
- D 0 - I - 0x00A001 02:9FF1: 7F        .byte $7F   ; 
- D 0 - I - 0x00A002 02:9FF2: A0        .byte $A0   ; 
- D 0 - I - 0x00A003 02:9FF3: 00        .byte $00   ; 
- D 0 - I - 0x00A004 02:9FF4: A0        .byte $A0   ; 
- D 0 - I - 0x00A005 02:9FF5: 02        .byte $02   ; 
- D 0 - I - 0x00A006 02:9FF6: 60        .byte $60   ; 
- D 0 - I - 0x00A007 02:9FF7: 01        .byte $01   ; 
- D 0 - I - 0x00A008 02:9FF8: E0        .byte $E0   ; 
- D 0 - I - 0x00A009 02:9FF9: 02        .byte $02   ; 
- D 0 - I - 0x00A00A 02:9FFA: A0        .byte $A0   ; 
- D 0 - I - 0x00A00B 02:9FFB: 00        .byte $00   ; 
- D 0 - I - 0x00A00C 02:9FFC: 20        .byte $20   ; 
- D 0 - I - 0x00A00D 02:9FFD: 02        .byte $02   ; 
- D 0 - I - 0x00A00E 02:9FFE: 00        .byte $00   ; 
- D 0 - I - 0x00A00F 02:9FFF: 80        .byte $80   ; 
- D 1 - - - 0x00A010 02:A000: 00        .byte $00   ; 
- D 1 - I - 0x00A011 02:A001: 80        .byte $80   ; 
- D 1 - I - 0x00A012 02:A002: A0        .byte $A0   ; 
- D 1 - I - 0x00A013 02:A003: 00        .byte $00   ; 
- D 1 - I - 0x00A014 02:A004: 00        .byte $00   ; 
- D 1 - I - 0x00A015 02:A005: 03        .byte $03   ; 
- D 1 - I - 0x00A016 02:A006: 40        .byte $40   ; 
- D 1 - I - 0x00A017 02:A007: 01        .byte $01   ; 
- D 1 - I - 0x00A018 02:A008: 00        .byte $00   ; 
- D 1 - I - 0x00A019 02:A009: 03        .byte $03   ; 
- D 1 - I - 0x00A01A 02:A00A: 00        .byte $00   ; 
- D 1 - I - 0x00A01B 02:A00B: 01        .byte $01   ; 
- D 1 - I - 0x00A01C 02:A00C: 30        .byte $30   ; 
- D 1 - I - 0x00A01D 02:A00D: 03        .byte $03   ; 
- D 1 - I - 0x00A01E 02:A00E: 60        .byte $60   ; 
- D 1 - I - 0x00A01F 02:A00F: 01        .byte $01   ; 
- D 1 - I - 0x00A020 02:A010: 20        .byte $20   ; 
- D 1 - I - 0x00A021 02:A011: 03        .byte $03   ; 
- D 1 - I - 0x00A022 02:A012: 00        .byte $00   ; 
- D 1 - I - 0x00A023 02:A013: 01        .byte $01   ; 
- D 1 - I - 0x00A024 02:A014: E0        .byte $E0   ; 
- D 1 - I - 0x00A025 02:A015: 02        .byte $02   ; 
- D 1 - I - 0x00A026 02:A016: E0        .byte $E0   ; 
- D 1 - I - 0x00A027 02:A017: 01        .byte $01   ; 
- D 1 - I - 0x00A028 02:A018: C0        .byte $C0   ; 
- D 1 - I - 0x00A029 02:A019: 01        .byte $01   ; 
- D 1 - I - 0x00A02A 02:A01A: 80        .byte $80   ; 
- D 1 - I - 0x00A02B 02:A01B: 01        .byte $01   ; 
- D 1 - I - 0x00A02C 02:A01C: E0        .byte $E0   ; 
- D 1 - I - 0x00A02D 02:A01D: 02        .byte $02   ; 
- D 1 - I - 0x00A02E 02:A01E: 00        .byte $00   ; 
- D 1 - I - 0x00A02F 02:A01F: 01        .byte $01   ; 
- D 1 - I - 0x00A030 02:A020: E0        .byte $E0   ; 
- D 1 - I - 0x00A031 02:A021: 01        .byte $01   ; 
- D 1 - I - 0x00A032 02:A022: 20        .byte $20   ; 
- D 1 - I - 0x00A033 02:A023: 01        .byte $01   ; 
- D 1 - I - 0x00A034 02:A024: 00        .byte $00   ; 
- D 1 - I - 0x00A035 02:A025: 03        .byte $03   ; 
- D 1 - I - 0x00A036 02:A026: 60        .byte $60   ; 
- D 1 - I - 0x00A037 02:A027: 00        .byte $00   ; 
- D 1 - I - 0x00A038 02:A028: 00        .byte $00   ; 
- D 1 - I - 0x00A039 02:A029: 02        .byte $02   ; 



sub_0x00A03A:
C D 1 - - - 0x00A03A 02:A02A: A2 00     LDX #$00
C - - - - - 0x00A03C 02:A02C: A9 02     LDA #$02
C - - - - - 0x00A03E 02:A02E: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
C - - - - - 0x00A041 02:A031: A2 10     LDX #$10
C - - - - - 0x00A043 02:A033: A9 02     LDA #$02
C - - - - - 0x00A045 02:A035: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
                                        INC ram_buffer_pal_flag
C - - - - - 0x00A04D 02:A03D: 20 75 C0  JSR sub_0x00CA69_clear_nametables
C - - - - - 0x00A050 02:A040: 20 51 C0  JSR sub_0x00CABF_hide_sprites
C - - - - - 0x00A053 02:A043: A9 BE     LDA #< tbl_A3BE
C - - - - - 0x00A055 02:A045: 85 8A     STA ram_008A
C - - - - - 0x00A057 02:A047: A9 A3     LDA #> tbl_A3BE
C - - - - - 0x00A059 02:A049: 85 8B     STA ram_008B
C - - - - - 0x00A05B 02:A04B: A9 00     LDA #$00
C - - - - - 0x00A05D 02:A04D: 85 8C     STA ram_008C
C - - - - - 0x00A05F 02:A04F: A9 20     LDA #$20
C - - - - - 0x00A061 02:A051: 85 8D     STA ram_008D
C - - - - - 0x00A063 02:A053: A9 1C     LDA #$1C
C - - - - - 0x00A065 02:A055: 85 69     STA ram_0069
C - - - - - 0x00A067 02:A057: A9 1A     LDA #$1A
C - - - - - 0x00A069 02:A059: 85 6A     STA ram_006A
C - - - - - 0x00A06B 02:A05B: A9 80     LDA #$80
C - - - - - 0x00A06D 02:A05D: 8D B7 03  STA ram_cam_edge_X_lo
C - - - - - 0x00A070 02:A060: A9 00     LDA #$00
C - - - - - 0x00A072 02:A062: 8D B8 03  STA ram_cam_edge_X_hi
C - - - - - 0x00A075 02:A065: 8D BC 03  STA ram_cam_edge_Y_lo
C - - - - - 0x00A078 02:A068: 8D BD 03  STA ram_cam_edge_Y_hi
C - - - - - 0x00A07B 02:A06B: 8D F8 03  STA ram_shad_pos_X_lo
C - - - - - 0x00A07E 02:A06E: 8D FA 03  STA ram_shad_pos_X_hi
loc_A071_loop:
bra_A071_loop:
C D 1 - - - 0x00A081 02:A071: A9 01     LDA #$01
C - - - - - 0x00A083 02:A073: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00A086 02:A076: AD 7D 03  LDA ram_buffer_bg_flag
C - - - - - 0x00A089 02:A079: D0 F6     BNE bra_A071_loop
C - - - - - 0x00A08B 02:A07B: A9 01     LDA #$01
C - - - - - 0x00A08D 02:A07D: 8D 7D 03  STA ram_buffer_bg_flag
C - - - - - 0x00A090 02:A080: A9 80     LDA #$80
C - - - - - 0x00A092 02:A082: 8D 7D 03  STA ram_buffer_bg_flag
C - - - - - 0x00A095 02:A085: A5 8C     LDA ram_008C
C - - - - - 0x00A097 02:A087: 8D 0E 03  STA ram_buffer_bg_lo
C - - - - - 0x00A09A 02:A08A: A5 8D     LDA ram_008D
C - - - - - 0x00A09C 02:A08C: 8D 0F 03  STA ram_buffer_bg_cnt
C - - - - - 0x00A09F 02:A08F: A2 00     LDX #$00
C - - - - - 0x00A0A1 02:A091: A0 00     LDY #$00
C - - - - - 0x00A0A3 02:A093: 8E 31 03  STX ram_0331
bra_A096_loop:
C - - - - - 0x00A0A6 02:A096: B1 8A     LDA (ram_008A),Y
C - - - - - 0x00A0A8 02:A098: F0 42     BEQ bra_A0DC
C - - - - - 0x00A0AA 02:A09A: 30 10     BMI bra_A0AC
C - - - - - 0x00A0AC 02:A09C: 85 2A     STA ram_002A
C - - - - - 0x00A0AE 02:A09E: C8        INY
bra_A09F_loop:
C - - - - - 0x00A0AF 02:A09F: B1 8A     LDA (ram_008A),Y
C - - - - - 0x00A0B1 02:A0A1: 9D 10 03  STA ram_buffer_bg_data,X
C - - - - - 0x00A0B4 02:A0A4: C8        INY
C - - - - - 0x00A0B5 02:A0A5: E8        INX
C - - - - - 0x00A0B6 02:A0A6: C6 2A     DEC ram_002A
C - - - - - 0x00A0B8 02:A0A8: D0 F5     BNE bra_A09F_loop
C - - - - - 0x00A0BA 02:A0AA: F0 10     BEQ bra_A0BC
bra_A0AC:
C - - - - - 0x00A0BC 02:A0AC: 29 7F     AND #$7F
C - - - - - 0x00A0BE 02:A0AE: 85 2A     STA ram_002A
C - - - - - 0x00A0C0 02:A0B0: C8        INY
C - - - - - 0x00A0C1 02:A0B1: B1 8A     LDA (ram_008A),Y
C - - - - - 0x00A0C3 02:A0B3: C8        INY
bra_A0B4_loop:
C - - - - - 0x00A0C4 02:A0B4: 9D 10 03  STA ram_buffer_bg_data,X
C - - - - - 0x00A0C7 02:A0B7: E8        INX
C - - - - - 0x00A0C8 02:A0B8: C6 2A     DEC ram_002A
C - - - - - 0x00A0CA 02:A0BA: D0 F8     BNE bra_A0B4_loop
bra_A0BC:
C - - - - - 0x00A0CC 02:A0BC: E0 20     CPX #$20
C - - - - - 0x00A0CE 02:A0BE: D0 D6     BNE bra_A096_loop
C - - - - - 0x00A0D0 02:A0C0: 8E 0D 03  STX ram_buffer_bg_hi
C - - - - - 0x00A0D3 02:A0C3: 98        TYA
C - - - - - 0x00A0D4 02:A0C4: 18        CLC
C - - - - - 0x00A0D5 02:A0C5: 65 8A     ADC ram_008A
C - - - - - 0x00A0D7 02:A0C7: 85 8A     STA ram_008A
C - - - - - 0x00A0D9 02:A0C9: 90 02     BCC bra_A0CD
C - - - - - 0x00A0DB 02:A0CB: E6 8B     INC ram_008B
bra_A0CD:
C - - - - - 0x00A0DD 02:A0CD: AD 8C 00  LDA ram_008C
C - - - - - 0x00A0E0 02:A0D0: 18        CLC
C - - - - - 0x00A0E1 02:A0D1: 69 20     ADC #$20
C - - - - - 0x00A0E3 02:A0D3: 85 8C     STA ram_008C
C - - - - - 0x00A0E5 02:A0D5: 90 9A     BCC bra_A071_loop
C - - - - - 0x00A0E7 02:A0D7: E6 8D     INC ram_008D
C - - - - - 0x00A0E9 02:A0D9: 4C 71 A0  JMP loc_A071_loop
bra_A0DC:
C - - - - - 0x00A0EC 02:A0DC: A9 00     LDA #$00
C - - - - - 0x00A0EE 02:A0DE: 8D AD 03  STA ram_team_w_ball
C - - - - - 0x00A0F1 02:A0E1: 85 8E     STA ram_008E
C - - - - - 0x00A0F3 02:A0E3: A2 00     LDX #$00
C - - - - - 0x00A0F5 02:A0E5: A9 09     LDA #$09
C - - - - - 0x00A0F7 02:A0E7: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
                                        INC ram_buffer_pal_flag
C - - - - - 0x00A0FF 02:A0EF: 60        RTS



sub_0x00A100:
C D 1 - - - 0x00A100 02:A0F0: 20 9F A1  JSR sub_A19F
C - - - - - 0x00A103 02:A0F3: 20 51 C0  JSR sub_0x00CABF_hide_sprites
C - - - - - 0x00A106 02:A0F6: A5 28     LDA ram_byte_for_2000
C - - - - - 0x00A108 02:A0F8: 09 20     ORA #$20
C - - - - - 0x00A10A 02:A0FA: 85 28     STA ram_byte_for_2000
C - - - - - 0x00A10C 02:A0FC: A9 04     LDA #$04
C - - - - - 0x00A10E 02:A0FE: 85 6B     STA ram_006B
C - - - - - 0x00A110 02:A100: A9 2A     LDA #$2A
C - - - - - 0x00A112 02:A102: 85 6C     STA ram_006C
C - - - - - 0x00A114 02:A104: A9 28     LDA #$28
C - - - - - 0x00A116 02:A106: 85 6D     STA ram_006D
C - - - - - 0x00A118 02:A108: A9 29     LDA #$29
C - - - - - 0x00A11A 02:A10A: 85 6E     STA ram_006E
C - - - - - 0x00A11C 02:A10C: A9 00     LDA #$00
bra_A10E_loop:
C - - - - - 0x00A11E 02:A10E: 48        PHA
C - - - - - 0x00A11F 02:A10F: 20 57 C0  JSR sub_0x00CBF3_get_base_player_address
                                        JSR sub_0x00C953_clear_player_flag___control
C - - - - - 0x00A12A 02:A11A: A9 19     LDA #con_behavior_pk_bench
C - - - - - 0x00A12C 02:A11C: 20 5A C0  JSR sub_0x00C63F_player_state_handler
C - - - - - 0x00A12F 02:A11F: A0 11     LDY #con_plr_anim_id
C - - - - - 0x00A131 02:A121: A9 00     LDA #$00
C - - - - - 0x00A133 02:A123: 91 61     STA (ram_plr_data),Y
C - - - - - 0x00A135 02:A125: 68        PLA
C - - - - - 0x00A136 02:A126: 18        CLC
C - - - - - 0x00A137 02:A127: 69 01     ADC #$01
C - - - - - 0x00A139 02:A129: C9 16     CMP #$16
C - - - - - 0x00A13B 02:A12B: D0 E1     BNE bra_A10E_loop
C - - - - - 0x00A13D 02:A12D: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00A140 02:A130: 18        CLC
C - - - - - 0x00A141 02:A131: 69 09     ADC #$09
C - - - - - 0x00A143 02:A133: 8D 29 04  STA ram_plr_w_ball
C - - - - - 0x00A146 02:A136: 20 57 C0  JSR sub_0x00CBF3_get_base_player_address
C - - - - - 0x00A149 02:A139: A9 17     LDA #con_behavior_pk_player
C - - - - - 0x00A14B 02:A13B: 20 5A C0  JSR sub_0x00C63F_player_state_handler
C - - - - - 0x00A14E 02:A13E: A2 00     LDX #$00
C - - - - - 0x00A150 02:A140: 20 74 A1  JSR sub_A174_set_base_pk_position
C - - - - - 0x00A153 02:A143: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00A156 02:A146: 49 0B     EOR #$0B
C - - - - - 0x00A158 02:A148: 20 57 C0  JSR sub_0x00CBF3_get_base_player_address
C - - - - - 0x00A15B 02:A14B: A9 18     LDA #con_behavior_pk_gk
C - - - - - 0x00A15D 02:A14D: 20 5A C0  JSR sub_0x00C63F_player_state_handler
C - - - - - 0x00A160 02:A150: A2 04     LDX #$04
C - - - - - 0x00A162 02:A152: 20 74 A1  JSR sub_A174_set_base_pk_position
C - - - - - 0x00A165 02:A155: A9 FF     LDA #$FF
C - - - - - 0x00A167 02:A157: 8D D8 03  STA ram_ball_pos_X_lo
C - - - - - 0x00A16A 02:A15A: A9 00     LDA #$00
C - - - - - 0x00A16C 02:A15C: 8D DA 03  STA ram_ball_pos_X_hi
C - - - - - 0x00A16F 02:A15F: A9 BF     LDA #$BF
C - - - - - 0x00A171 02:A161: 8D DE 03  STA ram_ball_pos_Y_lo
C - - - - - 0x00A174 02:A164: A9 00     LDA #$00
C - - - - - 0x00A176 02:A166: 8D E0 03  STA ram_ball_pos_Y_hi
C - - - - - 0x00A179 02:A169: A9 09     LDA #$09
C - - - - - 0x00A17B 02:A16B: 8D E4 03  STA ram_ball_anim_id
C - - - - - 0x00A17E 02:A16E: A9 0C     LDA #con_sound_whistle_referee
C - - - - - 0x00A180 02:A170: 20 7E C0  JSR sub_0x00C920_prepare_sound
C - - - - - 0x00A183 02:A173: 60        RTS



sub_A174_set_base_pk_position:
C - - - - - 0x00A184 02:A174: A0 05     LDY #con_plr_pos_X_lo
C - - - - - 0x00A186 02:A176: BD 97 A1  LDA tbl_A197_X_Y_position,X
C - - - - - 0x00A189 02:A179: 91 61     STA (ram_plr_data),Y
C - - - - - 0x00A18B 02:A17B: C8        INY
C - - - - - 0x00A18C 02:A17C: C8        INY ; con_plr_pos_X_hi
C - - - - - 0x00A18D 02:A17D: BD 98 A1  LDA tbl_A197_X_Y_position + 1,X
C - - - - - 0x00A190 02:A180: 91 61     STA (ram_plr_data),Y
C - - - - - 0x00A192 02:A182: A0 0B     LDY #con_plr_pos_Y_lo
C - - - - - 0x00A194 02:A184: BD 99 A1  LDA tbl_A197_X_Y_position + 2,X
C - - - - - 0x00A197 02:A187: 91 61     STA (ram_plr_data),Y
C - - - - - 0x00A199 02:A189: C8        INY
C - - - - - 0x00A19A 02:A18A: C8        INY ; con_plr_pos_Y_hi
C - - - - - 0x00A19B 02:A18B: BD 9A A1  LDA tbl_A197_X_Y_position + 3,X
C - - - - - 0x00A19E 02:A18E: 91 61     STA (ram_plr_data),Y
C - - - - - 0x00A1A0 02:A190: A0 13     LDY #$13
C - - - - - 0x00A1A2 02:A192: A9 80     LDA #$80
C - - - - - 0x00A1A4 02:A194: 91 61     STA (ram_plr_data),Y
C - - - - - 0x00A1A6 02:A196: 60        RTS



tbl_A197_X_Y_position:
; начальные координаты пробивающего
- D 1 - - - 0x00A1A7 02:A197: FF 00     .word $00FF
- D 1 - - - 0x00A1A9 02:A199: BF 00     .word $00BF
; начальные координаты кипера
- D 1 - - - 0x00A1AB 02:A19B: FF 00     .word $00FF
- D 1 - - - 0x00A1AD 02:A19D: 6F 00     .word $006F



sub_A19F:
C - - - - - 0x00A1AF 02:A19F: 20 51 C0  JSR sub_0x00CABF_hide_sprites
C - - - - - 0x00A1B2 02:A1A2: A5 28     LDA ram_byte_for_2000
C - - - - - 0x00A1B4 02:A1A4: 29 DF     AND #$DF
C - - - - - 0x00A1B6 02:A1A6: 85 28     STA ram_byte_for_2000
C - - - - - 0x00A1B8 02:A1A8: A2 03     LDX #$03
bra_A1AA_loop:
C - - - - - 0x00A1BA 02:A1AA: 8A        TXA
C - - - - - 0x00A1BB 02:A1AB: 18        CLC
C - - - - - 0x00A1BC 02:A1AC: 69 1C     ADC #$1C
C - - - - - 0x00A1BE 02:A1AE: 95 6B     STA ram_006B,X
C - - - - - 0x00A1C0 02:A1B0: CA        DEX
C - - - - - 0x00A1C1 02:A1B1: 10 F7     BPL bra_A1AA_loop
C - - - - - 0x00A1C3 02:A1B3: A9 00     LDA #$00
C - - - - - 0x00A1C5 02:A1B5: 85 5B     STA ram_005B
C - - - - - 0x00A1C7 02:A1B7: 20 EA A2  JSR sub_A2EA
C - - - - - 0x00A1CA 02:A1BA: A9 08     LDA #$08
bra_A1BC_loop:
C - - - - - 0x00A1CC 02:A1BC: 48        PHA
C - - - - - 0x00A1CD 02:A1BD: A2 01     LDX #$01
C - - - - - 0x00A1CF 02:A1BF: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00A1D2 02:A1C2: F0 07     BEQ bra_A1CB
C - - - - - 0x00A1D4 02:A1C4: E8        INX
C - - - - - 0x00A1D5 02:A1C5: 2C A4 03  BIT ram_game_mode_flags
C - - - - - 0x00A1D8 02:A1C8: 30 01     BMI bra_A1CB    ; con_gm_2p
C - - - - - 0x00A1DA 02:A1CA: E8        INX
bra_A1CB:
C - - - - - 0x00A1DB 02:A1CB: A9 40     LDA #$40
C - - - - - 0x00A1DD 02:A1CD: 85 5B     STA ram_005B
C - - - - - 0x00A1DF 02:A1CF: 8A        TXA
C - - - - - 0x00A1E0 02:A1D0: 20 EA A2  JSR sub_A2EA
C - - - - - 0x00A1E3 02:A1D3: A9 06     LDA #$06
C - - - - - 0x00A1E5 02:A1D5: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00A1E8 02:A1D8: A9 40     LDA #$40
C - - - - - 0x00A1EA 02:A1DA: 85 5B     STA ram_005B
C - - - - - 0x00A1EC 02:A1DC: A9 04     LDA #$04
C - - - - - 0x00A1EE 02:A1DE: 20 EA A2  JSR sub_A2EA
C - - - - - 0x00A1F1 02:A1E1: A9 06     LDA #$06
C - - - - - 0x00A1F3 02:A1E3: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00A1F6 02:A1E6: 68        PLA
C - - - - - 0x00A1F7 02:A1E7: 38        SEC
C - - - - - 0x00A1F8 02:A1E8: E9 01     SBC #$01
C - - - - - 0x00A1FA 02:A1EA: D0 D0     BNE bra_A1BC_loop
C - - - - - 0x00A1FC 02:A1EC: 60        RTS



sub_0x00A1FD:
C D 1 - - - 0x00A1FD 02:A1ED: 20 51 C0  JSR sub_0x00CABF_hide_sprites
C - - - - - 0x00A200 02:A1F0: A5 28     LDA ram_byte_for_2000
C - - - - - 0x00A202 02:A1F2: 29 DF     AND #$DF
C - - - - - 0x00A204 02:A1F4: 85 28     STA ram_byte_for_2000
C - - - - - 0x00A206 02:A1F6: A2 03     LDX #$03
bra_A1F8_loop:
C - - - - - 0x00A208 02:A1F8: 8A        TXA
C - - - - - 0x00A209 02:A1F9: 18        CLC
C - - - - - 0x00A20A 02:A1FA: 69 1C     ADC #$1C
C - - - - - 0x00A20C 02:A1FC: 95 6B     STA ram_006B,X
C - - - - - 0x00A20E 02:A1FE: CA        DEX
C - - - - - 0x00A20F 02:A1FF: 10 F7     BPL bra_A1F8_loop
C - - - - - 0x00A211 02:A201: A9 00     LDA #$00
C - - - - - 0x00A213 02:A203: 85 5B     STA ram_005B
C - - - - - 0x00A215 02:A205: 20 32 A2  JSR sub_A232
C - - - - - 0x00A218 02:A208: A2 00     LDX #$00
C - - - - - 0x00A21A 02:A20A: 20 45 A2  JSR sub_A245
C - - - - - 0x00A21D 02:A20D: A2 01     LDX #$01
C - - - - - 0x00A21F 02:A20F: 20 45 A2  JSR sub_A245
C - - - - - 0x00A222 02:A212: 20 86 A2  JSR sub_A286
C - - - - - 0x00A225 02:A215: A9 50     LDA #$50
C - - - - - 0x00A227 02:A217: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00A22A 02:A21A: A9 00     LDA #$00
C - - - - - 0x00A22C 02:A21C: 85 0D     STA ram_000D
C - - - - - 0x00A22E 02:A21E: 85 0E     STA ram_000E
C - - - - - 0x00A230 02:A220: A9 01     LDA #$01
C - - - - - 0x00A232 02:A222: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00A235 02:A225: A2 00     LDX #$00
C - - - - - 0x00A237 02:A227: A9 09     LDA #$09
C - - - - - 0x00A239 02:A229: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
                                        INC ram_buffer_pal_flag
C - - - - - 0x00A241 02:A231: 60        RTS



sub_A232:
C - - - - - 0x00A242 02:A232: A9 07     LDA #$07
C - - - - - 0x00A244 02:A234: A6 8E     LDX ram_008E
C - - - - - 0x00A246 02:A236: E0 0A     CPX #$0A
C - - - - - 0x00A248 02:A238: 90 07     BCC bra_A241
C - - - - - 0x00A24A 02:A23A: A9 05     LDA #$05
C - - - - - 0x00A24C 02:A23C: 20 EA A2  JSR sub_A2EA
C - - - - - 0x00A24F 02:A23F: A9 06     LDA #$06
bra_A241:
C - - - - - 0x00A251 02:A241: 20 EA A2  JSR sub_A2EA
C - - - - - 0x00A254 02:A244: 60        RTS



sub_A245:
C - - - - - 0x00A255 02:A245: 86 2A     STX ram_002A
C - - - - - 0x00A257 02:A247: BD A9 03  LDA ram_team_id,X
C - - - - - 0x00A25A 02:A24A: 85 2B     STA ram_002B
C - - - - - 0x00A25C 02:A24C: 0A        ASL
C - - - - - 0x00A25D 02:A24D: 65 2B     ADC ram_002B
C - - - - - 0x00A25F 02:A24F: A8        TAY
C - - - - - 0x00A260 02:A250: A9 38     LDA #$38
C - - - - - 0x00A262 02:A252: 85 2B     STA ram_002B
C - - - - - 0x00A264 02:A254: A9 03     LDA #$03
C - - - - - 0x00A266 02:A256: 85 2C     STA ram_002C
C - - - - - 0x00A268 02:A258: A6 5B     LDX ram_005B
bra_A25A_loop:
C - - - - - 0x00A26A 02:A25A: A5 2A     LDA ram_002A
C - - - - - 0x00A26C 02:A25C: 0A        ASL
C - - - - - 0x00A26D 02:A25D: 0A        ASL
C - - - - - 0x00A26E 02:A25E: 0A        ASL
C - - - - - 0x00A26F 02:A25F: 0A        ASL
C - - - - - 0x00A270 02:A260: 69 B8     ADC #$B8
C - - - - - 0x00A272 02:A262: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00A275 02:A265: B9 99 83  LDA tbl_8399_spr_team_name,Y
C - - - - - 0x00A278 02:A268: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x00A27B 02:A26B: A9 01     LDA #$01
C - - - - - 0x00A27D 02:A26D: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x00A280 02:A270: A5 2B     LDA ram_002B
C - - - - - 0x00A282 02:A272: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x00A285 02:A275: 18        CLC
C - - - - - 0x00A286 02:A276: 69 08     ADC #$08
C - - - - - 0x00A288 02:A278: 85 2B     STA ram_002B
C - - - - - 0x00A28A 02:A27A: C8        INY
C - - - - - 0x00A28B 02:A27B: E8        INX
C - - - - - 0x00A28C 02:A27C: E8        INX
C - - - - - 0x00A28D 02:A27D: E8        INX
C - - - - - 0x00A28E 02:A27E: E8        INX
C - - - - - 0x00A28F 02:A27F: C6 2C     DEC ram_002C
C - - - - - 0x00A291 02:A281: D0 D7     BNE bra_A25A_loop
C - - - - - 0x00A293 02:A283: 86 5B     STX ram_005B
C - - - - - 0x00A295 02:A285: 60        RTS



sub_A286:
C - - - - - 0x00A296 02:A286: A6 8E     LDX ram_008E
C - - - - - 0x00A298 02:A288: E0 0A     CPX #$0A
C - - - - - 0x00A29A 02:A28A: 90 06     BCC bra_A292
C - - - - - 0x00A29C 02:A28C: 8A        TXA
C - - - - - 0x00A29D 02:A28D: 4A        LSR
C - - - - - 0x00A29E 02:A28E: A9 00     LDA #$00
C - - - - - 0x00A2A0 02:A290: 2A        ROL
C - - - - - 0x00A2A1 02:A291: AA        TAX
bra_A292:
C - - - - - 0x00A2A2 02:A292: 86 2C     STX ram_002C
C - - - - - 0x00A2A4 02:A294: 86 2D     STX ram_002D
C - - - - - 0x00A2A6 02:A296: A5 92     LDA ram_0092
C - - - - - 0x00A2A8 02:A298: A4 91     LDY ram_0091
bra_A29A_loop:
C - - - - - 0x00A2AA 02:A29A: 4A        LSR
C - - - - - 0x00A2AB 02:A29B: 48        PHA
C - - - - - 0x00A2AC 02:A29C: 98        TYA
C - - - - - 0x00A2AD 02:A29D: 6A        ROR
C - - - - - 0x00A2AE 02:A29E: A8        TAY
C - - - - - 0x00A2AF 02:A29F: 68        PLA
C - - - - - 0x00A2B0 02:A2A0: 26 2A     ROL ram_002A
C - - - - - 0x00A2B2 02:A2A2: 26 2B     ROL ram_002B
C - - - - - 0x00A2B4 02:A2A4: CA        DEX
C - - - - - 0x00A2B5 02:A2A5: 10 F3     BPL bra_A29A_loop
C - - - - - 0x00A2B7 02:A2A7: A6 5B     LDX ram_005B
bra_A2A9:
C - - - - - 0x00A2B9 02:A2A9: A5 2D     LDA ram_002D
C - - - - - 0x00A2BB 02:A2AB: 38        SEC
C - - - - - 0x00A2BC 02:A2AC: E5 2C     SBC ram_002C
C - - - - - 0x00A2BE 02:A2AE: A0 B8     LDY #$B8
C - - - - - 0x00A2C0 02:A2B0: 4A        LSR
C - - - - - 0x00A2C1 02:A2B1: 90 02     BCC bra_A2B5
C - - - - - 0x00A2C3 02:A2B3: A0 C8     LDY #$C8
bra_A2B5:
C - - - - - 0x00A2C5 02:A2B5: 0A        ASL
C - - - - - 0x00A2C6 02:A2B6: 0A        ASL
C - - - - - 0x00A2C7 02:A2B7: 0A        ASL
C - - - - - 0x00A2C8 02:A2B8: 85 2E     STA ram_002E
C - - - - - 0x00A2CA 02:A2BA: 0A        ASL
C - - - - - 0x00A2CB 02:A2BB: 65 2E     ADC ram_002E
C - - - - - 0x00A2CD 02:A2BD: 69 5C     ADC #$5C
C - - - - - 0x00A2CF 02:A2BF: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x00A2D2 02:A2C2: A5 8E     LDA ram_008E
C - - - - - 0x00A2D4 02:A2C4: C9 0A     CMP #$0A
C - - - - - 0x00A2D6 02:A2C6: 90 05     BCC bra_A2CD
C - - - - - 0x00A2D8 02:A2C8: A9 7C     LDA #$7C
C - - - - - 0x00A2DA 02:A2CA: 9D 03 02  STA ram_spr_X,X
bra_A2CD:
C - - - - - 0x00A2DD 02:A2CD: 98        TYA
C - - - - - 0x00A2DE 02:A2CE: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00A2E1 02:A2D1: A9 01     LDA #$01
C - - - - - 0x00A2E3 02:A2D3: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x00A2E6 02:A2D6: 46 2B     LSR ram_002B
C - - - - - 0x00A2E8 02:A2D8: 66 2A     ROR ram_002A
C - - - - - 0x00A2EA 02:A2DA: A9 3A     LDA #$3A
C - - - - - 0x00A2EC 02:A2DC: 69 00     ADC #$00
C - - - - - 0x00A2EE 02:A2DE: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x00A2F1 02:A2E1: E8        INX
C - - - - - 0x00A2F2 02:A2E2: E8        INX
C - - - - - 0x00A2F3 02:A2E3: E8        INX
C - - - - - 0x00A2F4 02:A2E4: E8        INX
C - - - - - 0x00A2F5 02:A2E5: C6 2C     DEC ram_002C
C - - - - - 0x00A2F7 02:A2E7: 10 C0     BPL bra_A2A9
C - - - - - 0x00A2F9 02:A2E9: 60        RTS



sub_A2EA:
C - - - - - 0x00A2FA 02:A2EA: 0A        ASL
C - - - - - 0x00A2FB 02:A2EB: AA        TAX
C - - - - - 0x00A2FC 02:A2EC: BD 6B A3  LDA tbl_A36B,X
C - - - - - 0x00A2FF 02:A2EF: 85 2A     STA ram_002A
C - - - - - 0x00A301 02:A2F1: BD 6C A3  LDA tbl_A36B + 1,X
C - - - - - 0x00A304 02:A2F4: 85 2B     STA ram_002B
C - - - - - 0x00A306 02:A2F6: A0 00     LDY #$00
C - - - - - 0x00A308 02:A2F8: B1 2A     LDA (ram_002A),Y
C - - - - - 0x00A30A 02:A2FA: 85 2C     STA ram_002C
C - - - - - 0x00A30C 02:A2FC: C8        INY
C - - - - - 0x00A30D 02:A2FD: B1 2A     LDA (ram_002A),Y
C - - - - - 0x00A30F 02:A2FF: 85 2D     STA ram_002D
C - - - - - 0x00A311 02:A301: C8        INY
C - - - - - 0x00A312 02:A302: A6 5B     LDX ram_005B
loc_A304:
C D 1 - - - 0x00A314 02:A304: B1 2A     LDA (ram_002A),Y
C - - - - - 0x00A316 02:A306: F0 25     BEQ bra_A32D
C - - - - - 0x00A318 02:A308: C9 20     CMP #$20
C - - - - - 0x00A31A 02:A30A: F0 16     BEQ bra_A322
C - - - - - 0x00A31C 02:A30C: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x00A31F 02:A30F: A5 2D     LDA ram_002D
C - - - - - 0x00A321 02:A311: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00A324 02:A314: A9 01     LDA #$01
C - - - - - 0x00A326 02:A316: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x00A329 02:A319: A5 2C     LDA ram_002C
C - - - - - 0x00A32B 02:A31B: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x00A32E 02:A31E: E8        INX
C - - - - - 0x00A32F 02:A31F: E8        INX
C - - - - - 0x00A330 02:A320: E8        INX
C - - - - - 0x00A331 02:A321: E8        INX
bra_A322:
C - - - - - 0x00A332 02:A322: A5 2C     LDA ram_002C
C - - - - - 0x00A334 02:A324: 18        CLC
C - - - - - 0x00A335 02:A325: 69 08     ADC #$08
C - - - - - 0x00A337 02:A327: 85 2C     STA ram_002C
C - - - - - 0x00A339 02:A329: C8        INY
C - - - - - 0x00A33A 02:A32A: 4C 04 A3  JMP loc_A304
bra_A32D:
C - - - - - 0x00A33D 02:A32D: 86 5B     STX ram_005B
C - - - - - 0x00A33F 02:A32F: 60        RTS


off_0x00A340:
sub_0x00A340 = off_0x00A340 - 1
C D 1 - - - 0x00A340 02:A330: A9 00     LDA #$00
bra_A332_loop:
C - - - - - 0x00A342 02:A332: 48        PHA
C - - - - - 0x00A343 02:A333: A9 04     LDA #$04
C - - - - - 0x00A345 02:A335: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00A348 02:A338: 68        PLA
C - - - - - 0x00A349 02:A339: 48        PHA
C - - - - - 0x00A34A 02:A33A: A8        TAY
C - - - - - 0x00A34B 02:A33B: A2 00     LDX #$00
bra_A33D_loop:
C - - - - - 0x00A34D 02:A33D: 8A        TXA
C - - - - - 0x00A34E 02:A33E: 29 03     AND #$03
C - - - - - 0x00A350 02:A340: F0 0D     BEQ bra_A34F
C - - - - - 0x00A352 02:A342: B9 65 A3  LDA tbl_A365,Y
C - - - - - 0x00A355 02:A345: 9D 8B 03  STA ram_buffer_pal_data + 8,X
C - - - - - 0x00A358 02:A348: C8        INY
C - - - - - 0x00A359 02:A349: C0 06     CPY #$06
C - - - - - 0x00A35B 02:A34B: D0 02     BNE bra_A34F
C - - - - - 0x00A35D 02:A34D: A0 00     LDY #$00
bra_A34F:
C - - - - - 0x00A35F 02:A34F: E8        INX
C - - - - - 0x00A360 02:A350: E0 08     CPX #$08
C - - - - - 0x00A362 02:A352: D0 E9     BNE bra_A33D_loop
                                        INC ram_buffer_pal_flag
C - - - - - 0x00A369 02:A359: 68        PLA
C - - - - - 0x00A36A 02:A35A: 18        CLC
C - - - - - 0x00A36B 02:A35B: 69 01     ADC #$01
C - - - - - 0x00A36D 02:A35D: C9 06     CMP #$06
C - - - - - 0x00A36F 02:A35F: D0 D1     BNE bra_A332_loop
C - - - - - 0x00A371 02:A361: A9 00     LDA #$00
C - - - - - 0x00A373 02:A363: F0 CD     BEQ bra_A332_loop



tbl_A365:
; что-то связанное со зрителями, читается при забитом голе
- D 1 - - - 0x00A375 02:A365: 25        .byte $25   ; 
- D 1 - - - 0x00A376 02:A366: 21        .byte $21   ; 
- D 1 - - - 0x00A377 02:A367: 35        .byte $35   ; 
- D 1 - - - 0x00A378 02:A368: 27        .byte $27   ; 
- D 1 - - - 0x00A379 02:A369: 21        .byte $21   ; 
- D 1 - - - 0x00A37A 02:A36A: 26        .byte $26   ; 



tbl_A36B:
- D 1 - - - 0x00A37B 02:A36B: 7B A3     .word _off008_A37B_00
- D 1 - - - 0x00A37D 02:A36D: 87 A3     .word _off008_A387_01
- D 1 - - - 0x00A37F 02:A36F: 8C A3     .word _off008_A38C_02
- D 1 - - - 0x00A381 02:A371: 91 A3     .word _off008_A391_03
- D 1 - - - 0x00A383 02:A373: 97 A3     .word _off008_A397_04
- D 1 - - - 0x00A385 02:A375: 9D A3     .word _off008_A39D_05
- D 1 - - - 0x00A387 02:A377: A6 A3     .word _off008_A3A6_06
- D 1 - - - 0x00A389 02:A379: AE A3     .word _off008_A3AE_07



_off008_A37B_00:
- D 1 - I - 0x00A38B 02:A37B: 5C        .byte $5C   ; 
- D 1 - I - 0x00A38C 02:A37C: B0        .byte $B0   ; 
- D 1 - I - 0x00A38D 02:A37D: 4B        .byte $4B   ; 
- D 1 - I - 0x00A38E 02:A37E: 49        .byte $49   ; 
- D 1 - I - 0x00A38F 02:A37F: 43        .byte $43   ; 
- D 1 - I - 0x00A390 02:A380: 4B        .byte $4B   ; 
- D 1 - I - 0x00A391 02:A381: 20        .byte $20   ; 
- D 1 - I - 0x00A392 02:A382: 53        .byte $53   ; 
- D 1 - I - 0x00A393 02:A383: 49        .byte $49   ; 
- D 1 - I - 0x00A394 02:A384: 44        .byte $44   ; 
- D 1 - I - 0x00A395 02:A385: 45        .byte $45   ; 
- D 1 - I - 0x00A396 02:A386: 00        .byte $00   ; 



_off008_A387_01:
- D 1 - I - 0x00A397 02:A387: 78        .byte $78   ; 
- D 1 - I - 0x00A398 02:A388: C0        .byte $C0   ; 
- D 1 - I - 0x00A399 02:A389: 31        .byte $31   ; 
- D 1 - I - 0x00A39A 02:A38A: 50        .byte $50   ; 
- D 1 - I - 0x00A39B 02:A38B: 00        .byte $00   ; 



_off008_A38C_02:
- D 1 - I - 0x00A39C 02:A38C: 78        .byte $78   ; 
- D 1 - I - 0x00A39D 02:A38D: C0        .byte $C0   ; 
- D 1 - I - 0x00A39E 02:A38E: 32        .byte $32   ; 
- D 1 - I - 0x00A39F 02:A38F: 50        .byte $50   ; 
- D 1 - I - 0x00A3A0 02:A390: 00        .byte $00   ; 



_off008_A391_03:
- D 1 - I - 0x00A3A1 02:A391: 74        .byte $74   ; 
- D 1 - I - 0x00A3A2 02:A392: C0        .byte $C0   ; 
- D 1 - I - 0x00A3A3 02:A393: 43        .byte $43   ; 
- D 1 - I - 0x00A3A4 02:A394: 4F        .byte $4F   ; 
- D 1 - I - 0x00A3A5 02:A395: 4D        .byte $4D   ; 
- D 1 - I - 0x00A3A6 02:A396: 00        .byte $00   ; 



_off008_A397_04:
- D 1 - I - 0x00A3A7 02:A397: 00        .byte $00   ; 
- D 1 - I - 0x00A3A8 02:A398: F8        .byte $F8   ; 
- D 1 - I - 0x00A3A9 02:A399: 5A        .byte $5A   ; 
- D 1 - I - 0x00A3AA 02:A39A: 5A        .byte $5A   ; 
- D 1 - I - 0x00A3AB 02:A39B: 5A        .byte $5A   ; 
- D 1 - I - 0x00A3AC 02:A39C: 00        .byte $00   ; 



_off008_A39D_05:
- D 1 - I - 0x00A3AD 02:A39D: 68        .byte $68   ; 
- D 1 - I - 0x00A3AE 02:A39E: A0        .byte $A0   ; 
- D 1 - I - 0x00A3AF 02:A39F: 53        .byte $53   ; 
- D 1 - I - 0x00A3B0 02:A3A0: 55        .byte $55   ; 
- D 1 - I - 0x00A3B1 02:A3A1: 44        .byte $44   ; 
- D 1 - I - 0x00A3B2 02:A3A2: 44        .byte $44   ; 
- D 1 - I - 0x00A3B3 02:A3A3: 45        .byte $45   ; 
- D 1 - I - 0x00A3B4 02:A3A4: 4E        .byte $4E   ; 
- D 1 - I - 0x00A3B5 02:A3A5: 00        .byte $00   ; 



_off008_A3A6_06:
- D 1 - I - 0x00A3B6 02:A3A6: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3B7 02:A3A7: AC        .byte $AC   ; 
- D 1 - I - 0x00A3B8 02:A3A8: 44        .byte $44   ; 
- D 1 - I - 0x00A3B9 02:A3A9: 45        .byte $45   ; 
- D 1 - I - 0x00A3BA 02:A3AA: 41        .byte $41   ; 
- D 1 - I - 0x00A3BB 02:A3AB: 54        .byte $54   ; 
- D 1 - I - 0x00A3BC 02:A3AC: 48        .byte $48   ; 
- D 1 - I - 0x00A3BD 02:A3AD: 00        .byte $00   ; 



_off008_A3AE_07:
- D 1 - I - 0x00A3BE 02:A3AE: 5C        .byte $5C   ; 
- D 1 - I - 0x00A3BF 02:A3AF: A8        .byte $A8   ; 
- D 1 - I - 0x00A3C0 02:A3B0: 31        .byte $31   ; 
- D 1 - I - 0x00A3C1 02:A3B1: 20        .byte $20   ; 
- D 1 - I - 0x00A3C2 02:A3B2: 20        .byte $20   ; 
- D 1 - I - 0x00A3C3 02:A3B3: 32        .byte $32   ; 
- D 1 - I - 0x00A3C4 02:A3B4: 20        .byte $20   ; 
- D 1 - I - 0x00A3C5 02:A3B5: 20        .byte $20   ; 
- D 1 - I - 0x00A3C6 02:A3B6: 33        .byte $33   ; 
- D 1 - I - 0x00A3C7 02:A3B7: 20        .byte $20   ; 
- D 1 - I - 0x00A3C8 02:A3B8: 20        .byte $20   ; 
- D 1 - I - 0x00A3C9 02:A3B9: 34        .byte $34   ; 
- D 1 - I - 0x00A3CA 02:A3BA: 20        .byte $20   ; 
- D 1 - I - 0x00A3CB 02:A3BB: 20        .byte $20   ; 
- D 1 - I - 0x00A3CC 02:A3BC: 35        .byte $35   ; 
- D 1 - I - 0x00A3CD 02:A3BD: 00        .byte $00   ; 



tbl_A3BE:
; nametable экрана пенальти
- D 1 - I - 0x00A3CE 02:A3BE: 20        .byte $20   ; 
- D 1 - I - 0x00A3CF 02:A3BF: EC        .byte $EC   ; 
- D 1 - I - 0x00A3D0 02:A3C0: ED        .byte $ED   ; 
- D 1 - I - 0x00A3D1 02:A3C1: EE        .byte $EE   ; 
- D 1 - I - 0x00A3D2 02:A3C2: EF        .byte $EF   ; 
- D 1 - I - 0x00A3D3 02:A3C3: EE        .byte $EE   ; 
- D 1 - I - 0x00A3D4 02:A3C4: EF        .byte $EF   ; 
- D 1 - I - 0x00A3D5 02:A3C5: EC        .byte $EC   ; 
- D 1 - I - 0x00A3D6 02:A3C6: ED        .byte $ED   ; 
- D 1 - I - 0x00A3D7 02:A3C7: EC        .byte $EC   ; 
- D 1 - I - 0x00A3D8 02:A3C8: ED        .byte $ED   ; 
- D 1 - I - 0x00A3D9 02:A3C9: EE        .byte $EE   ; 
- D 1 - I - 0x00A3DA 02:A3CA: EF        .byte $EF   ; 
- D 1 - I - 0x00A3DB 02:A3CB: EE        .byte $EE   ; 
- D 1 - I - 0x00A3DC 02:A3CC: EF        .byte $EF   ; 
- D 1 - I - 0x00A3DD 02:A3CD: EC        .byte $EC   ; 
- D 1 - I - 0x00A3DE 02:A3CE: ED        .byte $ED   ; 
- D 1 - I - 0x00A3DF 02:A3CF: EC        .byte $EC   ; 
- D 1 - I - 0x00A3E0 02:A3D0: ED        .byte $ED   ; 
- D 1 - I - 0x00A3E1 02:A3D1: EE        .byte $EE   ; 
- D 1 - I - 0x00A3E2 02:A3D2: EF        .byte $EF   ; 
- D 1 - I - 0x00A3E3 02:A3D3: EE        .byte $EE   ; 
- D 1 - I - 0x00A3E4 02:A3D4: EF        .byte $EF   ; 
- D 1 - I - 0x00A3E5 02:A3D5: EC        .byte $EC   ; 
- D 1 - I - 0x00A3E6 02:A3D6: ED        .byte $ED   ; 
- D 1 - I - 0x00A3E7 02:A3D7: EC        .byte $EC   ; 
- D 1 - I - 0x00A3E8 02:A3D8: ED        .byte $ED   ; 
- D 1 - I - 0x00A3E9 02:A3D9: EE        .byte $EE   ; 
- D 1 - I - 0x00A3EA 02:A3DA: EF        .byte $EF   ; 
- D 1 - I - 0x00A3EB 02:A3DB: EE        .byte $EE   ; 
- D 1 - I - 0x00A3EC 02:A3DC: EF        .byte $EF   ; 
- D 1 - I - 0x00A3ED 02:A3DD: EC        .byte $EC   ; 
- D 1 - I - 0x00A3EE 02:A3DE: ED        .byte $ED   ; 
- D 1 - I - 0x00A3EF 02:A3DF: 20        .byte $20   ; 
- D 1 - I - 0x00A3F0 02:A3E0: EE        .byte $EE   ; 
- D 1 - I - 0x00A3F1 02:A3E1: EF        .byte $EF   ; 
- D 1 - I - 0x00A3F2 02:A3E2: EC        .byte $EC   ; 
- D 1 - I - 0x00A3F3 02:A3E3: EE        .byte $EE   ; 
- D 1 - I - 0x00A3F4 02:A3E4: EC        .byte $EC   ; 
- D 1 - I - 0x00A3F5 02:A3E5: ED        .byte $ED   ; 
- D 1 - I - 0x00A3F6 02:A3E6: EE        .byte $EE   ; 
- D 1 - I - 0x00A3F7 02:A3E7: EF        .byte $EF   ; 
- D 1 - I - 0x00A3F8 02:A3E8: EE        .byte $EE   ; 
- D 1 - I - 0x00A3F9 02:A3E9: EF        .byte $EF   ; 
- D 1 - I - 0x00A3FA 02:A3EA: EC        .byte $EC   ; 
- D 1 - I - 0x00A3FB 02:A3EB: EE        .byte $EE   ; 
- D 1 - I - 0x00A3FC 02:A3EC: EC        .byte $EC   ; 
- D 1 - I - 0x00A3FD 02:A3ED: ED        .byte $ED   ; 
- D 1 - I - 0x00A3FE 02:A3EE: EE        .byte $EE   ; 
- D 1 - I - 0x00A3FF 02:A3EF: EF        .byte $EF   ; 
- D 1 - I - 0x00A400 02:A3F0: EE        .byte $EE   ; 
- D 1 - I - 0x00A401 02:A3F1: EF        .byte $EF   ; 
- D 1 - I - 0x00A402 02:A3F2: EC        .byte $EC   ; 
- D 1 - I - 0x00A403 02:A3F3: EE        .byte $EE   ; 
- D 1 - I - 0x00A404 02:A3F4: EC        .byte $EC   ; 
- D 1 - I - 0x00A405 02:A3F5: ED        .byte $ED   ; 
- D 1 - I - 0x00A406 02:A3F6: EE        .byte $EE   ; 
- D 1 - I - 0x00A407 02:A3F7: EF        .byte $EF   ; 
- D 1 - I - 0x00A408 02:A3F8: EE        .byte $EE   ; 
- D 1 - I - 0x00A409 02:A3F9: EF        .byte $EF   ; 
- D 1 - I - 0x00A40A 02:A3FA: EC        .byte $EC   ; 
- D 1 - I - 0x00A40B 02:A3FB: ED        .byte $ED   ; 
- D 1 - I - 0x00A40C 02:A3FC: EC        .byte $EC   ; 
- D 1 - I - 0x00A40D 02:A3FD: ED        .byte $ED   ; 
- D 1 - I - 0x00A40E 02:A3FE: EE        .byte $EE   ; 
- D 1 - I - 0x00A40F 02:A3FF: EF        .byte $EF   ; 
- D 1 - I - 0x00A410 02:A400: 20        .byte $20   ; 
- D 1 - I - 0x00A411 02:A401: EC        .byte $EC   ; 
- D 1 - I - 0x00A412 02:A402: ED        .byte $ED   ; 
- D 1 - I - 0x00A413 02:A403: EE        .byte $EE   ; 
- D 1 - I - 0x00A414 02:A404: EF        .byte $EF   ; 
- D 1 - I - 0x00A415 02:A405: EE        .byte $EE   ; 
- D 1 - I - 0x00A416 02:A406: EF        .byte $EF   ; 
- D 1 - I - 0x00A417 02:A407: EC        .byte $EC   ; 
- D 1 - I - 0x00A418 02:A408: ED        .byte $ED   ; 
- D 1 - I - 0x00A419 02:A409: EC        .byte $EC   ; 
- D 1 - I - 0x00A41A 02:A40A: ED        .byte $ED   ; 
- D 1 - I - 0x00A41B 02:A40B: EE        .byte $EE   ; 
- D 1 - I - 0x00A41C 02:A40C: EF        .byte $EF   ; 
- D 1 - I - 0x00A41D 02:A40D: EE        .byte $EE   ; 
- D 1 - I - 0x00A41E 02:A40E: EF        .byte $EF   ; 
- D 1 - I - 0x00A41F 02:A40F: EC        .byte $EC   ; 
- D 1 - I - 0x00A420 02:A410: ED        .byte $ED   ; 
- D 1 - I - 0x00A421 02:A411: EC        .byte $EC   ; 
- D 1 - I - 0x00A422 02:A412: ED        .byte $ED   ; 
- D 1 - I - 0x00A423 02:A413: EE        .byte $EE   ; 
- D 1 - I - 0x00A424 02:A414: EF        .byte $EF   ; 
- D 1 - I - 0x00A425 02:A415: EE        .byte $EE   ; 
- D 1 - I - 0x00A426 02:A416: EF        .byte $EF   ; 
- D 1 - I - 0x00A427 02:A417: EC        .byte $EC   ; 
- D 1 - I - 0x00A428 02:A418: ED        .byte $ED   ; 
- D 1 - I - 0x00A429 02:A419: EC        .byte $EC   ; 
- D 1 - I - 0x00A42A 02:A41A: ED        .byte $ED   ; 
- D 1 - I - 0x00A42B 02:A41B: EE        .byte $EE   ; 
- D 1 - I - 0x00A42C 02:A41C: EF        .byte $EF   ; 
- D 1 - I - 0x00A42D 02:A41D: EE        .byte $EE   ; 
- D 1 - I - 0x00A42E 02:A41E: EF        .byte $EF   ; 
- D 1 - I - 0x00A42F 02:A41F: EC        .byte $EC   ; 
- D 1 - I - 0x00A430 02:A420: ED        .byte $ED   ; 
- D 1 - I - 0x00A431 02:A421: 20        .byte $20   ; 
- D 1 - I - 0x00A432 02:A422: EE        .byte $EE   ; 
- D 1 - I - 0x00A433 02:A423: EF        .byte $EF   ; 
- D 1 - I - 0x00A434 02:A424: EC        .byte $EC   ; 
- D 1 - I - 0x00A435 02:A425: EE        .byte $EE   ; 
- D 1 - I - 0x00A436 02:A426: EC        .byte $EC   ; 
- D 1 - I - 0x00A437 02:A427: ED        .byte $ED   ; 
- D 1 - I - 0x00A438 02:A428: EE        .byte $EE   ; 
- D 1 - I - 0x00A439 02:A429: EF        .byte $EF   ; 
- D 1 - I - 0x00A43A 02:A42A: EE        .byte $EE   ; 
- D 1 - I - 0x00A43B 02:A42B: EF        .byte $EF   ; 
- D 1 - I - 0x00A43C 02:A42C: EC        .byte $EC   ; 
- D 1 - I - 0x00A43D 02:A42D: EE        .byte $EE   ; 
- D 1 - I - 0x00A43E 02:A42E: EC        .byte $EC   ; 
- D 1 - I - 0x00A43F 02:A42F: ED        .byte $ED   ; 
- D 1 - I - 0x00A440 02:A430: EE        .byte $EE   ; 
- D 1 - I - 0x00A441 02:A431: EF        .byte $EF   ; 
- D 1 - I - 0x00A442 02:A432: EE        .byte $EE   ; 
- D 1 - I - 0x00A443 02:A433: EF        .byte $EF   ; 
- D 1 - I - 0x00A444 02:A434: EC        .byte $EC   ; 
- D 1 - I - 0x00A445 02:A435: EE        .byte $EE   ; 
- D 1 - I - 0x00A446 02:A436: EC        .byte $EC   ; 
- D 1 - I - 0x00A447 02:A437: ED        .byte $ED   ; 
- D 1 - I - 0x00A448 02:A438: EE        .byte $EE   ; 
- D 1 - I - 0x00A449 02:A439: EF        .byte $EF   ; 
- D 1 - I - 0x00A44A 02:A43A: EE        .byte $EE   ; 
- D 1 - I - 0x00A44B 02:A43B: EF        .byte $EF   ; 
- D 1 - I - 0x00A44C 02:A43C: EC        .byte $EC   ; 
- D 1 - I - 0x00A44D 02:A43D: ED        .byte $ED   ; 
- D 1 - I - 0x00A44E 02:A43E: EC        .byte $EC   ; 
- D 1 - I - 0x00A44F 02:A43F: ED        .byte $ED   ; 
- D 1 - I - 0x00A450 02:A440: EE        .byte $EE   ; 
- D 1 - I - 0x00A451 02:A441: EF        .byte $EF   ; 
- D 1 - I - 0x00A452 02:A442: 20        .byte $20   ; 
- D 1 - I - 0x00A453 02:A443: EC        .byte $EC   ; 
- D 1 - I - 0x00A454 02:A444: ED        .byte $ED   ; 
- D 1 - I - 0x00A455 02:A445: EE        .byte $EE   ; 
- D 1 - I - 0x00A456 02:A446: EF        .byte $EF   ; 
- D 1 - I - 0x00A457 02:A447: EE        .byte $EE   ; 
- D 1 - I - 0x00A458 02:A448: EF        .byte $EF   ; 
- D 1 - I - 0x00A459 02:A449: EC        .byte $EC   ; 
- D 1 - I - 0x00A45A 02:A44A: ED        .byte $ED   ; 
- D 1 - I - 0x00A45B 02:A44B: EC        .byte $EC   ; 
- D 1 - I - 0x00A45C 02:A44C: ED        .byte $ED   ; 
- D 1 - I - 0x00A45D 02:A44D: EE        .byte $EE   ; 
- D 1 - I - 0x00A45E 02:A44E: EF        .byte $EF   ; 
- D 1 - I - 0x00A45F 02:A44F: EE        .byte $EE   ; 
- D 1 - I - 0x00A460 02:A450: EF        .byte $EF   ; 
- D 1 - I - 0x00A461 02:A451: EC        .byte $EC   ; 
- D 1 - I - 0x00A462 02:A452: ED        .byte $ED   ; 
- D 1 - I - 0x00A463 02:A453: EC        .byte $EC   ; 
- D 1 - I - 0x00A464 02:A454: ED        .byte $ED   ; 
- D 1 - I - 0x00A465 02:A455: EE        .byte $EE   ; 
- D 1 - I - 0x00A466 02:A456: EF        .byte $EF   ; 
- D 1 - I - 0x00A467 02:A457: EE        .byte $EE   ; 
- D 1 - I - 0x00A468 02:A458: EF        .byte $EF   ; 
- D 1 - I - 0x00A469 02:A459: EC        .byte $EC   ; 
- D 1 - I - 0x00A46A 02:A45A: ED        .byte $ED   ; 
- D 1 - I - 0x00A46B 02:A45B: EC        .byte $EC   ; 
- D 1 - I - 0x00A46C 02:A45C: ED        .byte $ED   ; 
- D 1 - I - 0x00A46D 02:A45D: EE        .byte $EE   ; 
- D 1 - I - 0x00A46E 02:A45E: EF        .byte $EF   ; 
- D 1 - I - 0x00A46F 02:A45F: EE        .byte $EE   ; 
- D 1 - I - 0x00A470 02:A460: EF        .byte $EF   ; 
- D 1 - I - 0x00A471 02:A461: EC        .byte $EC   ; 
- D 1 - I - 0x00A472 02:A462: ED        .byte $ED   ; 
- D 1 - I - 0x00A473 02:A463: 20        .byte $20   ; 
- D 1 - I - 0x00A474 02:A464: EE        .byte $EE   ; 
- D 1 - I - 0x00A475 02:A465: EF        .byte $EF   ; 
- D 1 - I - 0x00A476 02:A466: EC        .byte $EC   ; 
- D 1 - I - 0x00A477 02:A467: EE        .byte $EE   ; 
- D 1 - I - 0x00A478 02:A468: EC        .byte $EC   ; 
- D 1 - I - 0x00A479 02:A469: ED        .byte $ED   ; 
- D 1 - I - 0x00A47A 02:A46A: EE        .byte $EE   ; 
- D 1 - I - 0x00A47B 02:A46B: EF        .byte $EF   ; 
- D 1 - I - 0x00A47C 02:A46C: EE        .byte $EE   ; 
- D 1 - I - 0x00A47D 02:A46D: EF        .byte $EF   ; 
- D 1 - I - 0x00A47E 02:A46E: EC        .byte $EC   ; 
- D 1 - I - 0x00A47F 02:A46F: EE        .byte $EE   ; 
- D 1 - I - 0x00A480 02:A470: EC        .byte $EC   ; 
- D 1 - I - 0x00A481 02:A471: ED        .byte $ED   ; 
- D 1 - I - 0x00A482 02:A472: EE        .byte $EE   ; 
- D 1 - I - 0x00A483 02:A473: EF        .byte $EF   ; 
- D 1 - I - 0x00A484 02:A474: EE        .byte $EE   ; 
- D 1 - I - 0x00A485 02:A475: EF        .byte $EF   ; 
- D 1 - I - 0x00A486 02:A476: EC        .byte $EC   ; 
- D 1 - I - 0x00A487 02:A477: EE        .byte $EE   ; 
- D 1 - I - 0x00A488 02:A478: EC        .byte $EC   ; 
- D 1 - I - 0x00A489 02:A479: ED        .byte $ED   ; 
- D 1 - I - 0x00A48A 02:A47A: EE        .byte $EE   ; 
- D 1 - I - 0x00A48B 02:A47B: EF        .byte $EF   ; 
- D 1 - I - 0x00A48C 02:A47C: EE        .byte $EE   ; 
- D 1 - I - 0x00A48D 02:A47D: EF        .byte $EF   ; 
- D 1 - I - 0x00A48E 02:A47E: EC        .byte $EC   ; 
- D 1 - I - 0x00A48F 02:A47F: EE        .byte $EE   ; 
- D 1 - I - 0x00A490 02:A480: EC        .byte $EC   ; 
- D 1 - I - 0x00A491 02:A481: ED        .byte $ED   ; 
- D 1 - I - 0x00A492 02:A482: EE        .byte $EE   ; 
- D 1 - I - 0x00A493 02:A483: EF        .byte $EF   ; 
- D 1 - I - 0x00A494 02:A484: 20        .byte $20   ; 
- D 1 - I - 0x00A495 02:A485: EC        .byte $EC   ; 
- D 1 - I - 0x00A496 02:A486: ED        .byte $ED   ; 
- D 1 - I - 0x00A497 02:A487: EE        .byte $EE   ; 
- D 1 - I - 0x00A498 02:A488: EF        .byte $EF   ; 
- D 1 - I - 0x00A499 02:A489: EE        .byte $EE   ; 
- D 1 - I - 0x00A49A 02:A48A: EF        .byte $EF   ; 
- D 1 - I - 0x00A49B 02:A48B: EC        .byte $EC   ; 
- D 1 - I - 0x00A49C 02:A48C: ED        .byte $ED   ; 
- D 1 - I - 0x00A49D 02:A48D: EC        .byte $EC   ; 
- D 1 - I - 0x00A49E 02:A48E: ED        .byte $ED   ; 
- D 1 - I - 0x00A49F 02:A48F: EE        .byte $EE   ; 
- D 1 - I - 0x00A4A0 02:A490: EF        .byte $EF   ; 
- D 1 - I - 0x00A4A1 02:A491: EE        .byte $EE   ; 
- D 1 - I - 0x00A4A2 02:A492: EF        .byte $EF   ; 
- D 1 - I - 0x00A4A3 02:A493: EC        .byte $EC   ; 
- D 1 - I - 0x00A4A4 02:A494: ED        .byte $ED   ; 
- D 1 - I - 0x00A4A5 02:A495: EC        .byte $EC   ; 
- D 1 - I - 0x00A4A6 02:A496: ED        .byte $ED   ; 
- D 1 - I - 0x00A4A7 02:A497: EE        .byte $EE   ; 
- D 1 - I - 0x00A4A8 02:A498: EF        .byte $EF   ; 
- D 1 - I - 0x00A4A9 02:A499: EE        .byte $EE   ; 
- D 1 - I - 0x00A4AA 02:A49A: EF        .byte $EF   ; 
- D 1 - I - 0x00A4AB 02:A49B: EC        .byte $EC   ; 
- D 1 - I - 0x00A4AC 02:A49C: ED        .byte $ED   ; 
- D 1 - I - 0x00A4AD 02:A49D: EC        .byte $EC   ; 
- D 1 - I - 0x00A4AE 02:A49E: ED        .byte $ED   ; 
- D 1 - I - 0x00A4AF 02:A49F: EE        .byte $EE   ; 
- D 1 - I - 0x00A4B0 02:A4A0: EF        .byte $EF   ; 
- D 1 - I - 0x00A4B1 02:A4A1: EE        .byte $EE   ; 
- D 1 - I - 0x00A4B2 02:A4A2: EF        .byte $EF   ; 
- D 1 - I - 0x00A4B3 02:A4A3: EC        .byte $EC   ; 
- D 1 - I - 0x00A4B4 02:A4A4: ED        .byte $ED   ; 
- D 1 - I - 0x00A4B5 02:A4A5: 20        .byte $20   ; 
- D 1 - I - 0x00A4B6 02:A4A6: EE        .byte $EE   ; 
- D 1 - I - 0x00A4B7 02:A4A7: EF        .byte $EF   ; 
- D 1 - I - 0x00A4B8 02:A4A8: EC        .byte $EC   ; 
- D 1 - I - 0x00A4B9 02:A4A9: ED        .byte $ED   ; 
- D 1 - I - 0x00A4BA 02:A4AA: EC        .byte $EC   ; 
- D 1 - I - 0x00A4BB 02:A4AB: ED        .byte $ED   ; 
- D 1 - I - 0x00A4BC 02:A4AC: EE        .byte $EE   ; 
- D 1 - I - 0x00A4BD 02:A4AD: EF        .byte $EF   ; 
- D 1 - I - 0x00A4BE 02:A4AE: EE        .byte $EE   ; 
- D 1 - I - 0x00A4BF 02:A4AF: EF        .byte $EF   ; 
- D 1 - I - 0x00A4C0 02:A4B0: EC        .byte $EC   ; 
- D 1 - I - 0x00A4C1 02:A4B1: ED        .byte $ED   ; 
- D 1 - I - 0x00A4C2 02:A4B2: EC        .byte $EC   ; 
- D 1 - I - 0x00A4C3 02:A4B3: ED        .byte $ED   ; 
- D 1 - I - 0x00A4C4 02:A4B4: EE        .byte $EE   ; 
- D 1 - I - 0x00A4C5 02:A4B5: EF        .byte $EF   ; 
- D 1 - I - 0x00A4C6 02:A4B6: EE        .byte $EE   ; 
- D 1 - I - 0x00A4C7 02:A4B7: EF        .byte $EF   ; 
- D 1 - I - 0x00A4C8 02:A4B8: EC        .byte $EC   ; 
- D 1 - I - 0x00A4C9 02:A4B9: ED        .byte $ED   ; 
- D 1 - I - 0x00A4CA 02:A4BA: EC        .byte $EC   ; 
- D 1 - I - 0x00A4CB 02:A4BB: ED        .byte $ED   ; 
- D 1 - I - 0x00A4CC 02:A4BC: EE        .byte $EE   ; 
- D 1 - I - 0x00A4CD 02:A4BD: EF        .byte $EF   ; 
- D 1 - I - 0x00A4CE 02:A4BE: EE        .byte $EE   ; 
- D 1 - I - 0x00A4CF 02:A4BF: EF        .byte $EF   ; 
- D 1 - I - 0x00A4D0 02:A4C0: EC        .byte $EC   ; 
- D 1 - I - 0x00A4D1 02:A4C1: ED        .byte $ED   ; 
- D 1 - I - 0x00A4D2 02:A4C2: EC        .byte $EC   ; 
- D 1 - I - 0x00A4D3 02:A4C3: ED        .byte $ED   ; 
- D 1 - I - 0x00A4D4 02:A4C4: EE        .byte $EE   ; 
- D 1 - I - 0x00A4D5 02:A4C5: EF        .byte $EF   ; 
- D 1 - I - 0x00A4D6 02:A4C6: 05        .byte $05   ; 
- D 1 - I - 0x00A4D7 02:A4C7: EC        .byte $EC   ; 
- D 1 - I - 0x00A4D8 02:A4C8: ED        .byte $ED   ; 
- D 1 - I - 0x00A4D9 02:A4C9: EE        .byte $EE   ; 
- D 1 - I - 0x00A4DA 02:A4CA: EF        .byte $EF   ; 
- D 1 - I - 0x00A4DB 02:A4CB: F0        .byte $F0   ; 
- D 1 - I - 0x00A4DC 02:A4CC: 96        .byte $96   ; 
- D 1 - I - 0x00A4DD 02:A4CD: E7        .byte $E7   ; 
- D 1 - I - 0x00A4DE 02:A4CE: 05        .byte $05   ; 
- D 1 - I - 0x00A4DF 02:A4CF: F1        .byte $F1   ; 
- D 1 - I - 0x00A4E0 02:A4D0: EE        .byte $EE   ; 
- D 1 - I - 0x00A4E1 02:A4D1: EF        .byte $EF   ; 
- D 1 - I - 0x00A4E2 02:A4D2: EC        .byte $EC   ; 
- D 1 - I - 0x00A4E3 02:A4D3: ED        .byte $ED   ; 
- D 1 - I - 0x00A4E4 02:A4D4: 20        .byte $20   ; 
- D 1 - I - 0x00A4E5 02:A4D5: EE        .byte $EE   ; 
- D 1 - I - 0x00A4E6 02:A4D6: EF        .byte $EF   ; 
- D 1 - I - 0x00A4E7 02:A4D7: EC        .byte $EC   ; 
- D 1 - I - 0x00A4E8 02:A4D8: ED        .byte $ED   ; 
- D 1 - I - 0x00A4E9 02:A4D9: F2        .byte $F2   ; 
- D 1 - I - 0x00A4EA 02:A4DA: FC        .byte $FC   ; 
- D 1 - I - 0x00A4EB 02:A4DB: FD        .byte $FD   ; 
- D 1 - I - 0x00A4EC 02:A4DC: FC        .byte $FC   ; 
- D 1 - I - 0x00A4ED 02:A4DD: FD        .byte $FD   ; 
- D 1 - I - 0x00A4EE 02:A4DE: FC        .byte $FC   ; 
- D 1 - I - 0x00A4EF 02:A4DF: FD        .byte $FD   ; 
- D 1 - I - 0x00A4F0 02:A4E0: FC        .byte $FC   ; 
- D 1 - I - 0x00A4F1 02:A4E1: FD        .byte $FD   ; 
- D 1 - I - 0x00A4F2 02:A4E2: FC        .byte $FC   ; 
- D 1 - I - 0x00A4F3 02:A4E3: FD        .byte $FD   ; 
- D 1 - I - 0x00A4F4 02:A4E4: FC        .byte $FC   ; 
- D 1 - I - 0x00A4F5 02:A4E5: FD        .byte $FD   ; 
- D 1 - I - 0x00A4F6 02:A4E6: FC        .byte $FC   ; 
- D 1 - I - 0x00A4F7 02:A4E7: FD        .byte $FD   ; 
- D 1 - I - 0x00A4F8 02:A4E8: FC        .byte $FC   ; 
- D 1 - I - 0x00A4F9 02:A4E9: FD        .byte $FD   ; 
- D 1 - I - 0x00A4FA 02:A4EA: FC        .byte $FC   ; 
- D 1 - I - 0x00A4FB 02:A4EB: FD        .byte $FD   ; 
- D 1 - I - 0x00A4FC 02:A4EC: FC        .byte $FC   ; 
- D 1 - I - 0x00A4FD 02:A4ED: FD        .byte $FD   ; 
- D 1 - I - 0x00A4FE 02:A4EE: FC        .byte $FC   ; 
- D 1 - I - 0x00A4FF 02:A4EF: FD        .byte $FD   ; 
- D 1 - I - 0x00A500 02:A4F0: F3        .byte $F3   ; 
- D 1 - I - 0x00A501 02:A4F1: EC        .byte $EC   ; 
- D 1 - I - 0x00A502 02:A4F2: ED        .byte $ED   ; 
- D 1 - I - 0x00A503 02:A4F3: EE        .byte $EE   ; 
- D 1 - I - 0x00A504 02:A4F4: EF        .byte $EF   ; 
- D 1 - I - 0x00A505 02:A4F5: 84        .byte $84   ; 
- D 1 - I - 0x00A506 02:A4F6: FF        .byte $FF   ; 
- D 1 - I - 0x00A507 02:A4F7: 04        .byte $04   ; 
- D 1 - I - 0x00A508 02:A4F8: F2        .byte $F2   ; 
- D 1 - I - 0x00A509 02:A4F9: FC        .byte $FC   ; 
- D 1 - I - 0x00A50A 02:A4FA: FD        .byte $FD   ; 
- D 1 - I - 0x00A50B 02:A4FB: FC        .byte $FC   ; 
- D 1 - I - 0x00A50C 02:A4FC: 10        .byte $10   ; 
- D 1 - I - 0x00A50D 02:A4FD: FD        .byte $FD   ; 
- D 1 - I - 0x00A50E 02:A4FE: FC        .byte $FC   ; 
- D 1 - I - 0x00A50F 02:A4FF: FD        .byte $FD   ; 
- D 1 - I - 0x00A510 02:A500: FC        .byte $FC   ; 
- D 1 - I - 0x00A511 02:A501: FD        .byte $FD   ; 
- D 1 - I - 0x00A512 02:A502: FC        .byte $FC   ; 
- D 1 - I - 0x00A513 02:A503: FD        .byte $FD   ; 
- D 1 - I - 0x00A514 02:A504: FC        .byte $FC   ; 
- D 1 - I - 0x00A515 02:A505: FD        .byte $FD   ; 
- D 1 - I - 0x00A516 02:A506: FC        .byte $FC   ; 
- D 1 - I - 0x00A517 02:A507: FD        .byte $FD   ; 
- D 1 - I - 0x00A518 02:A508: FC        .byte $FC   ; 
- D 1 - I - 0x00A519 02:A509: FD        .byte $FD   ; 
- D 1 - I - 0x00A51A 02:A50A: FC        .byte $FC   ; 
- D 1 - I - 0x00A51B 02:A50B: FD        .byte $FD   ; 
- D 1 - I - 0x00A51C 02:A50C: FC        .byte $FC   ; 
- D 1 - I - 0x00A51D 02:A50D: 04        .byte $04   ; 
- D 1 - I - 0x00A51E 02:A50E: FD        .byte $FD   ; 
- D 1 - I - 0x00A51F 02:A50F: FC        .byte $FC   ; 
- D 1 - I - 0x00A520 02:A510: FD        .byte $FD   ; 
- D 1 - I - 0x00A521 02:A511: F3        .byte $F3   ; 
- D 1 - I - 0x00A522 02:A512: 84        .byte $84   ; 
- D 1 - I - 0x00A523 02:A513: FF        .byte $FF   ; 
- D 1 - I - 0x00A524 02:A514: 20        .byte $20   ; 
- D 1 - I - 0x00A525 02:A515: F8        .byte $F8   ; 
- D 1 - I - 0x00A526 02:A516: F9        .byte $F9   ; 
- D 1 - I - 0x00A527 02:A517: F8        .byte $F8   ; 
- D 1 - I - 0x00A528 02:A518: F9        .byte $F9   ; 
- D 1 - I - 0x00A529 02:A519: F2        .byte $F2   ; 
- D 1 - I - 0x00A52A 02:A51A: F4        .byte $F4   ; 
- D 1 - I - 0x00A52B 02:A51B: F5        .byte $F5   ; 
- D 1 - I - 0x00A52C 02:A51C: F4        .byte $F4   ; 
- D 1 - I - 0x00A52D 02:A51D: F5        .byte $F5   ; 
- D 1 - I - 0x00A52E 02:A51E: F4        .byte $F4   ; 
- D 1 - I - 0x00A52F 02:A51F: F5        .byte $F5   ; 
- D 1 - I - 0x00A530 02:A520: F4        .byte $F4   ; 
- D 1 - I - 0x00A531 02:A521: F5        .byte $F5   ; 
- D 1 - I - 0x00A532 02:A522: F4        .byte $F4   ; 
- D 1 - I - 0x00A533 02:A523: F5        .byte $F5   ; 
- D 1 - I - 0x00A534 02:A524: F4        .byte $F4   ; 
- D 1 - I - 0x00A535 02:A525: F5        .byte $F5   ; 
- D 1 - I - 0x00A536 02:A526: F4        .byte $F4   ; 
- D 1 - I - 0x00A537 02:A527: F5        .byte $F5   ; 
- D 1 - I - 0x00A538 02:A528: F4        .byte $F4   ; 
- D 1 - I - 0x00A539 02:A529: F5        .byte $F5   ; 
- D 1 - I - 0x00A53A 02:A52A: F4        .byte $F4   ; 
- D 1 - I - 0x00A53B 02:A52B: F5        .byte $F5   ; 
- D 1 - I - 0x00A53C 02:A52C: F4        .byte $F4   ; 
- D 1 - I - 0x00A53D 02:A52D: F5        .byte $F5   ; 
- D 1 - I - 0x00A53E 02:A52E: F4        .byte $F4   ; 
- D 1 - I - 0x00A53F 02:A52F: F5        .byte $F5   ; 
- D 1 - I - 0x00A540 02:A530: F3        .byte $F3   ; 
- D 1 - I - 0x00A541 02:A531: F8        .byte $F8   ; 
- D 1 - I - 0x00A542 02:A532: F9        .byte $F9   ; 
- D 1 - I - 0x00A543 02:A533: F8        .byte $F8   ; 
- D 1 - I - 0x00A544 02:A534: F9        .byte $F9   ; 
- D 1 - I - 0x00A545 02:A535: 20        .byte $20   ; 
- D 1 - I - 0x00A546 02:A536: FA        .byte $FA   ; 
- D 1 - I - 0x00A547 02:A537: FB        .byte $FB   ; 
- D 1 - I - 0x00A548 02:A538: FA        .byte $FA   ; 
- D 1 - I - 0x00A549 02:A539: FB        .byte $FB   ; 
- D 1 - I - 0x00A54A 02:A53A: F2        .byte $F2   ; 
- D 1 - I - 0x00A54B 02:A53B: F6        .byte $F6   ; 
- D 1 - I - 0x00A54C 02:A53C: F7        .byte $F7   ; 
- D 1 - I - 0x00A54D 02:A53D: F6        .byte $F6   ; 
- D 1 - I - 0x00A54E 02:A53E: F7        .byte $F7   ; 
- D 1 - I - 0x00A54F 02:A53F: F6        .byte $F6   ; 
- D 1 - I - 0x00A550 02:A540: F7        .byte $F7   ; 
- D 1 - I - 0x00A551 02:A541: F6        .byte $F6   ; 
- D 1 - I - 0x00A552 02:A542: F7        .byte $F7   ; 
- D 1 - I - 0x00A553 02:A543: F6        .byte $F6   ; 
- D 1 - I - 0x00A554 02:A544: F7        .byte $F7   ; 
- D 1 - I - 0x00A555 02:A545: F6        .byte $F6   ; 
- D 1 - I - 0x00A556 02:A546: F7        .byte $F7   ; 
- D 1 - I - 0x00A557 02:A547: F6        .byte $F6   ; 
- D 1 - I - 0x00A558 02:A548: F7        .byte $F7   ; 
- D 1 - I - 0x00A559 02:A549: F6        .byte $F6   ; 
- D 1 - I - 0x00A55A 02:A54A: F7        .byte $F7   ; 
- D 1 - I - 0x00A55B 02:A54B: F6        .byte $F6   ; 
- D 1 - I - 0x00A55C 02:A54C: F7        .byte $F7   ; 
- D 1 - I - 0x00A55D 02:A54D: F6        .byte $F6   ; 
- D 1 - I - 0x00A55E 02:A54E: F7        .byte $F7   ; 
- D 1 - I - 0x00A55F 02:A54F: F6        .byte $F6   ; 
- D 1 - I - 0x00A560 02:A550: F7        .byte $F7   ; 
- D 1 - I - 0x00A561 02:A551: F3        .byte $F3   ; 
- D 1 - I - 0x00A562 02:A552: FA        .byte $FA   ; 
- D 1 - I - 0x00A563 02:A553: FB        .byte $FB   ; 
- D 1 - I - 0x00A564 02:A554: FA        .byte $FA   ; 
- D 1 - I - 0x00A565 02:A555: FB        .byte $FB   ; 
- D 1 - I - 0x00A566 02:A556: 84        .byte $84   ; 
- D 1 - I - 0x00A567 02:A557: 00        .byte $00   ; 
- D 1 - I - 0x00A568 02:A558: 04        .byte $04   ; 
- D 1 - I - 0x00A569 02:A559: F2        .byte $F2   ; 
- D 1 - I - 0x00A56A 02:A55A: FC        .byte $FC   ; 
- D 1 - I - 0x00A56B 02:A55B: FD        .byte $FD   ; 
- D 1 - I - 0x00A56C 02:A55C: FC        .byte $FC   ; 
- D 1 - I - 0x00A56D 02:A55D: 10        .byte $10   ; 
- D 1 - I - 0x00A56E 02:A55E: FD        .byte $FD   ; 
- D 1 - I - 0x00A56F 02:A55F: FC        .byte $FC   ; 
- D 1 - I - 0x00A570 02:A560: FD        .byte $FD   ; 
- D 1 - I - 0x00A571 02:A561: FC        .byte $FC   ; 
- D 1 - I - 0x00A572 02:A562: FD        .byte $FD   ; 
- D 1 - I - 0x00A573 02:A563: FC        .byte $FC   ; 
- D 1 - I - 0x00A574 02:A564: FD        .byte $FD   ; 
- D 1 - I - 0x00A575 02:A565: FC        .byte $FC   ; 
- D 1 - I - 0x00A576 02:A566: FD        .byte $FD   ; 
- D 1 - I - 0x00A577 02:A567: FC        .byte $FC   ; 
- D 1 - I - 0x00A578 02:A568: FD        .byte $FD   ; 
- D 1 - I - 0x00A579 02:A569: FC        .byte $FC   ; 
- D 1 - I - 0x00A57A 02:A56A: FD        .byte $FD   ; 
- D 1 - I - 0x00A57B 02:A56B: FC        .byte $FC   ; 
- D 1 - I - 0x00A57C 02:A56C: FD        .byte $FD   ; 
- D 1 - I - 0x00A57D 02:A56D: FC        .byte $FC   ; 
- D 1 - I - 0x00A57E 02:A56E: 04        .byte $04   ; 
- D 1 - I - 0x00A57F 02:A56F: FD        .byte $FD   ; 
- D 1 - I - 0x00A580 02:A570: FC        .byte $FC   ; 
- D 1 - I - 0x00A581 02:A571: FD        .byte $FD   ; 
- D 1 - I - 0x00A582 02:A572: F3        .byte $F3   ; 
- D 1 - I - 0x00A583 02:A573: 84        .byte $84   ; 
- D 1 - I - 0x00A584 02:A574: 00        .byte $00   ; 
- D 1 - I - 0x00A585 02:A575: 20        .byte $20   ; 
- D 1 - I - 0x00A586 02:A576: D8        .byte $D8   ; 
- D 1 - I - 0x00A587 02:A577: D9        .byte $D9   ; 
- D 1 - I - 0x00A588 02:A578: DC        .byte $DC   ; 
- D 1 - I - 0x00A589 02:A579: DD        .byte $DD   ; 
- D 1 - I - 0x00A58A 02:A57A: F2        .byte $F2   ; 
- D 1 - I - 0x00A58B 02:A57B: FC        .byte $FC   ; 
- D 1 - I - 0x00A58C 02:A57C: FD        .byte $FD   ; 
- D 1 - I - 0x00A58D 02:A57D: FC        .byte $FC   ; 
- D 1 - I - 0x00A58E 02:A57E: FD        .byte $FD   ; 
- D 1 - I - 0x00A58F 02:A57F: FC        .byte $FC   ; 
- D 1 - I - 0x00A590 02:A580: FD        .byte $FD   ; 
- D 1 - I - 0x00A591 02:A581: FC        .byte $FC   ; 
- D 1 - I - 0x00A592 02:A582: FD        .byte $FD   ; 
- D 1 - I - 0x00A593 02:A583: FC        .byte $FC   ; 
- D 1 - I - 0x00A594 02:A584: FD        .byte $FD   ; 
- D 1 - I - 0x00A595 02:A585: FC        .byte $FC   ; 
- D 1 - I - 0x00A596 02:A586: FD        .byte $FD   ; 
- D 1 - I - 0x00A597 02:A587: FC        .byte $FC   ; 
- D 1 - I - 0x00A598 02:A588: FD        .byte $FD   ; 
- D 1 - I - 0x00A599 02:A589: FC        .byte $FC   ; 
- D 1 - I - 0x00A59A 02:A58A: FD        .byte $FD   ; 
- D 1 - I - 0x00A59B 02:A58B: FC        .byte $FC   ; 
- D 1 - I - 0x00A59C 02:A58C: FD        .byte $FD   ; 
- D 1 - I - 0x00A59D 02:A58D: FC        .byte $FC   ; 
- D 1 - I - 0x00A59E 02:A58E: FD        .byte $FD   ; 
- D 1 - I - 0x00A59F 02:A58F: FC        .byte $FC   ; 
- D 1 - I - 0x00A5A0 02:A590: FD        .byte $FD   ; 
- D 1 - I - 0x00A5A1 02:A591: F3        .byte $F3   ; 
- D 1 - I - 0x00A5A2 02:A592: D8        .byte $D8   ; 
- D 1 - I - 0x00A5A3 02:A593: D9        .byte $D9   ; 
- D 1 - I - 0x00A5A4 02:A594: DC        .byte $DC   ; 
- D 1 - I - 0x00A5A5 02:A595: DD        .byte $DD   ; 
- D 1 - I - 0x00A5A6 02:A596: 20        .byte $20   ; 
- D 1 - I - 0x00A5A7 02:A597: DA        .byte $DA   ; 
- D 1 - I - 0x00A5A8 02:A598: DB        .byte $DB   ; 
- D 1 - I - 0x00A5A9 02:A599: DE        .byte $DE   ; 
- D 1 - I - 0x00A5AA 02:A59A: DF        .byte $DF   ; 
- D 1 - I - 0x00A5AB 02:A59B: F2        .byte $F2   ; 
- D 1 - I - 0x00A5AC 02:A59C: FC        .byte $FC   ; 
- D 1 - I - 0x00A5AD 02:A59D: FD        .byte $FD   ; 
- D 1 - I - 0x00A5AE 02:A59E: FC        .byte $FC   ; 
- D 1 - I - 0x00A5AF 02:A59F: FD        .byte $FD   ; 
- D 1 - I - 0x00A5B0 02:A5A0: FC        .byte $FC   ; 
- D 1 - I - 0x00A5B1 02:A5A1: FD        .byte $FD   ; 
- D 1 - I - 0x00A5B2 02:A5A2: FC        .byte $FC   ; 
- D 1 - I - 0x00A5B3 02:A5A3: FD        .byte $FD   ; 
- D 1 - I - 0x00A5B4 02:A5A4: FC        .byte $FC   ; 
- D 1 - I - 0x00A5B5 02:A5A5: FD        .byte $FD   ; 
- D 1 - I - 0x00A5B6 02:A5A6: FC        .byte $FC   ; 
- D 1 - I - 0x00A5B7 02:A5A7: FD        .byte $FD   ; 
- D 1 - I - 0x00A5B8 02:A5A8: FC        .byte $FC   ; 
- D 1 - I - 0x00A5B9 02:A5A9: FD        .byte $FD   ; 
- D 1 - I - 0x00A5BA 02:A5AA: FC        .byte $FC   ; 
- D 1 - I - 0x00A5BB 02:A5AB: FD        .byte $FD   ; 
- D 1 - I - 0x00A5BC 02:A5AC: FC        .byte $FC   ; 
- D 1 - I - 0x00A5BD 02:A5AD: FD        .byte $FD   ; 
- D 1 - I - 0x00A5BE 02:A5AE: FC        .byte $FC   ; 
- D 1 - I - 0x00A5BF 02:A5AF: FD        .byte $FD   ; 
- D 1 - I - 0x00A5C0 02:A5B0: FC        .byte $FC   ; 
- D 1 - I - 0x00A5C1 02:A5B1: FD        .byte $FD   ; 
- D 1 - I - 0x00A5C2 02:A5B2: F3        .byte $F3   ; 
- D 1 - I - 0x00A5C3 02:A5B3: DA        .byte $DA   ; 
- D 1 - I - 0x00A5C4 02:A5B4: DB        .byte $DB   ; 
- D 1 - I - 0x00A5C5 02:A5B5: DE        .byte $DE   ; 
- D 1 - I - 0x00A5C6 02:A5B6: DF        .byte $DF   ; 
- D 1 - I - 0x00A5C7 02:A5B7: 84        .byte $84   ; 
- D 1 - I - 0x00A5C8 02:A5B8: D6        .byte $D6   ; 
- D 1 - I - 0x00A5C9 02:A5B9: 01        .byte $01   ; 
- D 1 - I - 0x00A5CA 02:A5BA: E2        .byte $E2   ; 
- D 1 - I - 0x00A5CB 02:A5BB: 96        .byte $96   ; 
- D 1 - I - 0x00A5CC 02:A5BC: E3        .byte $E3   ; 
- D 1 - I - 0x00A5CD 02:A5BD: 01        .byte $01   ; 
- D 1 - I - 0x00A5CE 02:A5BE: E6        .byte $E6   ; 
- D 1 - I - 0x00A5CF 02:A5BF: 84        .byte $84   ; 
- D 1 - I - 0x00A5D0 02:A5C0: D6        .byte $D6   ; 
- D 1 - I - 0x00A5D1 02:A5C1: 02        .byte $02   ; 
- D 1 - I - 0x00A5D2 02:A5C2: E0        .byte $E0   ; 
- D 1 - I - 0x00A5D3 02:A5C3: E8        .byte $E8   ; 
- D 1 - I - 0x00A5D4 02:A5C4: 9C        .byte $9C   ; 
- D 1 - I - 0x00A5D5 02:A5C5: E0        .byte $E0   ; 
- D 1 - I - 0x00A5D6 02:A5C6: 02        .byte $02   ; 
- D 1 - I - 0x00A5D7 02:A5C7: E9        .byte $E9   ; 
- D 1 - I - 0x00A5D8 02:A5C8: E0        .byte $E0   ; 
- D 1 - I - 0x00A5D9 02:A5C9: 01        .byte $01   ; 
- D 1 - I - 0x00A5DA 02:A5CA: EA        .byte $EA   ; 
- D 1 - I - 0x00A5DB 02:A5CB: 9E        .byte $9E   ; 
- D 1 - I - 0x00A5DC 02:A5CC: E1        .byte $E1   ; 
- D 1 - I - 0x00A5DD 02:A5CD: 01        .byte $01   ; 
- D 1 - I - 0x00A5DE 02:A5CE: EB        .byte $EB   ; 
- D 1 - I - 0x00A5DF 02:A5CF: A0        .byte $A0   ; 
- D 1 - I - 0x00A5E0 02:A5D0: D5        .byte $D5   ; 
- D 1 - I - 0x00A5E1 02:A5D1: A0        .byte $A0   ; 
- D 1 - I - 0x00A5E2 02:A5D2: E1        .byte $E1   ; 
- D 1 - I - 0x00A5E3 02:A5D3: A0        .byte $A0   ; 
- D 1 - I - 0x00A5E4 02:A5D4: 02        .byte $02   ; 
- D 1 - I - 0x00A5E5 02:A5D5: A0        .byte $A0   ; 
- D 1 - I - 0x00A5E6 02:A5D6: E1        .byte $E1   ; 
- D 1 - I - 0x00A5E7 02:A5D7: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5E8 02:A5D8: E1        .byte $E1   ; 
- D 1 - I - 0x00A5E9 02:A5D9: 02        .byte $02   ; 
- D 1 - I - 0x00A5EA 02:A5DA: E4        .byte $E4   ; 
- D 1 - I - 0x00A5EB 02:A5DB: E5        .byte $E5   ; 
- D 1 - I - 0x00A5EC 02:A5DC: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5ED 02:A5DD: E1        .byte $E1   ; 
- D 1 - I - 0x00A5EE 02:A5DE: A0        .byte $A0   ; 
- D 1 - I - 0x00A5EF 02:A5DF: 02        .byte $02   ; 
- D 1 - I - 0x00A5F0 02:A5E0: A0        .byte $A0   ; 
- D 1 - I - 0x00A5F1 02:A5E1: 02        .byte $02   ; 
- D 1 - I - 0x00A5F2 02:A5E2: A0        .byte $A0   ; 
- D 1 - I - 0x00A5F3 02:A5E3: E1        .byte $E1   ; 
- D 1 - I - 0x00A5F4 02:A5E4: A0        .byte $A0   ; 
- D 1 - I - 0x00A5F5 02:A5E5: E1        .byte $E1   ; 
- D 1 - I - 0x00A5F6 02:A5E6: A0        .byte $A0   ; 
- D 1 - I - 0x00A5F7 02:A5E7: E1        .byte $E1   ; 
- D 1 - I - 0x00A5F8 02:A5E8: A0        .byte $A0   ; 
- D 1 - I - 0x00A5F9 02:A5E9: 02        .byte $02   ; 
- D 1 - I - 0x00A5FA 02:A5EA: 20        .byte $20   ; 
- D 1 - I - 0x00A5FB 02:A5EB: BE        .byte $BE   ; 
- D 1 - I - 0x00A5FC 02:A5EC: BE        .byte $BE   ; 
- D 1 - I - 0x00A5FD 02:A5ED: BE        .byte $BE   ; 
- D 1 - I - 0x00A5FE 02:A5EE: BE        .byte $BE   ; 
- D 1 - I - 0x00A5FF 02:A5EF: BE        .byte $BE   ; 
- D 1 - I - 0x00A600 02:A5F0: BE        .byte $BE   ; 
- D 1 - I - 0x00A601 02:A5F1: BE        .byte $BE   ; 
- D 1 - I - 0x00A602 02:A5F2: BE        .byte $BE   ; 
- D 1 - I - 0x00A603 02:A5F3: BE        .byte $BE   ; 
- D 1 - I - 0x00A604 02:A5F4: BE        .byte $BE   ; 
- D 1 - I - 0x00A605 02:A5F5: BE        .byte $BE   ; 
- D 1 - I - 0x00A606 02:A5F6: BE        .byte $BE   ; 
- D 1 - I - 0x00A607 02:A5F7: BE        .byte $BE   ; 
- D 1 - I - 0x00A608 02:A5F8: BE        .byte $BE   ; 
- D 1 - I - 0x00A609 02:A5F9: BE        .byte $BE   ; 
- D 1 - I - 0x00A60A 02:A5FA: BE        .byte $BE   ; 
- D 1 - I - 0x00A60B 02:A5FB: 5E        .byte $5E   ; 
- D 1 - I - 0x00A60C 02:A5FC: 55        .byte $55   ; 
- D 1 - I - 0x00A60D 02:A5FD: 55        .byte $55   ; 
- D 1 - I - 0x00A60E 02:A5FE: 55        .byte $55   ; 
- D 1 - I - 0x00A60F 02:A5FF: 55        .byte $55   ; 
- D 1 - I - 0x00A610 02:A600: 55        .byte $55   ; 
- D 1 - I - 0x00A611 02:A601: 55        .byte $55   ; 
- D 1 - I - 0x00A612 02:A602: 5E        .byte $5E   ; 
- D 1 - I - 0x00A613 02:A603: 55        .byte $55   ; 
- D 1 - I - 0x00A614 02:A604: 55        .byte $55   ; 
- D 1 - I - 0x00A615 02:A605: 55        .byte $55   ; 
- D 1 - I - 0x00A616 02:A606: 55        .byte $55   ; 
- D 1 - I - 0x00A617 02:A607: 55        .byte $55   ; 
- D 1 - I - 0x00A618 02:A608: 55        .byte $55   ; 
- D 1 - I - 0x00A619 02:A609: 55        .byte $55   ; 
- D 1 - I - 0x00A61A 02:A60A: 55        .byte $55   ; 
- D 1 - I - 0x00A61B 02:A60B: 20        .byte $20   ; 
- D 1 - I - 0x00A61C 02:A60C: 00        .byte $00   ; 
- D 1 - I - 0x00A61D 02:A60D: 00        .byte $00   ; 
- D 1 - I - 0x00A61E 02:A60E: 00        .byte $00   ; 
- D 1 - I - 0x00A61F 02:A60F: 00        .byte $00   ; 
- D 1 - I - 0x00A620 02:A610: 00        .byte $00   ; 
- D 1 - I - 0x00A621 02:A611: 00        .byte $00   ; 
- D 1 - I - 0x00A622 02:A612: 00        .byte $00   ; 
- D 1 - I - 0x00A623 02:A613: 00        .byte $00   ; 
- D 1 - I - 0x00A624 02:A614: 00        .byte $00   ; 
- D 1 - I - 0x00A625 02:A615: 00        .byte $00   ; 
- D 1 - I - 0x00A626 02:A616: 00        .byte $00   ; 
- D 1 - I - 0x00A627 02:A617: 00        .byte $00   ; 
- D 1 - I - 0x00A628 02:A618: 00        .byte $00   ; 
- D 1 - I - 0x00A629 02:A619: 00        .byte $00   ; 
- D 1 - I - 0x00A62A 02:A61A: 00        .byte $00   ; 
- D 1 - I - 0x00A62B 02:A61B: 00        .byte $00   ; 
- D 1 - I - 0x00A62C 02:A61C: 00        .byte $00   ; 
- D 1 - I - 0x00A62D 02:A61D: 00        .byte $00   ; 
- D 1 - I - 0x00A62E 02:A61E: 00        .byte $00   ; 
- D 1 - I - 0x00A62F 02:A61F: 00        .byte $00   ; 
- D 1 - I - 0x00A630 02:A620: 00        .byte $00   ; 
- D 1 - I - 0x00A631 02:A621: 00        .byte $00   ; 
- D 1 - I - 0x00A632 02:A622: 00        .byte $00   ; 
- D 1 - I - 0x00A633 02:A623: 00        .byte $00   ; 
- D 1 - I - 0x00A634 02:A624: 00        .byte $00   ; 
- D 1 - I - 0x00A635 02:A625: 00        .byte $00   ; 
- D 1 - I - 0x00A636 02:A626: 00        .byte $00   ; 
- D 1 - I - 0x00A637 02:A627: 00        .byte $00   ; 
- D 1 - I - 0x00A638 02:A628: 00        .byte $00   ; 
- D 1 - I - 0x00A639 02:A629: 00        .byte $00   ; 
- D 1 - I - 0x00A63A 02:A62A: 00        .byte $00   ; 
- D 1 - I - 0x00A63B 02:A62B: 00        .byte $00   ; 
- D 1 - I - 0x00A63C 02:A62C: 00        .byte $00   ; 



sub_A62D:
C - - - - - 0x00A63D 02:A62D: 2C A4 03  BIT ram_game_mode_flags
C - - - - - 0x00A640 02:A630: 50 03     BVC bra_A635    ; con_gm_continue
C - - - - - 0x00A642 02:A632: 4C 77 A7  JMP loc_A777
bra_A635:
C - - - - - 0x00A645 02:A635: AD A9 03  LDA ram_team_id
C - - - - - 0x00A648 02:A638: C9 FF     CMP #$FF
C - - - - - 0x00A64A 02:A63A: D0 01     BNE bra_A63D
C - - - - - 0x00A64C 02:A63C: 60        RTS
bra_A63D:
C - - - - - 0x00A64D 02:A63D: 0A        ASL
C - - - - - 0x00A64E 02:A63E: 0A        ASL
C - - - - - 0x00A64F 02:A63F: 0A        ASL
C - - - - - 0x00A650 02:A640: 0A        ASL
C - - - - - 0x00A651 02:A641: 85 2A     STA ram_002A
C - - - - - 0x00A653 02:A643: AD AA 03  LDA ram_team_id + 1
C - - - - - 0x00A656 02:A646: 05 2A     ORA ram_002A
C - - - - - 0x00A658 02:A648: 85 2A     STA ram_002A
C - - - - - 0x00A65A 02:A64A: AD AB 03  LDA ram_team_ban
C - - - - - 0x00A65D 02:A64D: 85 2B     STA ram_002B
C - - - - - 0x00A65F 02:A64F: AD AC 03  LDA ram_team_ban + 1
C - - - - - 0x00A662 02:A652: 85 2C     STA ram_002C
C - - - - - 0x00A664 02:A654: AD A4 03  LDA ram_game_mode_flags
C - - - - - 0x00A667 02:A657: 29 08     AND #con_gm_team_select
C - - - - - 0x00A669 02:A659: 0A        ASL
C - - - - - 0x00A66A 02:A65A: 0A        ASL
C - - - - - 0x00A66B 02:A65B: 0A        ASL
C - - - - - 0x00A66C 02:A65C: 0A        ASL
C - - - - - 0x00A66D 02:A65D: 85 2D     STA ram_002D
C - - - - - 0x00A66F 02:A65F: A2 04     LDX #$04
C - - - - - 0x00A671 02:A661: A9 00     LDA #$00
bra_A663_loop:
C - - - - - 0x00A673 02:A663: 9D D5 03  STA ram_03D5,X
C - - - - - 0x00A676 02:A666: CA        DEX
C - - - - - 0x00A677 02:A667: 10 FA     BPL bra_A663_loop
C - - - - - 0x00A679 02:A669: 85 30     STA ram_0030
C - - - - - 0x00A67B 02:A66B: 85 31     STA ram_0031
C - - - - - 0x00A67D 02:A66D: AA        TAX
bra_A66E_loop:
C - - - - - 0x00A67E 02:A66E: A5 30     LDA ram_0030
C - - - - - 0x00A680 02:A670: 18        CLC
C - - - - - 0x00A681 02:A671: 75 2A     ADC ram_002A,X
C - - - - - 0x00A683 02:A673: 85 30     STA ram_0030
C - - - - - 0x00A685 02:A675: A5 31     LDA ram_0031
C - - - - - 0x00A687 02:A677: 69 00     ADC #$00
C - - - - - 0x00A689 02:A679: 85 31     STA ram_0031
C - - - - - 0x00A68B 02:A67B: E8        INX
C - - - - - 0x00A68C 02:A67C: E0 04     CPX #$04
C - - - - - 0x00A68E 02:A67E: D0 EE     BNE bra_A66E_loop
C - - - - - 0x00A690 02:A680: A5 30     LDA ram_0030
C - - - - - 0x00A692 02:A682: 48        PHA
C - - - - - 0x00A693 02:A683: 29 0F     AND #$0F
C - - - - - 0x00A695 02:A685: 85 2E     STA ram_002E
C - - - - - 0x00A697 02:A687: 68        PLA
C - - - - - 0x00A698 02:A688: 46 31     LSR ram_0031
C - - - - - 0x00A69A 02:A68A: 6A        ROR
C - - - - - 0x00A69B 02:A68B: 46 31     LSR ram_0031
C - - - - - 0x00A69D 02:A68D: 6A        ROR
C - - - - - 0x00A69E 02:A68E: 46 31     LSR ram_0031
C - - - - - 0x00A6A0 02:A690: 6A        ROR
C - - - - - 0x00A6A1 02:A691: 4A        LSR
C - - - - - 0x00A6A2 02:A692: 05 2D     ORA ram_002D
C - - - - - 0x00A6A4 02:A694: 85 2D     STA ram_002D
C - - - - - 0x00A6A6 02:A696: A9 00     LDA #$00
C - - - - - 0x00A6A8 02:A698: 85 30     STA ram_0030
loc_A69A:
C D 1 - - - 0x00A6AA 02:A69A: A5 30     LDA ram_0030
C - - - - - 0x00A6AC 02:A69C: 4A        LSR
C - - - - - 0x00A6AD 02:A69D: 4A        LSR
C - - - - - 0x00A6AE 02:A69E: 4A        LSR
C - - - - - 0x00A6AF 02:A69F: AA        TAX
C - - - - - 0x00A6B0 02:A6A0: BD 2A 00  LDA ram_002A,X
C - - - - - 0x00A6B3 02:A6A3: 85 31     STA ram_0031
C - - - - - 0x00A6B5 02:A6A5: A9 08     LDA #$08
C - - - - - 0x00A6B7 02:A6A7: 85 32     STA ram_0032
bra_A6A9_loop:
C - - - - - 0x00A6B9 02:A6A9: A4 30     LDY ram_0030
C - - - - - 0x00A6BB 02:A6AB: B9 F6 A6  LDA tbl_A6F6,Y
C - - - - - 0x00A6BE 02:A6AE: 48        PHA
C - - - - - 0x00A6BF 02:A6AF: 4A        LSR
C - - - - - 0x00A6C0 02:A6B0: 4A        LSR
C - - - - - 0x00A6C1 02:A6B1: 4A        LSR
C - - - - - 0x00A6C2 02:A6B2: 4A        LSR
C - - - - - 0x00A6C3 02:A6B3: A8        TAY
C - - - - - 0x00A6C4 02:A6B4: 68        PLA
C - - - - - 0x00A6C5 02:A6B5: 29 0F     AND #$0F
C - - - - - 0x00A6C7 02:A6B7: AA        TAX
C - - - - - 0x00A6C8 02:A6B8: A9 00     LDA #$00
C - - - - - 0x00A6CA 02:A6BA: 46 31     LSR ram_0031
bra_A6BC_loop:
C - - - - - 0x00A6CC 02:A6BC: 2A        ROL
C - - - - - 0x00A6CD 02:A6BD: CA        DEX
C - - - - - 0x00A6CE 02:A6BE: 10 FC     BPL bra_A6BC_loop
C - - - - - 0x00A6D0 02:A6C0: 19 D5 03  ORA ram_03D5,Y
C - - - - - 0x00A6D3 02:A6C3: 99 D5 03  STA ram_03D5,Y
C - - - - - 0x00A6D6 02:A6C6: E6 30     INC ram_0030
C - - - - - 0x00A6D8 02:A6C8: A5 30     LDA ram_0030
C - - - - - 0x00A6DA 02:A6CA: C9 24     CMP #$24
C - - - - - 0x00A6DC 02:A6CC: F0 07     BEQ bra_A6D5
C - - - - - 0x00A6DE 02:A6CE: C6 32     DEC ram_0032
C - - - - - 0x00A6E0 02:A6D0: D0 D7     BNE bra_A6A9_loop
C - - - - - 0x00A6E2 02:A6D2: 4C 9A A6  JMP loc_A69A
bra_A6D5:
C - - - - - 0x00A6E5 02:A6D5: A2 00     LDX #$00
bra_A6D7_loop:
C - - - - - 0x00A6E7 02:A6D7: BD D5 03  LDA ram_03D5,X
C - - - - - 0x00A6EA 02:A6DA: 18        CLC
C - - - - - 0x00A6EB 02:A6DB: 7D F1 A6  ADC tbl_A6F1,X
C - - - - - 0x00A6EE 02:A6DE: 9D D5 03  STA ram_03D5,X
C - - - - - 0x00A6F1 02:A6E1: E8        INX
C - - - - - 0x00A6F2 02:A6E2: E0 05     CPX #$05
C - - - - - 0x00A6F4 02:A6E4: D0 F1     BNE bra_A6D7_loop
C - - - - - 0x00A6F6 02:A6E6: A2 AC     LDX #< tbl_A9AC
C - - - - - 0x00A6F8 02:A6E8: A0 A9     LDY #> tbl_A9AC
C - - - - - 0x00A6FA 02:A6EA: 20 33 C0  JSR sub_0x00C762
C - - - - - 0x00A6FD 02:A6ED: 20 1A A7  JSR sub_A71A
C - - - - - 0x00A700 02:A6F0: 60        RTS



tbl_A6F1:
; связано с паролем, маска для 5 сумм двух букв
- D 1 - - - 0x00A701 02:A6F1: 3B        .byte $3B   ; 
- D 1 - - - 0x00A702 02:A6F2: 8E        .byte $8E   ; 
- D 1 - - - 0x00A703 02:A6F3: C1        .byte $C1   ; 
- D 1 - - - 0x00A704 02:A6F4: 4D        .byte $4D   ; 
- D 1 - - - 0x00A705 02:A6F5: 00        .byte $00   ; 



tbl_A6F6:
- D 1 - - - 0x00A706 02:A6F6: 05        .byte $05   ; 
- D 1 - - - 0x00A707 02:A6F7: 14        .byte $14   ; 
- D 1 - - - 0x00A708 02:A6F8: 36        .byte $36   ; 
- D 1 - - - 0x00A709 02:A6F9: 11        .byte $11   ; 
- D 1 - - - 0x00A70A 02:A6FA: 00        .byte $00   ; 
- D 1 - - - 0x00A70B 02:A6FB: 25        .byte $25   ; 
- D 1 - - - 0x00A70C 02:A6FC: 20        .byte $20   ; 
- D 1 - - - 0x00A70D 02:A6FD: 40        .byte $40   ; 
- D 1 - - - 0x00A70E 02:A6FE: 06        .byte $06   ; 
- D 1 - - - 0x00A70F 02:A6FF: 01        .byte $01   ; 
- D 1 - - - 0x00A710 02:A700: 12        .byte $12   ; 
- D 1 - - - 0x00A711 02:A701: 10        .byte $10   ; 
- D 1 - - - 0x00A712 02:A702: 26        .byte $26   ; 
- D 1 - - - 0x00A713 02:A703: 22        .byte $22   ; 
- D 1 - - - 0x00A714 02:A704: 21        .byte $21   ; 
- D 1 - - - 0x00A715 02:A705: 35        .byte $35   ; 
- D 1 - - - 0x00A716 02:A706: 32        .byte $32   ; 
- D 1 - - - 0x00A717 02:A707: 42        .byte $42   ; 
- D 1 - - - 0x00A718 02:A708: 41        .byte $41   ; 
- D 1 - - - 0x00A719 02:A709: 04        .byte $04   ; 
- D 1 - - - 0x00A71A 02:A70A: 02        .byte $02   ; 
- D 1 - - - 0x00A71B 02:A70B: 31        .byte $31   ; 
- D 1 - - - 0x00A71C 02:A70C: 34        .byte $34   ; 
- D 1 - - - 0x00A71D 02:A70D: 16        .byte $16   ; 
- D 1 - - - 0x00A71E 02:A70E: 30        .byte $30   ; 
- D 1 - - - 0x00A71F 02:A70F: 07        .byte $07   ; 
- D 1 - - - 0x00A720 02:A710: 03        .byte $03   ; 
- D 1 - - - 0x00A721 02:A711: 17        .byte $17   ; 
- D 1 - - - 0x00A722 02:A712: 13        .byte $13   ; 
- D 1 - - - 0x00A723 02:A713: 27        .byte $27   ; 
- D 1 - - - 0x00A724 02:A714: 23        .byte $23   ; 
- D 1 - - - 0x00A725 02:A715: 37        .byte $37   ; 
- D 1 - - - 0x00A726 02:A716: 33        .byte $33   ; 
- D 1 - - - 0x00A727 02:A717: 43        .byte $43   ; 
- D 1 - - - 0x00A728 02:A718: 24        .byte $24   ; 
- D 1 - - - 0x00A729 02:A719: 15        .byte $15   ; 



sub_A71A:
bra_A71A_loop:
C - - - - - 0x00A72A 02:A71A: A9 01     LDA #$01
C - - - - - 0x00A72C 02:A71C: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00A72F 02:A71F: AD 7D 03  LDA ram_buffer_bg_flag
C - - - - - 0x00A732 02:A722: D0 F6     BNE bra_A71A_loop
C - - - - - 0x00A734 02:A724: A9 01     LDA #$01
C - - - - - 0x00A736 02:A726: 8D 7D 03  STA ram_buffer_bg_flag
C - - - - - 0x00A739 02:A729: A2 04     LDX #$04
bra_A72B_loop:
C - - - - - 0x00A73B 02:A72B: BD D5 03  LDA ram_03D5,X
C - - - - - 0x00A73E 02:A72E: 95 2A     STA ram_002A,X
C - - - - - 0x00A740 02:A730: CA        DEX
C - - - - - 0x00A741 02:A731: 10 F8     BPL bra_A72B_loop
C - - - - - 0x00A743 02:A733: A9 09     LDA #$09
C - - - - - 0x00A745 02:A735: 8D 0D 03  STA ram_buffer_bg_hi
C - - - - - 0x00A748 02:A738: A9 51     LDA #$51
C - - - - - 0x00A74A 02:A73A: 8D 0E 03  STA ram_buffer_bg_lo
C - - - - - 0x00A74D 02:A73D: A9 23     LDA #$23
C - - - - - 0x00A74F 02:A73F: 8D 0F 03  STA ram_buffer_bg_cnt
C - - - - - 0x00A752 02:A742: A9 00     LDA #$00
C - - - - - 0x00A754 02:A744: 8D 19 03  STA ram_buffer_bg_data + 9
C - - - - - 0x00A757 02:A747: A9 08     LDA #$08
C - - - - - 0x00A759 02:A749: 85 2F     STA ram_002F
C - - - - - 0x00A75B 02:A74B: A2 00     LDX #$00
bra_A74D_loop:
C - - - - - 0x00A75D 02:A74D: A0 04     LDY #$04
C - - - - - 0x00A75F 02:A74F: A9 00     LDA #$00
bra_A751_loop:
C - - - - - 0x00A761 02:A751: 06 2D     ASL ram_002D
C - - - - - 0x00A763 02:A753: 26 2C     ROL ram_002C
C - - - - - 0x00A765 02:A755: 26 2B     ROL ram_002B
C - - - - - 0x00A767 02:A757: 26 2A     ROL ram_002A
C - - - - - 0x00A769 02:A759: 2A        ROL
C - - - - - 0x00A76A 02:A75A: 88        DEY
C - - - - - 0x00A76B 02:A75B: D0 F4     BNE bra_A751_loop
C - - - - - 0x00A76D 02:A75D: 20 6F A7  JSR sub_A76F
C - - - - - 0x00A770 02:A760: C6 2F     DEC ram_002F
C - - - - - 0x00A772 02:A762: D0 E9     BNE bra_A74D_loop
C - - - - - 0x00A774 02:A764: A5 2E     LDA ram_002E
C - - - - - 0x00A776 02:A766: 20 6F A7  JSR sub_A76F
C - - - - - 0x00A779 02:A769: A9 80     LDA #$80
C - - - - - 0x00A77B 02:A76B: 8D 7D 03  STA ram_buffer_bg_flag
C - - - - - 0x00A77E 02:A76E: 60        RTS



sub_A76F:
C - - - - - 0x00A77F 02:A76F: 18        CLC
C - - - - - 0x00A780 02:A770: 69 41     ADC #$41
C - - - - - 0x00A782 02:A772: 9D 10 03  STA ram_buffer_bg_data,X
C - - - - - 0x00A785 02:A775: E8        INX
C - - - - - 0x00A786 02:A776: 60        RTS



loc_A777:
C D 1 - - - 0x00A787 02:A777: A9 1A     LDA #con_sound_whistle_fans
C - - - - - 0x00A789 02:A779: 20 7E C0  JSR sub_0x00C920_prepare_sound
C - - - - - 0x00A78C 02:A77C: A9 60     LDA #$60
C - - - - - 0x00A78E 02:A77E: 85 3B     STA ram_003B
C - - - - - 0x00A790 02:A780: A9 00     LDA #$00
C - - - - - 0x00A792 02:A782: 8D 89 03  STA ram_buffer_pal_data + 6
C - - - - - 0x00A795 02:A785: A9 30     LDA #$30
C - - - - - 0x00A797 02:A787: 8D 8A 03  STA ram_buffer_pal_data + 7
                                        INC ram_buffer_pal_flag
C - - - - - 0x00A79F 02:A78F: A2 AC     LDX #< tbl_A9AC
C - - - - - 0x00A7A1 02:A791: A0 A9     LDY #> tbl_A9AC
C - - - - - 0x00A7A3 02:A793: 20 33 C0  JSR sub_0x00C762
C - - - - - 0x00A7A6 02:A796: A2 09     LDX #$09
C - - - - - 0x00A7A8 02:A798: A9 00     LDA #$00
bra_A79A_loop:
C - - - - - 0x00A7AA 02:A79A: 9D DA 03  STA ram_ball_pos_X_hi,X
C - - - - - 0x00A7AD 02:A79D: CA        DEX
C - - - - - 0x00A7AE 02:A79E: 10 FA     BPL bra_A79A_loop
C - - - - - 0x00A7B0 02:A7A0: 20 5F A9  JSR sub_A95F
C - - - - - 0x00A7B3 02:A7A3: A9 00     LDA #$00
C - - - - - 0x00A7B5 02:A7A5: 85 94     STA ram_0094
C - - - - - 0x00A7B7 02:A7A7: 85 95     STA ram_0095
loc_A7A9:
C D 1 - - - 0x00A7B9 02:A7A9: A9 01     LDA #$01
C - - - - - 0x00A7BB 02:A7AB: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00A7BE 02:A7AE: 20 81 A9  JSR sub_A981
C - - - - - 0x00A7C1 02:A7B1: A9 0F     LDA #con_btns_Dpad
C - - - - - 0x00A7C3 02:A7B3: 2D 26 00  AND ram_btn_press
C - - - - - 0x00A7C6 02:A7B6: D0 12     BNE bra_A7CA
C - - - - - 0x00A7C8 02:A7B8: AD 24 00  LDA ram_btn_hold
C - - - - - 0x00A7CB 02:A7BB: 29 0F     AND #con_btns_Dpad
C - - - - - 0x00A7CD 02:A7BD: F0 49     BEQ bra_A808
C - - - - - 0x00A7CF 02:A7BF: E6 95     INC ram_0095
C - - - - - 0x00A7D1 02:A7C1: A6 95     LDX ram_0095
C - - - - - 0x00A7D3 02:A7C3: E0 08     CPX #$08
C - - - - - 0x00A7D5 02:A7C5: B0 03     BCS bra_A7CA
C - - - - - 0x00A7D7 02:A7C7: 4C 0C A8  JMP loc_A80C
bra_A7CA:
C - - - - - 0x00A7DA 02:A7CA: 48        PHA
C - - - - - 0x00A7DB 02:A7CB: A9 18     LDA #con_sound_select
C - - - - - 0x00A7DD 02:A7CD: 20 7E C0  JSR sub_0x00C920_prepare_sound
C - - - - - 0x00A7E0 02:A7D0: 68        PLA
C - - - - - 0x00A7E1 02:A7D1: AA        TAX
C - - - - - 0x00A7E2 02:A7D2: 29 0C     AND #$0C
C - - - - - 0x00A7E4 02:A7D4: F0 1A     BEQ bra_A7F0
C - - - - - 0x00A7E6 02:A7D6: A2 01     LDX #$01
C - - - - - 0x00A7E8 02:A7D8: 29 08     AND #$08
C - - - - - 0x00A7EA 02:A7DA: D0 02     BNE bra_A7DE
C - - - - - 0x00A7EC 02:A7DC: A2 FF     LDX #$FF
bra_A7DE:
C - - - - - 0x00A7EE 02:A7DE: A4 94     LDY ram_0094
C - - - - - 0x00A7F0 02:A7E0: 8A        TXA
C - - - - - 0x00A7F1 02:A7E1: 18        CLC
C - - - - - 0x00A7F2 02:A7E2: 79 DA 03  ADC ram_ball_pos_X_hi,Y
C - - - - - 0x00A7F5 02:A7E5: 29 0F     AND #$0F
C - - - - - 0x00A7F7 02:A7E7: 99 DA 03  STA ram_ball_pos_X_hi,Y
C - - - - - 0x00A7FA 02:A7EA: 20 5F A9  JSR sub_A95F
C - - - - - 0x00A7FD 02:A7ED: 4C 08 A8  JMP loc_A808
bra_A7F0:
C - - - - - 0x00A800 02:A7F0: 8A        TXA
C - - - - - 0x00A801 02:A7F1: A2 01     LDX #$01
C - - - - - 0x00A803 02:A7F3: 4A        LSR
C - - - - - 0x00A804 02:A7F4: B0 02     BCS bra_A7F8
C - - - - - 0x00A806 02:A7F6: A2 FF     LDX #$FF
bra_A7F8:
C - - - - - 0x00A808 02:A7F8: 8A        TXA
C - - - - - 0x00A809 02:A7F9: 18        CLC
C - - - - - 0x00A80A 02:A7FA: 65 94     ADC ram_0094
C - - - - - 0x00A80C 02:A7FC: 10 02     BPL bra_A800
- - - - - - 0x00A80E 02:A7FE: A9 08     LDA #$08
bra_A800:
C - - - - - 0x00A810 02:A800: C9 09     CMP #$09
C - - - - - 0x00A812 02:A802: 90 02     BCC bra_A806
- - - - - - 0x00A814 02:A804: A9 00     LDA #$00
bra_A806:
C - - - - - 0x00A816 02:A806: 85 94     STA ram_0094
bra_A808:
loc_A808:
C D 1 - - - 0x00A818 02:A808: A9 00     LDA #$00
C - - - - - 0x00A81A 02:A80A: 85 95     STA ram_0095
loc_A80C:
C D 1 - - - 0x00A81C 02:A80C: A9 90     LDA #con_btn_A + con_btn_Start
C - - - - - 0x00A81E 02:A80E: 2D 26 00  AND ram_btn_press
C - - - - - 0x00A821 02:A811: D0 03     BNE bra_A816
C - - - - - 0x00A823 02:A813: 4C A9 A7  JMP loc_A7A9
bra_A816:
C - - - - - 0x00A826 02:A816: 20 A2 A8  JSR sub_A8A2
C - - - - - 0x00A829 02:A819: F0 08     BEQ bra_A823
C - - - - - 0x00A82B 02:A81B: A9 1B     LDA #con_sound_wrong_psw
C - - - - - 0x00A82D 02:A81D: 20 7E C0  JSR sub_0x00C920_prepare_sound
C - - - - - 0x00A830 02:A820: 4C A9 A7  JMP loc_A7A9
bra_A823:
C - - - - - 0x00A833 02:A823: 20 51 C0  JSR sub_0x00CABF_hide_sprites
C - - - - - 0x00A836 02:A826: A9 20     LDA #con_music_quiet
C - - - - - 0x00A838 02:A828: 20 7E C0  JSR sub_0x00C920_prepare_sound
C - - - - - 0x00A83B 02:A82B: A9 00     LDA #$00
bra_A82D_loop:
C - - - - - 0x00A83D 02:A82D: 48        PHA
C - - - - - 0x00A83E 02:A82E: A9 01     LDA #$01
C - - - - - 0x00A840 02:A830: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00A843 02:A833: 68        PLA
C - - - - - 0x00A844 02:A834: 38        SEC
C - - - - - 0x00A845 02:A835: E9 80     SBC #$80
C - - - - - 0x00A847 02:A837: AA        TAX
C - - - - - 0x00A848 02:A838: A5 3B     LDA ram_003B
C - - - - - 0x00A84A 02:A83A: E9 00     SBC #$00
C - - - - - 0x00A84C 02:A83C: 85 3B     STA ram_003B
C - - - - - 0x00A84E 02:A83E: 8A        TXA
C - - - - - 0x00A84F 02:A83F: B0 EC     BCS bra_A82D_loop
C - - - - - 0x00A851 02:A841: A9 00     LDA #$00
C - - - - - 0x00A853 02:A843: 85 3B     STA ram_003B
C - - - - - 0x00A855 02:A845: A9 0E     LDA #con_sound_fans
C - - - - - 0x00A857 02:A847: 20 7E C0  JSR sub_0x00C920_prepare_sound
C - - - - - 0x00A85A 02:A84A: A9 00     LDA #$00
bra_A84C_loop:
C - - - - - 0x00A85C 02:A84C: 48        PHA
C - - - - - 0x00A85D 02:A84D: A9 0A     LDA #$0A
C - - - - - 0x00A85F 02:A84F: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00A862 02:A852: A2 00     LDX #$00
C - - - - - 0x00A864 02:A854: A9 05     LDA #$05
C - - - - - 0x00A866 02:A856: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
C - - - - - 0x00A869 02:A859: A2 10     LDX #$10
C - - - - - 0x00A86B 02:A85B: A9 03     LDA #$03
C - - - - - 0x00A86D 02:A85D: 20 18 C0  JSR sub_0x00CAE4_load_screen_palette
C - - - - - 0x00A870 02:A860: 68        PLA
C - - - - - 0x00A871 02:A861: 85 2A     STA ram_002A
C - - - - - 0x00A873 02:A863: A2 00     LDX #$00
bra_A865_loop:
C - - - - - 0x00A875 02:A865: 8A        TXA
C - - - - - 0x00A876 02:A866: 29 03     AND #$03
C - - - - - 0x00A878 02:A868: F0 1C     BEQ bra_A886
C - - - - - 0x00A87A 02:A86A: E0 07     CPX #$07
C - - - - - 0x00A87C 02:A86C: F0 18     BEQ bra_A886
C - - - - - 0x00A87E 02:A86E: BD 83 03  LDA ram_buffer_pal_data,X
C - - - - - 0x00A881 02:A871: 48        PHA
C - - - - - 0x00A882 02:A872: 29 0F     AND #$0F
C - - - - - 0x00A884 02:A874: 85 2B     STA ram_002B
C - - - - - 0x00A886 02:A876: 68        PLA
C - - - - - 0x00A887 02:A877: 29 F0     AND #$F0
C - - - - - 0x00A889 02:A879: C5 2A     CMP ram_002A
C - - - - - 0x00A88B 02:A87B: F0 04     BEQ bra_A881
C - - - - - 0x00A88D 02:A87D: 90 02     BCC bra_A881
C - - - - - 0x00A88F 02:A87F: A5 2A     LDA ram_002A
bra_A881:
C - - - - - 0x00A891 02:A881: 05 2B     ORA ram_002B
C - - - - - 0x00A893 02:A883: 9D 83 03  STA ram_buffer_pal_data,X
bra_A886:
C - - - - - 0x00A896 02:A886: E8        INX
C - - - - - 0x00A897 02:A887: E0 20     CPX #$20
C - - - - - 0x00A899 02:A889: D0 DA     BNE bra_A865_loop
                                        INC ram_buffer_pal_flag
C - - - - - 0x00A8A0 02:A890: A5 2A     LDA ram_002A
C - - - - - 0x00A8A2 02:A892: 18        CLC
C - - - - - 0x00A8A3 02:A893: 69 10     ADC #$10
C - - - - - 0x00A8A5 02:A895: C9 30     CMP #$30
C - - - - - 0x00A8A7 02:A897: D0 B3     BNE bra_A84C_loop
C - - - - - 0x00A8A9 02:A899: AD A4 03  LDA ram_game_mode_flags
C - - - - - 0x00A8AC 02:A89C: 29 BF     AND #con_gm_continue ^ $FF
C - - - - - 0x00A8AE 02:A89E: 8D A4 03  STA ram_game_mode_flags
C - - - - - 0x00A8B1 02:A8A1: 60        RTS



sub_A8A2:
C - - - - - 0x00A8B2 02:A8A2: 20 5F A9  JSR sub_A95F
C - - - - - 0x00A8B5 02:A8A5: A2 00     LDX #$00
bra_A8A7_loop:
C - - - - - 0x00A8B7 02:A8A7: BD D5 03  LDA ram_03D5,X
C - - - - - 0x00A8BA 02:A8AA: 38        SEC
C - - - - - 0x00A8BB 02:A8AB: FD F1 A6  SBC tbl_A6F1,X
C - - - - - 0x00A8BE 02:A8AE: 9D D5 03  STA ram_03D5,X
C - - - - - 0x00A8C1 02:A8B1: E8        INX
C - - - - - 0x00A8C2 02:A8B2: E0 05     CPX #$05
C - - - - - 0x00A8C4 02:A8B4: D0 F1     BNE bra_A8A7_loop
C - - - - - 0x00A8C6 02:A8B6: A9 00     LDA #$00
C - - - - - 0x00A8C8 02:A8B8: 85 30     STA ram_0030
loc_A8BA:
C D 1 - - - 0x00A8CA 02:A8BA: A5 30     LDA ram_0030
C - - - - - 0x00A8CC 02:A8BC: 4A        LSR
C - - - - - 0x00A8CD 02:A8BD: 4A        LSR
C - - - - - 0x00A8CE 02:A8BE: 4A        LSR
C - - - - - 0x00A8CF 02:A8BF: 85 31     STA ram_0031
C - - - - - 0x00A8D1 02:A8C1: A9 08     LDA #$08
C - - - - - 0x00A8D3 02:A8C3: 85 32     STA ram_0032
bra_A8C5_loop:
C - - - - - 0x00A8D5 02:A8C5: A4 30     LDY ram_0030
C - - - - - 0x00A8D7 02:A8C7: B9 F6 A6  LDA tbl_A6F6,Y
C - - - - - 0x00A8DA 02:A8CA: 48        PHA
C - - - - - 0x00A8DB 02:A8CB: 4A        LSR
C - - - - - 0x00A8DC 02:A8CC: 4A        LSR
C - - - - - 0x00A8DD 02:A8CD: 4A        LSR
C - - - - - 0x00A8DE 02:A8CE: 4A        LSR
C - - - - - 0x00A8DF 02:A8CF: A8        TAY
C - - - - - 0x00A8E0 02:A8D0: 68        PLA
C - - - - - 0x00A8E1 02:A8D1: 29 0F     AND #$0F
C - - - - - 0x00A8E3 02:A8D3: AA        TAX
C - - - - - 0x00A8E4 02:A8D4: B9 D5 03  LDA ram_03D5,Y
bra_A8D7_loop:
C - - - - - 0x00A8E7 02:A8D7: 4A        LSR
C - - - - - 0x00A8E8 02:A8D8: CA        DEX
C - - - - - 0x00A8E9 02:A8D9: 10 FC     BPL bra_A8D7_loop
C - - - - - 0x00A8EB 02:A8DB: A6 31     LDX ram_0031
C - - - - - 0x00A8ED 02:A8DD: 76 2A     ROR ram_002A,X
C - - - - - 0x00A8EF 02:A8DF: E6 30     INC ram_0030
C - - - - - 0x00A8F1 02:A8E1: A5 30     LDA ram_0030
C - - - - - 0x00A8F3 02:A8E3: C9 24     CMP #$24
C - - - - - 0x00A8F5 02:A8E5: F0 07     BEQ bra_A8EE
C - - - - - 0x00A8F7 02:A8E7: C6 32     DEC ram_0032
C - - - - - 0x00A8F9 02:A8E9: D0 DA     BNE bra_A8C5_loop
C - - - - - 0x00A8FB 02:A8EB: 4C BA A8  JMP loc_A8BA
bra_A8EE:
C - - - - - 0x00A8FE 02:A8EE: A5 2E     LDA ram_002E
C - - - - - 0x00A900 02:A8F0: 4A        LSR
C - - - - - 0x00A901 02:A8F1: 4A        LSR
C - - - - - 0x00A902 02:A8F2: 4A        LSR
C - - - - - 0x00A903 02:A8F3: 4A        LSR
C - - - - - 0x00A904 02:A8F4: 85 2E     STA ram_002E
C - - - - - 0x00A906 02:A8F6: A5 2D     LDA ram_002D
C - - - - - 0x00A908 02:A8F8: 29 80     AND #$80
C - - - - - 0x00A90A 02:A8FA: 4A        LSR
C - - - - - 0x00A90B 02:A8FB: 4A        LSR
C - - - - - 0x00A90C 02:A8FC: 4A        LSR
C - - - - - 0x00A90D 02:A8FD: 4A        LSR
C - - - - - 0x00A90E 02:A8FE: AA        TAX
C - - - - - 0x00A90F 02:A8FF: AD A4 03  LDA ram_game_mode_flags
C - - - - - 0x00A912 02:A902: 29 F7     AND #con_gm_team_select ^ $FF
C - - - - - 0x00A914 02:A904: 8D A4 03  STA ram_game_mode_flags
C - - - - - 0x00A917 02:A907: 8A        TXA
C - - - - - 0x00A918 02:A908: 0D A4 03  ORA ram_game_mode_flags
C - - - - - 0x00A91B 02:A90B: 8D A4 03  STA ram_game_mode_flags
C - - - - - 0x00A91E 02:A90E: A5 2C     LDA ram_002C
C - - - - - 0x00A920 02:A910: 8D AC 03  STA ram_team_ban + 1
C - - - - - 0x00A923 02:A913: A5 2B     LDA ram_002B
C - - - - - 0x00A925 02:A915: 8D AB 03  STA ram_team_ban
C - - - - - 0x00A928 02:A918: A5 2A     LDA ram_002A
C - - - - - 0x00A92A 02:A91A: 48        PHA
C - - - - - 0x00A92B 02:A91B: 29 0F     AND #$0F
C - - - - - 0x00A92D 02:A91D: 8D AA 03  STA ram_team_id + 1
C - - - - - 0x00A930 02:A920: 68        PLA
C - - - - - 0x00A931 02:A921: 4A        LSR
C - - - - - 0x00A932 02:A922: 4A        LSR
C - - - - - 0x00A933 02:A923: 4A        LSR
C - - - - - 0x00A934 02:A924: 4A        LSR
C - - - - - 0x00A935 02:A925: 8D A9 03  STA ram_team_id
C - - - - - 0x00A938 02:A928: A9 00     LDA #$00
C - - - - - 0x00A93A 02:A92A: 85 31     STA ram_0031
C - - - - - 0x00A93C 02:A92C: A5 2E     LDA ram_002E
C - - - - - 0x00A93E 02:A92E: 85 30     STA ram_0030
C - - - - - 0x00A940 02:A930: A5 2D     LDA ram_002D
C - - - - - 0x00A942 02:A932: 48        PHA
C - - - - - 0x00A943 02:A933: 29 80     AND #$80
C - - - - - 0x00A945 02:A935: 85 2D     STA ram_002D
C - - - - - 0x00A947 02:A937: 68        PLA
C - - - - - 0x00A948 02:A938: 0A        ASL
C - - - - - 0x00A949 02:A939: 0A        ASL
C - - - - - 0x00A94A 02:A93A: 26 31     ROL ram_0031
C - - - - - 0x00A94C 02:A93C: 0A        ASL
C - - - - - 0x00A94D 02:A93D: 26 31     ROL ram_0031
C - - - - - 0x00A94F 02:A93F: 0A        ASL
C - - - - - 0x00A950 02:A940: 26 31     ROL ram_0031
C - - - - - 0x00A952 02:A942: 05 30     ORA ram_0030
C - - - - - 0x00A954 02:A944: 85 30     STA ram_0030
C - - - - - 0x00A956 02:A946: A2 00     LDX #$00
bra_A948_loop:
C - - - - - 0x00A958 02:A948: A5 30     LDA ram_0030
C - - - - - 0x00A95A 02:A94A: 38        SEC
C - - - - - 0x00A95B 02:A94B: F5 2A     SBC ram_002A,X
C - - - - - 0x00A95D 02:A94D: 85 30     STA ram_0030
C - - - - - 0x00A95F 02:A94F: A5 31     LDA ram_0031
C - - - - - 0x00A961 02:A951: E9 00     SBC #$00
C - - - - - 0x00A963 02:A953: 85 31     STA ram_0031
C - - - - - 0x00A965 02:A955: E8        INX
C - - - - - 0x00A966 02:A956: E0 04     CPX #$04
C - - - - - 0x00A968 02:A958: D0 EE     BNE bra_A948_loop
C - - - - - 0x00A96A 02:A95A: A5 30     LDA ram_0030
C - - - - - 0x00A96C 02:A95C: 05 31     ORA ram_0031
C - - - - - 0x00A96E 02:A95E: 60        RTS



sub_A95F:
C - - - - - 0x00A96F 02:A95F: A2 00     LDX #$00
C - - - - - 0x00A971 02:A961: A0 00     LDY #$00
bra_A963_loop:
C - - - - - 0x00A973 02:A963: BD DA 03  LDA ram_ball_pos_X_hi,X
C - - - - - 0x00A976 02:A966: 0A        ASL
C - - - - - 0x00A977 02:A967: 0A        ASL
C - - - - - 0x00A978 02:A968: 0A        ASL
C - - - - - 0x00A979 02:A969: 0A        ASL
C - - - - - 0x00A97A 02:A96A: 1D DB 03  ORA ram_03DB,X
C - - - - - 0x00A97D 02:A96D: 99 D5 03  STA ram_03D5,Y
C - - - - - 0x00A980 02:A970: E8        INX
C - - - - - 0x00A981 02:A971: E8        INX
C - - - - - 0x00A982 02:A972: C8        INY
C - - - - - 0x00A983 02:A973: C0 04     CPY #$04
C - - - - - 0x00A985 02:A975: D0 EC     BNE bra_A963_loop
C - - - - - 0x00A987 02:A977: AD E2 03  LDA ram_ball_push_anim_id
C - - - - - 0x00A98A 02:A97A: 8D D9 03  STA ram_03D9
C - - - - - 0x00A98D 02:A97D: 20 1A A7  JSR sub_A71A
C - - - - - 0x00A990 02:A980: 60        RTS



sub_A981:
C - - - - - 0x00A991 02:A981: C6 96     DEC ram_0096
C - - - - - 0x00A993 02:A983: 10 26     BPL bra_A9AB_RTS
C - - - - - 0x00A995 02:A985: A9 04     LDA #$04
C - - - - - 0x00A997 02:A987: 85 96     STA ram_0096
C - - - - - 0x00A999 02:A989: A2 F8     LDX #$F8
C - - - - - 0x00A99B 02:A98B: E6 97     INC ram_0097
C - - - - - 0x00A99D 02:A98D: A5 97     LDA ram_0097
C - - - - - 0x00A99F 02:A98F: 4A        LSR
C - - - - - 0x00A9A0 02:A990: 90 02     BCC bra_A994
C - - - - - 0x00A9A2 02:A992: A2 6F     LDX #$6F
bra_A994:
C - - - - - 0x00A9A4 02:A994: 8E 00 02  STX ram_spr_Y
C - - - - - 0x00A9A7 02:A997: A5 94     LDA ram_0094
C - - - - - 0x00A9A9 02:A999: 0A        ASL
C - - - - - 0x00A9AA 02:A99A: 0A        ASL
C - - - - - 0x00A9AB 02:A99B: 0A        ASL
C - - - - - 0x00A9AC 02:A99C: 69 88     ADC #$88
C - - - - - 0x00A9AE 02:A99E: 8D 03 02  STA ram_spr_X
C - - - - - 0x00A9B1 02:A9A1: A9 5D     LDA #$5D
C - - - - - 0x00A9B3 02:A9A3: 8D 01 02  STA ram_spr_T
C - - - - - 0x00A9B6 02:A9A6: A9 00     LDA #$00
C - - - - - 0x00A9B8 02:A9A8: 8D 02 02  STA ram_spr_A
bra_A9AB_RTS:
C - - - - - 0x00A9BB 02:A9AB: 60        RTS



tbl_A9AC:
- D 1 - I - 0x00A9BC 02:A9AC: 08        .byte $08   ; 
- D 1 - I - 0x00A9BD 02:A9AD: 47        .byte $47   ; 
- D 1 - I - 0x00A9BE 02:A9AE: 23        .byte $23   ; 
- D 1 - I - 0x00A9BF 02:A9AF: 50        .byte $50   ; 
- D 1 - I - 0x00A9C0 02:A9B0: 41        .byte $41   ; 
- D 1 - I - 0x00A9C1 02:A9B1: 53        .byte $53   ; 
- D 1 - I - 0x00A9C2 02:A9B2: 53        .byte $53   ; 
- D 1 - I - 0x00A9C3 02:A9B3: 57        .byte $57   ; 
- D 1 - I - 0x00A9C4 02:A9B4: 4F        .byte $4F   ; 
- D 1 - I - 0x00A9C5 02:A9B5: 52        .byte $52   ; 
- D 1 - I - 0x00A9C6 02:A9B6: 44        .byte $44   ; 
- D 1 - I - 0x00A9C7 02:A9B7: 00        .byte $00   ; 



sub_0x00B010:
C - - - - - 0x00B010 02:B000: 20 07 B0  JSR sub_B007
C - - - - - 0x00B013 02:B003: 20 F1 B3  JSR sub_B3F1
C - - - - - 0x00B016 02:B006: 60        RTS



sub_B007:
C - - - - - 0x00B017 02:B007: AD 28 00  LDA ram_byte_for_2000
C - - - - - 0x00B01A 02:B00A: 09 01     ORA #$01
C - - - - - 0x00B01C 02:B00C: 8D 28 00  STA ram_byte_for_2000
C - - - - - 0x00B01F 02:B00F: A9 40     LDA #$40
C - - - - - 0x00B021 02:B011: 8D DB 00  STA ram_00DB
C - - - - - 0x00B024 02:B014: A9 20     LDA #$20
C - - - - - 0x00B026 02:B016: 8D DC 00  STA ram_00DC
C - - - - - 0x00B029 02:B019: A9 5F     LDA #< tbl_B25F
C - - - - - 0x00B02B 02:B01B: 8D D8 00  STA ram_00D8
C - - - - - 0x00B02E 02:B01E: A9 B2     LDA #> tbl_B25F
C - - - - - 0x00B030 02:B020: 8D D9 00  STA ram_00D9
loc_B023_loop:
bra_B023_loop:
C D 1 - - - 0x00B033 02:B023: A9 01     LDA #$01
C - - - - - 0x00B035 02:B025: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00B038 02:B028: AD 7D 03  LDA ram_buffer_bg_flag
C - - - - - 0x00B03B 02:B02B: D0 F6     BNE bra_B023_loop
C - - - - - 0x00B03D 02:B02D: A9 01     LDA #$01
C - - - - - 0x00B03F 02:B02F: 8D 7D 03  STA ram_buffer_bg_flag
C - - - - - 0x00B042 02:B032: A9 20     LDA #$20
C - - - - - 0x00B044 02:B034: 8D 0D 03  STA ram_buffer_bg_hi
C - - - - - 0x00B047 02:B037: AD DB 00  LDA ram_00DB
C - - - - - 0x00B04A 02:B03A: 8D 0E 03  STA ram_buffer_bg_lo
C - - - - - 0x00B04D 02:B03D: AD DC 00  LDA ram_00DC
C - - - - - 0x00B050 02:B040: 8D 0F 03  STA ram_buffer_bg_cnt
C - - - - - 0x00B053 02:B043: A9 00     LDA #$00
C - - - - - 0x00B055 02:B045: 8D 31 03  STA ram_0330
C - - - - - 0x00B058 02:B048: A9 80     LDA #$80
C - - - - - 0x00B05A 02:B04A: 8D 7D 03  STA ram_buffer_bg_flag
C - - - - - 0x00B05D 02:B04D: AD DB 00  LDA ram_00DB
C - - - - - 0x00B060 02:B050: 18        CLC
C - - - - - 0x00B061 02:B051: 69 20     ADC #$20
C - - - - - 0x00B063 02:B053: 8D DB 00  STA ram_00DB
C - - - - - 0x00B066 02:B056: AD DC 00  LDA ram_00DC
C - - - - - 0x00B069 02:B059: 69 00     ADC #$00
C - - - - - 0x00B06B 02:B05B: 8D DC 00  STA ram_00DC
C - - - - - 0x00B06E 02:B05E: A2 03     LDX #$03
bra_B060_loop:
C - - - - - 0x00B070 02:B060: A0 00     LDY #$00
C - - - - - 0x00B072 02:B062: B1 D8     LDA (ram_00D8),Y
C - - - - - 0x00B074 02:B064: D0 06     BNE bra_B06C
C - - - - - 0x00B076 02:B066: 8D 0D 03  STA ram_buffer_bg_hi
C - - - - - 0x00B079 02:B069: 4C C0 B0  JMP loc_B0C0
bra_B06C:
C - - - - - 0x00B07C 02:B06C: 29 80     AND #$80
C - - - - - 0x00B07E 02:B06E: D0 25     BNE bra_B095
C - - - - - 0x00B080 02:B070: B1 D8     LDA (ram_00D8),Y
C - - - - - 0x00B082 02:B072: 8D DD 00  STA ram_00DD
C - - - - - 0x00B085 02:B075: C8        INY
bra_B076_loop:
C - - - - - 0x00B086 02:B076: B1 D8     LDA (ram_00D8),Y
C - - - - - 0x00B088 02:B078: 9D 0D 03  STA ram_buffer_bg_hi,X
C - - - - - 0x00B08B 02:B07B: E8        INX
C - - - - - 0x00B08C 02:B07C: CE DD 00  DEC ram_00DD
C - - - - - 0x00B08F 02:B07F: D0 F5     BNE bra_B076_loop
C - - - - - 0x00B091 02:B081: AD D8 00  LDA ram_00D8
C - - - - - 0x00B094 02:B084: 18        CLC
C - - - - - 0x00B095 02:B085: 69 02     ADC #$02
C - - - - - 0x00B097 02:B087: 8D D8 00  STA ram_00D8
C - - - - - 0x00B09A 02:B08A: AD D9 00  LDA ram_00D9
C - - - - - 0x00B09D 02:B08D: 69 00     ADC #$00
C - - - - - 0x00B09F 02:B08F: 8D D9 00  STA ram_00D9
C - - - - - 0x00B0A2 02:B092: 4C B9 B0  JMP loc_B0B9
bra_B095:
C - - - - - 0x00B0A5 02:B095: B1 D8     LDA (ram_00D8),Y
C - - - - - 0x00B0A7 02:B097: 29 7F     AND #$7F
C - - - - - 0x00B0A9 02:B099: 8D DD 00  STA ram_00DD
bra_B09C_loop:
C - - - - - 0x00B0AC 02:B09C: C8        INY
C - - - - - 0x00B0AD 02:B09D: B1 D8     LDA (ram_00D8),Y
C - - - - - 0x00B0AF 02:B09F: 9D 0D 03  STA ram_buffer_bg_hi,X
C - - - - - 0x00B0B2 02:B0A2: E8        INX
C - - - - - 0x00B0B3 02:B0A3: CE DD 00  DEC ram_00DD
C - - - - - 0x00B0B6 02:B0A6: D0 F4     BNE bra_B09C_loop
C - - - - - 0x00B0B8 02:B0A8: C8        INY
C - - - - - 0x00B0B9 02:B0A9: 98        TYA
C - - - - - 0x00B0BA 02:B0AA: 18        CLC
C - - - - - 0x00B0BB 02:B0AB: 6D D8 00  ADC ram_00D8
C - - - - - 0x00B0BE 02:B0AE: 8D D8 00  STA ram_00D8
C - - - - - 0x00B0C1 02:B0B1: AD D9 00  LDA ram_00D9
C - - - - - 0x00B0C4 02:B0B4: 69 00     ADC #$00
C - - - - - 0x00B0C6 02:B0B6: 8D D9 00  STA ram_00D9
loc_B0B9:
C D 1 - - - 0x00B0C9 02:B0B9: E0 23     CPX #$23
C - - - - - 0x00B0CB 02:B0BB: D0 A3     BNE bra_B060_loop
C - - - - - 0x00B0CD 02:B0BD: 4C 23 B0  JMP loc_B023_loop



loc_B0C0:
C D 1 - - - 0x00B0D0 02:B0C0: 20 CF B0  JSR sub_B0CF
C - - - - - 0x00B0D3 02:B0C3: 20 51 B1  JSR sub_B151_print_half_time_goals
C - - - - - 0x00B0D6 02:B0C6: AD 28 00  LDA ram_byte_for_2000
C - - - - - 0x00B0D9 02:B0C9: 29 FE     AND #$FE
C - - - - - 0x00B0DB 02:B0CB: 8D 28 00  STA ram_byte_for_2000
C - - - - - 0x00B0DE 02:B0CE: 60        RTS



sub_B0CF:
C - - - - - 0x00B0DF 02:B0CF: AD A9 03  LDA ram_team_id
C - - - - - 0x00B0E2 02:B0D2: 8D DE 00  STA ram_00DE
C - - - - - 0x00B0E5 02:B0D5: A9 6A     LDA #$6A
C - - - - - 0x00B0E7 02:B0D7: 8D DB 00  STA ram_00DB
C - - - - - 0x00B0EA 02:B0DA: A9 21     LDA #$21
C - - - - - 0x00B0EC 02:B0DC: 8D DC 00  STA ram_00DC
C - - - - - 0x00B0EF 02:B0DF: 20 F6 B0  JSR sub_B0F6
C - - - - - 0x00B0F2 02:B0E2: AD AA 03  LDA ram_team_id + 1
C - - - - - 0x00B0F5 02:B0E5: 8D DE 00  STA ram_00DE
C - - - - - 0x00B0F8 02:B0E8: A9 73     LDA #$73
C - - - - - 0x00B0FA 02:B0EA: 8D DB 00  STA ram_00DB
C - - - - - 0x00B0FD 02:B0ED: A9 21     LDA #$21
C - - - - - 0x00B0FF 02:B0EF: 8D DC 00  STA ram_00DC
C - - - - - 0x00B102 02:B0F2: 20 F6 B0  JSR sub_B0F6
C - - - - - 0x00B105 02:B0F5: 60        RTS



sub_B0F6:
C - - - - - 0x00B106 02:B0F6: A9 C1     LDA #< tbl_B3C1
C - - - - - 0x00B108 02:B0F8: 8D D8 00  STA ram_00D8
C - - - - - 0x00B10B 02:B0FB: A9 B3     LDA #> tbl_B3C1
C - - - - - 0x00B10D 02:B0FD: 8D D9 00  STA ram_00D9
bra_B100_loop:
C - - - - - 0x00B110 02:B100: A9 01     LDA #$01
C - - - - - 0x00B112 02:B102: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00B115 02:B105: AD 7D 03  LDA ram_buffer_bg_flag
C - - - - - 0x00B118 02:B108: D0 F6     BNE bra_B100_loop
C - - - - - 0x00B11A 02:B10A: A9 01     LDA #$01
C - - - - - 0x00B11C 02:B10C: 8D 7D 03  STA ram_buffer_bg_flag
C - - - - - 0x00B11F 02:B10F: A9 03     LDA #$03
C - - - - - 0x00B121 02:B111: 8D 0D 03  STA ram_buffer_bg_hi
C - - - - - 0x00B124 02:B114: AD DB 00  LDA ram_00DB
C - - - - - 0x00B127 02:B117: 8D 0E 03  STA ram_buffer_bg_lo
C - - - - - 0x00B12A 02:B11A: AD DC 00  LDA ram_00DC
C - - - - - 0x00B12D 02:B11D: 8D 0F 03  STA ram_buffer_bg_cnt
C - - - - - 0x00B130 02:B120: A9 00     LDA #$00
C - - - - - 0x00B132 02:B122: 8D 13 03  STA ram_buffer_bg_data + 3
C - - - - - 0x00B135 02:B125: A9 80     LDA #$80
C - - - - - 0x00B137 02:B127: 8D 7D 03  STA ram_buffer_bg_flag
C - - - - - 0x00B13A 02:B12A: A9 00     LDA #$00
C - - - - - 0x00B13C 02:B12C: 8D DD 00  STA ram_00DD
C - - - - - 0x00B13F 02:B12F: A8        TAY
C - - - - - 0x00B140 02:B130: A2 03     LDX #$03
bra_B132_loop:
C - - - - - 0x00B142 02:B132: AD DE 00  LDA ram_00DE
C - - - - - 0x00B145 02:B135: 18        CLC
C - - - - - 0x00B146 02:B136: 6D DD 00  ADC ram_00DD
C - - - - - 0x00B149 02:B139: 8D DD 00  STA ram_00DD
C - - - - - 0x00B14C 02:B13C: CA        DEX
C - - - - - 0x00B14D 02:B13D: D0 F3     BNE bra_B132_loop
C - - - - - 0x00B14F 02:B13F: 98        TYA
C - - - - - 0x00B150 02:B140: A2 00     LDX #$00
C - - - - - 0x00B152 02:B142: AC DD 00  LDY ram_00DD
bra_B145_loop:
C - - - - - 0x00B155 02:B145: B1 D8     LDA (ram_00D8),Y
C - - - - - 0x00B157 02:B147: 9D 10 03  STA ram_buffer_bg_data,X
C - - - - - 0x00B15A 02:B14A: C8        INY
C - - - - - 0x00B15B 02:B14B: E8        INX
C - - - - - 0x00B15C 02:B14C: E0 03     CPX #$03
C - - - - - 0x00B15E 02:B14E: D0 F5     BNE bra_B145_loop
C - - - - - 0x00B160 02:B150: 60        RTS



sub_B151_print_half_time_goals:
C - - - - - 0x00B161 02:B151: AD A5 03  LDA ram_goals_half
                                        LDY #$00
C - - - - - 0x00B171 02:B161: 20 D1 B1  JSR sub_B1D1_print_goals
C - - - - - 0x00B174 02:B164: AD A6 03  LDA ram_goals_half + 1
                                        LDY #$02
C - - - - - 0x00B184 02:B174: 20 D1 B1  JSR sub_B1D1_print_goals
C - - - - - 0x00B187 02:B177: AD AE 03  LDA ram_half_time_cnt
C - - - - - 0x00B18A 02:B17A: F0 2E     BEQ bra_B1AA_it_is_first_half   ; пропустить рисовку голов 2го тайма
C - - - - - 0x00B18C 02:B17C: AD A7 03  LDA ram_goals_total
C - - - - - 0x00B18F 02:B17F: 38        SEC
C - - - - - 0x00B190 02:B180: ED A5 03  SBC ram_goals_half
                                        LDY #$04
C - - - - - 0x00B1A0 02:B190: 20 D1 B1  JSR sub_B1D1_print_goals
C - - - - - 0x00B1A3 02:B193: AD A8 03  LDA ram_goals_total + 1
C - - - - - 0x00B1A6 02:B196: 38        SEC
C - - - - - 0x00B1A7 02:B197: ED A6 03  SBC ram_goals_half + 1
                                        LDY #$06
C - - - - - 0x00B1B7 02:B1A7: 20 D1 B1  JSR sub_B1D1_print_goals
bra_B1AA_it_is_first_half:
C - - - - - 0x00B1BA 02:B1AA: AD A7 03  LDA ram_goals_total
                                        LDY #$08
C - - - - - 0x00B1CA 02:B1BA: 20 D1 B1  JSR sub_B1D1_print_goals
C - - - - - 0x00B1CD 02:B1BD: AD A8 03  LDA ram_goals_total + 1
                                        LDY #$0A
C - - - - - 0x00B1DD 02:B1CD: 20 D1 B1  JSR sub_B1D1_print_goals
C - - - - - 0x00B1E0 02:B1D0: 60        RTS



sub_B1D1_print_goals:
C - - - - - 0x00B1E4 02:B1D4: 8D E0 00  STA ram_00E0
                                        LDA tbl_B231_ppu,Y
                                        STA ram_00DB
                                        LDA tbl_B231_ppu + 1,Y
                                        STA ram_00DC
bra_B1D7_loop:
C - - - - - 0x00B1E7 02:B1D7: A9 01     LDA #$01
C - - - - - 0x00B1E9 02:B1D9: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00B1EC 02:B1DC: AD 7D 03  LDA ram_buffer_bg_flag
C - - - - - 0x00B1EF 02:B1DF: D0 F6     BNE bra_B1D7_loop
C - - - - - 0x00B1F1 02:B1E1: A9 01     LDA #$01
C - - - - - 0x00B1F3 02:B1E3: 8D 7D 03  STA ram_buffer_bg_flag
C - - - - - 0x00B1F6 02:B1E6: A9 02     LDA #$02
C - - - - - 0x00B1F8 02:B1E8: 8D 0D 03  STA ram_buffer_bg_hi
C - - - - - 0x00B1FB 02:B1EB: AD DB 00  LDA ram_00DB
C - - - - - 0x00B1FE 02:B1EE: 8D 0E 03  STA ram_buffer_bg_lo
C - - - - - 0x00B201 02:B1F1: AD DC 00  LDA ram_00DC
C - - - - - 0x00B204 02:B1F4: 8D 0F 03  STA ram_buffer_bg_cnt
C - - - - - 0x00B207 02:B1F7: A9 00     LDA #$00
C - - - - - 0x00B209 02:B1F9: 8D 12 03  STA ram_buffer_bg_data + 2
C - - - - - 0x00B20C 02:B1FC: A9 80     LDA #$80
C - - - - - 0x00B20E 02:B1FE: 8D 7D 03  STA ram_buffer_bg_flag
C - - - - - 0x00B211 02:B201: A9 0A     LDA #$0A
C - - - - - 0x00B213 02:B203: 8D E2 00  STA ram_00E2
C - - - - - 0x00B216 02:B206: A2 01     LDX #$01
bra_B208_loop:
C - - - - - 0x00B218 02:B208: 20 33 B2  JSR sub_B233_calculate_DEC
C - - - - - 0x00B21B 02:B20B: AD E4 00  LDA ram_00E4
C - - - - - 0x00B21E 02:B20E: 09 30     ORA #$30
C - - - - - 0x00B220 02:B210: 9D 10 03  STA ram_buffer_bg_data,X
C - - - - - 0x00B223 02:B213: CA        DEX
C - - - - - 0x00B224 02:B214: AD E0 00  LDA ram_00E0
C - - - - - 0x00B227 02:B217: 0D E1 00  ORA ram_00E1
C - - - - - 0x00B22A 02:B21A: D0 EC     BNE bra_B208_loop
C - - - - - 0x00B22C 02:B21C: 8A        TXA
C - - - - - 0x00B22D 02:B21D: 30 0B     BMI bra_B22A
loc_B21F:
C - - - - - 0x00B22F 02:B21F: A9 00     LDA #$00
C - - - - - 0x00B231 02:B221: 9D 10 03  STA ram_buffer_bg_data,X
C - - - - - 0x00B234 02:B224: CA        DEX
C - - - - - 0x00B235 02:B225: 30 03     BMI bra_B22A
- - - - - - 0x00B237 02:B227: 4C 1F B2  JMP loc_B21F
bra_B22A:
C - - - - - 0x00B23A 02:B22A: A9 00     LDA #$00
C - - - - - 0x00B23C 02:B22C: 8D E8 00  STA ram_00E8
C - - - - - 0x00B23F 02:B22F: 8D E9 00  STA ram_00E9
C - - - - - 0x00B242 02:B232: 60        RTS

tbl_B231_ppu:
    .word $21AA     ; 00 голы 1го тайма команды снизу
    .word $21B4     ; 02 голы 1го тайма команды сверху
    .word $21EA     ; 04 голы 2го тайма команды снизу
    .word $21F4     ; 06 голы 2го тайма команды сверху
    .word $222A     ; 08 общие голы команды снизу
    .word $2234     ; 0A общие голы команды сверху



sub_B233_calculate_DEC:
C - - - - - 0x00B243 02:B233: 8A        TXA
C - - - - - 0x00B244 02:B234: 48        PHA
C - - - - - 0x00B245 02:B235: A9 00     LDA #$00
C - - - - - 0x00B247 02:B237: 8D E4 00  STA ram_00E4
C - - - - - 0x00B24A 02:B23A: A2 10     LDX #$10
C - - - - - 0x00B24C 02:B23C: 2E E0 00  ROL ram_00E0
C - - - - - 0x00B24F 02:B23F: 2E E1 00  ROL ram_00E1
bra_B242_loop:
C - - - - - 0x00B252 02:B242: 2E E4 00  ROL ram_00E4
C - - - - - 0x00B255 02:B245: AD E4 00  LDA ram_00E4
C - - - - - 0x00B258 02:B248: CD E2 00  CMP ram_00E2
C - - - - - 0x00B25B 02:B24B: 90 06     BCC bra_B253
C - - - - - 0x00B25D 02:B24D: ED E2 00  SBC ram_00E2
C - - - - - 0x00B260 02:B250: 8D E4 00  STA ram_00E4
bra_B253:
C - - - - - 0x00B263 02:B253: 2E E0 00  ROL ram_00E0
C - - - - - 0x00B266 02:B256: 2E E1 00  ROL ram_00E1
C - - - - - 0x00B269 02:B259: CA        DEX
C - - - - - 0x00B26A 02:B25A: D0 E6     BNE bra_B242_loop
C - - - - - 0x00B26C 02:B25C: 68        PLA
C - - - - - 0x00B26D 02:B25D: AA        TAX
C - - - - - 0x00B26E 02:B25E: 60        RTS



tbl_B25F:
; байты nametable счета между таймами
- D 1 - I - 0x00B26F 02:B25F: 20        .byte $20   ; 
- D 1 - I - 0x00B270 02:B260: 80        .byte $80   ; 
- D 1 - I - 0x00B271 02:B261: 20        .byte $20   ; 
- D 1 - I - 0x00B272 02:B262: 80        .byte $80   ; 
- D 1 - I - 0x00B273 02:B263: 20        .byte $20   ; 
- D 1 - I - 0x00B274 02:B264: 80        .byte $80   ; 
- D 1 - I - 0x00B275 02:B265: 20        .byte $20   ; 
- D 1 - I - 0x00B276 02:B266: 80        .byte $80   ; 
- D 1 - I - 0x00B277 02:B267: 20        .byte $20   ; 
- D 1 - I - 0x00B278 02:B268: 80        .byte $80   ; 
- D 1 - I - 0x00B279 02:B269: 0E        .byte $0E   ; 
- D 1 - I - 0x00B27A 02:B26A: 80        .byte $80   ; 
- D 1 - I - 0x00B27B 02:B26B: 84        .byte $84   ; 
- D 1 - I - 0x00B27C 02:B26C: B9        .byte $B9   ; 
- D 1 - I - 0x00B27D 02:B26D: 80        .byte $80   ; 
- D 1 - I - 0x00B27E 02:B26E: 80        .byte $80   ; 
- D 1 - I - 0x00B27F 02:B26F: BB        .byte $BB   ; 
- D 1 - I - 0x00B280 02:B270: 0E        .byte $0E   ; 
- D 1 - I - 0x00B281 02:B271: 80        .byte $80   ; 
- D 1 - I - 0x00B282 02:B272: 08        .byte $08   ; 
- D 1 - I - 0x00B283 02:B273: 80        .byte $80   ; 
- D 1 - I - 0x00B284 02:B274: 90        .byte $90   ; 
- D 1 - I - 0x00B285 02:B275: A0        .byte $A0   ; 
- D 1 - I - 0x00B286 02:B276: A1        .byte $A1   ; 
- D 1 - I - 0x00B287 02:B277: A4        .byte $A4   ; 
- D 1 - I - 0x00B288 02:B278: A5        .byte $A5   ; 
- D 1 - I - 0x00B289 02:B279: B0        .byte $B0   ; 
- D 1 - I - 0x00B28A 02:B27A: 00        .byte $00   ; 
- D 1 - I - 0x00B28B 02:B27B: B9        .byte $B9   ; 
- D 1 - I - 0x00B28C 02:B27C: 80        .byte $80   ; 
- D 1 - I - 0x00B28D 02:B27D: 80        .byte $80   ; 
- D 1 - I - 0x00B28E 02:B27E: BB        .byte $BB   ; 
- D 1 - I - 0x00B28F 02:B27F: 00        .byte $00   ; 
- D 1 - I - 0x00B290 02:B280: A8        .byte $A8   ; 
- D 1 - I - 0x00B291 02:B281: A9        .byte $A9   ; 
- D 1 - I - 0x00B292 02:B282: AC        .byte $AC   ; 
- D 1 - I - 0x00B293 02:B283: AD        .byte $AD   ; 
- D 1 - I - 0x00B294 02:B284: B8        .byte $B8   ; 
- D 1 - I - 0x00B295 02:B285: 08        .byte $08   ; 
- D 1 - I - 0x00B296 02:B286: 80        .byte $80   ; 
- D 1 - I - 0x00B297 02:B287: 08        .byte $08   ; 
- D 1 - I - 0x00B298 02:B288: 80        .byte $80   ; 
- D 1 - I - 0x00B299 02:B289: 90        .byte $90   ; 
- D 1 - I - 0x00B29A 02:B28A: A2        .byte $A2   ; 
- D 1 - I - 0x00B29B 02:B28B: A3        .byte $A3   ; 
- D 1 - I - 0x00B29C 02:B28C: A6        .byte $A6   ; 
- D 1 - I - 0x00B29D 02:B28D: A7        .byte $A7   ; 
- D 1 - I - 0x00B29E 02:B28E: B2        .byte $B2   ; 
- D 1 - I - 0x00B29F 02:B28F: 00        .byte $00   ; 
- D 1 - I - 0x00B2A0 02:B290: B9        .byte $B9   ; 
- D 1 - I - 0x00B2A1 02:B291: 80        .byte $80   ; 
- D 1 - I - 0x00B2A2 02:B292: 80        .byte $80   ; 
- D 1 - I - 0x00B2A3 02:B293: BB        .byte $BB   ; 
- D 1 - I - 0x00B2A4 02:B294: 00        .byte $00   ; 
- D 1 - I - 0x00B2A5 02:B295: AA        .byte $AA   ; 
- D 1 - I - 0x00B2A6 02:B296: AB        .byte $AB   ; 
- D 1 - I - 0x00B2A7 02:B297: AE        .byte $AE   ; 
- D 1 - I - 0x00B2A8 02:B298: AF        .byte $AF   ; 
- D 1 - I - 0x00B2A9 02:B299: BA        .byte $BA   ; 
- D 1 - I - 0x00B2AA 02:B29A: 08        .byte $08   ; 
- D 1 - I - 0x00B2AB 02:B29B: 80        .byte $80   ; 
- D 1 - I - 0x00B2AC 02:B29C: 08        .byte $08   ; 
- D 1 - I - 0x00B2AD 02:B29D: 80        .byte $80   ; 
- D 1 - I - 0x00B2AE 02:B29E: 81        .byte $81   ; 
- D 1 - I - 0x00B2AF 02:B29F: 84        .byte $84   ; 
- D 1 - I - 0x00B2B0 02:B2A0: 0E        .byte $0E   ; 
- D 1 - I - 0x00B2B1 02:B2A1: 8A        .byte $8A   ; 
- D 1 - I - 0x00B2B2 02:B2A2: 81        .byte $81   ; 
- D 1 - I - 0x00B2B3 02:B2A3: 85        .byte $85   ; 
- D 1 - I - 0x00B2B4 02:B2A4: 08        .byte $08   ; 
- D 1 - I - 0x00B2B5 02:B2A5: 80        .byte $80   ; 
- D 1 - I - 0x00B2B6 02:B2A6: 08        .byte $08   ; 
- D 1 - I - 0x00B2B7 02:B2A7: 80        .byte $80   ; 
- D 1 - I - 0x00B2B8 02:B2A8: 81        .byte $81   ; 
- D 1 - I - 0x00B2B9 02:B2A9: 88        .byte $88   ; 
- D 1 - I - 0x00B2BA 02:B2AA: 06        .byte $06   ; 
- D 1 - I - 0x00B2BB 02:B2AB: 00        .byte $00   ; 
- D 1 - I - 0x00B2BC 02:B2AC: 82        .byte $82   ; 
- D 1 - I - 0x00B2BD 02:B2AD: 56        .byte $56   ; 
- D 1 - I - 0x00B2BE 02:B2AE: 53        .byte $53   ; 
- D 1 - I - 0x00B2BF 02:B2AF: 06        .byte $06   ; 
- D 1 - I - 0x00B2C0 02:B2B0: 00        .byte $00   ; 
- D 1 - I - 0x00B2C1 02:B2B1: 81        .byte $81   ; 
- D 1 - I - 0x00B2C2 02:B2B2: 89        .byte $89   ; 
- D 1 - I - 0x00B2C3 02:B2B3: 08        .byte $08   ; 
- D 1 - I - 0x00B2C4 02:B2B4: 80        .byte $80   ; 
- D 1 - I - 0x00B2C5 02:B2B5: 08        .byte $08   ; 
- D 1 - I - 0x00B2C6 02:B2B6: 80        .byte $80   ; 
- D 1 - I - 0x00B2C7 02:B2B7: 81        .byte $81   ; 
- D 1 - I - 0x00B2C8 02:B2B8: 88        .byte $88   ; 
- D 1 - I - 0x00B2C9 02:B2B9: 0E        .byte $0E   ; 
- D 1 - I - 0x00B2CA 02:B2BA: 00        .byte $00   ; 
- D 1 - I - 0x00B2CB 02:B2BB: 81        .byte $81   ; 
- D 1 - I - 0x00B2CC 02:B2BC: 89        .byte $89   ; 
- D 1 - I - 0x00B2CD 02:B2BD: 08        .byte $08   ; 
- D 1 - I - 0x00B2CE 02:B2BE: 80        .byte $80   ; 
- D 1 - I - 0x00B2CF 02:B2BF: 08        .byte $08   ; 
- D 1 - I - 0x00B2D0 02:B2C0: 80        .byte $80   ; 
- D 1 - I - 0x00B2D1 02:B2C1: 81        .byte $81   ; 
- D 1 - I - 0x00B2D2 02:B2C2: 88        .byte $88   ; 
- D 1 - I - 0x00B2D3 02:B2C3: 05        .byte $05   ; 
- D 1 - I - 0x00B2D4 02:B2C4: 00        .byte $00   ; 
- D 1 - I - 0x00B2D5 02:B2C5: 83        .byte $83   ; 
- D 1 - I - 0x00B2D6 02:B2C6: 31        .byte $31   ; 
- D 1 - I - 0x00B2D7 02:B2C7: 53        .byte $53   ; 
- D 1 - I - 0x00B2D8 02:B2C8: 54        .byte $54   ; 
- D 1 - I - 0x00B2D9 02:B2C9: 06        .byte $06   ; 
- D 1 - I - 0x00B2DA 02:B2CA: 00        .byte $00   ; 
- D 1 - I - 0x00B2DB 02:B2CB: 81        .byte $81   ; 
- D 1 - I - 0x00B2DC 02:B2CC: 89        .byte $89   ; 
- D 1 - I - 0x00B2DD 02:B2CD: 08        .byte $08   ; 
- D 1 - I - 0x00B2DE 02:B2CE: 80        .byte $80   ; 
- D 1 - I - 0x00B2DF 02:B2CF: 08        .byte $08   ; 
- D 1 - I - 0x00B2E0 02:B2D0: 80        .byte $80   ; 
- D 1 - I - 0x00B2E1 02:B2D1: 81        .byte $81   ; 
- D 1 - I - 0x00B2E2 02:B2D2: 88        .byte $88   ; 
- D 1 - I - 0x00B2E3 02:B2D3: 0E        .byte $0E   ; 
- D 1 - I - 0x00B2E4 02:B2D4: 00        .byte $00   ; 
- D 1 - I - 0x00B2E5 02:B2D5: 81        .byte $81   ; 
- D 1 - I - 0x00B2E6 02:B2D6: 89        .byte $89   ; 
- D 1 - I - 0x00B2E7 02:B2D7: 08        .byte $08   ; 
- D 1 - I - 0x00B2E8 02:B2D8: 80        .byte $80   ; 
- D 1 - I - 0x00B2E9 02:B2D9: 04        .byte $04   ; 
- D 1 - I - 0x00B2EA 02:B2DA: 82        .byte $82   ; 
- D 1 - I - 0x00B2EB 02:B2DB: 85        .byte $85   ; 
- D 1 - I - 0x00B2EC 02:B2DC: 80        .byte $80   ; 
- D 1 - I - 0x00B2ED 02:B2DD: B3        .byte $B3   ; 
- D 1 - I - 0x00B2EE 02:B2DE: B3        .byte $B3   ; 
- D 1 - I - 0x00B2EF 02:B2DF: 80        .byte $80   ; 
- D 1 - I - 0x00B2F0 02:B2E0: 88        .byte $88   ; 
- D 1 - I - 0x00B2F1 02:B2E1: 05        .byte $05   ; 
- D 1 - I - 0x00B2F2 02:B2E2: 00        .byte $00   ; 
- D 1 - I - 0x00B2F3 02:B2E3: 83        .byte $83   ; 
- D 1 - I - 0x00B2F4 02:B2E4: 32        .byte $32   ; 
- D 1 - I - 0x00B2F5 02:B2E5: 4E        .byte $4E   ; 
- D 1 - I - 0x00B2F6 02:B2E6: 44        .byte $44   ; 
- D 1 - I - 0x00B2F7 02:B2E7: 06        .byte $06   ; 
- D 1 - I - 0x00B2F8 02:B2E8: 00        .byte $00   ; 
- D 1 - I - 0x00B2F9 02:B2E9: 85        .byte $85   ; 
- D 1 - I - 0x00B2FA 02:B2EA: 89        .byte $89   ; 
- D 1 - I - 0x00B2FB 02:B2EB: 80        .byte $80   ; 
- D 1 - I - 0x00B2FC 02:B2EC: B3        .byte $B3   ; 
- D 1 - I - 0x00B2FD 02:B2ED: B3        .byte $B3   ; 
- D 1 - I - 0x00B2FE 02:B2EE: 80        .byte $80   ; 
- D 1 - I - 0x00B2FF 02:B2EF: 04        .byte $04   ; 
- D 1 - I - 0x00B300 02:B2F0: 82        .byte $82   ; 
- D 1 - I - 0x00B301 02:B2F1: 89        .byte $89   ; 
- D 1 - I - 0x00B302 02:B2F2: 90        .byte $90   ; 
- D 1 - I - 0x00B303 02:B2F3: 91        .byte $91   ; 
- D 1 - I - 0x00B304 02:B2F4: 94        .byte $94   ; 
- D 1 - I - 0x00B305 02:B2F5: 95        .byte $95   ; 
- D 1 - I - 0x00B306 02:B2F6: 8C        .byte $8C   ; 
- D 1 - I - 0x00B307 02:B2F7: 8D        .byte $8D   ; 
- D 1 - I - 0x00B308 02:B2F8: 8E        .byte $8E   ; 
- D 1 - I - 0x00B309 02:B2F9: 8F        .byte $8F   ; 
- D 1 - I - 0x00B30A 02:B2FA: 88        .byte $88   ; 
- D 1 - I - 0x00B30B 02:B2FB: 0E        .byte $0E   ; 
- D 1 - I - 0x00B30C 02:B2FC: 00        .byte $00   ; 
- D 1 - I - 0x00B30D 02:B2FD: 89        .byte $89   ; 
- D 1 - I - 0x00B30E 02:B2FE: 89        .byte $89   ; 
- D 1 - I - 0x00B30F 02:B2FF: 8C        .byte $8C   ; 
- D 1 - I - 0x00B310 02:B300: 8D        .byte $8D   ; 
- D 1 - I - 0x00B311 02:B301: 8E        .byte $8E   ; 
- D 1 - I - 0x00B312 02:B302: 8F        .byte $8F   ; 
- D 1 - I - 0x00B313 02:B303: 90        .byte $90   ; 
- D 1 - I - 0x00B314 02:B304: 91        .byte $91   ; 
- D 1 - I - 0x00B315 02:B305: 94        .byte $94   ; 
- D 1 - I - 0x00B316 02:B306: 95        .byte $95   ; 
- D 1 - I - 0x00B317 02:B307: 89        .byte $89   ; 
- D 1 - I - 0x00B318 02:B308: 92        .byte $92   ; 
- D 1 - I - 0x00B319 02:B309: 93        .byte $93   ; 
- D 1 - I - 0x00B31A 02:B30A: 96        .byte $96   ; 
- D 1 - I - 0x00B31B 02:B30B: 97        .byte $97   ; 
- D 1 - I - 0x00B31C 02:B30C: 92        .byte $92   ; 
- D 1 - I - 0x00B31D 02:B30D: 93        .byte $93   ; 
- D 1 - I - 0x00B31E 02:B30E: 96        .byte $96   ; 
- D 1 - I - 0x00B31F 02:B30F: 97        .byte $97   ; 
- D 1 - I - 0x00B320 02:B310: 88        .byte $88   ; 
- D 1 - I - 0x00B321 02:B311: 05        .byte $05   ; 
- D 1 - I - 0x00B322 02:B312: 00        .byte $00   ; 
- D 1 - I - 0x00B323 02:B313: 85        .byte $85   ; 
- D 1 - I - 0x00B324 02:B314: 54        .byte $54   ; 
- D 1 - I - 0x00B325 02:B315: 4F        .byte $4F   ; 
- D 1 - I - 0x00B326 02:B316: 54        .byte $54   ; 
- D 1 - I - 0x00B327 02:B317: 41        .byte $41   ; 
- D 1 - I - 0x00B328 02:B318: 4C        .byte $4C   ; 
- D 1 - I - 0x00B329 02:B319: 04        .byte $04   ; 
- D 1 - I - 0x00B32A 02:B31A: 00        .byte $00   ; 
- D 1 - I - 0x00B32B 02:B31B: 89        .byte $89   ; 
- D 1 - I - 0x00B32C 02:B31C: 89        .byte $89   ; 
- D 1 - I - 0x00B32D 02:B31D: 92        .byte $92   ; 
- D 1 - I - 0x00B32E 02:B31E: 93        .byte $93   ; 
- D 1 - I - 0x00B32F 02:B31F: 96        .byte $96   ; 
- D 1 - I - 0x00B330 02:B320: 97        .byte $97   ; 
- D 1 - I - 0x00B331 02:B321: 92        .byte $92   ; 
- D 1 - I - 0x00B332 02:B322: 93        .byte $93   ; 
- D 1 - I - 0x00B333 02:B323: 96        .byte $96   ; 
- D 1 - I - 0x00B334 02:B324: 97        .byte $97   ; 
- D 1 - I - 0x00B335 02:B325: 89        .byte $89   ; 
- D 1 - I - 0x00B336 02:B326: 94        .byte $94   ; 
- D 1 - I - 0x00B337 02:B327: 95        .byte $95   ; 
- D 1 - I - 0x00B338 02:B328: 90        .byte $90   ; 
- D 1 - I - 0x00B339 02:B329: 91        .byte $91   ; 
- D 1 - I - 0x00B33A 02:B32A: 94        .byte $94   ; 
- D 1 - I - 0x00B33B 02:B32B: 95        .byte $95   ; 
- D 1 - I - 0x00B33C 02:B32C: 90        .byte $90   ; 
- D 1 - I - 0x00B33D 02:B32D: 91        .byte $91   ; 
- D 1 - I - 0x00B33E 02:B32E: 88        .byte $88   ; 
- D 1 - I - 0x00B33F 02:B32F: 0E        .byte $0E   ; 
- D 1 - I - 0x00B340 02:B330: 00        .byte $00   ; 
- D 1 - I - 0x00B341 02:B331: 89        .byte $89   ; 
- D 1 - I - 0x00B342 02:B332: 89        .byte $89   ; 
- D 1 - I - 0x00B343 02:B333: 94        .byte $94   ; 
- D 1 - I - 0x00B344 02:B334: 95        .byte $95   ; 
- D 1 - I - 0x00B345 02:B335: 90        .byte $90   ; 
- D 1 - I - 0x00B346 02:B336: 91        .byte $91   ; 
- D 1 - I - 0x00B347 02:B337: 94        .byte $94   ; 
- D 1 - I - 0x00B348 02:B338: 95        .byte $95   ; 
- D 1 - I - 0x00B349 02:B339: 90        .byte $90   ; 
- D 1 - I - 0x00B34A 02:B33A: 91        .byte $91   ; 
- D 1 - I - 0x00B34B 02:B33B: 89        .byte $89   ; 
- D 1 - I - 0x00B34C 02:B33C: 96        .byte $96   ; 
- D 1 - I - 0x00B34D 02:B33D: 97        .byte $97   ; 
- D 1 - I - 0x00B34E 02:B33E: 92        .byte $92   ; 
- D 1 - I - 0x00B34F 02:B33F: 93        .byte $93   ; 
- D 1 - I - 0x00B350 02:B340: 96        .byte $96   ; 
- D 1 - I - 0x00B351 02:B341: 97        .byte $97   ; 
- D 1 - I - 0x00B352 02:B342: 92        .byte $92   ; 
- D 1 - I - 0x00B353 02:B343: 93        .byte $93   ; 
- D 1 - I - 0x00B354 02:B344: 86        .byte $86   ; 
- D 1 - I - 0x00B355 02:B345: 0E        .byte $0E   ; 
- D 1 - I - 0x00B356 02:B346: 8B        .byte $8B   ; 
- D 1 - I - 0x00B357 02:B347: 89        .byte $89   ; 
- D 1 - I - 0x00B358 02:B348: 87        .byte $87   ; 
- D 1 - I - 0x00B359 02:B349: 96        .byte $96   ; 
- D 1 - I - 0x00B35A 02:B34A: 97        .byte $97   ; 
- D 1 - I - 0x00B35B 02:B34B: 92        .byte $92   ; 
- D 1 - I - 0x00B35C 02:B34C: 93        .byte $93   ; 
- D 1 - I - 0x00B35D 02:B34D: 96        .byte $96   ; 
- D 1 - I - 0x00B35E 02:B34E: 97        .byte $97   ; 
- D 1 - I - 0x00B35F 02:B34F: 92        .byte $92   ; 
- D 1 - I - 0x00B360 02:B350: 93        .byte $93   ; 
- D 1 - I - 0x00B361 02:B351: 8D        .byte $8D   ; 
- D 1 - I - 0x00B362 02:B352: 90        .byte $90   ; 
- D 1 - I - 0x00B363 02:B353: 91        .byte $91   ; 
- D 1 - I - 0x00B364 02:B354: 94        .byte $94   ; 
- D 1 - I - 0x00B365 02:B355: 95        .byte $95   ; 
- D 1 - I - 0x00B366 02:B356: 90        .byte $90   ; 
- D 1 - I - 0x00B367 02:B357: 91        .byte $91   ; 
- D 1 - I - 0x00B368 02:B358: 94        .byte $94   ; 
- D 1 - I - 0x00B369 02:B359: 95        .byte $95   ; 
- D 1 - I - 0x00B36A 02:B35A: 90        .byte $90   ; 
- D 1 - I - 0x00B36B 02:B35B: 91        .byte $91   ; 
- D 1 - I - 0x00B36C 02:B35C: 94        .byte $94   ; 
- D 1 - I - 0x00B36D 02:B35D: 95        .byte $95   ; 
- D 1 - I - 0x00B36E 02:B35E: 98        .byte $98   ; 
- D 1 - I - 0x00B36F 02:B35F: 06        .byte $06   ; 
- D 1 - I - 0x00B370 02:B360: 99        .byte $99   ; 
- D 1 - I - 0x00B371 02:B361: 8D        .byte $8D   ; 
- D 1 - I - 0x00B372 02:B362: 9C        .byte $9C   ; 
- D 1 - I - 0x00B373 02:B363: 90        .byte $90   ; 
- D 1 - I - 0x00B374 02:B364: 91        .byte $91   ; 
- D 1 - I - 0x00B375 02:B365: 94        .byte $94   ; 
- D 1 - I - 0x00B376 02:B366: 95        .byte $95   ; 
- D 1 - I - 0x00B377 02:B367: 90        .byte $90   ; 
- D 1 - I - 0x00B378 02:B368: 91        .byte $91   ; 
- D 1 - I - 0x00B379 02:B369: 94        .byte $94   ; 
- D 1 - I - 0x00B37A 02:B36A: 95        .byte $95   ; 
- D 1 - I - 0x00B37B 02:B36B: 90        .byte $90   ; 
- D 1 - I - 0x00B37C 02:B36C: 91        .byte $91   ; 
- D 1 - I - 0x00B37D 02:B36D: 94        .byte $94   ; 
- D 1 - I - 0x00B37E 02:B36E: 95        .byte $95   ; 
- D 1 - I - 0x00B37F 02:B36F: 8D        .byte $8D   ; 
- D 1 - I - 0x00B380 02:B370: 92        .byte $92   ; 
- D 1 - I - 0x00B381 02:B371: 93        .byte $93   ; 
- D 1 - I - 0x00B382 02:B372: 96        .byte $96   ; 
- D 1 - I - 0x00B383 02:B373: 97        .byte $97   ; 
- D 1 - I - 0x00B384 02:B374: 92        .byte $92   ; 
- D 1 - I - 0x00B385 02:B375: 93        .byte $93   ; 
- D 1 - I - 0x00B386 02:B376: 96        .byte $96   ; 
- D 1 - I - 0x00B387 02:B377: 97        .byte $97   ; 
- D 1 - I - 0x00B388 02:B378: 92        .byte $92   ; 
- D 1 - I - 0x00B389 02:B379: 93        .byte $93   ; 
- D 1 - I - 0x00B38A 02:B37A: 96        .byte $96   ; 
- D 1 - I - 0x00B38B 02:B37B: 97        .byte $97   ; 
- D 1 - I - 0x00B38C 02:B37C: 9A        .byte $9A   ; 
- D 1 - I - 0x00B38D 02:B37D: 06        .byte $06   ; 
- D 1 - I - 0x00B38E 02:B37E: 9B        .byte $9B   ; 
- D 1 - I - 0x00B38F 02:B37F: 8D        .byte $8D   ; 
- D 1 - I - 0x00B390 02:B380: 9E        .byte $9E   ; 
- D 1 - I - 0x00B391 02:B381: 92        .byte $92   ; 
- D 1 - I - 0x00B392 02:B382: 93        .byte $93   ; 
- D 1 - I - 0x00B393 02:B383: 96        .byte $96   ; 
- D 1 - I - 0x00B394 02:B384: 97        .byte $97   ; 
- D 1 - I - 0x00B395 02:B385: 92        .byte $92   ; 
- D 1 - I - 0x00B396 02:B386: 93        .byte $93   ; 
- D 1 - I - 0x00B397 02:B387: 96        .byte $96   ; 
- D 1 - I - 0x00B398 02:B388: 97        .byte $97   ; 
- D 1 - I - 0x00B399 02:B389: 92        .byte $92   ; 
- D 1 - I - 0x00B39A 02:B38A: 93        .byte $93   ; 
- D 1 - I - 0x00B39B 02:B38B: 96        .byte $96   ; 
- D 1 - I - 0x00B39C 02:B38C: 97        .byte $97   ; 
- D 1 - I - 0x00B39D 02:B38D: 0C        .byte $0C   ; 
- D 1 - I - 0x00B39E 02:B38E: 81        .byte $81   ; 
- D 1 - I - 0x00B39F 02:B38F: 81        .byte $81   ; 
- D 1 - I - 0x00B3A0 02:B390: 9D        .byte $9D   ; 
- D 1 - I - 0x00B3A1 02:B391: 06        .byte $06   ; 
- D 1 - I - 0x00B3A2 02:B392: B1        .byte $B1   ; 
- D 1 - I - 0x00B3A3 02:B393: 81        .byte $81   ; 
- D 1 - I - 0x00B3A4 02:B394: 9F        .byte $9F   ; 
- D 1 - I - 0x00B3A5 02:B395: 0C        .byte $0C   ; 
- D 1 - I - 0x00B3A6 02:B396: 81        .byte $81   ; 
- D 1 - I - 0x00B3A7 02:B397: 20        .byte $20   ; 
- D 1 - I - 0x00B3A8 02:B398: 83        .byte $83   ; 
- D 1 - I - 0x00B3A9 02:B399: 20        .byte $20   ; 
- D 1 - I - 0x00B3AA 02:B39A: 80        .byte $80   ; 
- D 1 - I - 0x00B3AB 02:B39B: 20        .byte $20   ; 
- D 1 - I - 0x00B3AC 02:B39C: 80        .byte $80   ; 
- D 1 - I - 0x00B3AD 02:B39D: 20        .byte $20   ; 
- D 1 - I - 0x00B3AE 02:B39E: 80        .byte $80   ; 
- D 1 - I - 0x00B3AF 02:B39F: 20        .byte $20   ; 
- D 1 - I - 0x00B3B0 02:B3A0: 80        .byte $80   ; 
- D 1 - I - 0x00B3B1 02:B3A1: 20        .byte $20   ; 
- D 1 - I - 0x00B3B2 02:B3A2: 80        .byte $80   ; 
- D 1 - I - 0x00B3B3 02:B3A3: 20        .byte $20   ; 
- D 1 - I - 0x00B3B4 02:B3A4: 80        .byte $80   ; 
- D 1 - I - 0x00B3B5 02:B3A5: 12        .byte $12   ; 
- D 1 - I - 0x00B3B6 02:B3A6: AA        .byte $AA   ; 
- D 1 - I - 0x00B3B7 02:B3A7: 84        .byte $84   ; 
- D 1 - I - 0x00B3B8 02:B3A8: 0F        .byte $0F   ; 
- D 1 - I - 0x00B3B9 02:B3A9: 0B        .byte $0B   ; 
- D 1 - I - 0x00B3BA 02:B3AA: 0E        .byte $0E   ; 
- D 1 - I - 0x00B3BB 02:B3AB: 0F        .byte $0F   ; 
- D 1 - I - 0x00B3BC 02:B3AC: 04        .byte $04   ; 
- D 1 - I - 0x00B3BD 02:B3AD: AA        .byte $AA   ; 
- D 1 - I - 0x00B3BE 02:B3AE: 04        .byte $04   ; 
- D 1 - I - 0x00B3BF 02:B3AF: 00        .byte $00   ; 
- D 1 - I - 0x00B3C0 02:B3B0: 02        .byte $02   ; 
- D 1 - I - 0x00B3C1 02:B3B1: AA        .byte $AA   ; 
- D 1 - I - 0x00B3C2 02:B3B2: 02        .byte $02   ; 
- D 1 - I - 0x00B3C3 02:B3B3: FF        .byte $FF   ; 
- D 1 - I - 0x00B3C4 02:B3B4: 04        .byte $04   ; 
- D 1 - I - 0x00B3C5 02:B3B5: 00        .byte $00   ; 
- D 1 - I - 0x00B3C6 02:B3B6: 02        .byte $02   ; 
- D 1 - I - 0x00B3C7 02:B3B7: FF        .byte $FF   ; 
- D 1 - I - 0x00B3C8 02:B3B8: 03        .byte $03   ; 
- D 1 - I - 0x00B3C9 02:B3B9: 0F        .byte $0F   ; 
- D 1 - I - 0x00B3CA 02:B3BA: 02        .byte $02   ; 
- D 1 - I - 0x00B3CB 02:B3BB: 00        .byte $00   ; 
- D 1 - I - 0x00B3CC 02:B3BC: 03        .byte $03   ; 
- D 1 - I - 0x00B3CD 02:B3BD: 0F        .byte $0F   ; 
- D 1 - I - 0x00B3CE 02:B3BE: 10        .byte $10   ; 
- D 1 - I - 0x00B3CF 02:B3BF: 00        .byte $00   ; 
- D 1 - I - 0x00B3D0 02:B3C0: 00        .byte $00   ; 



tbl_B3C1:
- D 1 - I - 0x00B3D1 02:B3C1: 42        .byte $42   ; 
- D 1 - I - 0x00B3D2 02:B3C2: 52        .byte $52   ; 
- D 1 - I - 0x00B3D3 02:B3C3: 41        .byte $41   ; 
- - - - - - 0x00B3D4 02:B3C4: 46        .byte $46   ; 
- - - - - - 0x00B3D5 02:B3C5: 52        .byte $52   ; 
- - - - - - 0x00B3D6 02:B3C6: 47        .byte $47   ; 
- - - - - - 0x00B3D7 02:B3C7: 49        .byte $49   ; 
- - - - - - 0x00B3D8 02:B3C8: 54        .byte $54   ; 
- - - - - - 0x00B3D9 02:B3C9: 41        .byte $41   ; 
- D 1 - I - 0x00B3DA 02:B3CA: 48        .byte $48   ; 
- D 1 - I - 0x00B3DB 02:B3CB: 4F        .byte $4F   ; 
- D 1 - I - 0x00B3DC 02:B3CC: 4C        .byte $4C   ; 
- D 1 - I - 0x00B3DD 02:B3CD: 41        .byte $41   ; 
- D 1 - I - 0x00B3DE 02:B3CE: 52        .byte $52   ; 
- D 1 - I - 0x00B3DF 02:B3CF: 47        .byte $47   ; 
- - - - - - 0x00B3E0 02:B3D0: 55        .byte $55   ; 
- - - - - - 0x00B3E1 02:B3D1: 52        .byte $52   ; 
- - - - - - 0x00B3E2 02:B3D2: 53        .byte $53   ; 
- - - - - - 0x00B3E3 02:B3D3: 55        .byte $55   ; 
- - - - - - 0x00B3E4 02:B3D4: 52        .byte $52   ; 
- - - - - - 0x00B3E5 02:B3D5: 55        .byte $55   ; 
- - - - - - 0x00B3E6 02:B3D6: 50        .byte $50   ; 
- - - - - - 0x00B3E7 02:B3D7: 4F        .byte $4F   ; 
- - - - - - 0x00B3E8 02:B3D8: 4C        .byte $4C   ; 
- - - - - - 0x00B3E9 02:B3D9: 45        .byte $45   ; 
- - - - - - 0x00B3EA 02:B3DA: 4E        .byte $4E   ; 
- - - - - - 0x00B3EB 02:B3DB: 47        .byte $47   ; 
- D 1 - I - 0x00B3EC 02:B3DC: 53        .byte $53   ; 
- D 1 - I - 0x00B3ED 02:B3DD: 50        .byte $50   ; 
- D 1 - I - 0x00B3EE 02:B3DE: 41        .byte $41   ; 
- D 1 - I - 0x00B3EF 02:B3DF: 43        .byte $43   ; 
- D 1 - I - 0x00B3F0 02:B3E0: 4F        .byte $4F   ; 
- D 1 - I - 0x00B3F1 02:B3E1: 4C        .byte $4C   ; 
- D 1 - I - 0x00B3F2 02:B3E2: 53        .byte $53   ; 
- D 1 - I - 0x00B3F3 02:B3E3: 43        .byte $43   ; 
- D 1 - I - 0x00B3F4 02:B3E4: 4F        .byte $4F   ; 
- D 1 - I - 0x00B3F5 02:B3E5: 46        .byte $46   ; 
- D 1 - I - 0x00B3F6 02:B3E6: 52        .byte $52   ; 
- D 1 - I - 0x00B3F7 02:B3E7: 41        .byte $41   ; 
- D 1 - I - 0x00B3F8 02:B3E8: 55        .byte $55   ; 
- D 1 - I - 0x00B3F9 02:B3E9: 53        .byte $53   ; 
- D 1 - I - 0x00B3FA 02:B3EA: 41        .byte $41   ; 
- - - - - - 0x00B3FB 02:B3EB: 4B        .byte $4B   ; 
- - - - - - 0x00B3FC 02:B3EC: 4F        .byte $4F   ; 
- - - - - - 0x00B3FD 02:B3ED: 52        .byte $52   ; 
- - - - - - 0x00B3FE 02:B3EE: 4A        .byte $4A   ; 
- - - - - - 0x00B3FF 02:B3EF: 50        .byte $50   ; 
- - - - - - 0x00B400 02:B3F0: 4E        .byte $4E   ; 



sub_B3F1:
; начальная позиция флагов на экране со счетом и пропуск этого экрана
C - - - - - 0x00B401 02:B3F1: A2 00     LDX #$00
bra_B3F3_loop:
C - - - - - 0x00B403 02:B3F3: BD AD B4  LDA tbl_B4AD,X
C - - - - - 0x00B406 02:B3F6: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00B409 02:B3F9: E8        INX
C - - - - - 0x00B40A 02:B3FA: E0 18     CPX #$18
C - - - - - 0x00B40C 02:B3FC: D0 F5     BNE bra_B3F3_loop
C - - - - - 0x00B40E 02:B3FE: A9 2C     LDA #$2C
C - - - - - 0x00B410 02:B400: 8D E3 00  STA ram_00E3
C - - - - - 0x00B413 02:B403: A9 01     LDA #$01
C - - - - - 0x00B415 02:B405: 8D E4 00  STA ram_00E4
C - - - - - 0x00B418 02:B408: A9 04     LDA #$04
C - - - - - 0x00B41A 02:B40A: 8D E5 00  STA ram_00E5
C - - - - - 0x00B41D 02:B40D: 8D E6 00  STA ram_00E6
C - - - - - 0x00B420 02:B410: A9 01     LDA #$01
C - - - - - 0x00B422 02:B412: 8D E7 00  STA ram_00E7
C - - - - - 0x00B425 02:B415: A9 21     LDA #$21
C - - - - - 0x00B427 02:B417: 8D E8 00  STA ram_00E8
C - - - - - 0x00B42A 02:B41A: A9 00     LDA #$00
C - - - - - 0x00B42C 02:B41C: 8D E9 00  STA ram_00E9
bra_B41F_loop:
C - - - - - 0x00B42F 02:B41F: A9 01     LDA #$01
C - - - - - 0x00B431 02:B421: 20 09 C0  JSR sub_0x00C619_delay
C - - - - - 0x00B434 02:B424: 20 58 B4  JSR sub_B458
C - - - - - 0x00B437 02:B427: 20 88 B4  JSR sub_B488
C - - - - - 0x00B43A 02:B42A: A9 90     LDA #con_btn_A + con_btn_Start
C - - - - - 0x00B43C 02:B42C: 2D 26 00  AND ram_btn_press
C - - - - - 0x00B43F 02:B42F: D0 21     BNE bra_B452
C - - - - - 0x00B441 02:B431: A9 01     LDA #$01
C - - - - - 0x00B443 02:B433: 8D E9 00  STA ram_00E9
bra_B436_loop:
C - - - - - 0x00B446 02:B436: AD E3 00  LDA ram_00E3
C - - - - - 0x00B449 02:B439: 38        SEC
C - - - - - 0x00B44A 02:B43A: E9 01     SBC #$01
C - - - - - 0x00B44C 02:B43C: 8D E3 00  STA ram_00E3
C - - - - - 0x00B44F 02:B43F: AD E4 00  LDA ram_00E4
C - - - - - 0x00B452 02:B442: E9 00     SBC #$00
C - - - - - 0x00B454 02:B444: 8D E4 00  STA ram_00E4
C - - - - - 0x00B457 02:B447: AD E3 00  LDA ram_00E3
C - - - - - 0x00B45A 02:B44A: 0D E4 00  ORA ram_00E4
C - - - - - 0x00B45D 02:B44D: D0 D0     BNE bra_B41F_loop
                                        RTS
bra_B452:
C - - - - - 0x00B462 02:B452: AD E9 00  LDA ram_00E9
C - - - - - 0x00B465 02:B455: F0 DF     BEQ bra_B436_loop
C D 1 - - - 0x00B467 02:B457: 60        RTS



sub_B458:
C - - - - - 0x00B468 02:B458: CE E5 00  DEC ram_00E5
C - - - - - 0x00B46B 02:B45B: D0 2A     BNE bra_B487_RTS
C - - - - - 0x00B46D 02:B45D: AD E7 00  LDA ram_00E7
C - - - - - 0x00B470 02:B460: 0A        ASL
C - - - - - 0x00B471 02:B461: 0A        ASL
C - - - - - 0x00B472 02:B462: 0A        ASL
C - - - - - 0x00B473 02:B463: 0A        ASL
C - - - - - 0x00B474 02:B464: AA        TAX
C - - - - - 0x00B475 02:B465: A0 00     LDY #$00
bra_B467_loop:
C - - - - - 0x00B477 02:B467: BD C5 B4  LDA tbl_B4C5,X
C - - - - - 0x00B47A 02:B46A: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x00B47D 02:B46D: E8        INX
C - - - - - 0x00B47E 02:B46E: C8        INY
C - - - - - 0x00B47F 02:B46F: C0 10     CPY #$10
C - - - - - 0x00B481 02:B471: D0 F4     BNE bra_B467_loop
C - - - - - 0x00B483 02:B473: EE E7 00  INC ram_00E7
C - - - - - 0x00B486 02:B476: AD E7 00  LDA ram_00E7
C - - - - - 0x00B489 02:B479: C9 03     CMP #$03
C - - - - - 0x00B48B 02:B47B: D0 05     BNE bra_B482
C - - - - - 0x00B48D 02:B47D: A9 00     LDA #$00
C - - - - - 0x00B48F 02:B47F: 8D E7 00  STA ram_00E7
bra_B482:
C - - - - - 0x00B492 02:B482: A9 04     LDA #$04
C - - - - - 0x00B494 02:B484: 8D E5 00  STA ram_00E5
bra_B487_RTS:
C - - - - - 0x00B497 02:B487: 60        RTS



sub_B488:
C - - - - - 0x00B498 02:B488: CE E6 00  DEC ram_00E6
C - - - - - 0x00B49B 02:B48B: D0 1F     BNE bra_B4AC_RTS
C - - - - - 0x00B49D 02:B48D: EE E8 00  INC ram_00E8
C - - - - - 0x00B4A0 02:B490: AD E8 00  LDA ram_00E8
C - - - - - 0x00B4A3 02:B493: C9 2D     CMP #$2D
C - - - - - 0x00B4A5 02:B495: D0 05     BNE bra_B49C
C - - - - - 0x00B4A7 02:B497: A9 21     LDA #$21
C - - - - - 0x00B4A9 02:B499: 8D E8 00  STA ram_00E8
bra_B49C:
C - - - - - 0x00B4AC 02:B49C: AD E8 00  LDA ram_00E8
C - - - - - 0x00B4AF 02:B49F: 8D 90 03  STA ram_buffer_pal_data + 13
                                        INC ram_buffer_pal_flag
C - - - - - 0x00B4B7 02:B4A7: A9 04     LDA #$04
C - - - - - 0x00B4B9 02:B4A9: 8D E6 00  STA ram_00E6
bra_B4AC_RTS:
C - - - - - 0x00B4BC 02:B4AC: 60        RTS



tbl_B4AD:
; параметры спрайтов флагов на экране со счетом (начальные байты)
- D 1 - - - 0x00B4BD 02:B4AD: 38        .byte $38   ; 
- D 1 - - - 0x00B4BE 02:B4AE: B5        .byte $B5   ; 
- D 1 - - - 0x00B4BF 02:B4AF: 00        .byte $00   ; 
- D 1 - - - 0x00B4C0 02:B4B0: 78        .byte $78   ; 
- D 1 - - - 0x00B4C1 02:B4B1: F0        .byte $F0   ; 
- D 1 - - - 0x00B4C2 02:B4B2: BD        .byte $BD   ; 
- D 1 - - - 0x00B4C3 02:B4B3: 00        .byte $00   ; 
- D 1 - - - 0x00B4C4 02:B4B4: 80        .byte $80   ; 
- D 1 - - - 0x00B4C5 02:B4B5: 38        .byte $38   ; 
- D 1 - - - 0x00B4C6 02:B4B6: B5        .byte $B5   ; 
- D 1 - - - 0x00B4C7 02:B4B7: 00        .byte $00   ; 
- D 1 - - - 0x00B4C8 02:B4B8: 8A        .byte $8A   ; 
- D 1 - - - 0x00B4C9 02:B4B9: F0        .byte $F0   ; 
- D 1 - - - 0x00B4CA 02:B4BA: BD        .byte $BD   ; 
- D 1 - - - 0x00B4CB 02:B4BB: 00        .byte $00   ; 
- D 1 - - - 0x00B4CC 02:B4BC: 92        .byte $92   ; 
- D 1 - - - 0x00B4CD 02:B4BD: 3F        .byte $3F   ; 
- D 1 - - - 0x00B4CE 02:B4BE: 69        .byte $69   ; 
- D 1 - - - 0x00B4CF 02:B4BF: 01        .byte $01   ; 
- D 1 - - - 0x00B4D0 02:B4C0: 68        .byte $68   ; 
- D 1 - - - 0x00B4D1 02:B4C1: 3F        .byte $3F   ; 
- D 1 - - - 0x00B4D2 02:B4C2: 69        .byte $69   ; 
- D 1 - - - 0x00B4D3 02:B4C3: 01        .byte $01   ; 
- D 1 - - - 0x00B4D4 02:B4C4: 90        .byte $90   ; 



tbl_B4C5:
; параметры спрайтов флагов на экране со счетом (анимация)
- D 1 - - - 0x00B4D5 02:B4C5: 38        .byte $38   ; 
- D 1 - - - 0x00B4D6 02:B4C6: B5        .byte $B5   ; 
- D 1 - - - 0x00B4D7 02:B4C7: 00        .byte $00   ; 
- D 1 - - - 0x00B4D8 02:B4C8: 78        .byte $78   ; 
- D 1 - - - 0x00B4D9 02:B4C9: F0        .byte $F0   ; 
- D 1 - - - 0x00B4DA 02:B4CA: BD        .byte $BD   ; 
- D 1 - - - 0x00B4DB 02:B4CB: 00        .byte $00   ; 
- D 1 - - - 0x00B4DC 02:B4CC: 80        .byte $80   ; 
- D 1 - - - 0x00B4DD 02:B4CD: 38        .byte $38   ; 
- D 1 - - - 0x00B4DE 02:B4CE: B5        .byte $B5   ; 
- D 1 - - - 0x00B4DF 02:B4CF: 00        .byte $00   ; 
- D 1 - - - 0x00B4E0 02:B4D0: 8A        .byte $8A   ; 
- D 1 - - - 0x00B4E1 02:B4D1: F0        .byte $F0   ; 
- D 1 - - - 0x00B4E2 02:B4D2: BD        .byte $BD   ; 
- D 1 - - - 0x00B4E3 02:B4D3: 00        .byte $00   ; 
- D 1 - - - 0x00B4E4 02:B4D4: 92        .byte $92   ; 

- D 1 - - - 0x00B4E5 02:B4D5: 38        .byte $38   ; 
- D 1 - - - 0x00B4E6 02:B4D6: B7        .byte $B7   ; 
- D 1 - - - 0x00B4E7 02:B4D7: 00        .byte $00   ; 
- D 1 - - - 0x00B4E8 02:B4D8: 78        .byte $78   ; 
- D 1 - - - 0x00B4E9 02:B4D9: 38        .byte $38   ; 
- D 1 - - - 0x00B4EA 02:B4DA: BD        .byte $BD   ; 
- D 1 - - - 0x00B4EB 02:B4DB: 00        .byte $00   ; 
- D 1 - - - 0x00B4EC 02:B4DC: 80        .byte $80   ; 
- D 1 - - - 0x00B4ED 02:B4DD: 38        .byte $38   ; 
- D 1 - - - 0x00B4EE 02:B4DE: B7        .byte $B7   ; 
- D 1 - - - 0x00B4EF 02:B4DF: 00        .byte $00   ; 
- D 1 - - - 0x00B4F0 02:B4E0: 8A        .byte $8A   ; 
- D 1 - - - 0x00B4F1 02:B4E1: 38        .byte $38   ; 
- D 1 - - - 0x00B4F2 02:B4E2: BD        .byte $BD   ; 
- D 1 - - - 0x00B4F3 02:B4E3: 00        .byte $00   ; 
- D 1 - - - 0x00B4F4 02:B4E4: 92        .byte $92   ; 

- D 1 - - - 0x00B4F5 02:B4E5: 38        .byte $38   ; 
- D 1 - - - 0x00B4F6 02:B4E6: BF        .byte $BF   ; 
- D 1 - - - 0x00B4F7 02:B4E7: 00        .byte $00   ; 
- D 1 - - - 0x00B4F8 02:B4E8: 78        .byte $78   ; 
- D 1 - - - 0x00B4F9 02:B4E9: F0        .byte $F0   ; 
- D 1 - - - 0x00B4FA 02:B4EA: BD        .byte $BD   ; 
- D 1 - - - 0x00B4FB 02:B4EB: 00        .byte $00   ; 
- D 1 - - - 0x00B4FC 02:B4EC: 80        .byte $80   ; 
- D 1 - - - 0x00B4FD 02:B4ED: 38        .byte $38   ; 
- D 1 - - - 0x00B4FE 02:B4EE: BF        .byte $BF   ; 
- D 1 - - - 0x00B4FF 02:B4EF: 00        .byte $00   ; 
- D 1 - - - 0x00B500 02:B4F0: 8A        .byte $8A   ; 
- D 1 - - - 0x00B501 02:B4F1: F0        .byte $F0   ; 
- D 1 - - - 0x00B502 02:B4F2: BD        .byte $BD   ; 
- D 1 - - - 0x00B503 02:B4F3: 00        .byte $00   ; 
- D 1 - - - 0x00B504 02:B4F4: 92        .byte $92   ; 



