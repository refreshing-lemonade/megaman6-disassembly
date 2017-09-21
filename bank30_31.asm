; 2 code banks

bank $30
org $8000

  db $44, $0E, $08, $02, $0F, $14           ; $308000 |

  JSR code_3FEBD1                           ; $308006 |
  JSR code_3FE5B6                           ; $308009 |
  LDA $11                                   ; $30800C |
  STA $03CE,x                               ; $30800E |
  JSR code_3FE5DF                           ; $308011 |
  LDA #$3C                                  ; $308014 |
  STA $05DF,x                               ; $308016 |
  LDA #$00                                  ; $308019 |
  STA $05C8,x                               ; $30801B |
code_30801E:
  LDA #$3C                                  ; $30801E |
  STA $05B1,x                               ; $308020 |
loc_60023:
  JSR code_3FEA1C                           ; $308023 |
  DEC $05DF,x                               ; $308026 |
  BNE loc_60059                             ; $308029 |
  LDX $8F                                   ; $30802B |
  LDY #$45                                  ; $30802D |
  JSR code_3FE522                           ; $30802F |
  LDA #$18                                  ; $308032 |
  JSR code_3080A6                           ; $308034 |
  LDY #$44                                  ; $308037 |
  JSR code_3FE522                           ; $308039 |
  LDY #$16                                  ; $30803C |
  JSR code_3FE5AB                           ; $30803E |
  BCS loc_60052                             ; $308041 |
  LDY $8F                                   ; $308043 |
  LDA $03CE,y                               ; $308045 |
  STA $03CE,x                               ; $308048 |
  LDA #$02                                  ; $30804B |
  JSR code_3FE8BC                           ; $30804D |
  LDX $8F                                   ; $308050 |
loc_60052:
  LDA #$3C                                  ; $308052 |
  STA $05DF,x                               ; $308054 |
  BNE loc_60023                             ; $308057 |
loc_60059:
  DEC $05B1,x                               ; $308059 |
  BNE loc_60023                             ; $30805C |
  LDA $05C8,x                               ; $30805E |
  CMP #$02                                  ; $308061 |
  BCS loc_600A3                             ; $308063 |
  LDX $8F                                   ; $308065 |
  LDY #$46                                  ; $308067 |
  JSR code_3FE522                           ; $308069 |
  LDA #$10                                  ; $30806C |
  JSR code_3080A6                           ; $30806E |
  LDY #$11                                  ; $308071 |
  JSR code_3FE5AB                           ; $308073 |
  BCS loc_60092                             ; $308076 |
  LDY $8F                                   ; $308078 |
  LDA $03CE,y                               ; $30807A |
  STA $03CE,x                               ; $30807D |
  LDA #$01                                  ; $308080 |
  JSR code_3FE8BC                           ; $308082 |
  TYA                                       ; $308085 |
  STA $05C8,x                               ; $308086 |
  TAX                                       ; $308089 |
  INC $05C8,x                               ; $30808A |
  LDA #$20                                  ; $30808D |
  JSR code_3080A6                           ; $30808F |
loc_60092:
  LDX $8F                                   ; $308092 |
  LDY #$47                                  ; $308094 |
  JSR code_3FE522                           ; $308096 |
  LDA #$08                                  ; $308099 |
  JSR code_3080A6                           ; $30809B |
  LDY #$44                                  ; $30809E |
  JSR code_3FE522                           ; $3080A0 |
loc_600A3:
  JMP code_30801E                           ; $3080A3 |

code_3080A6:
  STA $05F6,x                               ; $3080A6 |
  PLA                                       ; $3080A9 |
  STA $060D,x                               ; $3080AA |
  PLA                                       ; $3080AD |
  STA $0624,x                               ; $3080AE |
loc_600B1:
  JSR code_3FEA1C                           ; $3080B1 |
  DEC $05F6,x                               ; $3080B4 |
  BNE loc_600B1                             ; $3080B7 |
  LDA $0624,x                               ; $3080B9 |
  PHA                                       ; $3080BC |
  LDA $060D,x                               ; $3080BD |
  PHA                                       ; $3080C0 |
  RTS                                       ; $3080C1 |

  db $4B, $00, $00, $01, $01, $12           ; $3080C2 |

  JSR code_3FEBD1                           ; $3080C8 |
  LDY #$0E                                  ; $3080CB |
  LDA $03CE,x                               ; $3080CD |
  CMP #$04                                  ; $3080D0 |
  BNE loc_600D6                             ; $3080D2 |
  LDY #$02                                  ; $3080D4 |
loc_600D6:
  TYA                                       ; $3080D6 |
  STA $03CE,x                               ; $3080D7 |
  JSR code_3FE5DF                           ; $3080DA |
  LDA #$00                                  ; $3080DD |
  JSR code_3FE5EF                           ; $3080DF |
  LDA #$2D                                  ; $3080E2 |
  STA $05B1,x                               ; $3080E4 |
loc_600E7:
  LDY #$06                                  ; $3080E7 |
  JSR code_3FE60E                           ; $3080E9 |
  JSR code_30817B                           ; $3080EC |
  DEC $05B1,x                               ; $3080EF |
  BNE loc_600E7                             ; $3080F2 |
  LDA #$B4                                  ; $3080F4 |
  STA $05B1,x                               ; $3080F6 |
loc_600F9:
code_3080F9:
  DEC $05B1,x                               ; $3080F9 |
  BEQ loc_6011A                             ; $3080FC |
  LDY #$06                                  ; $3080FE |
  JSR code_3FE60E                           ; $308100 |
  JSR code_30817B                           ; $308103 |
  LDA $F3                                   ; $308106 |
  AND #$07                                  ; $308108 |
  BNE loc_600F9                             ; $30810A |
  JSR code_3FECFC                           ; $30810C |
  JSR code_3FE5DF                           ; $30810F |
  LDA #$00                                  ; $308112 |
  JSR code_3FE5EF                           ; $308114 |
  JMP code_3080F9                           ; $308117 |

loc_6011A:
code_30811A:
  LDY #$06                                  ; $30811A |
  JSR code_3FE60E                           ; $30811C |
  JSR code_30817B                           ; $30811F |
  JMP code_30811A                           ; $308122 |

  db $48, $00, $00, $00, $01, $12           ; $308125 |

  JSR code_3FEBD1                           ; $30812B |
  LDA #$00                                  ; $30812E |
  STA $05B1,x                               ; $308130 |
  LDA #$FF                                  ; $308133 |
  STA $05C8,x                               ; $308135 |
  LDA $03CE,x                               ; $308138 |
  CMP #$04                                  ; $30813B |
  BNE loc_60149                             ; $30813D |
  LDA #$00                                  ; $30813F |
  STA $05B1,x                               ; $308141 |
  LDA #$01                                  ; $308144 |
  STA $05C8,x                               ; $308146 |
loc_60149:
code_308149:
  LDA $0486,x                               ; $308149 |
  STA $063B                                 ; $30814C |
  LDA $04CB,x                               ; $30814F |
  STA $063C                                 ; $308152 |
  LDA $05B1,x                               ; $308155 |
  STA $EB                                   ; $308158 |
  LDA $05C8,x                               ; $30815A |
  STA $ED                                   ; $30815D |
  LDA #$1E                                  ; $30815F |
  STA $08                                   ; $308161 |
  LDA #$82                                  ; $308163 |
  STA $09                                   ; $308165 |
  JSR code_3FEC0A                           ; $308167 |
  LDA $11                                   ; $30816A |
  BEQ loc_60175                             ; $30816C |
  LDA $12                                   ; $30816E |
  BEQ loc_60175                             ; $308170 |
  JMP code_3081C7                           ; $308172 |

loc_60175:
  JSR code_3FE9D3                           ; $308175 |
  JMP code_308149                           ; $308178 |

code_30817B:
  LDA $05C8,x                               ; $30817B |
  STA $03                                   ; $30817E |
  JSR code_3FE485                           ; $308180 |
  BCC loc_6018D                             ; $308183 |
  LDX $03                                   ; $308185 |
  DEC $05C8,x                               ; $308187 |
  JMP code_3FE456                           ; $30818A |

loc_6018D:
  LDA $056C,x                               ; $30818D |
  BEQ loc_601B4                             ; $308190 |
  AND #$0F                                  ; $308192 |
  STA $00                                   ; $308194 |
  LDA #$35                                  ; $308196 |
  STA $DC                                   ; $308198 |
  LDA #$00                                  ; $30819A |
  STA $056C,x                               ; $30819C |
  LDA $03E5,x                               ; $30819F |
  SEC                                       ; $3081A2 |
  SBC $00                                   ; $3081A3 |
  STA $03E5,x                               ; $3081A5 |
  BPL loc_601B4                             ; $3081A8 |
  LDX $03                                   ; $3081AA |
  DEC $05C8,x                               ; $3081AC |
  LDX $8F                                   ; $3081AF |
  JMP code_3081C7                           ; $3081B1 |

loc_601B4:
  LDY $03                                   ; $3081B4 |
  LDA $03A0,y                               ; $3081B6 |
  BNE loc_601BE                             ; $3081B9 |
  JMP code_3081C7                           ; $3081BB |

loc_601BE:
  JMP code_3FE468                           ; $3081BE |

  db $09, $00, $00, $00, $00, $00           ; $3081C1 |

code_3081C7:
  LDA #$FF                                  ; $3081C7 |
  STA $03FC,x                               ; $3081C9 |
  LDA #$00                                  ; $3081CC |
  STA $0583,x                               ; $3081CE |
  LDY #$09                                  ; $3081D1 |
  JSR code_3FE522                           ; $3081D3 |
  LDA #$0A                                  ; $3081D6 |
  STA $05B1,x                               ; $3081D8 |
loc_601DB:
  JSR code_3FE485                           ; $3081DB |
  BCS loc_601E8                             ; $3081DE |
  JSR code_3FE468                           ; $3081E0 |
  DEC $05B1,x                               ; $3081E3 |
  BNE loc_601DB                             ; $3081E6 |
loc_601E8:
  LDA #$12                                  ; $3081E8 |
  STA $08                                   ; $3081EA |
  LDA #$82                                  ; $3081EC |
  STA $09                                   ; $3081EE |
  JSR code_3ECC54                           ; $3081F0 |
  TYA                                       ; $3081F3 |
  BNE loc_6020F                             ; $3081F4 |
  LDA #$14                                  ; $3081F6 |
  STA $08                                   ; $3081F8 |
  LDA #$82                                  ; $3081FA |
  STA $09                                   ; $3081FC |
  JSR code_3EC88D                           ; $3081FE |
  JSR code_3ECC54                           ; $308201 |
  LDA $8219,y                               ; $308204 |
  TAY                                       ; $308207 |
  JSR code_3ECB28                           ; $308208 |

  db $41                                    ; $30820B |

  JMP code_3FE477                           ; $30820C |

loc_6020F:
  JMP code_3FE456                           ; $30820F |

  db $1F, $E0, $18, $5F, $20, $58, $10, $39 ; $308212 |
  db $38, $4A, $49, $37, $08, $04, $08, $FC ; $30821A |
  db $F8, $04, $F8, $FC, $F8, $08, $08, $08 ; $308222 |
  db $F8, $F8, $08, $F8, $4F, $10, $0A, $05 ; $30822A |
  db $03, $14                               ; $308232 |

  JSR code_3FEBD1                           ; $308234 |
  LDA $51                                   ; $308237 |
  BEQ loc_60240                             ; $308239 |
  LDA #$D4                                  ; $30823B |
  JSR code_3EC9EF                           ; $30823D |
loc_60240:
  LDA #$28                                  ; $308240 |
  STA $0624,x                               ; $308242 |
code_308245:
  JSR code_3FEF0C                           ; $308245 |
loc_60248:
code_308248:
  JSR code_3FE9D3                           ; $308248 |
  LDA #$40                                  ; $30824B |
  STA $00                                   ; $30824D |
  LDA #$00                                  ; $30824F |
  STA $01                                   ; $308251 |
  JSR code_3FEDA8                           ; $308253 |
  LDA $11                                   ; $308256 |
  BNE loc_602AC                             ; $308258 |
  JSR code_3FE9D3                           ; $30825A |
  LDA $F3                                   ; $30825D |
  AND #$1F                                  ; $30825F |
  BNE loc_60267                             ; $308261 |
  LDA #$46                                  ; $308263 |
  STA $DC                                   ; $308265 |
loc_60267:
  LDY #$01                                  ; $308267 |
  JSR code_3FE61A                           ; $308269 |
  JSR code_3FE4D1                           ; $30826C |
  LDA $03CE,x                               ; $30826F |
  LSR                                       ; $308272 |
  LSR                                       ; $308273 |
  LSR                                       ; $308274 |
  STA $0624,x                               ; $308275 |
  TAY                                       ; $308278 |
  LDA $830A,y                               ; $308279 |
  STA $00                                   ; $30827C |
  LDA #$EB                                  ; $30827E |
  STA $01                                   ; $308280 |
  LDA #$00                                  ; $308282 |
  STA $11                                   ; $308284 |
  JSR code_3ED9CD                           ; $308286 |
  LDA $11                                   ; $308289 |
  AND #$01                                  ; $30828B |
  BEQ loc_602A6                             ; $30828D |
  LDY $0624,x                               ; $30828F |
  LDA $830A,y                               ; $308292 |
  STA $00                                   ; $308295 |
  LDA #$00                                  ; $308297 |
  STA $01                                   ; $308299 |
  STA $11                                   ; $30829B |
  JSR code_3ED9CD                           ; $30829D |
  LDA $11                                   ; $3082A0 |
  AND #$01                                  ; $3082A2 |
  BEQ loc_60248                             ; $3082A4 |
loc_602A6:
  JSR code_3FEF18                           ; $3082A6 |
  JMP code_308248                           ; $3082A9 |

loc_602AC:
  JSR code_3FE9D3                           ; $3082AC |
  LDY #$50                                  ; $3082AF |
  JSR code_3FE522                           ; $3082B1 |
  LDA #$19                                  ; $3082B4 |
  STA $05B1,x                               ; $3082B6 |
loc_602B9:
  JSR code_3FE9D3                           ; $3082B9 |
  DEC $05B1,x                               ; $3082BC |
  BNE loc_602B9                             ; $3082BF |
  LDY #$14                                  ; $3082C1 |
  JSR code_3FE5AB                           ; $3082C3 |
  BCS loc_602D9                             ; $3082C6 |
  LDY $8F                                   ; $3082C8 |
  LDA #$08                                  ; $3082CA |
  STA $03CE,x                               ; $3082CC |
  LDA #$07                                  ; $3082CF |
  STA $05C8,x                               ; $3082D1 |
  LDA #$00                                  ; $3082D4 |
  JSR code_3FE8FD                           ; $3082D6 |
loc_602D9:
  LDX $8F                                   ; $3082D9 |
  LDA #$14                                  ; $3082DB |
  STA $05B1,x                               ; $3082DD |
  LDY #$4E                                  ; $3082E0 |
  JSR code_3FE522                           ; $3082E2 |
loc_602E5:
  JSR code_3FE9D3                           ; $3082E5 |
  LDA #$40                                  ; $3082E8 |
  STA $00                                   ; $3082EA |
  LDA #$00                                  ; $3082EC |
  STA $01                                   ; $3082EE |
  JSR code_3FEDA8                           ; $3082F0 |
  LDA $11                                   ; $3082F3 |
  BEQ loc_602FE                             ; $3082F5 |
  DEC $05B1,x                               ; $3082F7 |
  BNE loc_602E5                             ; $3082FA |
  BEQ loc_602AC                             ; $3082FC |
loc_602FE:
  LDY #$4F                                  ; $3082FE |
  JSR code_3FE522                           ; $308300 |
  JMP code_308245                           ; $308303 |

  db $60, $A0, $00, $FF, $0E, $F2, $C2, $00 ; $308306 |
  db $01, $01, $00, $42                     ; $30830E |

  JSR code_3FEBD1                           ; $308312 |
  LDA #$42                                  ; $308315 |
  STA $DC                                   ; $308317 |
code_308319:
  JSR code_3FE9D3                           ; $308319 |
  LDA $05C8,x                               ; $30831C |
  TAY                                       ; $30831F |
  JSR code_3FE60E                           ; $308320 |
  JMP code_308319                           ; $308323 |

code_308326:
  LDX $8F                                   ; $308326 |
  JSR code_3FE485                           ; $308328 |
  BCS loc_603A7                             ; $30832B |
  LDA $0624,x                               ; $30832D |
  BEQ loc_6035A                             ; $308330 |
  CMP #$01                                  ; $308332 |
  BNE loc_60341                             ; $308334 |
  LDA $069E                                 ; $308336 |
  JSR code_3EC9EF                           ; $308339 |
  DEC $0624,x                               ; $30833C |
  BEQ loc_6035A                             ; $30833F |
loc_60341:
  LDA $51                                   ; $308341 |
  CMP #$05                                  ; $308343 |
  BNE loc_60352                             ; $308345 |
  LDA #$12                                  ; $308347 |
  JSR code_3EC9EF                           ; $308349 |
  DEC $0624,x                               ; $30834C |
  JMP code_30835A                           ; $30834F |

loc_60352:
  LDA #$BB                                  ; $308352 |
  JSR code_3EC9EF                           ; $308354 |
  DEC $0624,x                               ; $308357 |
loc_6035A:
code_30835A:
  LDA $056C,x                               ; $30835A |
  BEQ loc_6039F                             ; $30835D |
  AND #$0F                                  ; $30835F |
  STA $00                                   ; $308361 |
  LDA #$35                                  ; $308363 |
  STA $DC                                   ; $308365 |
  LDA #$05                                  ; $308367 |
  STA $0624,x                               ; $308369 |
  LDA $03E5,x                               ; $30836C |
  SEC                                       ; $30836F |
  SBC $00                                   ; $308370 |
  STA $03E5,x                               ; $308372 |
  BPL loc_6039F                             ; $308375 |
  LDA $05DF,x                               ; $308377 |
  BEQ loc_6038F                             ; $30837A |
  LDA $05C8,x                               ; $30837C |
  BEQ loc_6038F                             ; $30837F |
  TAX                                       ; $308381 |
  LDA $03A0,x                               ; $308382 |
  CMP #$15                                  ; $308385 |
  BNE loc_6038F                             ; $308387 |
  LDY #$17                                  ; $308389 |
  JSR code_3ECB28                           ; $30838B |

  db $41                                    ; $30838E |

loc_6038F:
  LDX $8F                                   ; $30838F |
  LDA $069E                                 ; $308391 |
  JSR code_3EC9EF                           ; $308394 |
  LDA #$00                                  ; $308397 |
  STA $05C7                                 ; $308399 |
  JMP code_3FE456                           ; $30839C |

loc_6039F:
  LDA #$00                                  ; $30839F |
  STA $056C,x                               ; $3083A1 |
  JMP code_3FE468                           ; $3083A4 |

loc_603A7:
  JMP code_3FE456                           ; $3083A7 |

  db $00, $00, $00, $67, $00, $86           ; $3083AA |

  JSR code_3FEBD1                           ; $3083B0 |
  LDA #$01                                  ; $3083B3 |
  STA $03B7,x                               ; $3083B5 |
loc_603B8:
  JSR code_3FE468                           ; $3083B8 |
  LDY $05B1,x                               ; $3083BB |
  LDA $03E5,y                               ; $3083BE |
  BPL loc_603B8                             ; $3083C1 |
  JMP code_3FE456                           ; $3083C3 |

  db $56, $13, $0B, $68, $0E, $00           ; $3083C6 |

  JSR code_3FEBD1                           ; $3083CC |
  LDA #$01                                  ; $3083CF |
  STA $03B7,x                               ; $3083D1 |
  LDA #$3C                                  ; $3083D4 |
  STA $05B1,x                               ; $3083D6 |
loc_603D9:
code_3083D9:
  JSR code_3FEA6A                           ; $3083D9 |
  DEC $05B1,x                               ; $3083DC |
  BNE loc_603D9                             ; $3083DF |
loc_603E1:
  JSR code_308326                           ; $3083E1 |
  LDY #$15                                  ; $3083E4 |
  JSR code_3FE5AB                           ; $3083E6 |
  BCS loc_603E1                             ; $3083E9 |
  LDY $8F                                   ; $3083EB |
  TXA                                       ; $3083ED |
  STA $05C8,y                               ; $3083EE |
  LDA #$00                                  ; $3083F1 |
  JSR code_3FE8FD                           ; $3083F3 |
  LDX $8F                                   ; $3083F6 |
loc_603F8:
  JSR code_308326                           ; $3083F8 |
  LDA $05C8,x                               ; $3083FB |
  TAY                                       ; $3083FE |
  LDA $03E5,y                               ; $3083FF |
  BPL loc_603F8                             ; $308402 |
  LDA #$5A                                  ; $308404 |
  STA $05B1,x                               ; $308406 |
  JMP code_3083D9                           ; $308409 |

  db $56, $11, $0B, $68, $0E, $A0           ; $30840C |

  JSR code_3FEBD1                           ; $308412 |
  LDA $51                                   ; $308415 |
  CMP #$05                                  ; $308417 |
  BEQ loc_60422                             ; $308419 |
  LDA #$24                                  ; $30841B |
  STA $037F                                 ; $30841D |
  INC $46                                   ; $308420 |
loc_60422:
  JSR code_308326                           ; $308422 |
  LDY #$79                                  ; $308425 |
  JSR code_3FE5AB                           ; $308427 |
  BCS loc_60422                             ; $30842A |
  LDY $8F                                   ; $30842C |
  TYA                                       ; $30842E |
  STA $05B1,x                               ; $30842F |
  LDA #$47                                  ; $308432 |
  JSR code_3FE8FD                           ; $308434 |
  LDX $8F                                   ; $308437 |
  LDA #$00                                  ; $308439 |
  STA $0624,x                               ; $30843B |
  LDA #$00                                  ; $30843E |
  STA $05DF,x                               ; $308440 |
  LDA #$3C                                  ; $308443 |
  STA $05B1,x                               ; $308445 |
loc_60448:
code_308448:
  JSR code_308326                           ; $308448 |
  DEC $05B1,x                               ; $30844B |
  BNE loc_60448                             ; $30844E |
  LDY #$55                                  ; $308450 |
  JSR code_3FE522                           ; $308452 |
  LDA #$20                                  ; $308455 |
  STA $05B1,x                               ; $308457 |
loc_6045A:
  JSR code_308326                           ; $30845A |
  DEC $05B1,x                               ; $30845D |
  BNE loc_6045A                             ; $308460 |
  LDY #$56                                  ; $308462 |
  JSR code_3FE522                           ; $308464 |
loc_60467:
  JSR code_308326                           ; $308467 |
  LDY #$15                                  ; $30846A |
  JSR code_3FE5AB                           ; $30846C |
  BCS loc_60467                             ; $30846F |
  LDY $8F                                   ; $308471 |
  TXA                                       ; $308473 |
  STA $05C8,y                               ; $308474 |
  LDA #$00                                  ; $308477 |
  JSR code_3FE8FD                           ; $308479 |
  LDX $8F                                   ; $30847C |
  LDA #$01                                  ; $30847E |
  STA $05DF,x                               ; $308480 |
loc_60483:
  JSR code_308326                           ; $308483 |
  LDA $05C8,x                               ; $308486 |
  TAY                                       ; $308489 |
  LDA $03E5,y                               ; $30848A |
  BPL loc_60483                             ; $30848D |
  LDA #$5A                                  ; $30848F |
  STA $05B1,x                               ; $308491 |
  JMP code_308448                           ; $308494 |

  db $51, $C7, $0B, $07, $00, $63           ; $308497 |

  JSR code_3FEBD1                           ; $30849D |
  JSR code_3FEF0C                           ; $3084A0 |
loc_604A3:
  JSR code_3FEA95                           ; $3084A3 |
  LDA #$F0                                  ; $3084A6 |
  STA $08                                   ; $3084A8 |
  LDA #$84                                  ; $3084AA |
  STA $09                                   ; $3084AC |
  LDA #$00                                  ; $3084AE |
  STA $ED                                   ; $3084B0 |
  STA $EB                                   ; $3084B2 |
  JSR code_3FEC0A                           ; $3084B4 |
  LDA $11                                   ; $3084B7 |
  BEQ loc_604A3                             ; $3084B9 |
  LDY #$52                                  ; $3084BB |
  JSR code_3FE522                           ; $3084BD |
  LDA #$2C                                  ; $3084C0 |
  STA $05B1,x                               ; $3084C2 |
loc_604C5:
  JSR code_3FEA95                           ; $3084C5 |
  DEC $05B1,x                               ; $3084C8 |
  BNE loc_604C5                             ; $3084CB |
  LDA #$EA                                  ; $3084CD |
  STA $08                                   ; $3084CF |
  LDA #$84                                  ; $3084D1 |
  STA $09                                   ; $3084D3 |
  JSR code_3ECC54                           ; $3084D5 |
  LDA $84EC,y                               ; $3084D8 |
  STA $00                                   ; $3084DB |
  LDA $84EE,y                               ; $3084DD |
  STA $01                                   ; $3084E0 |
  LDA #$13                                  ; $3084E2 |
  STA $0583,x                               ; $3084E4 |
  JMP ($0000)                               ; $3084E7 |

  db $7F, $80, $08, $7E, $85, $85, $08, $04 ; $3084EA |
  db $08, $FC, $F8, $04, $F8, $FC, $06, $0A ; $3084F2 |
  db $FA, $0A, $06, $F8, $FA, $F8, $14, $EC ; $3084FA |
  db $54, $C7, $0B, $00, $00, $13           ; $308502 |

  LDA #$10                                  ; $308508 |
  STA $05B1,x                               ; $30850A |
loc_6050D:
  JSR code_3FE9D3                           ; $30850D |
  DEC $05B1,x                               ; $308510 |
  BNE loc_6050D                             ; $308513 |
  LDY #$53                                  ; $308515 |
  JSR code_3FE522                           ; $308517 |
loc_6051A:
  LDA #$0F                                  ; $30851A |
  STA $060D,x                               ; $30851C |
  LDA #$01                                  ; $30851F |
  STA $0624,x                               ; $308521 |
  LDA #$3C                                  ; $308524 |
  STA $05B1,x                               ; $308526 |
  JSR code_3FE5B6                           ; $308529 |
  LDA $11                                   ; $30852C |
  CMP $03CE,x                               ; $30852E |
  BNE loc_6053E                             ; $308531 |
  STA $05C8,x                               ; $308533 |
  JSR code_308681                           ; $308536 |
  LDX $8F                                   ; $308539 |
  LDA $05C8,x                               ; $30853B |
loc_6053E:
  STA $03CE,x                               ; $30853E |
  JSR code_3FE5DF                           ; $308541 |
loc_60544:
code_308544:
  JSR code_3FE9D3                           ; $308544 |
  LDY #$04                                  ; $308547 |
  JSR code_3FE61A                           ; $308549 |
  LDA #$F0                                  ; $30854C |
  STA $08                                   ; $30854E |
  LDA #$84                                  ; $308550 |
  STA $09                                   ; $308552 |
  JSR code_3FEC0A                           ; $308554 |
  LDA $03CE,x                               ; $308557 |
  LSR                                       ; $30855A |
  LSR                                       ; $30855B |
  LSR                                       ; $30855C |
  TAY                                       ; $30855D |
  LDA $05F6,x                               ; $30855E |
  BNE loc_605C2                             ; $308561 |
  LDA $8500,y                               ; $308563 |
  STA $00                                   ; $308566 |
  LDA #$00                                  ; $308568 |
  STA $11                                   ; $30856A |
  STA $01                                   ; $30856C |
  JSR code_3ED9CD                           ; $30856E |
  LDA $11                                   ; $308571 |
  AND #$01                                  ; $308573 |
  BNE loc_605B3                             ; $308575 |
  DEC $05B1,x                               ; $308577 |
  BNE loc_60544                             ; $30857A |
  BEQ loc_6051A                             ; $30857C |
code_30857E:
  LDA #$13                                  ; $30857E |
  STA $0583,x                               ; $308580 |
  LDA #$10                                  ; $308583 |
  STA $060D,x                               ; $308585 |
loc_60588:
  JSR code_3FE9D3                           ; $308588 |
  DEC $060D,x                               ; $30858B |
  BNE loc_60588                             ; $30858E |
  LDA #$14                                  ; $308590 |
  STA $060D,x                               ; $308592 |
  LDA #$00                                  ; $308595 |
  STA $0624,x                               ; $308597 |
  JSR code_3FE5B6                           ; $30859A |
  LDA $11                                   ; $30859D |
  STA $05C8,x                               ; $30859F |
  STA $03CE,x                               ; $3085A2 |
  JSR code_3FE5DF                           ; $3085A5 |
  JSR code_308681                           ; $3085A8 |
  LDX $8F                                   ; $3085AB |
  LDA $05C8,x                               ; $3085AD |
  STA $03CE,x                               ; $3085B0 |
loc_605B3:
  LDY #$51                                  ; $3085B3 |
  JSR code_3FE522                           ; $3085B5 |
  LDA #$58                                  ; $3085B8 |
  STA $05DF,x                               ; $3085BA |
  LDA #$FD                                  ; $3085BD |
  STA $05F6,x                               ; $3085BF |
loc_605C2:
  JSR code_3FE9D3                           ; $3085C2 |
  LDY #$04                                  ; $3085C5 |
  JSR code_3FE61A                           ; $3085C7 |
  LDA #$F0                                  ; $3085CA |
  STA $08                                   ; $3085CC |
  LDA #$84                                  ; $3085CE |
  STA $09                                   ; $3085D0 |
  JSR code_3FEC0A                           ; $3085D2 |
  LDA $12                                   ; $3085D5 |
  AND #$01                                  ; $3085D7 |
  BEQ loc_605DE                             ; $3085D9 |
  JSR code_3FEF18                           ; $3085DB |
loc_605DE:
  LDA $11                                   ; $3085DE |
  AND #$01                                  ; $3085E0 |
  BEQ loc_605C2                             ; $3085E2 |
  LDA $0624,x                               ; $3085E4 |
  BEQ loc_605F1                             ; $3085E7 |
  LDY #$53                                  ; $3085E9 |
  JSR code_3FE522                           ; $3085EB |
  JMP code_308544                           ; $3085EE |

loc_605F1:
  LDA #$63                                  ; $3085F1 |
  STA $0583,x                               ; $3085F3 |
  LDY #$52                                  ; $3085F6 |
  JSR code_3FE522                           ; $3085F8 |
  LDA #$2C                                  ; $3085FB |
  STA $05B1,x                               ; $3085FD |
loc_60600:
  JSR code_3FEA95                           ; $308600 |
  DEC $05B1,x                               ; $308603 |
  BNE loc_60600                             ; $308606 |
  JMP code_30857E                           ; $308608 |

  db $A3, $C7, $0B, $07, $00, $63           ; $30860B |

  JSR code_3FEBD1                           ; $308611 |
  LDA #$0F                                  ; $308614 |
  STA $060D,x                               ; $308616 |
loc_60619:
code_308619:
  JSR code_3FEF0C                           ; $308619 |
  JSR code_3FEA95                           ; $30861C |
  LDA #$50                                  ; $30861F |
  STA $00                                   ; $308621 |
  LDA #$00                                  ; $308623 |
  STA $01                                   ; $308625 |
  JSR code_3FEDA8                           ; $308627 |
  LDA $11                                   ; $30862A |
  BEQ loc_60619                             ; $30862C |
  LDA #$20                                  ; $30862E |
  STA $05B1,x                               ; $308630 |
loc_60633:
  JSR code_3FEA95                           ; $308633 |
  DEC $05B1,x                               ; $308636 |
  BNE loc_60633                             ; $308639 |
  LDY #$A2                                  ; $30863B |
  JSR code_3FE522                           ; $30863D |
  LDA #$13                                  ; $308640 |
  STA $0583,x                               ; $308642 |
  LDA #$0E                                  ; $308645 |
  STA $05B1,x                               ; $308647 |
loc_6064A:
  JSR code_3FE9D3                           ; $30864A |
  DEC $05B1,x                               ; $30864D |
  BNE loc_6064A                             ; $308650 |
  JSR code_3FE9D3                           ; $308652 |
  JSR code_308681                           ; $308655 |
  LDX $8F                                   ; $308658 |
  LDA #$14                                  ; $30865A |
  STA $05B1,x                               ; $30865C |
loc_6065F:
  JSR code_3FE9D3                           ; $30865F |
  DEC $05B1,x                               ; $308662 |
  BNE loc_6065F                             ; $308665 |
  LDA #$63                                  ; $308667 |
  STA $0583,x                               ; $308669 |
  LDY #$A3                                  ; $30866C |
  JSR code_3FE522                           ; $30866E |
  LDA #$50                                  ; $308671 |
  STA $05B1,x                               ; $308673 |
loc_60676:
  JSR code_3FEA95                           ; $308676 |
  DEC $05B1,x                               ; $308679 |
  BNE loc_60676                             ; $30867C |
  JMP code_308619                           ; $30867E |

code_308681:
  LDA $03CE,x                               ; $308681 |
  LSR                                       ; $308684 |
  LSR                                       ; $308685 |
  LSR                                       ; $308686 |
  STA $03CE,x                               ; $308687 |
  LDY #$14                                  ; $30868A |
  JSR code_3FE5AB                           ; $30868C |
  BCS locret_606E4                          ; $30868F |
  LDA #$06                                  ; $308691 |
  STA $05C8,x                               ; $308693 |
  LDY $8F                                   ; $308696 |
  LDA $060D,y                               ; $308698 |
  JSR code_3FE8CC                           ; $30869B |
  LDA $03CE,y                               ; $30869E |
  TAY                                       ; $3086A1 |
  LDA $86E5,y                               ; $3086A2 |
  STA $03CE,x                               ; $3086A5 |
  LDY #$14                                  ; $3086A8 |
  JSR code_3FE5AB                           ; $3086AA |
  BCS locret_606E4                          ; $3086AD |
  LDA #$06                                  ; $3086AF |
  STA $05C8,x                               ; $3086B1 |
  LDY $8F                                   ; $3086B4 |
  LDA $060D,y                               ; $3086B6 |
  JSR code_3FE8CC                           ; $3086B9 |
  LDA $03CE,y                               ; $3086BC |
  TAY                                       ; $3086BF |
  LDA $86E7,y                               ; $3086C0 |
  STA $03CE,x                               ; $3086C3 |
  LDY #$14                                  ; $3086C6 |
  JSR code_3FE5AB                           ; $3086C8 |
  BCS locret_606E4                          ; $3086CB |
  LDA #$06                                  ; $3086CD |
  STA $05C8,x                               ; $3086CF |
  LDY $8F                                   ; $3086D2 |
  LDA $060D,y                               ; $3086D4 |
  JSR code_3FE8CC                           ; $3086D7 |
  LDA $03CE,y                               ; $3086DA |
  TAY                                       ; $3086DD |
  LDA $86E9,y                               ; $3086DE |
  STA $03CE,x                               ; $3086E1 |
locret_606E4:
  RTS                                       ; $3086E4 |

  db $02, $0A, $04, $0C, $06, $0E, $C2, $00 ; $3086E5 |
  db $01, $01, $00, $41                     ; $3086ED |

  JSR code_3FEBD1                           ; $3086F1 |
code_3086F4:
  LDY #$06                                  ; $3086F4 |
  JSR code_3FE60E                           ; $3086F6 |
  JSR code_3FEA6A                           ; $3086F9 |
  JMP code_3086F4                           ; $3086FC |

  db $6C, $00, $10, $0F, $00, $20           ; $3086FF |

  JSR code_3FEBD1                           ; $308705 |
  LDA #$02                                  ; $308708 |
  STA $03CE,x                               ; $30870A |
  LDA #$00                                  ; $30870D |
  STA $056C,x                               ; $30870F |
  JMP code_308752                           ; $308712 |

  db $74, $00, $10, $0F, $00, $20           ; $308715 |

  JSR code_3FEBD1                           ; $30871B |
  LDA #$03                                  ; $30871E |
  STA $03CE,x                               ; $308720 |
  LDA #$00                                  ; $308723 |
  STA $056C,x                               ; $308725 |
  JMP code_308752                           ; $308728 |

  db $70, $00, $10, $17, $00, $20           ; $30872B |

  JSR code_3FEBD1                           ; $308731 |
  LDA #$01                                  ; $308734 |
  STA $03CE,x                               ; $308736 |
  LDA #$00                                  ; $308739 |
  STA $056C,x                               ; $30873B |
  JMP code_308752                           ; $30873E |

  db $68, $00, $10, $17, $00, $20           ; $308741 |

  JSR code_3FEBD1                           ; $308747 |
  LDA #$00                                  ; $30874A |
  STA $03CE,x                               ; $30874C |
  STA $056C,x                               ; $30874F |
loc_60752:
code_308752:
  JSR code_3FEA6A                           ; $308752 |
  LDA $056C,x                               ; $308755 |
  BEQ loc_60752                             ; $308758 |
  LDA #$01                                  ; $30875A |
  STA $A7                                   ; $30875C |
  LDA $03CE,x                               ; $30875E |
  TAY                                       ; $308761 |
  LDA $876F,y                               ; $308762 |
  STA $08                                   ; $308765 |
  LDA $8773,y                               ; $308767 |
  STA $09                                   ; $30876A |
  JMP ($0008)                               ; $30876C |

  db $77, $B2, $C9, $E1, $87, $87, $87, $87 ; $30876F |

  LDA $056C,x                               ; $308777 |
  CMP #$20                                  ; $30877A |
  BNE loc_60786                             ; $30877C |
  LDA $04CB                                 ; $30877E |
  CMP $04CB,x                               ; $308781 |
  BCC loc_6078E                             ; $308784 |
loc_60786:
  LDA #$00                                  ; $308786 |
  STA $056C,x                               ; $308788 |
  JMP code_308752                           ; $30878B |

loc_6078E:
  JSR code_3FEA6A                           ; $30878E |
  LDA $03CE,x                               ; $308791 |
  TAY                                       ; $308794 |
  LDA $8843,y                               ; $308795 |
  TAY                                       ; $308798 |
  JSR code_3FE522                           ; $308799 |
  LDA #$08                                  ; $30879C |
  STA $05B1,x                               ; $30879E |
  INC $04CB                                 ; $3087A1 |
  INC $04CB                                 ; $3087A4 |
loc_607A7:
  JSR code_3FEA6A                           ; $3087A7 |
  DEC $05B1,x                               ; $3087AA |
  BNE loc_607A7                             ; $3087AD |
  JMP code_3087F9                           ; $3087AF |

  LDA $056C,x                               ; $3087B2 |
  CMP #$20                                  ; $3087B5 |
  BNE loc_60786                             ; $3087B7 |
  LDA $04CB                                 ; $3087B9 |
  CMP $04CB,x                               ; $3087BC |
  BCS loc_6078E                             ; $3087BF |
  LDA #$00                                  ; $3087C1 |
  STA $056C,x                               ; $3087C3 |
  JMP code_308752                           ; $3087C6 |

  LDA $056C,x                               ; $3087C9 |
  CMP #$40                                  ; $3087CC |
  BNE loc_60786                             ; $3087CE |
  JSR code_3FE5B6                           ; $3087D0 |
  LDA $11                                   ; $3087D3 |
  CMP #$0C                                  ; $3087D5 |
  BEQ loc_6078E                             ; $3087D7 |
  LDA #$00                                  ; $3087D9 |
  STA $056C,x                               ; $3087DB |
  JMP code_308752                           ; $3087DE |

  LDA $056C,x                               ; $3087E1 |
  CMP #$40                                  ; $3087E4 |
  BNE loc_60786                             ; $3087E6 |
  JSR code_3FE5B6                           ; $3087E8 |
  LDA $11                                   ; $3087EB |
  CMP #$04                                  ; $3087ED |
  BEQ loc_6078E                             ; $3087EF |
  LDA #$00                                  ; $3087F1 |
  STA $056C,x                               ; $3087F3 |
  JMP code_308752                           ; $3087F6 |

code_3087F9:
  LDA #$4E                                  ; $3087F9 |
  STA $DC                                   ; $3087FB |
  LDA $03CE,x                               ; $3087FD |
  TAY                                       ; $308800 |
  LDA $883F,y                               ; $308801 |
  TAY                                       ; $308804 |
  JSR code_3FE522                           ; $308805 |
  LDA #$38                                  ; $308808 |
  STA $05B1,x                               ; $30880A |
loc_6080D:
  JSR code_3FEA6A                           ; $30880D |
  DEC $05B1,x                               ; $308810 |
  BNE loc_6080D                             ; $308813 |
  LDA $03CE,x                               ; $308815 |
  TAY                                       ; $308818 |
  LDA $8847,y                               ; $308819 |
  TAY                                       ; $30881C |
  JSR code_3FE522                           ; $30881D |
  LDA #$20                                  ; $308820 |
  STA $05B1,x                               ; $308822 |
loc_60825:
  JSR code_3FEA6A                           ; $308825 |
  DEC $05B1,x                               ; $308828 |
  BNE loc_60825                             ; $30882B |
  LDA #$35                                  ; $30882D |
  STA $DC                                   ; $30882F |
  LDY #$25                                  ; $308831 |
  JSR code_3ECB28                           ; $308833 |

  db $41                                    ; $308836 |

  LDA #$44                                  ; $308837 |
  STA $05DF,x                               ; $308839 |
  JMP code_3FE477                           ; $30883C |

  db $6A, $72, $6E, $76, $69, $71, $6D, $75 ; $30883F |
  db $6B, $73, $6F, $77, $63, $16, $0F, $05 ; $308847 |
  db $02, $14                               ; $30884F |

  JSR code_3FEBD1                           ; $308851 |
  LDA #$2D                                  ; $308854 |
  STA $05B1,x                               ; $308856 |
  LDA #$10                                  ; $308859 |
  STA $060D,x                               ; $30885B |
  LDA #$00                                  ; $30885E |
  STA $05C8,x                               ; $308860 |
loc_60863:
code_308863:
  JSR code_3FEF0C                           ; $308863 |
  JSR code_3FE9D3                           ; $308866 |
  DEC $05B1,x                               ; $308869 |
  BNE loc_60871                             ; $30886C |
  JMP code_30892B                           ; $30886E |

loc_60871:
code_308871:
  LDA #$00                                  ; $308871 |
  STA $ED                                   ; $308873 |
  STA $EB                                   ; $308875 |
  STA $EC                                   ; $308877 |
  LDA $05C8,x                               ; $308879 |
  AND #$03                                  ; $30887C |
  BEQ loc_6088B                             ; $30887E |
  CMP #$01                                  ; $308880 |
  BEQ loc_608C5                             ; $308882 |
  CMP #$03                                  ; $308884 |
  BEQ loc_6088B                             ; $308886 |
  JMP code_3088FA                           ; $308888 |

loc_6088B:
  LDA $05C8,x                               ; $30888B |
  ASL                                       ; $30888E |
  ROL                                       ; $30888F |
  AND #$01                                  ; $308890 |
  TAY                                       ; $308892 |
  LDA $896B,y                               ; $308893 |
  STA $EE                                   ; $308896 |
  JSR code_3FE4D1                           ; $308898 |
  DEC $060D,x                               ; $30889B |
  BNE loc_60863                             ; $30889E |
  JSR code_3FE9D3                           ; $3088A0 |
  INC $05C8,x                               ; $3088A3 |
  LDA $05C8,x                               ; $3088A6 |
  AND #$83                                  ; $3088A9 |
  STA $05C8,x                               ; $3088AB |
  AND #$03                                  ; $3088AE |
  BEQ loc_608BE                             ; $3088B0 |
  LDA #$00                                  ; $3088B2 |
  STA $060D,x                               ; $3088B4 |
  LDA #$01                                  ; $3088B7 |
  STA $0624,x                               ; $3088B9 |
  BNE loc_60863                             ; $3088BC |
loc_608BE:
  LDA #$10                                  ; $3088BE |
  STA $060D,x                               ; $3088C0 |
  BNE loc_60863                             ; $3088C3 |
loc_608C5:
  JSR code_3FE9D3                           ; $3088C5 |
  LDA $05C8,x                               ; $3088C8 |
  ASL                                       ; $3088CB |
  ROL                                       ; $3088CC |
  AND #$01                                  ; $3088CD |
  TAY                                       ; $3088CF |
  LDA $8969,y                               ; $3088D0 |
  STA $03CE,x                               ; $3088D3 |
  LDY #$00                                  ; $3088D6 |
  STY $ED                                   ; $3088D8 |
  STY $EB                                   ; $3088DA |
  JSR code_3FEEC9                           ; $3088DC |
  JSR code_3FE4D1                           ; $3088DF |
  LDA $060D,x                               ; $3088E2 |
  BNE loc_608F7                             ; $3088E5 |
  INC $05C8,x                               ; $3088E7 |
  LDA $05C8,x                               ; $3088EA |
  EOR #$80                                  ; $3088ED |
  STA $05C8,x                               ; $3088EF |
  LDA #$00                                  ; $3088F2 |
  STA $0624,x                               ; $3088F4 |
loc_608F7:
  JMP code_308863                           ; $3088F7 |

code_3088FA:
  JSR code_3FE9D3                           ; $3088FA |
  LDA #$00                                  ; $3088FD |
  STA $00                                   ; $3088FF |
  LDA $05C8,x                               ; $308901 |
  ASL                                       ; $308904 |
  ROL $00                                   ; $308905 |
  LDY $00                                   ; $308907 |
  LDA $8969,y                               ; $308909 |
  STA $03CE,x                               ; $30890C |
  LDY #$00                                  ; $30890F |
  STY $ED                                   ; $308911 |
  STY $EB                                   ; $308913 |
  JSR code_3FEE9A                           ; $308915 |
  JSR code_3FE4D1                           ; $308918 |
  LDA $060D,x                               ; $30891B |
  BNE loc_608F7                             ; $30891E |
  INC $05C8,x                               ; $308920 |
  LDA #$10                                  ; $308923 |
  STA $060D,x                               ; $308925 |
  JMP code_308863                           ; $308928 |

code_30892B:
  JSR code_3FE9D3                           ; $30892B |
  LDY #$64                                  ; $30892E |
  JSR code_3FE522                           ; $308930 |
  LDY #$1C                                  ; $308933 |
  JSR code_3FE5AB                           ; $308935 |
  BCS loc_6094D                             ; $308938 |
  LDY $8F                                   ; $30893A |
  LDA $03CE,y                               ; $30893C |
  STA $03CE,x                               ; $30893F |
  LSR                                       ; $308942 |
  LSR                                       ; $308943 |
  LSR                                       ; $308944 |
  STA $03CE,y                               ; $308945 |
  LDA #$0E                                  ; $308948 |
  JSR code_3FE8CC                           ; $30894A |
loc_6094D:
  LDX $8F                                   ; $30894D |
  LDA #$03                                  ; $30894F |
  STA $05B1,x                               ; $308951 |
loc_60954:
  JSR code_3FE9D3                           ; $308954 |
  DEC $05B1,x                               ; $308957 |
  BNE loc_60954                             ; $30895A |
  LDY #$63                                  ; $30895C |
  JSR code_3FE522                           ; $30895E |
  LDA #$2D                                  ; $308961 |
  STA $05B1,x                               ; $308963 |
  JMP code_308871                           ; $308966 |

  db $00, $08, $FF, $01, $08, $04, $08, $FC ; $308969 |
  db $F8, $04, $F8, $FC, $08, $08, $08, $08 ; $308971 |
  db $F8, $F8, $F8, $F8, $65, $16, $0F, $07 ; $308979 |
  db $00, $12                               ; $308981 |

  JSR code_3FEBD1                           ; $308983 |
  LDA #$40                                  ; $308986 |
  STA $00                                   ; $308988 |
  LDA #$00                                  ; $30898A |
  STA $01                                   ; $30898C |
  JSR code_3FEDA8                           ; $30898E |
  LDA $11                                   ; $308991 |
  BNE loc_609BB                             ; $308993 |
  LDA #$10                                  ; $308995 |
  STA $05B1,x                               ; $308997 |
loc_6099A:
  JSR code_3FE9D3                           ; $30899A |
  LDY #$07                                  ; $30899D |
  LDA #$01                                  ; $30899F |
  STA $08                                   ; $3089A1 |
  LDA #$8A                                  ; $3089A3 |
  STA $09                                   ; $3089A5 |
  JSR code_3FE614                           ; $3089A7 |
  LDA $11                                   ; $3089AA |
  AND #$01                                  ; $3089AC |
  BNE loc_609EF                             ; $3089AE |
  LDA $12                                   ; $3089B0 |
  AND #$01                                  ; $3089B2 |
  BNE loc_609EF                             ; $3089B4 |
  DEC $05B1,x                               ; $3089B6 |
  BNE loc_6099A                             ; $3089B9 |
loc_609BB:
  LDA #$00                                  ; $3089BB |
  STA $05B1,x                               ; $3089BD |
  STA $060D,x                               ; $3089C0 |
  STA $0624,x                               ; $3089C3 |
  LDA #$03                                  ; $3089C6 |
  STA $05C8,x                               ; $3089C8 |
loc_609CB:
  JSR code_3FE9D3                           ; $3089CB |
  LDY #$01                                  ; $3089CE |
  JSR code_3FEE69                           ; $3089D0 |
  LDY #$00                                  ; $3089D3 |
  JSR code_3FEE9A                           ; $3089D5 |
  LDA #$01                                  ; $3089D8 |
  STA $08                                   ; $3089DA |
  LDA #$8A                                  ; $3089DC |
  STA $09                                   ; $3089DE |
  JSR code_3FEC11                           ; $3089E0 |
  LDA $12                                   ; $3089E3 |
  AND #$01                                  ; $3089E5 |
  BNE loc_609EF                             ; $3089E7 |
  LDA $11                                   ; $3089E9 |
  AND #$01                                  ; $3089EB |
  BEQ loc_609CB                             ; $3089ED |
loc_609EF:
  LDA #$35                                  ; $3089EF |
  STA $DC                                   ; $3089F1 |
  LDY #$25                                  ; $3089F3 |
  JSR code_3ECB28                           ; $3089F5 |

  db $41                                    ; $3089F8 |

  LDA #$42                                  ; $3089F9 |
  STA $05DF,x                               ; $3089FB |
  JMP code_3FE477                           ; $3089FE |

  db $08, $04, $08, $FC, $F8, $04, $F8, $FC ; $308A01 |
  db $F8, $08, $08, $08, $F8, $F8, $08, $F8 ; $308A09 |
  db $78, $1B, $11, $05, $02, $13           ; $308A11 |

  JSR code_3FEBD1                           ; $308A17 |
  JSR code_3FEF0C                           ; $308A1A |
  LDA #$00                                  ; $308A1D |
  STA $05B1,x                               ; $308A1F |
  STA $05C8,x                               ; $308A22 |
loc_60A25:
  LDA #$01                                  ; $308A25 |
  JSR code_3FEAB3                           ; $308A27 |
  JSR code_308A50                           ; $308A2A |
  LDA $056C,x                               ; $308A2D |
  CMP #$14                                  ; $308A30 |
  BNE loc_60A25                             ; $308A32 |
  LDA #$00                                  ; $308A34 |
  STA $0583,x                               ; $308A36 |
  JSR code_3FEF0C                           ; $308A39 |
  LDA $03CE,x                               ; $308A3C |
  EOR #$08                                  ; $308A3F |
  STA $03CE,x                               ; $308A41 |
  LDA #$35                                  ; $308A44 |
  STA $DC                                   ; $308A46 |
  LDA #$00                                  ; $308A48 |
  STA $056C,x                               ; $308A4A |
  JMP code_308AC6                           ; $308A4D |

code_308A50:
  LDA #$00                                  ; $308A50 |
  STA $EB                                   ; $308A52 |
  STA $ED                                   ; $308A54 |
  LDA $05F6,x                               ; $308A56 |
  BNE loc_60A9F                             ; $308A59 |
  CLC                                       ; $308A5B |
  LDA $05B1,x                               ; $308A5C |
  ADC #$04                                  ; $308A5F |
  STA $05B1,x                               ; $308A61 |
  LDA $05C8,x                               ; $308A64 |
  ADC #$00                                  ; $308A67 |
  STA $05C8,x                               ; $308A69 |
  BEQ loc_60A78                             ; $308A6C |
  LDA $05B1,x                               ; $308A6E |
  AND #$80                                  ; $308A71 |
  BEQ loc_60A78                             ; $308A73 |
  STA $05B1,x                               ; $308A75 |
loc_60A78:
  LDA $03CE,x                               ; $308A78 |
  CMP #$04                                  ; $308A7B |
  BEQ loc_60A95                             ; $308A7D |
  LDA $05B1,x                               ; $308A7F |
  EOR #$FF                                  ; $308A82 |
  STA $EB                                   ; $308A84 |
  LDA $05C8,x                               ; $308A86 |
  EOR #$FF                                  ; $308A89 |
  STA $ED                                   ; $308A8B |
  INC $EB                                   ; $308A8D |
  BNE loc_60A9F                             ; $308A8F |
  INC $EB                                   ; $308A91 |
  BNE loc_60A9F                             ; $308A93 |
loc_60A95:
  LDA $05B1,x                               ; $308A95 |
  STA $EB                                   ; $308A98 |
  LDA $05C8,x                               ; $308A9A |
  STA $ED                                   ; $308A9D |
loc_60A9F:
  LDA #$0D                                  ; $308A9F |
  STA $08                                   ; $308AA1 |
  LDA #$8B                                  ; $308AA3 |
  STA $09                                   ; $308AA5 |
  JSR code_3FEC0A                           ; $308AA7 |
  LDA $12                                   ; $308AAA |
  BEQ locret_60AC5                          ; $308AAC |
  LDA #$47                                  ; $308AAE |
  STA $DC                                   ; $308AB0 |
  LDA $03CE,x                               ; $308AB2 |
  CMP #$04                                  ; $308AB5 |
  BNE loc_60AC0                             ; $308AB7 |
  LDA #$0C                                  ; $308AB9 |
  STA $03CE,x                               ; $308ABB |
  BNE locret_60AC5                          ; $308ABE |
loc_60AC0:
  LDA #$04                                  ; $308AC0 |
  STA $03CE,x                               ; $308AC2 |
locret_60AC5:
  RTS                                       ; $308AC5 |

loc_60AC6:
code_308AC6:
  JSR code_3FEA6A                           ; $308AC6 |
  JSR code_3FECC4                           ; $308AC9 |
  BCC loc_60AF7                             ; $308ACC |
loc_60ACE:
  STY $0A                                   ; $308ACE |
  CPX $0A                                   ; $308AD0 |
  BEQ loc_60AF2                             ; $308AD2 |
  LDA $0583,y                               ; $308AD4 |
  CMP #$70                                  ; $308AD7 |
  BEQ loc_60AF2                             ; $308AD9 |
  LDA #$13                                  ; $308ADB |
  STA $056C,y                               ; $308ADD |
loc_60AE0:
  LDA #$00                                  ; $308AE0 |
  STA $056C,x                               ; $308AE2 |
  LDA #$35                                  ; $308AE5 |
  STA $DC                                   ; $308AE7 |
  LDY #$17                                  ; $308AE9 |
  JSR code_3ECB28                           ; $308AEB |

  db $41                                    ; $308AEE |

  JMP code_3FE477                           ; $308AEF |

loc_60AF2:
  JSR code_3FECF5                           ; $308AF2 |
  BCS loc_60ACE                             ; $308AF5 |
loc_60AF7:
  LDY #$08                                  ; $308AF7 |
  JSR code_3FE61A                           ; $308AF9 |
  LDA #$0D                                  ; $308AFC |
  STA $08                                   ; $308AFE |
  LDA #$8B                                  ; $308B00 |
  STA $09                                   ; $308B02 |
  JSR code_3FEC0A                           ; $308B04 |
  LDA $12                                   ; $308B07 |
  BEQ loc_60AC6                             ; $308B09 |
  BNE loc_60AE0                             ; $308B0B |

  db $08, $04, $08, $FC, $F8, $04, $F8, $FC ; $308B0D |
  db $F8, $0B, $08, $0B, $F8, $F5, $F8, $F5 ; $308B15 |

code_308B1D:
  LDX $8F                                   ; $308B1D |
  JSR code_3FE485                           ; $308B1F |
  BCS loc_60B2A                             ; $308B22 |
loc_60B24:
  JSR code_3FE468                           ; $308B24 |
  JMP code_308B1D                           ; $308B27 |

loc_60B2A:
  LDA $04B4,x                               ; $308B2A |
  BNE loc_60B24                             ; $308B2D |
  JMP code_3FE456                           ; $308B2F |

  db $8C, $1D, $1C, $02, $05, $14           ; $308B32 |

  JSR code_3FEBD1                           ; $308B38 |
  LDA #$40                                  ; $308B3B |
  STA $03B7,x                               ; $308B3D |
  LDA #$04                                  ; $308B40 |
  STA $03CE,x                               ; $308B42 |
  JMP code_308B5B                           ; $308B45 |

  db $8C, $1D, $1C, $02, $05, $14           ; $308B48 |

  JSR code_3FEBD1                           ; $308B4E |
  LDA #$01                                  ; $308B51 |
  STA $05B1,x                               ; $308B53 |
  LDA #$0C                                  ; $308B56 |
  STA $03CE,x                               ; $308B58 |
code_308B5B:
  LDA #$3C                                  ; $308B5B |
  STA $05B1,x                               ; $308B5D |
  CLC                                       ; $308B60 |
  LDA $067B                                 ; $308B61 |
  ADC $04CB,x                               ; $308B64 |
  STA $04CB,x                               ; $308B67 |
loc_60B6A:
code_308B6A:
  JSR code_3FE9D3                           ; $308B6A |
  JSR code_308C08                           ; $308B6D |
  DEC $05B1,x                               ; $308B70 |
  BNE loc_60B6A                             ; $308B73 |
  LDA $04CB,x                               ; $308B75 |
  STA $060D,x                               ; $308B78 |
  SEC                                       ; $308B7B |
  SBC #$10                                  ; $308B7C |
  STA $04CB,x                               ; $308B7E |
  LDA #$80                                  ; $308B81 |
  STA $00                                   ; $308B83 |
  LDA #$2E                                  ; $308B85 |
  STA $01                                   ; $308B87 |
  JSR code_3FEDA8                           ; $308B89 |
  LDA $060D,x                               ; $308B8C |
  STA $04CB,x                               ; $308B8F |
  LDA $11                                   ; $308B92 |
  BEQ loc_60BA2                             ; $308B94 |
  JSR code_3FE5B6                           ; $308B96 |
  LDA $11                                   ; $308B99 |
  CMP $03CE,x                               ; $308B9B |
  BEQ loc_60BAB                             ; $308B9E |
  BNE loc_60BE3                             ; $308BA0 |
loc_60BA2:
code_308BA2:
  LDX $8F                                   ; $308BA2 |
  LDA #$3C                                  ; $308BA4 |
  STA $05B1,x                               ; $308BA6 |
  BNE loc_60B6A                             ; $308BA9 |
loc_60BAB:
  LDY #$8D                                  ; $308BAB |
  JSR code_3FE522                           ; $308BAD |
  LDY #$14                                  ; $308BB0 |
  JSR code_3FE5AB                           ; $308BB2 |
  BCS loc_60BCE                             ; $308BB5 |
  LDY $8F                                   ; $308BB7 |
  LDA $03CE,y                               ; $308BB9 |
  STA $03CE,x                               ; $308BBC |
  LDA #$00                                  ; $308BBF |
  STA $05C8,x                               ; $308BC1 |
  LDA #$10                                  ; $308BC4 |
  JSR code_3FE8BC                           ; $308BC6 |
  LDA #$03                                  ; $308BC9 |
  STA $05B1,y                               ; $308BCB |
loc_60BCE:
  LDX $8F                                   ; $308BCE |
loc_60BD0:
  JSR code_3FE9D3                           ; $308BD0 |
  JSR code_308C08                           ; $308BD3 |
  DEC $05B1,x                               ; $308BD6 |
  BNE loc_60BD0                             ; $308BD9 |
  LDY #$8C                                  ; $308BDB |
  JSR code_3FE522                           ; $308BDD |
  JMP code_308BA2                           ; $308BE0 |

loc_60BE3:
  LDY #$8E                                  ; $308BE3 |
  JSR code_3FE522                           ; $308BE5 |
  LDA #$08                                  ; $308BE8 |
  STA $05B1,x                               ; $308BEA |
loc_60BED:
  JSR code_3FE9D3                           ; $308BED |
  JSR code_308C08                           ; $308BF0 |
  DEC $05B1,x                               ; $308BF3 |
  BNE loc_60BED                             ; $308BF6 |
  LDY #$8C                                  ; $308BF8 |
  JSR code_3FE522                           ; $308BFA |
  JSR code_3FEF18                           ; $308BFD |
  LDA #$1E                                  ; $308C00 |
  STA $05B1,x                               ; $308C02 |
  JMP code_308B6A                           ; $308C05 |

code_308C08:
  LDA #$00                                  ; $308C08 |
  STA $ED                                   ; $308C0A |
  STA $EB                                   ; $308C0C |
  STA $EC                                   ; $308C0E |
  LDA #$01                                  ; $308C10 |
  STA $EE                                   ; $308C12 |
  LDA #$20                                  ; $308C14 |
  STA $08                                   ; $308C16 |
  LDA #$8C                                  ; $308C18 |
  STA $09                                   ; $308C1A |
  JSR code_3FEC11                           ; $308C1C |
  RTS                                       ; $308C1F |

  db $08, $05, $08, $FB, $F8, $05, $F8, $FB ; $308C20 |
  db $F8, $0F, $08, $0F, $F8, $F1, $08, $F1 ; $308C28 |
  db $09, $00, $00, $10, $00, $00           ; $308C30 |

  LDA #$24                                  ; $308C36 |
  STA $0458,x                               ; $308C38 |
  LDY #$85                                  ; $308C3B |
  JSR code_3FE522                           ; $308C3D |
  JMP code_308C57                           ; $308C40 |

  db $09, $00, $00, $10, $00, $00           ; $308C43 |

  LDA #$24                                  ; $308C49 |
  STA $0458,x                               ; $308C4B |
  LDY #$85                                  ; $308C4E |
  JSR code_3FE522                           ; $308C50 |
  LDA #$36                                  ; $308C53 |
  STA $DC                                   ; $308C55 |
code_308C57:
  LDA $05DF,x                               ; $308C57 |
  STA $0583,x                               ; $308C5A |
  LDA #$11                                  ; $308C5D |
  STA $0624,x                               ; $308C5F |
loc_60C62:
  JSR code_3FEA6A                           ; $308C62 |
  DEC $0624,x                               ; $308C65 |
  BNE loc_60C62                             ; $308C68 |
  JMP code_3FE456                           ; $308C6A |

  db $88, $26, $19, $0D, $02, $33           ; $308C6D |

  JSR code_3FEBD1                           ; $308C73 |
  LDA $51                                   ; $308C76 |
  CMP #$02                                  ; $308C78 |
  BEQ loc_60C81                             ; $308C7A |
  LDA #$36                                  ; $308C7C |
  JSR code_3EC9EF                           ; $308C7E |
loc_60C81:
  LDY #$26                                  ; $308C81 |
  JSR code_3FE5AB                           ; $308C83 |
  BCS loc_60CE6                             ; $308C86 |
  LDA $8F                                   ; $308C88 |
  STA $05C8,x                               ; $308C8A |
  LDX $8F                                   ; $308C8D |
code_308C8F:
  LDA #$0D                                  ; $308C8F |
  STA $059A,x                               ; $308C91 |
  LDA #$63                                  ; $308C94 |
  STA $0583,x                               ; $308C96 |
  LDY #$88                                  ; $308C99 |
  JSR code_3FE522                           ; $308C9B |
  LDA #$5A                                  ; $308C9E |
  STA $05B1,x                               ; $308CA0 |
loc_60CA3:
  JSR code_3FEA95                           ; $308CA3 |
  DEC $05B1,x                               ; $308CA6 |
  BNE loc_60CA3                             ; $308CA9 |
  LDY #$87                                  ; $308CAB |
  JSR code_3FE522                           ; $308CAD |
  LDA #$0E                                  ; $308CB0 |
  STA $059A,x                               ; $308CB2 |
  LDA #$13                                  ; $308CB5 |
  STA $0583,x                               ; $308CB7 |
  LDA #$28                                  ; $308CBA |
  STA $05B1,x                               ; $308CBC |
loc_60CBF:
  JSR code_3FE9D3                           ; $308CBF |
  DEC $05B1,x                               ; $308CC2 |
  BNE loc_60CBF                             ; $308CC5 |
  LDY #$00                                  ; $308CC7 |
  JSR code_3FF8AE                           ; $308CC9 |
  LDA $11                                   ; $308CCC |
  STA $03CE,x                               ; $308CCE |
  LDA #$23                                  ; $308CD1 |
  STA $05B1,x                               ; $308CD3 |
loc_60CD6:
  JSR code_3FE9D3                           ; $308CD6 |
  LDY #$06                                  ; $308CD9 |
  JSR code_3FE60E                           ; $308CDB |
  DEC $05B1,x                               ; $308CDE |
  BNE loc_60CD6                             ; $308CE1 |
  JMP code_308C8F                           ; $308CE3 |

loc_60CE6:
  JMP code_3FE456                           ; $308CE6 |

  db $86, $00, $19, $01, $03, $00           ; $308CE9 |

  JSR code_3FEBD1                           ; $308CEF |
code_308CF2:
  LDA $05C8,x                               ; $308CF2 |
  TAY                                       ; $308CF5 |
  LDA $03E5,y                               ; $308CF6 |
  BMI loc_60D06                             ; $308CF9 |
  LDA #$03                                  ; $308CFB |
  JSR code_3FE8FD                           ; $308CFD |
  JSR code_3FEA6A                           ; $308D00 |
  JMP code_308CF2                           ; $308D03 |

loc_60D06:
  JMP code_3FE456                           ; $308D06 |

  db $BC, $2D, $27, $10, $05, $14           ; $308D09 |

  JSR code_3FEBD1                           ; $308D0F |
  JSR code_3FEF0C                           ; $308D12 |
  LDA #$01                                  ; $308D15 |
  STA $05B1,x                               ; $308D17 |
loc_60D1A:
  JSR code_3FE9D3                           ; $308D1A |
  LDA $04CB,x                               ; $308D1D |
  STA $060D,x                               ; $308D20 |
  CLC                                       ; $308D23 |
  ADC #$0C                                  ; $308D24 |
  STA $04CB,x                               ; $308D26 |
  LDA #$00                                  ; $308D29 |
  STA $00                                   ; $308D2B |
  LDA #$34                                  ; $308D2D |
  STA $01                                   ; $308D2F |
  JSR code_3FEDA8                           ; $308D31 |
  LDA $060D,x                               ; $308D34 |
  STA $04CB,x                               ; $308D37 |
  LDA $11                                   ; $308D3A |
  BEQ loc_60D1A                             ; $308D3C |
loc_60D3E:
  JSR code_3FE9D3                           ; $308D3E |
  JSR code_3FEF0C                           ; $308D41 |
  DEC $05B1,x                               ; $308D44 |
  BNE loc_60D3E                             ; $308D47 |
  LDY #$28                                  ; $308D49 |
  JSR code_3FE5AB                           ; $308D4B |
  BCS loc_60D5D                             ; $308D4E |
  LDY $8F                                   ; $308D50 |
  LDA $03CE,y                               ; $308D52 |
  STA $03CE,x                               ; $308D55 |
  LDA #$0B                                  ; $308D58 |
  JSR code_3FE8BC                           ; $308D5A |
loc_60D5D:
  LDX $8F                                   ; $308D5D |
  LDY #$BD                                  ; $308D5F |
  JSR code_3FE522                           ; $308D61 |
  LDA #$3C                                  ; $308D64 |
  STA $05B1,x                               ; $308D66 |
loc_60D69:
  JSR code_3FE9D3                           ; $308D69 |
  DEC $05B1,x                               ; $308D6C |
  BNE loc_60D69                             ; $308D6F |
  LDY #$BC                                  ; $308D71 |
  JSR code_3FE522                           ; $308D73 |
  LDA #$1E                                  ; $308D76 |
  STA $05B1,x                               ; $308D78 |
  BNE loc_60D1A                             ; $308D7B |

  db $BE, $2D, $27, $01, $03, $42           ; $308D7D |

  JSR code_3FEBD1                           ; $308D83 |
  LDA #$28                                  ; $308D86 |
  STA $00                                   ; $308D88 |
  LDA #$00                                  ; $308D8A |
  STA $01                                   ; $308D8C |
  LDA #$00                                  ; $308D8E |
  STA $05B1,x                               ; $308D90 |
  JSR code_3FEDA8                           ; $308D93 |
  LDA $11                                   ; $308D96 |
  BNE loc_60DB5                             ; $308D98 |
  LDY #$2E                                  ; $308D9A |
  JSR code_3FE5AB                           ; $308D9C |
  BCS loc_60DB2                             ; $308D9F |
  LDA #$BF                                  ; $308DA1 |
  STA $05B1,x                               ; $308DA3 |
  LDA #$20                                  ; $308DA6 |
  STA $0458,x                               ; $308DA8 |
  LDY $8F                                   ; $308DAB |
  LDA #$03                                  ; $308DAD |
  JSR code_3FE8FD                           ; $308DAF |
loc_60DB2:
  JMP code_3FE456                           ; $308DB2 |

loc_60DB5:
  LDA #$42                                  ; $308DB5 |
  STA $DC                                   ; $308DB7 |
  LDY #$BE                                  ; $308DB9 |
  JSR code_3FE522                           ; $308DBB |
code_308DBE:
  JSR code_3FEA6A                           ; $308DBE |
  LDY #$07                                  ; $308DC1 |
  JSR code_3FE60E                           ; $308DC3 |
  JMP code_308DBE                           ; $308DC6 |

  db $7E, $29, $13, $05, $02, $13           ; $308DC9 |

  JSR code_3FEBD1                           ; $308DCF |
  LDA $51                                   ; $308DD2 |
  CMP #$01                                  ; $308DD4 |
  BEQ loc_60DE9                             ; $308DD6 |
  CMP #$06                                  ; $308DD8 |
  BNE loc_60DE4                             ; $308DDA |
  LDA #$7E                                  ; $308DDC |
  JSR code_3EC9EF                           ; $308DDE |
  JMP code_308DE9                           ; $308DE1 |

loc_60DE4:
  LDA #$E1                                  ; $308DE4 |
  JSR code_3EC9EF                           ; $308DE6 |
loc_60DE9:
code_308DE9:
  JSR code_3FEF0C                           ; $308DE9 |
  LDA $03CE,x                               ; $308DEC |
  STA $060D,x                               ; $308DEF |
loc_60DF2:
  LDA #$80                                  ; $308DF2 |
  STA $05B1,x                               ; $308DF4 |
  LDA #$00                                  ; $308DF7 |
  STA $05C8,x                               ; $308DF9 |
loc_60DFC:
  JSR code_3FE9D3                           ; $308DFC |
  JSR code_3FE5B6                           ; $308DFF |
  LDA $11                                   ; $308E02 |
  CMP $060D,x                               ; $308E04 |
  BNE loc_60E6E                             ; $308E07 |
  LDY #$00                                  ; $308E09 |
  LDA #$00                                  ; $308E0B |
  JSR code_3FEE19                           ; $308E0D |
  LDA #$BE                                  ; $308E10 |
  STA $08                                   ; $308E12 |
  LDA #$8E                                  ; $308E14 |
  STA $09                                   ; $308E16 |
  JSR code_3FEC0A                           ; $308E18 |
  LDA $12                                   ; $308E1B |
  BEQ loc_60E22                             ; $308E1D |
  JMP code_308E99                           ; $308E1F |

loc_60E22:
code_308E22:
  LDA $05F6,x                               ; $308E22 |
  BEQ loc_60DFC                             ; $308E25 |
loc_60E27:
  JSR code_3FE9D3                           ; $308E27 |
  LDA #$00                                  ; $308E2A |
  STA $ED                                   ; $308E2C |
  STA $EB                                   ; $308E2E |
  LDA #$BE                                  ; $308E30 |
  STA $08                                   ; $308E32 |
  LDA #$8E                                  ; $308E34 |
  STA $09                                   ; $308E36 |
  JSR code_3FEC0A                           ; $308E38 |
  LDA $05F6,x                               ; $308E3B |
  BNE loc_60E27                             ; $308E3E |
  LDA #$0C                                  ; $308E40 |
  STA $05B1,x                               ; $308E42 |
  LDA #$01                                  ; $308E45 |
  STA $05C8,x                               ; $308E47 |
loc_60E4A:
  JSR code_3FE9D3                           ; $308E4A |
  DEC $05C8,x                               ; $308E4D |
  BNE loc_60E67                             ; $308E50 |
  LDA $05B1,x                               ; $308E52 |
  AND #$01                                  ; $308E55 |
  TAY                                       ; $308E57 |
  LDA $8ECE,y                               ; $308E58 |
  CLC                                       ; $308E5B |
  ADC $04CB,x                               ; $308E5C |
  STA $04CB,x                               ; $308E5F |
  LDA #$03                                  ; $308E62 |
  STA $05C8,x                               ; $308E64 |
loc_60E67:
  DEC $05B1,x                               ; $308E67 |
  BNE loc_60E4A                             ; $308E6A |
  BEQ loc_60DF2                             ; $308E6C |
loc_60E6E:
  STA $060D,x                               ; $308E6E |
  LDA #$1E                                  ; $308E71 |
  STA $0624,x                               ; $308E73 |
loc_60E76:
  JSR code_3FE9D3                           ; $308E76 |
  LDY #$00                                  ; $308E79 |
  LDA #$00                                  ; $308E7B |
  JSR code_3FEE19                           ; $308E7D |
  LDA #$BE                                  ; $308E80 |
  STA $08                                   ; $308E82 |
  LDA #$8E                                  ; $308E84 |
  STA $09                                   ; $308E86 |
  JSR code_3FEC0A                           ; $308E88 |
  LDA $05F6,x                               ; $308E8B |
  BNE loc_60E27                             ; $308E8E |
  LDA $12                                   ; $308E90 |
  BNE loc_60E99                             ; $308E92 |
  DEC $0624,x                               ; $308E94 |
  BNE loc_60E76                             ; $308E97 |
loc_60E99:
code_308E99:
  LDA $03CE,x                               ; $308E99 |
  EOR #$08                                  ; $308E9C |
  STA $03CE,x                               ; $308E9E |
  LDA #$18                                  ; $308EA1 |
  STA $0624,x                               ; $308EA3 |
  LDY #$7F                                  ; $308EA6 |
  JSR code_3FE522                           ; $308EA8 |
loc_60EAB:
  JSR code_3FE9D3                           ; $308EAB |
  DEC $0624,x                               ; $308EAE |
  BNE loc_60EAB                             ; $308EB1 |
  LDY #$7E                                  ; $308EB3 |
  JSR code_3FE522                           ; $308EB5 |
  JSR code_3FE5DF                           ; $308EB8 |
  JMP code_308E22                           ; $308EBB |

  db $08, $04, $08, $FC, $F8, $04, $F8, $FC ; $308EBE |
  db $F8, $0A, $08, $0A, $F8, $F8, $08, $F8 ; $308EC6 |
  db $02, $FE, $80, $28, $14, $05, $03, $13 ; $308ECE |

  JSR code_3FEBD1                           ; $308ED6 |
loc_60ED9:
code_308ED9:
  LDA #$02                                  ; $308ED9 |
  JSR code_3FEAB3                           ; $308EDB |
  LDY #$80                                  ; $308EDE |
  JSR code_3FE522                           ; $308EE0 |
  LDA #$2F                                  ; $308EE3 |
  STA $08                                   ; $308EE5 |
  LDA #$8F                                  ; $308EE7 |
  STA $09                                   ; $308EE9 |
  JSR code_3ECC54                           ; $308EEB |
  LDA $8F32,y                               ; $308EEE |
  STA $05B1,x                               ; $308EF1 |
loc_60EF4:
  LDA #$02                                  ; $308EF4 |
  JSR code_3FEAB3                           ; $308EF6 |
  JSR code_3FEF0C                           ; $308EF9 |
  DEC $05B1,x                               ; $308EFC |
  BNE loc_60EF4                             ; $308EFF |
  LDY #$81                                  ; $308F01 |
  JSR code_3FE522                           ; $308F03 |
  LDY #$2F                                  ; $308F06 |
  JSR code_3FE5AB                           ; $308F08 |
  BCS loc_60ED9                             ; $308F0B |
  LDY $8F                                   ; $308F0D |
  LDA $03CE,y                               ; $308F0F |
  STA $03CE,x                               ; $308F12 |
  TXA                                       ; $308F15 |
  STA $05B1,y                               ; $308F16 |
  LDA #$0D                                  ; $308F19 |
  JSR code_3FE8FD                           ; $308F1B |
loc_60F1E:
  LDA #$02                                  ; $308F1E |
  JSR code_3FEAB3                           ; $308F20 |
  LDA $05B1,x                               ; $308F23 |
  TAY                                       ; $308F26 |
  LDA $03A0,y                               ; $308F27 |
  BNE loc_60F1E                             ; $308F2A |
  JMP code_308ED9                           ; $308F2C |

  db $2F, $50, $80, $1E, $3C, $5A, $82, $28 ; $308F2F |
  db $14, $01, $02, $42                     ; $308F37 |

  JSR code_3FEBD1                           ; $308F3B |
  LDA #$45                                  ; $308F3E |
  STA $DC                                   ; $308F40 |
  LDA #$E3                                  ; $308F42 |
  STA $08                                   ; $308F44 |
  LDA #$8F                                  ; $308F46 |
  STA $09                                   ; $308F48 |
  JSR code_3ECC54                           ; $308F4A |
  LDA $8FE7,y                               ; $308F4D |
  STA $05B1,x                               ; $308F50 |
  LDA $8FE5,y                               ; $308F53 |
  STA $05C8,x                               ; $308F56 |
  LDA #$FD                                  ; $308F59 |
  STA $0624,x                               ; $308F5B |
  LDA #$00                                  ; $308F5E |
  STA $060D,x                               ; $308F60 |
  LDA $03CE,x                               ; $308F63 |
  CMP #$04                                  ; $308F66 |
  BEQ loc_60F82                             ; $308F68 |
  LDA $05C8,x                               ; $308F6A |
  EOR #$FF                                  ; $308F6D |
  STA $05C8,x                               ; $308F6F |
  LDA $05B1,x                               ; $308F72 |
  EOR #$FF                                  ; $308F75 |
  STA $05B1,x                               ; $308F77 |
  INC $05B1,x                               ; $308F7A |
  BNE loc_60F82                             ; $308F7D |
  INC $05C8,x                               ; $308F7F |
loc_60F82:
  LDA #$08                                  ; $308F82 |
  STA $03CE,x                               ; $308F84 |
  JSR code_3FEA7C                           ; $308F87 |
  LDY #$03                                  ; $308F8A |
  JSR code_3FEE9A                           ; $308F8C |
  LDA $05B1,x                               ; $308F8F |
  STA $EB                                   ; $308F92 |
  LDA $05C8,x                               ; $308F94 |
  STA $ED                                   ; $308F97 |
  JSR code_3FE4D1                           ; $308F99 |
  LDA #$00                                  ; $308F9C |
  STA $00                                   ; $308F9E |
  STA $01                                   ; $308FA0 |
  STA $11                                   ; $308FA2 |
  JSR code_3ED9CD                           ; $308FA4 |
  LDA $11                                   ; $308FA7 |
  CMP #$02                                  ; $308FA9 |
  BEQ loc_60FBE                             ; $308FAB |
  CMP #$0F                                  ; $308FAD |
  BEQ loc_60FB7                             ; $308FAF |
  AND #$01                                  ; $308FB1 |
  BNE loc_60FC6                             ; $308FB3 |
  BEQ loc_60F82                             ; $308FB5 |
loc_60FB7:
  LDA #$20                                  ; $308FB7 |
  STA $05DF,x                               ; $308FB9 |
  BNE loc_60F82                             ; $308FBC |
loc_60FBE:
  LDX $8F                                   ; $308FBE |
  JSR code_3EDDF8                           ; $308FC0 |
  JMP code_3FE456                           ; $308FC3 |

loc_60FC6:
  LDA #$35                                  ; $308FC6 |
  STA $DC                                   ; $308FC8 |
  LDY #$48                                  ; $308FCA |
  JSR code_3ECB28                           ; $308FCC |

  db $41                                    ; $308FCF |

  JMP code_3FE477                           ; $308FD0 |

  db $04, $04, $04, $FC, $FC, $04, $FC, $FC ; $308FD3 |
  db $FC, $04, $04, $04, $FC, $FC, $04, $FC ; $308FDB |
  db $9F, $60, $00, $01, $D0, $A0, $90, $27 ; $308FE3 |
  db $1B, $06, $00, $63                     ; $308FEB |

  JSR code_3FEBD1                           ; $308FEF |
  LDA #$00                                  ; $308FF2 |
  STA $05C8,x                               ; $308FF4 |
code_308FF7:
  LDY #$90                                  ; $308FF7 |
  JSR code_3FE522                           ; $308FF9 |
  LDA #$28                                  ; $308FFC |
  STA $08                                   ; $308FFE |
  LDA #$93                                  ; $309000 |
  STA $09                                   ; $309002 |
  JSR code_3ECC54                           ; $309004 |
  LDA $932A,y                               ; $309007 |
  STA $05B1,x                               ; $30900A |
loc_6100D:
  JSR code_3FEF0C                           ; $30900D |
  JSR code_3092E3                           ; $309010 |
  LDA $05C8,x                               ; $309013 |
  BNE loc_61051                             ; $309016 |
  DEC $05B1,x                               ; $309018 |
  BNE loc_6100D                             ; $30901B |
  LDY #$91                                  ; $30901D |
  JSR code_3FE522                           ; $30901F |
  LDY #$2E                                  ; $309022 |
  JSR code_3FE5AB                           ; $309024 |
  BCS loc_6103D                             ; $309027 |
  LDA #$97                                  ; $309029 |
  STA $05B1,x                               ; $30902B |
  LDY $8F                                   ; $30902E |
  LDA #$08                                  ; $309030 |
  JSR code_3FE8FD                           ; $309032 |
  LDY $8F                                   ; $309035 |
  TXA                                       ; $309037 |
  STA $05B1,y                               ; $309038 |
  LDX $8F                                   ; $30903B |
loc_6103D:
  JSR code_3092E3                           ; $30903D |
  LDA $05C8,x                               ; $309040 |
  BNE loc_61051                             ; $309043 |
  LDA $05B1,x                               ; $309045 |
  TAY                                       ; $309048 |
  LDA $03A0,y                               ; $309049 |
  BNE loc_6103D                             ; $30904C |
  JMP code_308FF7                           ; $30904E |

loc_61051:
  LDY #$92                                  ; $309051 |
  JSR code_3FE522                           ; $309053 |
  LDA #$80                                  ; $309056 |
  STA $05DF,x                               ; $309058 |
  LDA #$FC                                  ; $30905B |
  STA $05F6,x                               ; $30905D |
  LDA #$1E                                  ; $309060 |
  STA $059A,x                               ; $309062 |
loc_61065:
  JSR code_3092E3                           ; $309065 |
  LDA $03CE,x                               ; $309068 |
  TAY                                       ; $30906B |
  LDA $922D,y                               ; $30906C |
  STA $ED                                   ; $30906F |
  LDA $922F,y                               ; $309071 |
  STA $EB                                   ; $309074 |
  LDA #$1B                                  ; $309076 |
  STA $08                                   ; $309078 |
  LDA #$92                                  ; $30907A |
  STA $09                                   ; $30907C |
  JSR code_3FEC0A                           ; $30907E |
  LDA $12                                   ; $309081 |
  AND #$01                                  ; $309083 |
  BNE loc_61095                             ; $309085 |
  LDA $11                                   ; $309087 |
  CMP #$02                                  ; $309089 |
  BEQ loc_610A2                             ; $30908B |
  CMP #$0F                                  ; $30908D |
  BEQ loc_610A2                             ; $30908F |
  AND #$01                                  ; $309091 |
  BEQ loc_61065                             ; $309093 |
loc_61095:
  LDA #$35                                  ; $309095 |
  STA $DC                                   ; $309097 |
  LDY #$25                                  ; $309099 |
  JSR code_3ECB28                           ; $30909B |

  db $41                                    ; $30909E |

  JMP code_3FE477                           ; $30909F |

loc_610A2:
  LDY #$93                                  ; $3090A2 |
  JSR code_3FE522                           ; $3090A4 |
  LDA #$14                                  ; $3090A7 |
  STA $05B1,x                               ; $3090A9 |
loc_610AC:
  JSR code_3092E3                           ; $3090AC |
  LDA #$00                                  ; $3090AF |
  STA $00                                   ; $3090B1 |
  STA $01                                   ; $3090B3 |
  STA $11                                   ; $3090B5 |
  JSR code_3ED9CD                           ; $3090B7 |
  LDA $11                                   ; $3090BA |
  CMP #$02                                  ; $3090BC |
  BNE loc_610CF                             ; $3090BE |
  LDA #$00                                  ; $3090C0 |
  STA $ED                                   ; $3090C2 |
  STA $EB                                   ; $3090C4 |
  STA $EC                                   ; $3090C6 |
  LDA #$FF                                  ; $3090C8 |
  STA $EE                                   ; $3090CA |
  JSR code_3FE4D1                           ; $3090CC |
loc_610CF:
  DEC $05B1,x                               ; $3090CF |
  BNE loc_610AC                             ; $3090D2 |
  LDY #$94                                  ; $3090D4 |
  JSR code_3FE522                           ; $3090D6 |
loc_610D9:
  JSR code_3092E3                           ; $3090D9 |
  LDA $056C,x                               ; $3090DC |
  BNE loc_610D9                             ; $3090DF |
  LDA #$50                                  ; $3090E1 |
  STA $0583,x                               ; $3090E3 |
  LDA #$00                                  ; $3090E6 |
  STA $05DF,x                               ; $3090E8 |
  STA $0624,x                               ; $3090EB |
loc_610EE:
code_3090EE:
  JSR code_3092E3                           ; $3090EE |
  JSR code_309265                           ; $3090F1 |
  LDY #$00                                  ; $3090F4 |
  STY $08                                   ; $3090F6 |
  LDA $05DF,x                               ; $3090F8 |
  BNE loc_610EE                             ; $3090FB |
  LDA $056C,x                               ; $3090FD |
  CMP #$20                                  ; $309100 |
  BEQ loc_61127                             ; $309102 |
  LDA #$00                                  ; $309104 |
  STA $00                                   ; $309106 |
  STA $01                                   ; $309108 |
  STA $11                                   ; $30910A |
  JSR code_3ED9CD                           ; $30910C |
  LDA $11                                   ; $30910F |
  CMP #$02                                  ; $309111 |
  BNE loc_610EE                             ; $309113 |
  LDA #$00                                  ; $309115 |
  STA $ED                                   ; $309117 |
  STA $EB                                   ; $309119 |
  STA $EC                                   ; $30911B |
  LDA #$FF                                  ; $30911D |
  STA $EE                                   ; $30911F |
  JSR code_3FE4D1                           ; $309121 |
  JMP code_3090EE                           ; $309124 |

loc_61127:
  LDY #$95                                  ; $309127 |
  JSR code_3FE522                           ; $309129 |
  LDA $03CE                                 ; $30912C |
  AND #$03                                  ; $30912F |
  LSR                                       ; $309131 |
  TAY                                       ; $309132 |
  LDA $9219,y                               ; $309133 |
  STA $03CE,x                               ; $309136 |
  LDA #$80                                  ; $309139 |
  STA $05B1,x                               ; $30913B |
  LDA #$01                                  ; $30913E |
  STA $05C8,x                               ; $309140 |
  LDA #$0C                                  ; $309143 |
  STA $05DF,x                               ; $309145 |
loc_61148:
code_309148:
  JSR code_3092E3                           ; $309148 |
  JSR code_309231                           ; $30914B |
  LDY #$04                                  ; $30914E |
  JSR code_3FEE69                           ; $309150 |
  LDA $05C8,x                               ; $309153 |
  BEQ loc_61187                             ; $309156 |
  LDA #$00                                  ; $309158 |
  STA $EE                                   ; $30915A |
  STA $EC                                   ; $30915C |
  LDA #$1B                                  ; $30915E |
  STA $08                                   ; $309160 |
  LDA #$92                                  ; $309162 |
  STA $09                                   ; $309164 |
  JSR code_3FEC11                           ; $309166 |
  LDA $12                                   ; $309169 |
  AND #$01                                  ; $30916B |
  BNE loc_61148                             ; $30916D |
  LDA $056C,x                               ; $30916F |
  CMP #$40                                  ; $309172 |
  BEQ loc_611DA                             ; $309174 |
  CMP #$20                                  ; $309176 |
  BNE loc_61148                             ; $309178 |
  LDA $ED                                   ; $30917A |
  STA $069B                                 ; $30917C |
  LDA $EB                                   ; $30917F |
  LDA $069A                                 ; $309181 |
  JMP code_309148                           ; $309184 |

loc_61187:
  LDA #$10                                  ; $309187 |
  STA $05B1,x                               ; $309189 |
  LDA $03CE,x                               ; $30918C |
  LSR $03CE,x                               ; $30918F |
  LSR $03CE,x                               ; $309192 |
  LSR $03CE,x                               ; $309195 |
loc_61198:
  JSR code_3092E3                           ; $309198 |
  JSR code_309231                           ; $30919B |
  LDA #$00                                  ; $30919E |
  STA $EE                                   ; $3091A0 |
  STA $EC                                   ; $3091A2 |
  STA $EB                                   ; $3091A4 |
  LDA $03CE,x                               ; $3091A6 |
  TAY                                       ; $3091A9 |
  LDA $922B,y                               ; $3091AA |
  STA $ED                                   ; $3091AD |
  LDA #$1B                                  ; $3091AF |
  STA $08                                   ; $3091B1 |
  LDA #$92                                  ; $3091B3 |
  STA $09                                   ; $3091B5 |
  JSR code_3FEC11                           ; $3091B7 |
  LDA $12                                   ; $3091BA |
  AND #$01                                  ; $3091BC |
  BNE loc_611D5                             ; $3091BE |
  LDA $056C,x                               ; $3091C0 |
  CMP #$40                                  ; $3091C3 |
  BEQ loc_611DA                             ; $3091C5 |
  CMP #$20                                  ; $3091C7 |
  BNE loc_611D5                             ; $3091C9 |
  LDA $ED                                   ; $3091CB |
  STA $069B                                 ; $3091CD |
  LDA $EB                                   ; $3091D0 |
  LDA $069A                                 ; $3091D2 |
loc_611D5:
  DEC $05B1,x                               ; $3091D5 |
  BNE loc_61198                             ; $3091D8 |
loc_611DA:
  JSR code_309231                           ; $3091DA |
  LDY #$94                                  ; $3091DD |
  JSR code_3FE522                           ; $3091DF |
  LDA #$1D                                  ; $3091E2 |
  STA $059A,x                               ; $3091E4 |
  SEC                                       ; $3091E7 |
  LDA $04CB                                 ; $3091E8 |
  SBC #$04                                  ; $3091EB |
  STA $04CB                                 ; $3091ED |
  LDA #$04                                  ; $3091F0 |
  STA $05DF,x                               ; $3091F2 |
  LDA #$00                                  ; $3091F5 |
  STA $0624,x                               ; $3091F7 |
  LDA #$10                                  ; $3091FA |
  STA $060D,x                               ; $3091FC |
loc_611FF:
  LDA #$00                                  ; $3091FF |
  STA $056C,x                               ; $309201 |
  JSR code_3092E3                           ; $309204 |
  JSR code_309297                           ; $309207 |
  LDA $056C,x                               ; $30920A |
  CMP #$20                                  ; $30920D |
  BEQ loc_611FF                             ; $30920F |
  LDA #$1E                                  ; $309211 |
  STA $059A,x                               ; $309213 |
  JMP code_3090EE                           ; $309216 |

  db $04, $0C, $10, $F6, $10, $F6, $F0, $F6 ; $309219 |
  db $F0, $F6, $FC, $00, $04, $00, $FC, $00 ; $309221 |
  db $04, $00, $01, $FF, $00, $FF, $C0, $40 ; $309229 |

code_309231:
  LDA $03CE,x                               ; $309231 |
  STA $03                                   ; $309234 |
  LDA $05DF,x                               ; $309236 |
  BEQ loc_6125D                             ; $309239 |
  CMP #$05                                  ; $30923B |
  BCC loc_61265                             ; $30923D |
  LDA #$08                                  ; $30923F |
  STA $03CE,x                               ; $309241 |
  LDY #$01                                  ; $309244 |
  JSR code_3FE60E                           ; $309246 |
  DEC $05DF,x                               ; $309249 |
  LDA #$00                                  ; $30924C |
  STA $ED                                   ; $30924E |
  STA $EB                                   ; $309250 |
  STA $EE                                   ; $309252 |
  LDA #$80                                  ; $309254 |
  STA $EC                                   ; $309256 |
  LDX #$00                                  ; $309258 |
  JSR code_3FE4D3                           ; $30925A |
loc_6125D:
  LDX $8F                                   ; $30925D |
  LDA $03                                   ; $30925F |
  STA $03CE,x                               ; $309261 |
  RTS                                       ; $309264 |

loc_61265:
code_309265:
  LDA $03CE,x                               ; $309265 |
  STA $03                                   ; $309268 |
  LDA $05DF,x                               ; $30926A |
  BEQ loc_6125D                             ; $30926D |
  LDA #$00                                  ; $30926F |
  STA $03CE,x                               ; $309271 |
  LDY #$01                                  ; $309274 |
  JSR code_3FE60E                           ; $309276 |
  DEC $05DF,x                               ; $309279 |
  LDA #$00                                  ; $30927C |
  STA $ED                                   ; $30927E |
  STA $EB                                   ; $309280 |
  LDA #$FF                                  ; $309282 |
  STA $EE                                   ; $309284 |
  LDA #$80                                  ; $309286 |
  STA $EC                                   ; $309288 |
  LDX #$00                                  ; $30928A |
  JSR code_3FE4D3                           ; $30928C |
  LDX $8F                                   ; $30928F |
  LDA $03                                   ; $309291 |
  STA $03CE,x                               ; $309293 |
  RTS                                       ; $309296 |

code_309297:
  LDA $0624,x                               ; $309297 |
  AND #$01                                  ; $30929A |
  BEQ loc_612C3                             ; $30929C |
  LDA $0624,x                               ; $30929E |
  AND #$80                                  ; $3092A1 |
  BEQ loc_612BB                             ; $3092A3 |
  LDA $04E2                                 ; $3092A5 |
  CLC                                       ; $3092A8 |
  ADC #$80                                  ; $3092A9 |
  STA $04E2                                 ; $3092AB |
  LDA $04CB                                 ; $3092AE |
  ADC #$01                                  ; $3092B1 |
  STA $04CB                                 ; $3092B3 |
  LDA #$81                                  ; $3092B6 |
  STA $0624,x                               ; $3092B8 |
loc_612BB:
  LDA #$1D                                  ; $3092BB |
  STA $059A,x                               ; $3092BD |
  JMP code_3092D0                           ; $3092C0 |

loc_612C3:
  LDA #$17                                  ; $3092C3 |
  STA $059A,x                               ; $3092C5 |
  LDA #$00                                  ; $3092C8 |
  STA $0624,x                               ; $3092CA |
  INC $04CB                                 ; $3092CD |
code_3092D0:
  DEC $060D,x                               ; $3092D0 |
  BNE locret_612E2                          ; $3092D3 |
  LDA $0624,x                               ; $3092D5 |
  EOR #$01                                  ; $3092D8 |
  STA $0624,x                               ; $3092DA |
  LDA #$10                                  ; $3092DD |
  STA $060D,x                               ; $3092DF |
locret_612E2:
  RTS                                       ; $3092E2 |

code_3092E3:
  LDX $8F                                   ; $3092E3 |
  LDA $056C,x                               ; $3092E5 |
  BEQ loc_61313                             ; $3092E8 |
  CMP #$14                                  ; $3092EA |
  BEQ loc_612F6                             ; $3092EC |
  CMP #$13                                  ; $3092EE |
  BNE loc_61313                             ; $3092F0 |
  LDA $9B                                   ; $3092F2 |
  BNE loc_61313                             ; $3092F4 |
loc_612F6:
  LDA #$70                                  ; $3092F6 |
  STA $0583,x                               ; $3092F8 |
  LDA #$00                                  ; $3092FB |
  STA $056C,x                               ; $3092FD |
  INC $05C8,x                               ; $309300 |
  JSR code_3FE5B6                           ; $309303 |
  LDA #$00                                  ; $309306 |
  LDY $11                                   ; $309308 |
  CPY #$0C                                  ; $30930A |
  BEQ loc_61310                             ; $30930C |
  LDA #$01                                  ; $30930E |
loc_61310:
  STA $03CE,x                               ; $309310 |
loc_61313:
  LDA #$00                                  ; $309313 |
  STA $056C,x                               ; $309315 |
  JSR code_3FE485                           ; $309318 |
  BCS loc_61320                             ; $30931B |
  JMP code_3FE468                           ; $30931D |

loc_61320:
  LDA #$00                                  ; $309320 |
  STA $056C,x                               ; $309322 |
  JMP code_3FE456                           ; $309325 |

  db $C7, $38, $78, $3C, $97, $00, $1B, $01 ; $309328 |
  db $00, $43                               ; $309330 |

  JSR code_3FEBD1                           ; $309332 |
  LDA #$43                                  ; $309335 |
  STA $DC                                   ; $309337 |
  LDY $05B1,x                               ; $309339 |
  JSR code_3FE522                           ; $30933C |
  LDA #$08                                  ; $30933F |
  STA $03CE,x                               ; $309341 |
  LDA #$FB                                  ; $309344 |
  STA $0624,x                               ; $309346 |
  LDA #$80                                  ; $309349 |
  STA $060D,x                               ; $30934B |
  LDA #$00                                  ; $30934E |
  STA $05B1,x                               ; $309350 |
  SEC                                       ; $309353 |
  LDA $0486                                 ; $309354 |
  SBC $0486,x                               ; $309357 |
  BPL loc_61360                             ; $30935A |
  EOR #$FF                                  ; $30935C |
  ADC #$01                                  ; $30935E |
loc_61360:
  STA $05C8,x                               ; $309360 |
  ASL $05C8,x                               ; $309363 |
  ROL $05B1,x                               ; $309366 |
  ASL $05C8,x                               ; $309369 |
  ROL $05B1,x                               ; $30936C |
  JSR code_3FE5B6                           ; $30936F |
  LDA $11                                   ; $309372 |
  CMP #$04                                  ; $309374 |
  BEQ loc_61390                             ; $309376 |
  LDA $05B1,x                               ; $309378 |
  EOR #$FF                                  ; $30937B |
  STA $05B1,x                               ; $30937D |
  LDA $05C8,x                               ; $309380 |
  EOR #$FF                                  ; $309383 |
  STA $05C8,x                               ; $309385 |
  INC $05C8,x                               ; $309388 |
  BNE loc_61390                             ; $30938B |
  INC $05B1,x                               ; $30938D |
loc_61390:
code_309390:
  JSR code_3FEA7C                           ; $309390 |
  LDA $05B1,x                               ; $309393 |
  STA $ED                                   ; $309396 |
  LDA $05C8,x                               ; $309398 |
  STA $EB                                   ; $30939B |
  LDY #$03                                  ; $30939D |
  JSR code_3FEE9A                           ; $30939F |
  JSR code_3FE4D1                           ; $3093A2 |
  JMP code_309390                           ; $3093A5 |

  db $8A, $27, $1A, $07, $01, $13           ; $3093A8 |

  JSR code_3FEBD1                           ; $3093AE |
  LDA #$16                                  ; $3093B1 |
  JSR code_3ECAA4                           ; $3093B3 |
  JSR code_3FE5B6                           ; $3093B6 |
  LDA $11                                   ; $3093B9 |
  STA $03CE,x                               ; $3093BB |
  LDA #$02                                  ; $3093BE |
  STA $05DF,x                               ; $3093C0 |
  LDA #$00                                  ; $3093C3 |
  STA $05F6,x                               ; $3093C5 |
code_3093C8:
  LDY #$8A                                  ; $3093C8 |
  JSR code_3FE522                           ; $3093CA |
  LDA #$2A                                  ; $3093CD |
  STA $05B1,x                               ; $3093CF |
loc_613D2:
  LDA #$02                                  ; $3093D2 |
  JSR code_3FEAB3                           ; $3093D4 |
  LDA $056C,x                               ; $3093D7 |
  BEQ loc_613DF                             ; $3093DA |
  JSR code_3FECFC                           ; $3093DC |
loc_613DF:
  LDY #$04                                  ; $3093DF |
  JSR code_3FE60E                           ; $3093E1 |
  DEC $05B1,x                               ; $3093E4 |
  BNE loc_613D2                             ; $3093E7 |
  LDA #$46                                  ; $3093E9 |
  STA $08                                   ; $3093EB |
  LDA #$94                                  ; $3093ED |
  STA $09                                   ; $3093EF |
  JSR code_3ECC54                           ; $3093F1 |
  TYA                                       ; $3093F4 |
  CMP $05DF,x                               ; $3093F5 |
  BNE loc_61406                             ; $3093F8 |
  LDA $05F6,x                               ; $3093FA |
  CMP #$02                                  ; $3093FD |
  BCC loc_6140F                             ; $3093FF |
  INY                                       ; $309401 |
  TYA                                       ; $309402 |
  AND #$01                                  ; $309403 |
  TAY                                       ; $309405 |
loc_61406:
  TYA                                       ; $309406 |
  STA $05DF,x                               ; $309407 |
  LDA #$00                                  ; $30940A |
  STA $05F6,x                               ; $30940C |
loc_6140F:
  INC $05F6,x                               ; $30940F |
  LDA $9448,y                               ; $309412 |
  STA $00                                   ; $309415 |
  LDA $944A,y                               ; $309417 |
  STA $01                                   ; $30941A |
  JMP ($0000)                               ; $30941C |

  LDY #$8B                                  ; $30941F |
  JSR code_3FE522                           ; $309421 |
  LDA #$0C                                  ; $309424 |
  STA $05B1,x                               ; $309426 |
loc_61429:
  LDA #$02                                  ; $309429 |
  JSR code_3FEAB3                           ; $30942B |
  DEC $05B1,x                               ; $30942E |
  BNE loc_61429                             ; $309431 |
  LDY #$30                                  ; $309433 |
  JSR code_3FE5AB                           ; $309435 |
  BCS loc_61441                             ; $309438 |
  LDY $8F                                   ; $30943A |
  LDA #$00                                  ; $30943C |
  JSR code_3FE8FD                           ; $30943E |
loc_61441:
  LDX $8F                                   ; $309441 |
  JMP code_3093C8                           ; $309443 |

  db $9F, $60, $1F, $C8, $94, $93           ; $309446 |

loc_6144C:
  JMP code_3FE456                           ; $30944C |

  db $89, $00, $16, $01, $02, $42           ; $30944F |

  JSR code_3FEBD1                           ; $309455 |
  LDA $03FC,x                               ; $309458 |
  BPL loc_61472                             ; $30945B |
  LDA #$00                                  ; $30945D |
  STA $00                                   ; $30945F |
  STA $11                                   ; $309461 |
  STA $01                                   ; $309463 |
  JSR code_3ED9CD                           ; $309465 |
  LDA $11                                   ; $309468 |
  AND #$01                                  ; $30946A |
  BNE loc_6144C                             ; $30946C |
  LDA #$45                                  ; $30946E |
  STA $DC                                   ; $309470 |
loc_61472:
  LDA #$08                                  ; $309472 |
  STA $03CE,x                               ; $309474 |
  LDA #$00                                  ; $309477 |
  STA $0624,x                               ; $309479 |
  LDA #$00                                  ; $30947C |
  STA $060D,x                               ; $30947E |
loc_61481:
  JSR code_3FE9D3                           ; $309481 |
  LDA #$00                                  ; $309484 |
  STA $ED                                   ; $309486 |
  STA $EB                                   ; $309488 |
  LDY #$03                                  ; $30948A |
  JSR code_3FEE9A                           ; $30948C |
  JSR code_3FE4D1                           ; $30948F |
  LDA #$00                                  ; $309492 |
  STA $00                                   ; $309494 |
  STA $11                                   ; $309496 |
  LDA #$04                                  ; $309498 |
  STA $01                                   ; $30949A |
  JSR code_3ED9CD                           ; $30949C |
  LDA $11                                   ; $30949F |
  CMP #$02                                  ; $3094A1 |
  BEQ loc_6150A                             ; $3094A3 |
  CMP #$0F                                  ; $3094A5 |
  BNE loc_614B3                             ; $3094A7 |
  LDA $03B7,x                               ; $3094A9 |
  ORA #$20                                  ; $3094AC |
  STA $03B7,x                               ; $3094AE |
  BNE loc_61481                             ; $3094B1 |
loc_614B3:
  AND #$01                                  ; $3094B3 |
  BEQ loc_61481                             ; $3094B5 |
  LDA #$19                                  ; $3094B7 |
  STA $08                                   ; $3094B9 |
  LDA #$95                                  ; $3094BB |
  STA $09                                   ; $3094BD |
  LDA #$00                                  ; $3094BF |
  STA $ED                                   ; $3094C1 |
  STA $EB                                   ; $3094C3 |
  JSR code_3FEC0A                           ; $3094C5 |
  SEC                                       ; $3094C8 |
  LDA $04CB,x                               ; $3094C9 |
  SBC #$04                                  ; $3094CC |
  STA $04CB,x                               ; $3094CE |
  LDY #$83                                  ; $3094D1 |
  JSR code_3FE522                           ; $3094D3 |
  LDA #$14                                  ; $3094D6 |
  STA $05B1,x                               ; $3094D8 |
loc_614DB:
  JSR code_3FE9D3                           ; $3094DB |
  DEC $05B1,x                               ; $3094DE |
  BNE loc_614DB                             ; $3094E1 |
  LDY #$84                                  ; $3094E3 |
  JSR code_3FE522                           ; $3094E5 |
  LDA #$14                                  ; $3094E8 |
  STA $05B1,x                               ; $3094EA |
loc_614ED:
  JSR code_3FE9D3                           ; $3094ED |
  DEC $05B1,x                               ; $3094F0 |
  BNE loc_614ED                             ; $3094F3 |
  LDY #$C3                                  ; $3094F5 |
  JSR code_3FE522                           ; $3094F7 |
  LDA #$10                                  ; $3094FA |
  STA $05B1,x                               ; $3094FC |
loc_614FF:
  JSR code_3FE9D3                           ; $3094FF |
  DEC $05B1,x                               ; $309502 |
  BNE loc_614FF                             ; $309505 |
  JMP code_3FE456                           ; $309507 |

loc_6150A:
  LDA $04CB,x                               ; $30950A |
  CLC                                       ; $30950D |
  ADC #$05                                  ; $30950E |
  STA $04CB,x                               ; $309510 |
  JSR code_3EDDF8                           ; $309513 |
  JMP code_3FE456                           ; $309516 |

  db $00, $FB, $00, $FB, $00, $FB, $00, $FB ; $309519 |
  db $00, $04, $00, $04, $00, $04, $00, $04 ; $309521 |
  db $B9, $28, $26, $1C, $00, $63           ; $309529 |

  JSR code_3FEBD1                           ; $30952F |
  JMP code_309549                           ; $309532 |

  db $B9, $2C, $26, $1C, $00, $63           ; $309535 |

  JSR code_3FEBD1                           ; $30953B |
  LDA $51                                   ; $30953E |
  CMP #$06                                  ; $309540 |
  BNE loc_61549                             ; $309542 |
  LDA #$EB                                  ; $309544 |
  JSR code_3EC9EF                           ; $309546 |
loc_61549:
code_309549:
  JSR code_3FE5B6                           ; $309549 |
  LDA $11                                   ; $30954C |
  STA $03CE,x                               ; $30954E |
loc_61551:
  LDA #$00                                  ; $309551 |
  JSR code_3FEAB3                           ; $309553 |
  JSR code_30970C                           ; $309556 |
  LDA #$1B                                  ; $309559 |
  STA $08                                   ; $30955B |
  LDA #$97                                  ; $30955D |
  STA $09                                   ; $30955F |
  LDA #$00                                  ; $309561 |
  STA $ED                                   ; $309563 |
  STA $EB                                   ; $309565 |
  JSR code_3FEC0A                           ; $309567 |
  LDA $11                                   ; $30956A |
  AND #$01                                  ; $30956C |
  BEQ loc_61551                             ; $30956E |
  LDA #$00                                  ; $309570 |
  STA $05B1,x                               ; $309572 |
  STA $05C8,x                               ; $309575 |
loc_61578:
code_309578:
  LDA #$00                                  ; $309578 |
  JSR code_3FEAB3                           ; $30957A |
  JSR code_30970C                           ; $30957D |
  LDA $056C,x                               ; $309580 |
  BEQ loc_61588                             ; $309583 |
loc_61585:
  JMP code_309625                           ; $309585 |

loc_61588:
  LDY #$04                                  ; $309588 |
  JSR code_3FE60E                           ; $30958A |
  JSR code_3096CA                           ; $30958D |
  LDA $11                                   ; $309590 |
  AND #$01                                  ; $309592 |
  BNE loc_61599                             ; $309594 |
  JSR code_309703                           ; $309596 |
loc_61599:
  LDA #$00                                  ; $309599 |
  JSR code_3FEAB3                           ; $30959B |
  JSR code_30970C                           ; $30959E |
  LDA $056C,x                               ; $3095A1 |
  BNE loc_61585                             ; $3095A4 |
  JSR code_3096AF                           ; $3095A6 |
  LDA $11                                   ; $3095A9 |
  AND #$01                                  ; $3095AB |
  BEQ loc_615B2                             ; $3095AD |
  JSR code_309703                           ; $3095AF |
loc_615B2:
  JSR code_3096E5                           ; $3095B2 |
  LDA $11                                   ; $3095B5 |
  BEQ loc_61578                             ; $3095B7 |
  LDY #$B8                                  ; $3095B9 |
  JSR code_3FE522                           ; $3095BB |
loc_615BE:
  LDA #$00                                  ; $3095BE |
  JSR code_3FEAB3                           ; $3095C0 |
  JSR code_30970C                           ; $3095C3 |
  LDY #$3A                                  ; $3095C6 |
  JSR code_3FE5AB                           ; $3095C8 |
  BCS loc_615BE                             ; $3095CB |
  LDY $8F                                   ; $3095CD |
  TXA                                       ; $3095CF |
  STA $05DF,y                               ; $3095D0 |
  TYA                                       ; $3095D3 |
  STA $05C8,x                               ; $3095D4 |
  LDA $03CE,y                               ; $3095D7 |
  STA $03CE,x                               ; $3095DA |
  LDX $8F                                   ; $3095DD |
  LDA #$02                                  ; $3095DF |
  STA $05C8,x                               ; $3095E1 |
  LDA #$00                                  ; $3095E4 |
  STA $05B1,x                               ; $3095E6 |
code_3095E9:
  LDA #$00                                  ; $3095E9 |
  JSR code_3FEAB3                           ; $3095EB |
  JSR code_30970C                           ; $3095EE |
  JSR code_3096E5                           ; $3095F1 |
  LDA $11                                   ; $3095F4 |
  BEQ loc_6165F                             ; $3095F6 |
  LDA $056C,x                               ; $3095F8 |
  BNE loc_61617                             ; $3095FB |
  LDY #$00                                  ; $3095FD |
  JSR code_3FE60E                           ; $3095FF |
  JSR code_3096CA                           ; $309602 |
  LDA $11                                   ; $309605 |
  AND #$01                                  ; $309607 |
  BEQ loc_6165C                             ; $309609 |
  JSR code_3096AF                           ; $30960B |
  LDA $11                                   ; $30960E |
  AND #$01                                  ; $309610 |
  BNE loc_6165C                             ; $309612 |
  JMP code_3095E9                           ; $309614 |

loc_61617:
  LDY #$B9                                  ; $309617 |
  JSR code_3FE522                           ; $309619 |
  LDA $05DF,x                               ; $30961C |
  TAY                                       ; $30961F |
  LDA #$00                                  ; $309620 |
  STA $03A0,y                               ; $309622 |
loc_61625:
code_309625:
  LDA $056C,x                               ; $309625 |
  CMP #$13                                  ; $309628 |
  BNE loc_61637                             ; $30962A |
  LDA $9B                                   ; $30962C |
  BNE loc_61637                             ; $30962E |
  LDA #$3C                                  ; $309630 |
  STA $05B1,x                               ; $309632 |
  BNE loc_6163C                             ; $309635 |
loc_61637:
  LDA #$04                                  ; $309637 |
  STA $05B1,x                               ; $309639 |
loc_6163C:
  LDA #$00                                  ; $30963C |
  JSR code_3FEAB3                           ; $30963E |
  JSR code_30970C                           ; $309641 |
  DEC $05B1,x                               ; $309644 |
  BNE loc_6163C                             ; $309647 |
  LDA #$00                                  ; $309649 |
  STA $056C,x                               ; $30964B |
  JMP code_309578                           ; $30964E |

loc_61651:
  JSR code_309703                           ; $309651 |
  LDY #$00                                  ; $309654 |
  JSR code_3FE60E                           ; $309656 |
loc_61659:
  JMP code_309578                           ; $309659 |

loc_6165C:
  JSR code_309703                           ; $30965C |
loc_6165F:
  LDA $05DF,x                               ; $30965F |
  TAY                                       ; $309662 |
  LDA #$00                                  ; $309663 |
  STA $03A0,y                               ; $309665 |
  LDY #$B9                                  ; $309668 |
  JSR code_3FE522                           ; $30966A |
code_30966D:
  LDA #$00                                  ; $30966D |
  JSR code_3FEAB3                           ; $30966F |
  JSR code_30970C                           ; $309672 |
  LDA $056C,x                               ; $309675 |
  BNE loc_61625                             ; $309678 |
  LDA $05C8,x                               ; $30967A |
  BEQ loc_61659                             ; $30967D |
  LDY #$01                                  ; $30967F |
  JSR code_3FEE69                           ; $309681 |
  LDA #$00                                  ; $309684 |
  STA $EE                                   ; $309686 |
  STA $EC                                   ; $309688 |
  JSR code_3FE4D1                           ; $30968A |
  LDA #$00                                  ; $30968D |
  JSR code_3FEAB3                           ; $30968F |
  JSR code_30970C                           ; $309692 |
  LDA $056C,x                               ; $309695 |
  BNE loc_61625                             ; $309698 |
  JSR code_3096CA                           ; $30969A |
  LDA $11                                   ; $30969D |
  AND #$01                                  ; $30969F |
  BEQ loc_61651                             ; $3096A1 |
  JSR code_3096AF                           ; $3096A3 |
  LDA $11                                   ; $3096A6 |
  AND #$01                                  ; $3096A8 |
  BNE loc_61651                             ; $3096AA |
  JMP code_30966D                           ; $3096AC |

code_3096AF:
  LDA #$00                                  ; $3096AF |
  STA $11                                   ; $3096B1 |
  LDA $03CE,x                               ; $3096B3 |
  LSR                                       ; $3096B6 |
  LSR                                       ; $3096B7 |
  AND #$02                                  ; $3096B8 |
  TAY                                       ; $3096BA |
  LDA $972F,y                               ; $3096BB |
  STA $00                                   ; $3096BE |
  INY                                       ; $3096C0 |
  LDA $972F,y                               ; $3096C1 |
  STA $01                                   ; $3096C4 |
  JSR code_3ED9CD                           ; $3096C6 |
  RTS                                       ; $3096C9 |

code_3096CA:
  LDA $03CE,x                               ; $3096CA |
  LSR                                       ; $3096CD |
  LSR                                       ; $3096CE |
  AND #$02                                  ; $3096CF |
  TAY                                       ; $3096D1 |
  LDA #$00                                  ; $3096D2 |
  STA $11                                   ; $3096D4 |
  LDA $972B,y                               ; $3096D6 |
  STA $00                                   ; $3096D9 |
  INY                                       ; $3096DB |
  LDA $972B,y                               ; $3096DC |
  STA $01                                   ; $3096DF |
  JSR code_3ED9CD                           ; $3096E1 |
  RTS                                       ; $3096E4 |

code_3096E5:
  LDA $04CB,x                               ; $3096E5 |
  STA $060D,x                               ; $3096E8 |
  SEC                                       ; $3096EB |
  SBC #$03                                  ; $3096EC |
  STA $04CB,x                               ; $3096EE |
  LDA #$00                                  ; $3096F1 |
  STA $00                                   ; $3096F3 |
  LDA #$04                                  ; $3096F5 |
  STA $01                                   ; $3096F7 |
  JSR code_3FEDA8                           ; $3096F9 |
  LDA $060D,x                               ; $3096FC |
  STA $04CB,x                               ; $3096FF |
  RTS                                       ; $309702 |

code_309703:
  LDA $03CE,x                               ; $309703 |
  EOR #$08                                  ; $309706 |
  STA $03CE,x                               ; $309708 |
  RTS                                       ; $30970B |

code_30970C:
  LDA $056C,x                               ; $30970C |
  CMP #$14                                  ; $30970F |
  BEQ loc_61714                             ; $309711 |
  RTS                                       ; $309713 |

loc_61714:
  JMP code_3FE9D3                           ; $309714 |

  db $02, $FE, $00, $00, $10, $04, $F0, $04 ; $309717 |
  db $F8, $04, $F8, $FC, $F8, $08, $08, $08 ; $30971F |
  db $08, $08, $F8, $08, $0A, $0A, $F6, $0A ; $309727 |
  db $0A, $FE, $F6, $FE, $B6, $2E, $25, $01 ; $30972F |
  db $02, $00                               ; $309737 |

  JSR code_3FEBD1                           ; $309739 |
  LDA #$00                                  ; $30973C |
  STA $05C8,x                               ; $30973E |
  STA $05DF,x                               ; $309741 |
  LDA $03B7,x                               ; $309744 |
  ORA #$01                                  ; $309747 |
  STA $03B7,x                               ; $309749 |
  LDA #$00                                  ; $30974C |
  STA $0624,x                               ; $30974E |
  LDA #$00                                  ; $309751 |
  STA $00                                   ; $309753 |
  STA $01                                   ; $309755 |
  STA $11                                   ; $309757 |
  JSR code_3ED9CD                           ; $309759 |
  LDA $11                                   ; $30975C |
  AND #$01                                  ; $30975E |
  BEQ loc_61765                             ; $309760 |
  JMP code_3FE456                           ; $309762 |

loc_61765:
  LDA #$50                                  ; $309765 |
  STA $05B1,x                               ; $309767 |
loc_6176A:
  JSR code_3FEA6A                           ; $30976A |
  LDA #$00                                  ; $30976D |
  STA $00                                   ; $30976F |
  STA $01                                   ; $309771 |
  STA $11                                   ; $309773 |
  JSR code_3ED9CD                           ; $309775 |
  LDA $11                                   ; $309778 |
  AND #$01                                  ; $30977A |
  BEQ loc_61781                             ; $30977C |
  JMP code_3FE456                           ; $30977E |

loc_61781:
  DEC $05B1,x                               ; $309781 |
  BNE loc_6176A                             ; $309784 |
loc_61786:
  JSR code_3FEA6A                           ; $309786 |
  LDY #$31                                  ; $309789 |
  JSR code_3FE5AB                           ; $30978B |
  BCS loc_61786                             ; $30978E |
  LDY $8F                                   ; $309790 |
  LDA #$01                                  ; $309792 |
  STA $0624,y                               ; $309794 |
  TYA                                       ; $309797 |
  STA $05C8,x                               ; $309798 |
  LDA #$03                                  ; $30979B |
  JSR code_3FE8FD                           ; $30979D |
  LDX $8F                                   ; $3097A0 |
loc_617A2:
  JSR code_3FEA6A                           ; $3097A2 |
  LDA $0624,x                               ; $3097A5 |
  BNE loc_617A2                             ; $3097A8 |
  LDA #$78                                  ; $3097AA |
  STA $05B1,x                               ; $3097AC |
  BNE loc_6176A                             ; $3097AF |

  db $B5, $00, $25, $09, $01, $13           ; $3097B1 |

  JSR code_3FEBD1                           ; $3097B7 |
  LDA #$00                                  ; $3097BA |
  STA $03CE,x                               ; $3097BC |
  LDA $04CB,x                               ; $3097BF |
  STA $0624,x                               ; $3097C2 |
  SEC                                       ; $3097C5 |
  LDA $04CB                                 ; $3097C6 |
  SBC #$18                                  ; $3097C9 |
  STA $05B1,x                               ; $3097CB |
loc_617CE:
  JSR code_30987C                           ; $3097CE |
  LDA $03E5,x                               ; $3097D1 |
  BEQ loc_617E7                             ; $3097D4 |
  LDY #$04                                  ; $3097D6 |
  JSR code_3FE60E                           ; $3097D8 |
  LDA $04CB,x                               ; $3097DB |
  CMP #$20                                  ; $3097DE |
  BCC loc_617E7                             ; $3097E0 |
  CMP $05B1,x                               ; $3097E2 |
  BNE loc_617CE                             ; $3097E5 |
loc_617E7:
  LDY #$B4                                  ; $3097E7 |
  JSR code_3FE522                           ; $3097E9 |
  LDY #$46                                  ; $3097EC |
  JSR code_3FE5AB                           ; $3097EE |
  BCS loc_61810                             ; $3097F1 |
  LDY $8F                                   ; $3097F3 |
  TYA                                       ; $3097F5 |
  STA $05C8,x                               ; $3097F6 |
  LDA #$03                                  ; $3097F9 |
  JSR code_3FE8FD                           ; $3097FB |
  LDY #$47                                  ; $3097FE |
  JSR code_3FE5AB                           ; $309800 |
  BCS loc_61810                             ; $309803 |
  LDY $8F                                   ; $309805 |
  TYA                                       ; $309807 |
  STA $05C8,x                               ; $309808 |
  LDA #$03                                  ; $30980B |
  JSR code_3FE8FD                           ; $30980D |
loc_61810:
  LDX $8F                                   ; $309810 |
  JSR code_30987C                           ; $309812 |
  INC $03A0,x                               ; $309815 |
  JMP code_30982F                           ; $309818 |

  INC $05DF,x                               ; $30981B |
  JMP code_3FE456                           ; $30981E |

  db $B4, $2E, $25, $08, $00, $13           ; $309821 |

  JSR code_3FEBD1                           ; $309827 |
  LDA #$00                                  ; $30982A |
  STA $05C8,x                               ; $30982C |
code_30982F:
  LDY #$B4                                  ; $30982F |
  JSR code_3FE522                           ; $309831 |
  LDA #$00                                  ; $309834 |
  STA $03CE,x                               ; $309836 |
  LDA #$14                                  ; $309839 |
  STA $05B1,x                               ; $30983B |
  LDY #$00                                  ; $30983E |
  JSR code_3FF8AE                           ; $309840 |
  LDA $11                                   ; $309843 |
  STA $03CE,x                               ; $309845 |
  AND #$07                                  ; $309848 |
  BEQ loc_61856                             ; $30984A |
  LDA $03CE,x                               ; $30984C |
  TAY                                       ; $30984F |
  LDA $986C,y                               ; $309850 |
  STA $03B7,x                               ; $309853 |
loc_61856:
  JSR code_30987C                           ; $309856 |
  DEC $05B1,x                               ; $309859 |
  BNE loc_61856                             ; $30985C |
code_30985E:
  JSR code_30987C                           ; $30985E |
  LDY #$08                                  ; $309861 |
  JSR code_3FE60E                           ; $309863 |
  DEC $05B1,x                               ; $309866 |
  JMP code_30985E                           ; $309869 |

  db $00, $40, $40, $40, $40, $40, $40, $40 ; $30986C |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $309874 |

code_30987C:
  LDX $8F                                   ; $30987C |
  LDY $05C8,x                               ; $30987E |
  BEQ loc_61888                             ; $309881 |
  LDA $03A0,y                               ; $309883 |
  BEQ loc_618AA                             ; $309886 |
loc_61888:
  JSR code_3FE485                           ; $309888 |
  BCS loc_618BF                             ; $30988B |
  LDA $056C,x                               ; $30988D |
  BEQ loc_618BC                             ; $309890 |
  AND #$0F                                  ; $309892 |
  STA $00                                   ; $309894 |
  LDA #$35                                  ; $309896 |
  STA $DC                                   ; $309898 |
  LDA #$00                                  ; $30989A |
  STA $056C,x                               ; $30989C |
  LDA $03E5,x                               ; $30989F |
  SEC                                       ; $3098A2 |
  SBC $00                                   ; $3098A3 |
  STA $03E5,x                               ; $3098A5 |
  BPL loc_618BC                             ; $3098A8 |
loc_618AA:
  LDY #$17                                  ; $3098AA |
  JSR code_3ECB28                           ; $3098AC |

  db $41                                    ; $3098AF |

  LDA $05C8,x                               ; $3098B0 |
  BEQ loc_618B9                             ; $3098B3 |
  TAX                                       ; $3098B5 |
  DEC $0624,x                               ; $3098B6 |
loc_618B9:
  JMP code_3FE477                           ; $3098B9 |

loc_618BC:
  JMP code_3FE468                           ; $3098BC |

loc_618BF:
  LDA $05C8,x                               ; $3098BF |
  BEQ loc_618C8                             ; $3098C2 |
  TAX                                       ; $3098C4 |
  DEC $0624,x                               ; $3098C5 |
loc_618C8:
  JMP code_3FE456                           ; $3098C8 |

  db $A4, $2A, $1F, $08, $02, $00           ; $3098CB |

  JSR code_3FEBD1                           ; $3098D1 |
  JSR code_3FEF0C                           ; $3098D4 |
  LDA $51                                   ; $3098D7 |
  CMP #$0C                                  ; $3098D9 |
  BNE loc_618E5                             ; $3098DB |
  LDA #$0C                                  ; $3098DD |
  STA $03CE,x                               ; $3098DF |
  JSR code_3FE5DF                           ; $3098E2 |
loc_618E5:
  JSR code_3FEA6A                           ; $3098E5 |
  LDY #$A4                                  ; $3098E8 |
  JSR code_3FE522                           ; $3098EA |
  JSR code_3FE5DF                           ; $3098ED |
  LDY #$35                                  ; $3098F0 |
  JSR code_3FE5AB                           ; $3098F2 |
  BCS loc_618E5                             ; $3098F5 |
  LDY $8F                                   ; $3098F7 |
  TXA                                       ; $3098F9 |
  STA $05B1,y                               ; $3098FA |
  TYA                                       ; $3098FD |
  STA $05C8,x                               ; $3098FE |
  LDA $03CE,y                               ; $309901 |
  STA $03CE,x                               ; $309904 |
  LDA #$0C                                  ; $309907 |
  JSR code_3FE8BC                           ; $309909 |
  LDX $8F                                   ; $30990C |
loc_6190E:
  LDA #$00                                  ; $30990E |
  STA $056C,y                               ; $309910 |
  JSR code_3FEA6A                           ; $309913 |
  LDA $05B1,x                               ; $309916 |
  TAY                                       ; $309919 |
  LDA $056C,y                               ; $30991A |
  CMP #$20                                  ; $30991D |
  BNE loc_6190E                             ; $30991F |
  LDA $05B1,x                               ; $309921 |
  TAY                                       ; $309924 |
  LDA $04CB,y                               ; $309925 |
  CMP $04CB                                 ; $309928 |
  BCC loc_6190E                             ; $30992B |
  LDA #$14                                  ; $30992D |
  STA $05C8,x                               ; $30992F |
loc_61932:
  JSR code_3FEA6A                           ; $309932 |
  DEC $05C8,x                               ; $309935 |
  BNE loc_61932                             ; $309938 |
  LDA $05B1,x                               ; $30993A |
  TAY                                       ; $30993D |
  LDA #$00                                  ; $30993E |
  STA $056C,y                               ; $309940 |
  STA $03A0,y                               ; $309943 |
  LDA #$0B                                  ; $309946 |
  STA $05C8,x                               ; $309948 |
  LDY #$A5                                  ; $30994B |
  JSR code_3FE522                           ; $30994D |
loc_61950:
  JSR code_3FEA6A                           ; $309950 |
  DEC $05C8,x                               ; $309953 |
  BNE loc_61950                             ; $309956 |
  LDA $03CE,x                               ; $309958 |
  EOR #$08                                  ; $30995B |
  STA $03CE,x                               ; $30995D |
  BNE loc_618E5                             ; $309960 |

  db $B4, $2A, $1F, $18, $02, $50           ; $309962 |

  JSR code_3FEBD1                           ; $309968 |
  LDA $03B7,x                               ; $30996B |
  ORA #$01                                  ; $30996E |
  STA $03B7,x                               ; $309970 |
loc_61973:
  JSR code_3FE468                           ; $309973 |
  LDA $05C8,x                               ; $309976 |
  TAY                                       ; $309979 |
  LDA $03A0,y                               ; $30997A |
  BNE loc_61973                             ; $30997D |
  JMP code_3FE456                           ; $30997F |

  db $8F, $30, $28, $18, $02, $00           ; $309982 |

  JSR code_3FEBD1                           ; $309988 |
  LDA #$80                                  ; $30998B |
  STA $03B7,x                               ; $30998D |
  JMP code_30999C                           ; $309990 |

  db $8F, $30, $28, $18, $02, $00           ; $309993 |

  JSR code_3FEBD1                           ; $309999 |
code_30999C:
  LDA #$00                                  ; $30999C |
  STA $05B1,x                               ; $30999E |
loc_619A1:
  JSR code_3FEA6A                           ; $3099A1 |
  LDA #$10                                  ; $3099A4 |
  STA $00                                   ; $3099A6 |
  LDA #$00                                  ; $3099A8 |
  STA $01                                   ; $3099AA |
  JSR code_3FEDA8                           ; $3099AC |
  LDA $11                                   ; $3099AF |
  BNE loc_619B8                             ; $3099B1 |
  STA $05B1,x                               ; $3099B3 |
  BEQ loc_619A1                             ; $3099B6 |
loc_619B8:
  LDA $05B1,x                               ; $3099B8 |
  BNE loc_619A1                             ; $3099BB |
  LDA #$4F                                  ; $3099BD |
  STA $DC                                   ; $3099BF |
  LDA #$01                                  ; $3099C1 |
  STA $05B1,x                               ; $3099C3 |
  BNE loc_619A1                             ; $3099C6 |

  db $BA, $00, $26, $01, $02, $00           ; $3099C8 |

  JSR code_3FEBD1                           ; $3099CE |
  LDA #$49                                  ; $3099D1 |
  STA $DC                                   ; $3099D3 |
  JSR code_3FE5DF                           ; $3099D5 |
  LDA #$06                                  ; $3099D8 |
  STA $05B1,x                               ; $3099DA |
  JSR code_3099F9                           ; $3099DD |
loc_619E0:
  JSR code_3FE468                           ; $3099E0 |
  JSR code_3099F9                           ; $3099E3 |
  DEC $05B1,x                               ; $3099E6 |
  BNE loc_619E0                             ; $3099E9 |
  LDY #$BB                                  ; $3099EB |
  JSR code_3FE522                           ; $3099ED |
code_3099F0:
  JSR code_3FE468                           ; $3099F0 |
  JSR code_3099F9                           ; $3099F3 |
  JMP code_3099F0                           ; $3099F6 |

code_3099F9:
  LDA $05C8,x                               ; $3099F9 |
  TAY                                       ; $3099FC |
  LDA $03E5,y                               ; $3099FD |
  BMI loc_61A11                             ; $309A00 |
  LDA #$03                                  ; $309A02 |
  JSR code_3FE8FD                           ; $309A04 |
  LDA $03CE,y                               ; $309A07 |
  STA $03CE,x                               ; $309A0A |
  JSR code_3FE5DF                           ; $309A0D |
  RTS                                       ; $309A10 |

loc_61A11:
  JSR code_3FE456                           ; $309A11 |

  db $84, $2A, $28, $18, $02, $00           ; $309A14 |

  JSR code_3FEBD1                           ; $309A1A |
  LDA #$01                                  ; $309A1D |
  STA $03B7,x                               ; $309A1F |
  LDA #$5A                                  ; $309A22 |
  STA $05B1,x                               ; $309A24 |
loc_61A27:
  JSR code_3FEA6A                           ; $309A27 |
  DEC $05B1,x                               ; $309A2A |
  BNE loc_61A27                             ; $309A2D |
  LDA #$14                                  ; $309A2F |
  STA $05B1,x                               ; $309A31 |
  LDY #$83                                  ; $309A34 |
  JSR code_3FE522                           ; $309A36 |
  LDA #$00                                  ; $309A39 |
  STA $03B7,x                               ; $309A3B |
loc_61A3E:
  JSR code_3FEA6A                           ; $309A3E |
  DEC $05B1,x                               ; $309A41 |
  BNE loc_61A3E                             ; $309A44 |
  LDY #$84                                  ; $309A46 |
  JSR code_3FE522                           ; $309A48 |
code_309A4B:
  JSR code_3FEA6A                           ; $309A4B |
  JMP code_309A4B                           ; $309A4E |

  db $AD, $11, $20, $08, $00, $13           ; $309A51 |

  JSR code_3FEBD1                           ; $309A57 |
  JSR code_3FEF0C                           ; $309A5A |
  LDA $03B7,x                               ; $309A5D |
  ORA #$80                                  ; $309A60 |
  STA $03B7,x                               ; $309A62 |
loc_61A65:
  JSR code_3FE468                           ; $309A65 |
  LDA #$26                                  ; $309A68 |
  STA $08                                   ; $309A6A |
  LDA #$9B                                  ; $309A6C |
  STA $09                                   ; $309A6E |
  LDY #$00                                  ; $309A70 |
  JSR code_3FE61A                           ; $309A72 |
  LDA #$FF                                  ; $309A75 |
  STA $EE                                   ; $309A77 |
  JSR code_3FEC11                           ; $309A79 |
  LDA $12                                   ; $309A7C |
  AND #$01                                  ; $309A7E |
  BNE loc_61AAA                             ; $309A80 |
  JSR code_3FE9D3                           ; $309A82 |
  LDA $03CE,x                               ; $309A85 |
  LSR                                       ; $309A88 |
  LSR                                       ; $309A89 |
  LSR                                       ; $309A8A |
  TAY                                       ; $309A8B |
  LDA $9B24,y                               ; $309A8C |
  STA $00                                   ; $309A8F |
  LDA #$F0                                  ; $309A91 |
  STA $01                                   ; $309A93 |
  LDA #$00                                  ; $309A95 |
  STA $11                                   ; $309A97 |
  JSR code_3ED9CD                           ; $309A99 |
  LDA $11                                   ; $309A9C |
  BEQ loc_61AAA                             ; $309A9E |
  JSR code_3FE5B6                           ; $309AA0 |
  LDA $11                                   ; $309AA3 |
  CMP $03CE,x                               ; $309AA5 |
  BEQ loc_61A65                             ; $309AA8 |
loc_61AAA:
  LDA $03B7,x                               ; $309AAA |
  AND #$7F                                  ; $309AAD |
  STA $03B7,x                               ; $309AAF |
loc_61AB2:
  JSR code_3FE9D3                           ; $309AB2 |
  LDA #$26                                  ; $309AB5 |
  STA $08                                   ; $309AB7 |
  LDA #$9B                                  ; $309AB9 |
  STA $09                                   ; $309ABB |
  LDA #$00                                  ; $309ABD |
  STA $ED                                   ; $309ABF |
  STA $EB                                   ; $309AC1 |
  JSR code_3FEC0A                           ; $309AC3 |
  LDA $11                                   ; $309AC6 |
  AND #$01                                  ; $309AC8 |
  BEQ loc_61AB2                             ; $309ACA |
  LDA #$A0                                  ; $309ACC |
  STA $05B1,x                               ; $309ACE |
loc_61AD1:
  JSR code_3FE9D3                           ; $309AD1 |
  LDA #$1E                                  ; $309AD4 |
  STA $05C8,x                               ; $309AD6 |
  JSR code_3FEF0C                           ; $309AD9 |
loc_61ADC:
  JSR code_3FE9D3                           ; $309ADC |
  LDA #$26                                  ; $309ADF |
  STA $08                                   ; $309AE1 |
  LDA #$9B                                  ; $309AE3 |
  STA $09                                   ; $309AE5 |
  LDY #$05                                  ; $309AE7 |
  JSR code_3FE61A                           ; $309AE9 |
  JSR code_3FEC0A                           ; $309AEC |
  LDA $12                                   ; $309AEF |
  AND #$01                                  ; $309AF1 |
  BEQ loc_61AF8                             ; $309AF3 |
  JSR code_3FEF18                           ; $309AF5 |
loc_61AF8:
  DEC $05B1,x                               ; $309AF8 |
  BEQ loc_61B04                             ; $309AFB |
  DEC $05C8,x                               ; $309AFD |
  BEQ loc_61AD1                             ; $309B00 |
  BNE loc_61ADC                             ; $309B02 |
loc_61B04:
  LDA #$38                                  ; $309B04 |
  STA $05B1,x                               ; $309B06 |
  LDY #$AE                                  ; $309B09 |
  JSR code_3FE522                           ; $309B0B |
loc_61B0E:
  JSR code_3FE9D3                           ; $309B0E |
  DEC $05B1,x                               ; $309B11 |
  BNE loc_61B0E                             ; $309B14 |
  LDY #$25                                  ; $309B16 |
  JSR code_3ECB28                           ; $309B18 |

  db $41                                    ; $309B1B |

  LDA #$43                                  ; $309B1C |
  STA $05DF,x                               ; $309B1E |
  JMP code_3FE477                           ; $309B21 |

  db $10, $F0, $10, $06, $10, $FA, $F0, $06 ; $309B24 |
  db $F0, $FA, $08, $08, $F8, $08, $08, $F8 ; $309B2C |
  db $F8, $F8, $C0, $09, $29, $0A, $03, $34 ; $309B34 |
  db $B6, $2E, $25, $08, $02, $00           ; $309B3C |

  JSR code_3FEBD1                           ; $309B42 |
  LDA #$00                                  ; $309B45 |
  STA $060D,x                               ; $309B47 |
  STA $0624,x                               ; $309B4A |
  LDA #$08                                  ; $309B4D |
  STA $03CE,x                               ; $309B4F |
code_309B52:
  JSR code_3FEA6A                           ; $309B52 |
  LDY #$03                                  ; $309B55 |
  JSR code_3FEE9A                           ; $309B57 |
  LDA #$00                                  ; $309B5A |
  STA $ED                                   ; $309B5C |
  LDA #$80                                  ; $309B5E |
  STA $EB                                   ; $309B60 |
  JSR code_3FE4D1                           ; $309B62 |
  JMP code_309B52                           ; $309B65 |

  db $B7, $2E, $25, $01, $02, $00           ; $309B68 |

  JSR code_3FEBD1                           ; $309B6E |
  LDA #$00                                  ; $309B71 |
  STA $060D,x                               ; $309B73 |
  STA $0624,x                               ; $309B76 |
  LDA #$08                                  ; $309B79 |
  STA $03CE,x                               ; $309B7B |
code_309B7E:
  JSR code_3FEA6A                           ; $309B7E |
  LDY #$03                                  ; $309B81 |
  JSR code_3FEE9A                           ; $309B83 |
  LDA #$FF                                  ; $309B86 |
  STA $ED                                   ; $309B88 |
  LDA #$80                                  ; $309B8A |
  STA $EB                                   ; $309B8C |
  JSR code_3FE4D1                           ; $309B8E |
  JMP code_309B7E                           ; $309B91 |

  db $96, $27, $1B, $01, $02, $00, $A8, $38 ; $309B94 |
  db $09, $00, $00, $00, $00, $00           ; $309B9C |

  LDA #$00                                  ; $309BA2 |
  STA $0583,x                               ; $309BA4 |
  LDY #$09                                  ; $309BA7 |
  JSR code_3FE522                           ; $309BA9 |
  LDA #$0A                                  ; $309BAC |
  STA $05B1,x                               ; $309BAE |
loc_61BB1:
  JSR code_3FE485                           ; $309BB1 |
  BCS loc_61BBE                             ; $309BB4 |
  JSR code_3FE468                           ; $309BB6 |
  DEC $05B1,x                               ; $309BB9 |
  BNE loc_61BB1                             ; $309BBC |
loc_61BBE:
  JMP code_3FE456                           ; $309BBE |

  db $A6, $31, $22, $1F, $00, $50           ; $309BC1 |

  JSR code_3FEBD1                           ; $309BC7 |
  LDA $05DF,x                               ; $309BCA |
  BNE loc_61C06                             ; $309BCD |
  LDY #$4B                                  ; $309BCF |
  JSR code_3FE5AB                           ; $309BD1 |
  LDA #$62                                  ; $309BD4 |
  STA $05DF,x                               ; $309BD6 |
  LDY $8F                                   ; $309BD9 |
  LDA #$11                                  ; $309BDB |
  JSR code_3FE8FD                           ; $309BDD |
  LDY #$4B                                  ; $309BE0 |
  JSR code_3FE5AB                           ; $309BE2 |
  LDA #$5E                                  ; $309BE5 |
  STA $05DF,x                               ; $309BE7 |
  LDY $8F                                   ; $309BEA |
  LDA #$12                                  ; $309BEC |
  JSR code_3FE8FD                           ; $309BEE |
  LDY #$4B                                  ; $309BF1 |
  JSR code_3FE5AB                           ; $309BF3 |
  LDA #$5A                                  ; $309BF6 |
  STA $05DF,x                               ; $309BF8 |
  LDY $8F                                   ; $309BFB |
  LDA #$13                                  ; $309BFD |
  JSR code_3FE8FD                           ; $309BFF |
  LDX $8F                                   ; $309C02 |
  LDA #$66                                  ; $309C04 |
loc_61C06:
  STA $05B1,x                               ; $309C06 |
loc_61C09:
  JSR code_3FEA6A                           ; $309C09 |
  DEC $05B1,x                               ; $309C0C |
  BNE loc_61C09                             ; $309C0F |
  LDA #$00                                  ; $309C11 |
  STA $060D,x                               ; $309C13 |
  STA $0624,x                               ; $309C16 |
  LDA #$08                                  ; $309C19 |
  STA $03CE,x                               ; $309C1B |
code_309C1E:
  LDY #$03                                  ; $309C1E |
  JSR code_3FEE9A                           ; $309C20 |
  LDA #$00                                  ; $309C23 |
  STA $ED                                   ; $309C25 |
  STA $EB                                   ; $309C27 |
  JSR code_3FE4D1                           ; $309C29 |
  JSR code_3FEA6A                           ; $309C2C |
  JMP code_309C1E                           ; $309C2F |

  db $C2, $00, $00, $1F, $00, $50           ; $309C32 |

  JSR code_3FEBD1                           ; $309C38 |
code_309C3B:
  JSR code_3FE468                           ; $309C3B |
  LDY #$08                                  ; $309C3E |
  JSR code_3FE60E                           ; $309C40 |
  JMP code_309C3B                           ; $309C43 |

  db $C4, $36, $2C, $20, $04, $13           ; $309C46 |

  JSR code_3FEBD1                           ; $309C4C |
  JSR code_3FEF0C                           ; $309C4F |
code_309C52:
  LDY #$C4                                  ; $309C52 |
  JSR code_3FE522                           ; $309C54 |
  LDA #$3C                                  ; $309C57 |
  STA $05B1,x                               ; $309C59 |
loc_61C5C:
  LDA #$01                                  ; $309C5C |
  JSR code_3FEAB3                           ; $309C5E |
  DEC $05B1,x                               ; $309C61 |
  BNE loc_61C5C                             ; $309C64 |
code_309C66:
  JSR code_3FEF0C                           ; $309C66 |
  LDA #$00                                  ; $309C69 |
  STA $00                                   ; $309C6B |
  LDA #$10                                  ; $309C6D |
  STA $01                                   ; $309C6F |
  JSR code_3FEDA8                           ; $309C71 |
  LDA $11                                   ; $309C74 |
  BNE loc_61C80                             ; $309C76 |
  LDA #$01                                  ; $309C78 |
  JSR code_3FEAB3                           ; $309C7A |
  JMP code_309C66                           ; $309C7D |

loc_61C80:
  LDA #$01                                  ; $309C80 |
  JSR code_3FEAB3                           ; $309C82 |
  LDY #$C5                                  ; $309C85 |
  JSR code_3FE522                           ; $309C87 |
  LDY #$4E                                  ; $309C8A |
  JSR code_3FE5AB                           ; $309C8C |
  BCS loc_61C80                             ; $309C8F |
  LDY $8F                                   ; $309C91 |
  TYA                                       ; $309C93 |
  STA $0624,x                               ; $309C94 |
  LDA #$03                                  ; $309C97 |
  JSR code_3FE8CC                           ; $309C99 |
  LDA $03CE,y                               ; $309C9C |
  STA $03CE,x                               ; $309C9F |
  JSR code_3FE5DF                           ; $309CA2 |
  LDX $8F                                   ; $309CA5 |
  LDA #$56                                  ; $309CA7 |
  STA $05B1,x                               ; $309CA9 |
loc_61CAC:
  LDA #$01                                  ; $309CAC |
  JSR code_3FEAB3                           ; $309CAE |
  DEC $05B1,x                               ; $309CB1 |
  BNE loc_61CAC                             ; $309CB4 |
  JMP code_309C52                           ; $309CB6 |

  db $C6, $36, $2C, $21, $02, $42           ; $309CB9 |

  JSR code_3FEBD1                           ; $309CBF |
  LDA #$3A                                  ; $309CC2 |
  STA $05B1,x                               ; $309CC4 |
loc_61CC7:
  JSR code_3FEA6A                           ; $309CC7 |
  LDY $0624,x                               ; $309CCA |
  LDA $03E5,y                               ; $309CCD |
  BMI loc_61D26                             ; $309CD0 |
  DEC $05B1,x                               ; $309CD2 |
  BNE loc_61CC7                             ; $309CD5 |
  LDA $03CE,x                               ; $309CD7 |
  LSR                                       ; $309CDA |
  LSR                                       ; $309CDB |
  LSR                                       ; $309CDC |
  TAY                                       ; $309CDD |
  LDA $9D29,y                               ; $309CDE |
  CLC                                       ; $309CE1 |
  ADC $0486,x                               ; $309CE2 |
  STA $0486,x                               ; $309CE5 |
  LDA $046F,x                               ; $309CE8 |
  ADC $9D2B,y                               ; $309CEB |
  STA $046F,x                               ; $309CEE |
  SEC                                       ; $309CF1 |
  LDA $04CB,x                               ; $309CF2 |
  SBC #$1C                                  ; $309CF5 |
  STA $04CB,x                               ; $309CF7 |
  LDY #$C7                                  ; $309CFA |
  JSR code_3FE522                           ; $309CFC |
  LDA #$0E                                  ; $309CFF |
  STA $05B1,x                               ; $309D01 |
loc_61D04:
  JSR code_3FEA6A                           ; $309D04 |
  LDY $0624,x                               ; $309D07 |
  LDA $03E5,y                               ; $309D0A |
  BMI loc_61D26                             ; $309D0D |
  DEC $05B1,x                               ; $309D0F |
  BNE loc_61D04                             ; $309D12 |
  JSR code_3FECFC                           ; $309D14 |
  LDA #$42                                  ; $309D17 |
  STA $DC                                   ; $309D19 |
code_309D1B:
  JSR code_3FEA6A                           ; $309D1B |
  LDY #$08                                  ; $309D1E |
  JSR code_3FE60E                           ; $309D20 |
  JMP code_309D1B                           ; $309D23 |

loc_61D26:
  JMP code_3FE456                           ; $309D26 |

  db $08, $F8, $00, $FF, $07, $E6, $2E, $23 ; $309D29 |
  db $02, $13                               ; $309D31 |

  JSR code_3FEBD1                           ; $309D33 |
  LDA $51                                   ; $309D36 |
  CMP #$02                                  ; $309D38 |
  BEQ loc_61D41                             ; $309D3A |
  LDA #$7D                                  ; $309D3C |
  JSR code_3EC9EF                           ; $309D3E |
loc_61D41:
  LDA #$00                                  ; $309D41 |
  STA $0624,x                               ; $309D43 |
code_309D46:
  JSR code_3FEF0C                           ; $309D46 |
  LDA #$73                                  ; $309D49 |
  STA $08                                   ; $309D4B |
  LDA #$9E                                  ; $309D4D |
  STA $09                                   ; $309D4F |
  JSR code_3ECC54                           ; $309D51 |
  LDA $9E75,y                               ; $309D54 |
  STA $05B1,x                               ; $309D57 |
loc_61D5A:
  JSR code_3FE9D3                           ; $309D5A |
  JSR code_309E61                           ; $309D5D |
  LDA $0624,x                               ; $309D60 |
  BNE loc_61D85                             ; $309D63 |
  LDA $11                                   ; $309D65 |
  AND #$01                                  ; $309D67 |
  BEQ loc_61D85                             ; $309D69 |
  LDA $05F6,x                               ; $309D6B |
  BMI loc_61D85                             ; $309D6E |
  JSR code_309DF7                           ; $309D70 |
loc_61D73:
  JSR code_3FE9D3                           ; $309D73 |
  DEC $05B1,x                               ; $309D76 |
  BEQ loc_61D92                             ; $309D79 |
  DEC $05C8,x                               ; $309D7B |
  BNE loc_61D73                             ; $309D7E |
  LDY #$07                                  ; $309D80 |
  JSR code_3FE522                           ; $309D82 |
loc_61D85:
  DEC $05B1,x                               ; $309D85 |
  BNE loc_61D5A                             ; $309D88 |
  LDY #$09                                  ; $309D8A |
  JSR code_3FE522                           ; $309D8C |
  JMP code_309D97                           ; $309D8F |

loc_61D92:
  LDY #$0A                                  ; $309D92 |
  JSR code_3FE522                           ; $309D94 |
code_309D97:
  JSR code_3FE9D3                           ; $309D97 |
  LDY #$55                                  ; $309D9A |
  JSR code_3FE5AB                           ; $309D9C |
  BCS loc_61DC6                             ; $309D9F |
  LDY $8F                                   ; $309DA1 |
  LDA #$15                                  ; $309DA3 |
  JSR code_3FE8BC                           ; $309DA5 |
  TXA                                       ; $309DA8 |
  STA $05B1,y                               ; $309DA9 |
  LDA $03CE,y                               ; $309DAC |
  STA $03CE,x                               ; $309DAF |
  LDX $8F                                   ; $309DB2 |
  LDA #$05                                  ; $309DB4 |
  STA $060D,x                               ; $309DB6 |
loc_61DB9:
  JSR code_3FE9D3                           ; $309DB9 |
  LDA $060D,x                               ; $309DBC |
  BEQ loc_61DCD                             ; $309DBF |
  DEC $060D,x                               ; $309DC1 |
  BNE loc_61DCD                             ; $309DC4 |
loc_61DC6:
  LDX $8F                                   ; $309DC6 |
  LDY #$07                                  ; $309DC8 |
  JSR code_3FE522                           ; $309DCA |
loc_61DCD:
  JSR code_309E61                           ; $309DCD |
  LDA $0624,x                               ; $309DD0 |
  BNE loc_61DEB                             ; $309DD3 |
  LDA $11                                   ; $309DD5 |
  AND #$01                                  ; $309DD7 |
  BEQ loc_61DEB                             ; $309DD9 |
  JSR code_309DF7                           ; $309DDB |
loc_61DDE:
  JSR code_3FE9D3                           ; $309DDE |
  DEC $05C8,x                               ; $309DE1 |
  BNE loc_61DDE                             ; $309DE4 |
  LDY #$07                                  ; $309DE6 |
  JSR code_3FE522                           ; $309DE8 |
loc_61DEB:
  LDA $05B1,x                               ; $309DEB |
  TAY                                       ; $309DEE |
  LDA $03A0,y                               ; $309DEF |
  BNE loc_61DB9                             ; $309DF2 |
  JMP code_309D46                           ; $309DF4 |

code_309DF7:
  LDA $11                                   ; $309DF7 |
  CMP #$11                                  ; $309DF9 |
  BNE loc_61E4F                             ; $309DFB |
  LDA #$FB                                  ; $309DFD |
  STA $05F6,x                               ; $309DFF |
  LDA #$00                                  ; $309E02 |
  STA $05DF,x                               ; $309E04 |
  LDY #$57                                  ; $309E07 |
  JSR code_3FE5AB                           ; $309E09 |
  BCS loc_61E54                             ; $309E0C |
  LDY $8F                                   ; $309E0E |
  LDA $0486,y                               ; $309E10 |
  AND #$F0                                  ; $309E13 |
  STA $0486,x                               ; $309E15 |
  LDA $046F,y                               ; $309E18 |
  STA $046F,x                               ; $309E1B |
  LDA $04CB,y                               ; $309E1E |
  CLC                                       ; $309E21 |
  ADC #$0F                                  ; $309E22 |
  STA $04CB,x                               ; $309E24 |
  LDY #$57                                  ; $309E27 |
  JSR code_3FE5AB                           ; $309E29 |
  BCS loc_61E54                             ; $309E2C |
  LDY $8F                                   ; $309E2E |
  LDA $0486,y                               ; $309E30 |
  AND #$F0                                  ; $309E33 |
  CLC                                       ; $309E35 |
  ADC #$10                                  ; $309E36 |
  STA $0486,x                               ; $309E38 |
  LDA $046F,y                               ; $309E3B |
  STA $046F,x                               ; $309E3E |
  LDA $04CB,y                               ; $309E41 |
  CLC                                       ; $309E44 |
  ADC #$0F                                  ; $309E45 |
  STA $04CB,x                               ; $309E47 |
  LDX $8F                                   ; $309E4A |
  JMP code_309E54                           ; $309E4C |

loc_61E4F:
  LDA #$01                                  ; $309E4F |
  STA $0624,x                               ; $309E51 |
loc_61E54:
code_309E54:
  LDX $8F                                   ; $309E54 |
  LDY #$08                                  ; $309E56 |
  JSR code_3FE522                           ; $309E58 |
  LDA #$08                                  ; $309E5B |
  STA $05C8,x                               ; $309E5D |
  RTS                                       ; $309E60 |

code_309E61:
  LDA #$77                                  ; $309E61 |
  STA $08                                   ; $309E63 |
  LDA #$9E                                  ; $309E65 |
  STA $09                                   ; $309E67 |
  LDA #$00                                  ; $309E69 |
  STA $ED                                   ; $309E6B |
  STA $EB                                   ; $309E6D |
  JSR code_3FEC0A                           ; $309E6F |
  RTS                                       ; $309E72 |

  db $7F, $80, $1E, $2D, $0A, $04, $0A, $FC ; $309E73 |
  db $F6, $04, $F6, $FC, $0A, $0F, $F6, $0F ; $309E7B |
  db $0A, $F1, $F6, $F1, $0B, $00, $2E, $01 ; $309E83 |
  db $02, $43                               ; $309E8B |

  JSR code_3FEBD1                           ; $309E8D |
  LDA #$42                                  ; $309E90 |
  STA $DC                                   ; $309E92 |
code_309E94:
  JSR code_3FEA6A                           ; $309E94 |
  LDY #$06                                  ; $309E97 |
  JSR code_3FE60E                           ; $309E99 |
  JMP code_309E94                           ; $309E9C |

  db $0C, $D5, $2F, $24, $02, $90           ; $309E9F |

  JSR code_3FEBD1                           ; $309EA5 |
code_309EA8:
  JSR code_3FEA6A                           ; $309EA8 |
  LDA $056C,x                               ; $309EAB |
  AND #$10                                  ; $309EAE |
  BNE loc_61EBA                             ; $309EB0 |
  LDA $056C,x                               ; $309EB2 |
  BNE loc_61EE6                             ; $309EB5 |
  JMP code_309EA8                           ; $309EB7 |

loc_61EBA:
  LDY #$32                                  ; $309EBA |
  JSR code_3FE522                           ; $309EBC |
  LDA #$02                                  ; $309EBF |
  STA $05B1,x                               ; $309EC1 |
loc_61EC4:
  JSR code_3FEA6A                           ; $309EC4 |
  DEC $05B1,x                               ; $309EC7 |
  BNE loc_61EC4                             ; $309ECA |
  LDY #$0D                                  ; $309ECC |
  JSR code_3FE522                           ; $309ECE |
  LDA #$25                                  ; $309ED1 |
  STA $059A,x                               ; $309ED3 |
code_309ED6:
  LDA #$50                                  ; $309ED6 |
  STA $0583,x                               ; $309ED8 |
  LDA #$00                                  ; $309EDB |
  STA $056C,x                               ; $309EDD |
  JSR code_3FEA6A                           ; $309EE0 |
  JMP code_309ED6                           ; $309EE3 |

loc_61EE6:
  LDA #$00                                  ; $309EE6 |
  STA $056C                                 ; $309EE8 |
  JSR code_3FEA6A                           ; $309EEB |
  LDA #$00                                  ; $309EEE |
  STA $056C                                 ; $309EF0 |
  JSR code_3FEA6A                           ; $309EF3 |
  LDA #$00                                  ; $309EF6 |
  STA $0583,x                               ; $309EF8 |
  LDA #$08                                  ; $309EFB |
  STA $05B1,x                               ; $309EFD |
loc_61F00:
  JSR code_3FEA6A                           ; $309F00 |
  DEC $05B1,x                               ; $309F03 |
  BNE loc_61F00                             ; $309F06 |
  LDA #$90                                  ; $309F08 |
  STA $0583,x                               ; $309F0A |
  JMP code_309EA8                           ; $309F0D |

  db $16, $4E, $41, $01, $00, $00           ; $309F10 |

  JSR code_3FEBD1                           ; $309F16 |
  LDA #$38                                  ; $309F19 |
  STA $08                                   ; $309F1B |
  LDA #$9F                                  ; $309F1D |
  STA $09                                   ; $309F1F |
  JSR code_3ECC54                           ; $309F21 |
  LDA $9F3E,y                               ; $309F24 |
  STA $03CE,x                               ; $309F27 |
code_309F2A:
  JSR code_3FEA6A                           ; $309F2A |
  JSR code_3FEA6A                           ; $309F2D |
  LDY #$07                                  ; $309F30 |
  JSR code_3FE60E                           ; $309F32 |
  JMP code_309F2A                           ; $309F35 |

  db $2A, $2B, $2A, $2B, $2A, $2B, $09, $08 ; $309F38 |
  db $09, $08, $09, $08, $13, $4D, $32, $01 ; $309F40 |
  db $00, $00                               ; $309F48 |

  JSR code_3FEBD1                           ; $309F4A |
  JSR code_3FE5DF                           ; $309F4D |
  LDA #$06                                  ; $309F50 |
  STA $05B1,x                               ; $309F52 |
loc_61F55:
  JSR code_3FEA6A                           ; $309F55 |
  INC $04CB,x                               ; $309F58 |
  DEC $05B1,x                               ; $309F5B |
  BNE loc_61F55                             ; $309F5E |
  JMP code_3FE456                           ; $309F60 |

  db $10, $00, $30, $01, $00, $00           ; $309F63 |

  JSR code_3FEBD1                           ; $309F69 |
  LDA #$08                                  ; $309F6C |
  STA $05B1,x                               ; $309F6E |
loc_61F71:
  JSR code_3FEA6A                           ; $309F71 |
  DEC $05B1,x                               ; $309F74 |
  BNE loc_61F71                             ; $309F77 |
  JMP code_3FE456                           ; $309F79 |

  db $77, $00, $5F, $62, $00, $70           ; $309F7C |

  JSR code_3FEBD1                           ; $309F82 |
loc_61F85:
  JSR code_3FE468                           ; $309F85 |
  LDA $056C,x                               ; $309F88 |
  BEQ loc_61F85                             ; $309F8B |
  LDA #$01                                  ; $309F8D |
  STA $0696                                 ; $309F8F |
  LDA #$2F                                  ; $309F92 |
  STA $DC                                   ; $309F94 |
  JMP code_3FE456                           ; $309F96 |

  db $89, $C4, $65, $5C, $00, $50           ; $309F99 |

  JSR code_3FEBD1                           ; $309F9F |
  LDA #$18                                  ; $309FA2 |
  STA $05B1,x                               ; $309FA4 |
loc_61FA7:
  JSR code_3FEA6A                           ; $309FA7 |
  DEC $05B1,x                               ; $309FAA |
  BNE loc_61FA7                             ; $309FAD |
  LDA #$00                                  ; $309FAF |
  STA $060D,x                               ; $309FB1 |
  STA $0624,x                               ; $309FB4 |
  LDA #$08                                  ; $309FB7 |
  STA $03CE,x                               ; $309FB9 |
code_309FBC:
  JSR code_3FEA6A                           ; $309FBC |
  LDY #$03                                  ; $309FBF |
  JSR code_3FEE9A                           ; $309FC1 |
  LDA #$00                                  ; $309FC4 |
  STA $ED                                   ; $309FC6 |
  STA $EB                                   ; $309FC8 |
  JSR code_3FE4D1                           ; $309FCA |
  JMP code_309FBC                           ; $309FCD |

  db $00, $00, $00, $00, $00, $00, $00, $00 ; $309FD0 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $309FD8 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $309FE0 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $309FE8 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $309FF0 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $309FF8 |

bank $31
org $8000

  db $00, $64, $36, $2B, $1B, $F5           ; $318000 |

  JSR code_3FEBD1                           ; $318006 |
  JSR code_3FEF0C                           ; $318009 |
loc_6200C:
  JSR code_31997D                           ; $31800C |
  LDA #$41                                  ; $31800F |
  STA $08                                   ; $318011 |
  LDA #$82                                  ; $318013 |
  STA $09                                   ; $318015 |
  JSR code_3ECC54                           ; $318017 |
  TYA                                       ; $31801A |
  CMP $05B9                                 ; $31801B |
  BNE loc_62031                             ; $31801E |
  LDA $05C8,x                               ; $318020 |
  CMP #$02                                  ; $318023 |
  BCC loc_62036                             ; $318025 |
  LDY $05B9                                 ; $318027 |
  INY                                       ; $31802A |
  CPY #$03                                  ; $31802B |
  BNE loc_62031                             ; $31802D |
  LDY #$00                                  ; $31802F |
loc_62031:
  LDA #$00                                  ; $318031 |
  STA $05D0                                 ; $318033 |
loc_62036:
  TYA                                       ; $318036 |
  STA $05B9                                 ; $318037 |
  INC $05D0                                 ; $31803A |
  LDA $8244,y                               ; $31803D |
  STA $08                                   ; $318040 |
  LDA $8247,y                               ; $318042 |
  STA $09                                   ; $318045 |
  JMP ($0008)                               ; $318047 |

code_31804A:
  LDA $05B9                                 ; $31804A |
  BEQ loc_620B8                             ; $31804D |
code_31804F:
  LDA #$F3                                  ; $31804F |
  STA $058B                                 ; $318051 |
  LDA #$2B                                  ; $318054 |
  STA $059A,x                               ; $318056 |
  LDA #$08                                  ; $318059 |
  STA $063E                                 ; $31805B |
  LDY #$00                                  ; $31805E |
  JSR code_3FE522                           ; $318060 |
  LDA #$0A                                  ; $318063 |
  STA $062C                                 ; $318065 |
loc_62068:
  JSR code_31997D                           ; $318068 |
  JSR code_3FEF0C                           ; $31806B |
  DEC $062C                                 ; $31806E |
  BNE loc_62068                             ; $318071 |
  BEQ loc_6200C                             ; $318073 |
  LDA #$08                                  ; $318075 |
  STA $063E                                 ; $318077 |
  LDY #$02                                  ; $31807A |
  JSR code_3FE522                           ; $31807C |
  LDA #$4A                                  ; $31807F |
  STA $08                                   ; $318081 |
  LDA #$82                                  ; $318083 |
  STA $09                                   ; $318085 |
  JSR code_3ECC54                           ; $318087 |
  TYA                                       ; $31808A |
  STA $0615                                 ; $31808B |
  LDA #$03                                  ; $31808E |
  STA $062C                                 ; $318090 |
loc_62093:
  LDY #$91                                  ; $318093 |
  JSR code_3FE5AB                           ; $318095 |
  BCS loc_620C2                             ; $318098 |
  LDA $0477                                 ; $31809A |
  STA $046F,x                               ; $31809D |
  LDA $0615                                 ; $3180A0 |
  STA $05B1,x                               ; $3180A3 |
  LDA $062C                                 ; $3180A6 |
  STA $05C8,x                               ; $3180A9 |
  DEC $062C                                 ; $3180AC |
  BPL loc_62093                             ; $3180AF |
  LDX $8F                                   ; $3180B1 |
  LDA #$00                                  ; $3180B3 |
  STA $0615                                 ; $3180B5 |
loc_620B8:
  JSR code_31997D                           ; $3180B8 |
  LDA $0615                                 ; $3180BB |
  CMP #$04                                  ; $3180BE |
  BNE loc_620B8                             ; $3180C0 |
loc_620C2:
  LDX $8F                                   ; $3180C2 |
  JMP code_31804F                           ; $3180C4 |

  JSR code_31997D                           ; $3180C7 |
  LDA #$08                                  ; $3180CA |
  STA $063E                                 ; $3180CC |
  JSR code_3FEF0C                           ; $3180CF |
  JSR code_319C2B                           ; $3180D2 |
  JSR code_31997D                           ; $3180D5 |
  LDA #$4B                                  ; $3180D8 |
  STA $08                                   ; $3180DA |
  LDA #$9D                                  ; $3180DC |
  STA $09                                   ; $3180DE |
  JSR code_3ECC54                           ; $3180E0 |
  LDA #$00                                  ; $3180E3 |
  STA $00                                   ; $3180E5 |
  CPY #$01                                  ; $3180E7 |
  BEQ loc_6211C                             ; $3180E9 |
  LDA $062C                                 ; $3180EB |
  LSR                                       ; $3180EE |
  ROR $00                                   ; $3180EF |
  LSR                                       ; $3180F1 |
  ROR $00                                   ; $3180F2 |
  STA $062C                                 ; $3180F4 |
  STA $01                                   ; $3180F7 |
  LDA $00                                   ; $3180F9 |
  STA $02                                   ; $3180FB |
  CLC                                       ; $3180FD |
  LDA $02                                   ; $3180FE |
  ADC $00                                   ; $318100 |
  STA $00                                   ; $318102 |
  LDA $062C                                 ; $318104 |
  ADC $01                                   ; $318107 |
  STA $01                                   ; $318109 |
  CLC                                       ; $31810B |
  LDA $02                                   ; $31810C |
  ADC $00                                   ; $31810E |
  STA $00                                   ; $318110 |
  LDA $062C                                 ; $318112 |
  ADC $01                                   ; $318115 |
  STA $01                                   ; $318117 |
  JMP code_3181F1                           ; $318119 |

loc_6211C:
  LDA $062C                                 ; $31811C |
  STA $01                                   ; $31811F |
  JSR code_319C3C                           ; $318121 |
  LDA #$01                                  ; $318124 |
  STA $03                                   ; $318126 |
  LDA #$80                                  ; $318128 |
  STA $02                                   ; $31812A |
  JSR code_3ECC70                           ; $31812C |
  LDA $05                                   ; $31812F |
  STA $062C                                 ; $318131 |
  JMP code_3181F1                           ; $318134 |

code_318137:
  LDA #$A2                                  ; $318137 |
  STA $08                                   ; $318139 |
  LDA #$9B                                  ; $31813B |
  STA $09                                   ; $31813D |
  LDA #$00                                  ; $31813F |
  STA $ED                                   ; $318141 |
  STA $EB                                   ; $318143 |
  JSR code_3FEC0A                           ; $318145 |
  RTS                                       ; $318148 |

  LDA #$00                                  ; $318149 |
  STA $063E                                 ; $31814B |
  LDA #$54                                  ; $31814E |
  STA $059A,x                               ; $318150 |
  LDY #$06                                  ; $318153 |
  JSR code_3FE522                           ; $318155 |
  LDA #$0C                                  ; $318158 |
  STA $0615                                 ; $31815A |
loc_6215D:
  JSR code_31997D                           ; $31815D |
  DEC $0615                                 ; $318160 |
  BNE loc_6215D                             ; $318163 |
  LDY #$03                                  ; $318165 |
  JSR code_3FE522                           ; $318167 |
  LDA #$63                                  ; $31816A |
  STA $058B                                 ; $31816C |
  LDA #$2B                                  ; $31816F |
  STA $05E7                                 ; $318171 |
  LDA #$FD                                  ; $318174 |
  STA $05FE                                 ; $318176 |
loc_62179:
  JSR code_31997D                           ; $318179 |
  JSR code_318137                           ; $31817C |
  LDA $11                                   ; $31817F |
  AND #$01                                  ; $318181 |
  BEQ loc_62179                             ; $318183 |
  LDA #$5A                                  ; $318185 |
  STA $DC                                   ; $318187 |
loc_62189:
  JSR code_31997D                           ; $318189 |
  LDY #$08                                  ; $31818C |
  JSR code_3FE61A                           ; $31818E |
  LDA #$A2                                  ; $318191 |
  STA $08                                   ; $318193 |
  LDA #$9B                                  ; $318195 |
  STA $09                                   ; $318197 |
  JSR code_3FEC0A                           ; $318199 |
  LDA $12                                   ; $31819C |
  AND #$01                                  ; $31819E |
  BEQ loc_62189                             ; $3181A0 |
  LDA #$BB                                  ; $3181A2 |
  STA $05E7                                 ; $3181A4 |
  LDA #$FC                                  ; $3181A7 |
  STA $05FE                                 ; $3181A9 |
  JSR code_3FEF18                           ; $3181AC |
  LDA #$5B                                  ; $3181AF |
  STA $DC                                   ; $3181B1 |
loc_621B3:
  JSR code_31997D                           ; $3181B3 |
  LDA #$A2                                  ; $3181B6 |
  STA $08                                   ; $3181B8 |
  LDA #$9B                                  ; $3181BA |
  STA $09                                   ; $3181BC |
  LDA $03CE,x                               ; $3181BE |
  LSR                                       ; $3181C1 |
  LSR                                       ; $3181C2 |
  LSR                                       ; $3181C3 |
  TAY                                       ; $3181C4 |
  LDA $825E,y                               ; $3181C5 |
  STA $ED                                   ; $3181C8 |
  LDA $8260,y                               ; $3181CA |
  STA $EB                                   ; $3181CD |
  JSR code_3FEC0A                           ; $3181CF |
  LDA $11                                   ; $3181D2 |
  AND #$01                                  ; $3181D4 |
  BEQ loc_621B3                             ; $3181D6 |
  LDA #$2B                                  ; $3181D8 |
  STA $05E7                                 ; $3181DA |
  LDA #$FD                                  ; $3181DD |
  STA $05FE                                 ; $3181DF |
loc_621E2:
  JSR code_31997D                           ; $3181E2 |
  JSR code_318137                           ; $3181E5 |
  LDA $11                                   ; $3181E8 |
  AND #$01                                  ; $3181EA |
  BEQ loc_621E2                             ; $3181EC |
  JMP code_31804A                           ; $3181EE |

code_3181F1:
  LDY #$01                                  ; $3181F1 |
  JSR code_3FE522                           ; $3181F3 |
  LDA #$0A                                  ; $3181F6 |
  STA $0615                                 ; $3181F8 |
loc_621FB:
  JSR code_31997D                           ; $3181FB |
  DEC $0615                                 ; $3181FE |
  BNE loc_621FB                             ; $318201 |
loc_62203:
  LDY #$92                                  ; $318203 |
  JSR code_3FE5AB                           ; $318205 |
  BCS loc_62218                             ; $318208 |
  LDY $8F                                   ; $31820A |
  LDA #$03                                  ; $31820C |
  JSR code_3FE8FD                           ; $31820E |
  LDX $8F                                   ; $318211 |
  LDA #$1E                                  ; $318213 |
  STA $0615                                 ; $318215 |
loc_62218:
  JSR code_31997D                           ; $318218 |
  LDY #$06                                  ; $31821B |
  JSR code_3FE61A                           ; $31821D |
  LDA #$A2                                  ; $318220 |
  STA $08                                   ; $318222 |
  LDA #$9B                                  ; $318224 |
  STA $09                                   ; $318226 |
  JSR code_3FEC0A                           ; $318228 |
  LDA $12                                   ; $31822B |
  BEQ loc_62232                             ; $31822D |
  JSR code_3FEF18                           ; $31822F |
loc_62232:
  DEC $062C                                 ; $318232 |
  BEQ loc_6223E                             ; $318235 |
  DEC $0615                                 ; $318237 |
  BEQ loc_62203                             ; $31823A |
  BNE loc_62218                             ; $31823C |
loc_6223E:
  JMP code_31804A                           ; $31823E |

  db $4F, $30, $80, $75, $C7, $49, $80, $80 ; $318241 |
  db $81, $3F, $40, $40, $40, $62, $66, $6A ; $318249 |
  db $6E, $82, $82, $82, $82, $72, $76, $7A ; $318251 |
  db $7E, $82, $82, $82, $82, $01, $FE, $A2 ; $318259 |
  db $5E, $28, $58, $98, $C8, $40, $80, $88 ; $318261 |
  db $D8, $30, $60, $78, $98, $1C, $50, $80 ; $318269 |
  db $D0, $78, $38, $88, $48, $88, $30, $78 ; $318271 |
  db $90, $48, $58, $90, $70, $30, $48, $68 ; $318279 |
  db $80, $04, $00, $00, $01, $1A, $D3      ; $318281 |

  JSR code_3FEBD1                           ; $318288 |
  LDA #$59                                  ; $31828B |
  STA $DC                                   ; $31828D |
  LDY $05B1,x                               ; $31828F |
  LDA $824E,y                               ; $318292 |
  STA $08                                   ; $318295 |
  LDA $8252,y                               ; $318297 |
  STA $09                                   ; $31829A |
  LDA $8256,y                               ; $31829C |
  STA $0A                                   ; $31829F |
  LDA $825A,y                               ; $3182A1 |
  STA $0B                                   ; $3182A4 |
  LDY $05C8,x                               ; $3182A6 |
  LDA ($08),y                               ; $3182A9 |
  STA $0486,x                               ; $3182AB |
  LDA ($0A),y                               ; $3182AE |
  STA $04CB,x                               ; $3182B0 |
  LDA $0477                                 ; $3182B3 |
  STA $046F,x                               ; $3182B6 |
  LDA #$00                                  ; $3182B9 |
  STA $04B4,x                               ; $3182BB |
  LDA #$1C                                  ; $3182BE |
  STA $05B1,x                               ; $3182C0 |
loc_622C3:
  JSR code_3FEA6A                           ; $3182C3 |
  DEC $05B1,x                               ; $3182C6 |
  BNE loc_622C3                             ; $3182C9 |
  LDY #$05                                  ; $3182CB |
  JSR code_3FE522                           ; $3182CD |
  LDY #$00                                  ; $3182D0 |
  JSR code_3FF8AE                           ; $3182D2 |
  LDA $11                                   ; $3182D5 |
  STA $03CE,x                               ; $3182D7 |
code_3182DA:
  JSR code_3182E5                           ; $3182DA |
  LDY #$00                                  ; $3182DD |
  JSR code_3FE60E                           ; $3182DF |
  JMP code_3182DA                           ; $3182E2 |

code_3182E5:
  JSR code_3FE485                           ; $3182E5 |
  BCS loc_622F2                             ; $3182E8 |
  LDA $03ED                                 ; $3182EA |
  BMI loc_622F2                             ; $3182ED |
  JMP code_3FE468                           ; $3182EF |

loc_622F2:
  INC $0615                                 ; $3182F2 |
  JMP code_3FE456                           ; $3182F5 |

  db $08, $00, $00, $01, $1A, $00           ; $3182F8 |

  JSR code_3FEBD1                           ; $3182FE |
  LDA #$18                                  ; $318301 |
  STA $05B1,x                               ; $318303 |
  LDY #$08                                  ; $318306 |
  LDA #$03                                  ; $318308 |
  JSR code_3FE8FD                           ; $31830A |
  LDA $03BF                                 ; $31830D |
  STA $03B7,x                               ; $318310 |
loc_62313:
  JSR code_3FE468                           ; $318313 |
  DEC $05B1,x                               ; $318316 |
  BNE loc_62313                             ; $318319 |
  JMP code_3FE456                           ; $31831B |

  db $09, $65, $39, $2D, $1B, $34           ; $31831E |

  JSR code_3FEBD1                           ; $318324 |
  LDA #$00                                  ; $318327 |
  STA $05B9                                 ; $318329 |
loc_6232C:
  JSR code_3FEF0C                           ; $31832C |
  LDA #$96                                  ; $31832F |
  STA $08                                   ; $318331 |
  LDA #$85                                  ; $318333 |
  STA $09                                   ; $318335 |
  JSR code_3ECC54                           ; $318337 |
  LDA $8599,y                               ; $31833A |
  STA $08                                   ; $31833D |
  LDA $859C,y                               ; $31833F |
  STA $09                                   ; $318342 |
  JMP ($0008)                               ; $318344 |

loc_62347:
code_318347:
  LDA #$08                                  ; $318347 |
  STA $063E                                 ; $318349 |
  LDY #$09                                  ; $31834C |
  JSR code_3FE522                           ; $31834E |
  LDA #$34                                  ; $318351 |
  STA $058B                                 ; $318353 |
loc_62356:
  JSR code_31997D                           ; $318356 |
  JSR code_3FEF0C                           ; $318359 |
  DEC $062C                                 ; $31835C |
  BNE loc_62356                             ; $31835F |
  BEQ loc_6232C                             ; $318361 |
  LDA $05B9                                 ; $318363 |
  BEQ loc_62347                             ; $318366 |
  JMP code_3184C2                           ; $318368 |

  INC $0641                                 ; $31836B |
  JSR code_31997D                           ; $31836E |
  LDY #$0F                                  ; $318371 |
  JSR code_3FE522                           ; $318373 |
  LDA #$01                                  ; $318376 |
  STA $063E                                 ; $318378 |
  SEC                                       ; $31837B |
  LDA $0486                                 ; $31837C |
  SBC $048E                                 ; $31837F |
  BPL loc_62388                             ; $318382 |
  EOR #$FF                                  ; $318384 |
  ADC #$01                                  ; $318386 |
loc_62388:
  STA $062C                                 ; $318388 |
  JSR code_31997D                           ; $31838B |
  LDA #$A6                                  ; $31838E |
  STA $08                                   ; $318390 |
  LDA #$85                                  ; $318392 |
  STA $09                                   ; $318394 |
  JSR code_3ECC54                           ; $318396 |
  LDA $85AE,y                               ; $318399 |
  STA $02                                   ; $31839C |
  LDA $85B6,y                               ; $31839E |
  STA $03                                   ; $3183A1 |
  LDA $85C6,y                               ; $3183A3 |
  STA $05FE                                 ; $3183A6 |
  LDA $85BE,y                               ; $3183A9 |
  STA $05E7                                 ; $3183AC |
  LDA #$9F                                  ; $3183AF |
  STA $08                                   ; $3183B1 |
  LDA #$85                                  ; $3183B3 |
  STA $09                                   ; $3183B5 |
  JSR code_3ECC54                           ; $3183B7 |
  LDA $062C                                 ; $3183BA |
  STA $01                                   ; $3183BD |
  LDA #$00                                  ; $3183BF |
  STA $00                                   ; $3183C1 |
  CPY #$03                                  ; $3183C3 |
  BEQ loc_623D2                             ; $3183C5 |
  CPY #$02                                  ; $3183C7 |
  BEQ loc_623DE                             ; $3183C9 |
  CPY #$01                                  ; $3183CB |
  BEQ loc_623D8                             ; $3183CD |
  JMP code_3183E1                           ; $3183CF |

loc_623D2:
  JSR code_319C41                           ; $3183D2 |
  JMP code_3183E1                           ; $3183D5 |

loc_623D8:
  JSR code_319C3C                           ; $3183D8 |
  JMP code_3183E1                           ; $3183DB |

loc_623DE:
  JSR code_319C63                           ; $3183DE |
code_3183E1:
  JSR code_3ECC70                           ; $3183E1 |
  LDA $03D6                                 ; $3183E4 |
  CMP #$04                                  ; $3183E7 |
  BEQ loc_623FD                             ; $3183E9 |
  LDA $05                                   ; $3183EB |
  EOR #$FF                                  ; $3183ED |
  STA $05                                   ; $3183EF |
  LDA $04                                   ; $3183F1 |
  EOR #$FF                                  ; $3183F3 |
  STA $04                                   ; $3183F5 |
  INC $04                                   ; $3183F7 |
  BNE loc_623FD                             ; $3183F9 |
  INC $05                                   ; $3183FB |
loc_623FD:
  LDA $05                                   ; $3183FD |
  STA $062C                                 ; $3183FF |
  LDA $04                                   ; $318402 |
  STA $0615                                 ; $318404 |
loc_62407:
  JSR code_31997D                           ; $318407 |
  LDA $056C,x                               ; $31840A |
  CMP #$14                                  ; $31840D |
  BEQ loc_6242F                             ; $31840F |
  LDA $062C                                 ; $318411 |
  STA $ED                                   ; $318414 |
  LDA $0615                                 ; $318416 |
  STA $EB                                   ; $318419 |
  LDA #$02                                  ; $31841B |
  STA $08                                   ; $31841D |
  LDA #$9C                                  ; $31841F |
  STA $09                                   ; $318421 |
  JSR code_3FEC0A                           ; $318423 |
  JSR code_319AC5                           ; $318426 |
  LDA $12                                   ; $318429 |
  AND #$01                                  ; $31842B |
  BEQ loc_6244A                             ; $31842D |
loc_6242F:
  JSR code_3FEF18                           ; $31842F |
  LDA $062C                                 ; $318432 |
  EOR #$FF                                  ; $318435 |
  STA $062C                                 ; $318437 |
  LDA $0615                                 ; $31843A |
  EOR #$FF                                  ; $31843D |
  STA $0615                                 ; $31843F |
  INC $0615                                 ; $318442 |
  BNE loc_6244A                             ; $318445 |
  INC $062C                                 ; $318447 |
loc_6244A:
  LDA $11                                   ; $31844A |
  AND #$01                                  ; $31844C |
  BEQ loc_62407                             ; $31844E |
  LDA #$4C                                  ; $318450 |
  STA $DC                                   ; $318452 |
  LDA #$1E                                  ; $318454 |
  STA $062C                                 ; $318456 |
  LDA #$00                                  ; $318459 |
  STA $0641                                 ; $31845B |
  JMP code_318347                           ; $31845E |

  JSR code_31997D                           ; $318461 |
  LDA #$08                                  ; $318464 |
  STA $063E                                 ; $318466 |
  LDA $0486                                 ; $318469 |
  AND #$FE                                  ; $31846C |
  STA $0615                                 ; $31846E |
  LDA $04CB                                 ; $318471 |
  AND #$FE                                  ; $318474 |
  STA $062C                                 ; $318476 |
  LDA $048E                                 ; $318479 |
  AND #$FE                                  ; $31847C |
  STA $048E                                 ; $31847E |
  LDA $04D3                                 ; $318481 |
  AND #$FE                                  ; $318484 |
  STA $04D3                                 ; $318486 |
  LDY #$0B                                  ; $318489 |
  JSR code_3FE522                           ; $31848B |
  LDA #$12                                  ; $31848E |
  STA $05FE                                 ; $318490 |
loc_62493:
  JSR code_31997D                           ; $318493 |
  DEC $05FE                                 ; $318496 |
  BNE loc_62493                             ; $318499 |
  LDA #$F4                                  ; $31849B |
  STA $058B                                 ; $31849D |
  LDY #$96                                  ; $3184A0 |
  JSR code_3FE5AB                           ; $3184A2 |
  BCS loc_624D4                             ; $3184A5 |
  INC $05B9                                 ; $3184A7 |
  LDA $0615                                 ; $3184AA |
  STA $060D,x                               ; $3184AD |
  LDA $062C                                 ; $3184B0 |
  STA $0624,x                               ; $3184B3 |
  LDY $8F                                   ; $3184B6 |
  LDA #$21                                  ; $3184B8 |
  JSR code_3FE8BC                           ; $3184BA |
  LDA #$00                                  ; $3184BD |
  STA $05FF                                 ; $3184BF |
loc_624C2:
code_3184C2:
  LDA #$08                                  ; $3184C2 |
  STA $063E                                 ; $3184C4 |
  JSR code_31997D                           ; $3184C7 |
  LDA $05FF                                 ; $3184CA |
  BEQ loc_624C2                             ; $3184CD |
  LDA #$00                                  ; $3184CF |
  STA $05B9                                 ; $3184D1 |
loc_624D4:
  LDX $8F                                   ; $3184D4 |
  LDY #$0D                                  ; $3184D6 |
  JSR code_3FE522                           ; $3184D8 |
  LDA #$14                                  ; $3184DB |
  STA $0624,x                               ; $3184DD |
loc_624E0:
  JSR code_31997D                           ; $3184E0 |
  DEC $0624,x                               ; $3184E3 |
  BNE loc_624E0                             ; $3184E6 |
  LDA #$3C                                  ; $3184E8 |
  STA $062C                                 ; $3184EA |
  JMP code_318347                           ; $3184ED |

  JSR code_31997D                           ; $3184F0 |
  LDY #$0A                                  ; $3184F3 |
  JSR code_3FE522                           ; $3184F5 |
  LDA #$05                                  ; $3184F8 |
  STA $063E                                 ; $3184FA |
  SEC                                       ; $3184FD |
  LDA $0486                                 ; $3184FE |
  SBC $048E                                 ; $318501 |
  BPL loc_6250A                             ; $318504 |
  EOR #$FF                                  ; $318506 |
  ADC #$01                                  ; $318508 |
loc_6250A:
  STA $062C                                 ; $31850A |
  LDA #$A3                                  ; $31850D |
  STA $08                                   ; $31850F |
  LDA #$85                                  ; $318511 |
  STA $09                                   ; $318513 |
  JSR code_3ECC54                           ; $318515 |
  LDA #$00                                  ; $318518 |
  STA $00                                   ; $31851A |
  LDA #$80                                  ; $31851C |
  STA $02                                   ; $31851E |
  LDA #$01                                  ; $318520 |
  STA $03                                   ; $318522 |
  CMP #$02                                  ; $318524 |
  BEQ loc_62537                             ; $318526 |
  CMP #$01                                  ; $318528 |
  BEQ loc_62542                             ; $31852A |
  LDA $062C                                 ; $31852C |
  CLC                                       ; $31852F |
  ADC #$18                                  ; $318530 |
  STA $01                                   ; $318532 |
  JMP code_318565                           ; $318534 |

loc_62537:
  LDA $062C                                 ; $318537 |
  LSR                                       ; $31853A |
  ROR $00                                   ; $31853B |
  STA $01                                   ; $31853D |
  JMP code_318565                           ; $31853F |

loc_62542:
  LSR $062C                                 ; $318542 |
  ROR $00                                   ; $318545 |
  LDA $062C                                 ; $318547 |
  STA $01                                   ; $31854A |
  LDA $00                                   ; $31854C |
  STA $0615                                 ; $31854E |
  LSR $01                                   ; $318551 |
  ROR $0615                                 ; $318553 |
  CLC                                       ; $318556 |
  LDA $0615                                 ; $318557 |
  ADC $00                                   ; $31855A |
  STA $00                                   ; $31855C |
  LDA $062C                                 ; $31855E |
  ADC $01                                   ; $318561 |
  STA $01                                   ; $318563 |
code_318565:
  JSR code_3ECC70                           ; $318565 |
  LDA $05                                   ; $318568 |
  STA $062C                                 ; $31856A |
loc_6256D:
  JSR code_31997D                           ; $31856D |
  LDY #$06                                  ; $318570 |
  JSR code_3FE61A                           ; $318572 |
  LDA #$02                                  ; $318575 |
  STA $08                                   ; $318577 |
  LDA #$9C                                  ; $318579 |
  STA $09                                   ; $31857B |
  JSR code_3FEC0A                           ; $31857D |
  LDA $12                                   ; $318580 |
  AND #$01                                  ; $318582 |
  BEQ loc_62589                             ; $318584 |
  JSR code_3FEF18                           ; $318586 |
loc_62589:
  DEC $062C                                 ; $318589 |
  BNE loc_6256D                             ; $31858C |
  LDA #$1E                                  ; $31858E |
  STA $062C                                 ; $318590 |
  JMP code_318347                           ; $318593 |

  db $7F, $60, $20, $6B, $61, $F0, $83, $84 ; $318596 |
  db $84, $3F, $40, $40, $40, $7F, $60, $20 ; $31859E |
  db $1F, $20, $20, $20, $20, $20, $20, $20 ; $3185A6 |
  db $F2, $FB, $F2, $FB, $F2, $FB, $F2, $FB ; $3185AE |
  db $37, $30, $37, $30, $37, $30, $37, $30 ; $3185B6 |
  db $AD, $D7, $AD, $D7, $AD, $D7, $AD, $D7 ; $3185BE |
  db $F9, $FA, $F9, $FA, $F9, $FA, $F9, $FA ; $3185C6 |
  db $0E, $65, $39, $01, $1A, $D5           ; $3185CE |

  JSR code_3FEBD1                           ; $3185D4 |
  LDA $060D,x                               ; $3185D7 |
  STA $08                                   ; $3185DA |
  LDA $046F                                 ; $3185DC |
  STA $09                                   ; $3185DF |
  LDA $0624,x                               ; $3185E1 |
  STA $0A                                   ; $3185E4 |
  JSR code_3FF8BD                           ; $3185E6 |
  LDA $11                                   ; $3185E9 |
  STA $03CE,x                               ; $3185EB |
  SEC                                       ; $3185EE |
  LDA $060D,x                               ; $3185EF |
  SBC $0486,x                               ; $3185F2 |
  STA $05B1,x                               ; $3185F5 |
  BPL loc_62602                             ; $3185F8 |
  EOR #$FF                                  ; $3185FA |
  STA $05B1,x                               ; $3185FC |
  INC $05B1,x                               ; $3185FF |
loc_62602:
  SEC                                       ; $318602 |
  LDA $0624,x                               ; $318603 |
  SBC $04CB,x                               ; $318606 |
  STA $05C8,x                               ; $318609 |
  BPL loc_62616                             ; $31860C |
  EOR #$FF                                  ; $31860E |
  STA $05C8,x                               ; $318610 |
  INC $05C8,x                               ; $318613 |
loc_62616:
  LDA $05B1,x                               ; $318616 |
  CMP $05C8,x                               ; $318619 |
  BCC loc_62625                             ; $31861C |
  LDA #$04                                  ; $31861E |
  STA $05DF,x                               ; $318620 |
  BNE loc_6262A                             ; $318623 |
loc_62625:
  LDA #$04                                  ; $318625 |
  STA $05F6,x                               ; $318627 |
loc_6262A:
  JSR code_3FEA6A                           ; $31862A |
  LDA $03ED                                 ; $31862D |
  BPL loc_62635                             ; $318630 |
  JMP code_318700                           ; $318632 |

loc_62635:
  LDY #$08                                  ; $318635 |
  JSR code_3FE60E                           ; $318637 |
  LDA #$00                                  ; $31863A |
  STA $00                                   ; $31863C |
  STA $01                                   ; $31863E |
  STA $11                                   ; $318640 |
  JSR code_3ED9CD                           ; $318642 |
  JSR code_319AC5                           ; $318645 |
  LDA $11                                   ; $318648 |
  AND #$01                                  ; $31864A |
  BNE loc_62695                             ; $31864C |
  LDA $0486                                 ; $31864E |
  STA $05B1,x                               ; $318651 |
  LDA $04CB                                 ; $318654 |
  STA $05C8,x                               ; $318657 |
  LDA $060D,x                               ; $31865A |
  STA $0486                                 ; $31865D |
  LDA $0624,x                               ; $318660 |
  STA $04CB                                 ; $318663 |
  LDA $05DF,x                               ; $318666 |
  STA $00                                   ; $318669 |
  LDA $05F6,x                               ; $31866B |
  STA $01                                   ; $31866E |
  JSR code_3FEDA8                           ; $318670 |
  LDA $05B1,x                               ; $318673 |
  STA $0486                                 ; $318676 |
  LDA $05C8,x                               ; $318679 |
  STA $04CB                                 ; $31867C |
  LDA $11                                   ; $31867F |
  BEQ loc_6262A                             ; $318681 |
  LDA #$14                                  ; $318683 |
  STA $05B1,x                               ; $318685 |
loc_62688:
  JSR code_3FEA6A                           ; $318688 |
  LDA $03ED                                 ; $31868B |
  BMI loc_62700                             ; $31868E |
  DEC $05B1,x                               ; $318690 |
  BNE loc_62688                             ; $318693 |
loc_62695:
  JSR code_3FEA6A                           ; $318695 |
  LDA $03ED                                 ; $318698 |
  BMI loc_62700                             ; $31869B |
  LDA $03D6                                 ; $31869D |
  LSR                                       ; $3186A0 |
  LSR                                       ; $3186A1 |
  LSR                                       ; $3186A2 |
  TAY                                       ; $3186A3 |
  LDA $048E                                 ; $3186A4 |
  CLC                                       ; $3186A7 |
  ADC $8706,y                               ; $3186A8 |
  STA $060D,x                               ; $3186AB |
  STA $08                                   ; $3186AE |
  LDA $0477                                 ; $3186B0 |
  STA $09                                   ; $3186B3 |
  LDA $04D3                                 ; $3186B5 |
  CLC                                       ; $3186B8 |
  ADC #$06                                  ; $3186B9 |
  STA $0A                                   ; $3186BB |
  STA $0624,x                               ; $3186BD |
  JSR code_3FF8BD                           ; $3186C0 |
  LDA $11                                   ; $3186C3 |
  STA $03CE,x                               ; $3186C5 |
  LDY #$00                                  ; $3186C8 |
  JSR code_3FE60E                           ; $3186CA |
  LDA $0486                                 ; $3186CD |
  STA $05B1,x                               ; $3186D0 |
  LDA $04CB                                 ; $3186D3 |
  STA $05C8,x                               ; $3186D6 |
  LDA $060D,x                               ; $3186D9 |
  STA $0486                                 ; $3186DC |
  LDA $0624,x                               ; $3186DF |
  STA $04CB                                 ; $3186E2 |
  LDA #$08                                  ; $3186E5 |
  STA $00                                   ; $3186E7 |
  LDA #$08                                  ; $3186E9 |
  STA $01                                   ; $3186EB |
  JSR code_3FEDA8                           ; $3186ED |
  LDA $05B1,x                               ; $3186F0 |
  STA $0486                                 ; $3186F3 |
  LDA $05C8,x                               ; $3186F6 |
  STA $04CB                                 ; $3186F9 |
  LDA $11                                   ; $3186FC |
  BEQ loc_62695                             ; $3186FE |
loc_62700:
code_318700:
  INC $05FF                                 ; $318700 |
  JMP code_3FE456                           ; $318703 |

  db $0E, $F2, $12, $6E, $3E, $2E, $1B, $F4 ; $318706 |

  JSR code_3FEBD1                           ; $31870E |
loc_62711:
  JSR code_3FEF0C                           ; $318711 |
  LDA #$4B                                  ; $318714 |
  STA $08                                   ; $318716 |
  LDA #$9D                                  ; $318718 |
  STA $09                                   ; $31871A |
  JSR code_3ECC54                           ; $31871C |
  TYA                                       ; $31871F |
  CMP $05B9                                 ; $318720 |
  BNE loc_62730                             ; $318723 |
  LDA $05C8,x                               ; $318725 |
  CMP #$02                                  ; $318728 |
  BCC loc_62735                             ; $31872A |
  TYA                                       ; $31872C |
  EOR #$01                                  ; $31872D |
  TAY                                       ; $31872F |
loc_62730:
  LDA #$00                                  ; $318730 |
  STA $05D0                                 ; $318732 |
loc_62735:
  STY $05B9                                 ; $318735 |
  INC $05D0                                 ; $318738 |
  LDA $89AA,y                               ; $31873B |
  STA $08                                   ; $31873E |
  LDA $89AC,y                               ; $318740 |
  STA $09                                   ; $318743 |
  JMP ($0008)                               ; $318745 |

code_318748:
  JSR code_31997D                           ; $318748 |
  LDA #$08                                  ; $31874B |
  STA $063E                                 ; $31874D |
  LDY #$12                                  ; $318750 |
  JSR code_3FE522                           ; $318752 |
loc_62755:
  JSR code_31997D                           ; $318755 |
  DEC $062C                                 ; $318758 |
  BNE loc_62755                             ; $31875B |
  LDA $05B9                                 ; $31875D |
  BEQ loc_62711                             ; $318760 |
  LDA $0615                                 ; $318762 |
  BEQ loc_62711                             ; $318765 |
  LDY $0615                                 ; $318767 |
  LDA $03A0,y                               ; $31876A |
  BEQ loc_62711                             ; $31876D |
  JMP code_318935                           ; $31876F |

  INC $0641                                 ; $318772 |
  LDY #$13                                  ; $318775 |
  JSR code_3FE522                           ; $318777 |
  LDA #$08                                  ; $31877A |
  STA $0624,x                               ; $31877C |
loc_6277F:
  JSR code_31997D                           ; $31877F |
  DEC $0624,x                               ; $318782 |
  BNE loc_6277F                             ; $318785 |
  LDY #$14                                  ; $318787 |
  JSR code_3FE522                           ; $318789 |
  LDA #$01                                  ; $31878C |
  STA $063E                                 ; $31878E |
  SEC                                       ; $318791 |
  LDA $0486                                 ; $318792 |
  SBC $048E                                 ; $318795 |
  BPL loc_6279E                             ; $318798 |
  EOR #$FF                                  ; $31879A |
  ADC #$01                                  ; $31879C |
loc_6279E:
  STA $062C                                 ; $31879E |
  LDA #$AE                                  ; $3187A1 |
  STA $08                                   ; $3187A3 |
  LDA #$89                                  ; $3187A5 |
  STA $09                                   ; $3187A7 |
  JSR code_3ECC54                           ; $3187A9 |
  LDA #$00                                  ; $3187AC |
  STA $00                                   ; $3187AE |
  LDA $062C                                 ; $3187B0 |
  STA $01                                   ; $3187B3 |
  TYA                                       ; $3187B5 |
  BEQ loc_627BE                             ; $3187B6 |
  CMP #$01                                  ; $3187B8 |
  BEQ loc_627C5                             ; $3187BA |
  BNE loc_627DD                             ; $3187BC |
loc_627BE:
  LSR $01                                   ; $3187BE |
  ROR $00                                   ; $3187C0 |
  JMP code_3187DD                           ; $3187C2 |

loc_627C5:
  LDA #$03                                  ; $3187C5 |
  STA $03                                   ; $3187C7 |
  LDA #$00                                  ; $3187C9 |
  STA $02                                   ; $3187CB |
  JSR code_3ECC70                           ; $3187CD |
  CLC                                       ; $3187D0 |
  LDA $04                                   ; $3187D1 |
  ADC $04                                   ; $3187D3 |
  STA $00                                   ; $3187D5 |
  LDA $05                                   ; $3187D7 |
  ADC $05                                   ; $3187D9 |
  STA $01                                   ; $3187DB |
loc_627DD:
code_3187DD:
  LDA #$F2                                  ; $3187DD |
  STA $02                                   ; $3187DF |
  LDA #$37                                  ; $3187E1 |
  STA $03                                   ; $3187E3 |
  JSR code_3ECC70                           ; $3187E5 |
  JSR code_3FE5B6                           ; $3187E8 |
  LDA $11                                   ; $3187EB |
  CMP #$04                                  ; $3187ED |
  BEQ loc_62803                             ; $3187EF |
  LDA $04                                   ; $3187F1 |
  EOR #$FF                                  ; $3187F3 |
  STA $04                                   ; $3187F5 |
  LDA $05                                   ; $3187F7 |
  EOR #$FF                                  ; $3187F9 |
  STA $05                                   ; $3187FB |
  INC $04                                   ; $3187FD |
  BNE loc_62803                             ; $3187FF |
  INC $05                                   ; $318801 |
loc_62803:
  LDA $04                                   ; $318803 |
  STA $05BA                                 ; $318805 |
  LDA $05                                   ; $318808 |
  STA $05D1                                 ; $31880A |
  LDA #$AD                                  ; $31880D |
  STA $05E7                                 ; $31880F |
  LDA #$F9                                  ; $318812 |
  STA $05FE                                 ; $318814 |
loc_62817:
  JSR code_31997D                           ; $318817 |
  LDA $056C,x                               ; $31881A |
  CMP #$14                                  ; $31881D |
  BEQ loc_6283D                             ; $31881F |
  LDA $05BA                                 ; $318821 |
  STA $EB                                   ; $318824 |
  LDA $05D1                                 ; $318826 |
  STA $ED                                   ; $318829 |
  LDA #$E2                                  ; $31882B |
  STA $08                                   ; $31882D |
  LDA #$9B                                  ; $31882F |
  STA $09                                   ; $318831 |
  JSR code_3FEC0A                           ; $318833 |
  JSR code_319AC5                           ; $318836 |
  LDA $12                                   ; $318839 |
  BEQ loc_6285D                             ; $31883B |
loc_6283D:
  LDA $03BF                                 ; $31883D |
  EOR #$40                                  ; $318840 |
  STA $03BF                                 ; $318842 |
  LDA $05BA                                 ; $318845 |
  EOR #$FF                                  ; $318848 |
  STA $05BA                                 ; $31884A |
  LDA $05D1                                 ; $31884D |
  EOR #$FF                                  ; $318850 |
  STA $05D1                                 ; $318852 |
  INC $05BA                                 ; $318855 |
  BNE loc_6285D                             ; $318858 |
  INC $05D1                                 ; $31885A |
loc_6285D:
  LDA $05FE                                 ; $31885D |
  BMI loc_62817                             ; $318860 |
  BEQ loc_62817                             ; $318862 |
  LDY #$00                                  ; $318864 |
  JSR code_3FF8AE                           ; $318866 |
  LDA $11                                   ; $318869 |
  STA $03D6                                 ; $31886B |
  LDA #$00                                  ; $31886E |
  STA $0615                                 ; $318870 |
  LDY #$B4                                  ; $318873 |
  JSR code_31898E                           ; $318875 |
  INC $03D6                                 ; $318878 |
  LDY #$B4                                  ; $31887B |
  JSR code_31898E                           ; $31887D |
  DEC $03D6                                 ; $318880 |
  DEC $03D6                                 ; $318883 |
  LDY #$B4                                  ; $318886 |
  JSR code_31898E                           ; $318888 |
  LDA #$00                                  ; $31888B |
  STA $0615                                 ; $31888D |
loc_62890:
  JSR code_31997D                           ; $318890 |
  LDA $05BA                                 ; $318893 |
  STA $EB                                   ; $318896 |
  LDA $05D1                                 ; $318898 |
  STA $ED                                   ; $31889B |
  LDA #$E2                                  ; $31889D |
  STA $08                                   ; $31889F |
  LDA #$9B                                  ; $3188A1 |
  STA $09                                   ; $3188A3 |
  JSR code_3FEC0A                           ; $3188A5 |
  JSR code_319AC5                           ; $3188A8 |
  LDA $12                                   ; $3188AB |
  BEQ loc_628CF                             ; $3188AD |
  LDA $03BF                                 ; $3188AF |
  EOR #$40                                  ; $3188B2 |
  STA $03BF                                 ; $3188B4 |
  LDA $05BA                                 ; $3188B7 |
  EOR #$FF                                  ; $3188BA |
  STA $05BA                                 ; $3188BC |
  LDA $05D1                                 ; $3188BF |
  EOR #$FF                                  ; $3188C2 |
  STA $05D1                                 ; $3188C4 |
  INC $05BA                                 ; $3188C7 |
  BNE loc_628CF                             ; $3188CA |
  INC $05D1                                 ; $3188CC |
loc_628CF:
  LDA $11                                   ; $3188CF |
  BEQ loc_62890                             ; $3188D1 |
  LDA #$4C                                  ; $3188D3 |
  STA $DC                                   ; $3188D5 |
  LDY #$12                                  ; $3188D7 |
  JSR code_3FE522                           ; $3188D9 |
loc_628DC:
  JSR code_31997D                           ; $3188DC |
  LDA $0615                                 ; $3188DF |
  CMP #$03                                  ; $3188E2 |
  BNE loc_628DC                             ; $3188E4 |
  LDA #$00                                  ; $3188E6 |
  STA $0641                                 ; $3188E8 |
  LDA #$1E                                  ; $3188EB |
  STA $062C                                 ; $3188ED |
  JMP code_318748                           ; $3188F0 |

  LDY #$14                                  ; $3188F3 |
  JSR code_3FE522                           ; $3188F5 |
  LDA #$08                                  ; $3188F8 |
  STA $063E                                 ; $3188FA |
  SEC                                       ; $3188FD |
  LDA $0486                                 ; $3188FE |
  SBC $048E                                 ; $318901 |
  BPL loc_6290A                             ; $318904 |
  EOR #$FF                                  ; $318906 |
  ADC #$01                                  ; $318908 |
loc_6290A:
  STA $062C                                 ; $31890A |
  LDA $062C                                 ; $31890D |
  STA $01                                   ; $318910 |
  LDA #$00                                  ; $318912 |
  STA $00                                   ; $318914 |
  JSR code_3FEF0C                           ; $318916 |
  LDA #$00                                  ; $318919 |
  STA $060D,x                               ; $31891B |
  LDY #$97                                  ; $31891E |
  JSR code_31898E                           ; $318920 |
  LDA $0615                                 ; $318923 |
  BEQ loc_62981                             ; $318926 |
  LDA #$28                                  ; $318928 |
  STA $05FE                                 ; $31892A |
loc_6292D:
  JSR code_31997D                           ; $31892D |
  DEC $05F6,x                               ; $318930 |
  BNE loc_6292D                             ; $318933 |
code_318935:
  LDA #$05                                  ; $318935 |
  STA $063E                                 ; $318937 |
  LDY #$16                                  ; $31893A |
  JSR code_3FE522                           ; $31893C |
loc_6293F:
  LDA $0486                                 ; $31893F |
  STA $05BA                                 ; $318942 |
  LDA $04CB                                 ; $318945 |
  STA $05D1                                 ; $318948 |
  LDY $0615                                 ; $31894B |
  LDA $0486,y                               ; $31894E |
  STA $0486                                 ; $318951 |
  LDA $04CB,y                               ; $318954 |
  STA $04CB                                 ; $318957 |
  LDA $05BA                                 ; $31895A |
  STA $0486                                 ; $31895D |
  LDA $05D1                                 ; $318960 |
  STA $04CB                                 ; $318963 |
  JSR code_31997D                           ; $318966 |
  LDY #$00                                  ; $318969 |
  JSR code_3FE61A                           ; $31896B |
  LDA #$E2                                  ; $31896E |
  STA $08                                   ; $318970 |
  LDA #$9B                                  ; $318972 |
  STA $09                                   ; $318974 |
  JSR code_3FEC0A                           ; $318976 |
  LDY $0615                                 ; $318979 |
  LDA $03A0,y                               ; $31897C |
  BNE loc_6293F                             ; $31897F |
loc_62981:
  LDA #$00                                  ; $318981 |
  STA $0615                                 ; $318983 |
  LDA #$1E                                  ; $318986 |
  STA $062C                                 ; $318988 |
  JMP code_318748                           ; $31898B |

code_31898E:
  JSR code_3FE5AB                           ; $31898E |
  BCS loc_629A7                             ; $318991 |
  TXA                                       ; $318993 |
  STA $062C                                 ; $318994 |
  STA $0615                                 ; $318997 |
  LDA $03D6                                 ; $31899A |
  STA $03CE,x                               ; $31899D |
  LDY $8F                                   ; $3189A0 |
  LDA #$03                                  ; $3189A2 |
  JSR code_3FE8BC                           ; $3189A4 |
loc_629A7:
  LDX $8F                                   ; $3189A7 |
  RTS                                       ; $3189A9 |

  db $72, $F3, $87, $88, $7F, $60, $20, $17 ; $3189AA |
  db $6E, $3E, $01, $1A, $D4                ; $3189B2 |

  JSR code_3FEBD1                           ; $3189B7 |
  LDY $03CE,x                               ; $3189BA |
  LDA $8A37,y                               ; $3189BD |
  TAY                                       ; $3189C0 |
  JSR code_3FE522                           ; $3189C1 |
  JSR code_3FE5DF                           ; $3189C4 |
  LDA #$42                                  ; $3189C7 |
  STA $DC                                   ; $3189C9 |
loc_629CB:
  JSR code_3FEA6A                           ; $3189CB |
  JSR code_319C22                           ; $3189CE |
  LDY #$08                                  ; $3189D1 |
  JSR code_3FE61A                           ; $3189D3 |
  LDA #$47                                  ; $3189D6 |
  STA $08                                   ; $3189D8 |
  LDA #$8A                                  ; $3189DA |
  STA $09                                   ; $3189DC |
  JSR code_3FEC11                           ; $3189DE |
  LDA $056C,x                               ; $3189E1 |
  CMP #$30                                  ; $3189E4 |
  BEQ loc_629F4                             ; $3189E6 |
  LDA $11                                   ; $3189E8 |
  AND #$01                                  ; $3189EA |
  BNE loc_629F4                             ; $3189EC |
  LDA $12                                   ; $3189EE |
  AND #$01                                  ; $3189F0 |
  BEQ loc_629CB                             ; $3189F2 |
loc_629F4:
  LDY #$17                                  ; $3189F4 |
  JSR code_3FE522                           ; $3189F6 |
  LDA #$80                                  ; $3189F9 |
  STA $03B7,x                               ; $3189FB |
  LDA #$08                                  ; $3189FE |
  STA $03CE,x                               ; $318A00 |
loc_62A03:
  JSR code_3FEA6A                           ; $318A03 |
  JSR code_319C22                           ; $318A06 |
  LDY #$00                                  ; $318A09 |
  JSR code_3FE61A                           ; $318A0B |
  LDA #$47                                  ; $318A0E |
  STA $08                                   ; $318A10 |
  LDA #$8A                                  ; $318A12 |
  STA $09                                   ; $318A14 |
  JSR code_3FEC11                           ; $318A16 |
  LDA $11                                   ; $318A19 |
  BEQ loc_62A03                             ; $318A1B |
loc_62A1D:
  JSR code_3FEA6A                           ; $318A1D |
  JSR code_319C22                           ; $318A20 |
  LDA #$10                                  ; $318A23 |
  STA $00                                   ; $318A25 |
  LDA #$10                                  ; $318A27 |
  STA $01                                   ; $318A29 |
  LDY #$08                                  ; $318A2B |
  JSR code_3FEDAA                           ; $318A2D |
  LDA $11                                   ; $318A30 |
  BEQ loc_62A1D                             ; $318A32 |
  JMP code_3FE456                           ; $318A34 |

  db $17, $18, $18, $19, $19, $19, $18, $18 ; $318A37 |
  db $17, $18, $18, $19, $19, $19, $18, $18 ; $318A3F |
  db $04, $02, $04, $FE, $FC, $02, $FC, $FE ; $318A47 |
  db $FC, $04, $04, $04, $FC, $FC, $04, $FC ; $318A4F |
  db $18, $6E, $3E, $01, $1A, $D4           ; $318A57 |

  JSR code_3FEBD1                           ; $318A5D |
  LDY $03CE,x                               ; $318A60 |
  LDA $8A37,y                               ; $318A63 |
  TAY                                       ; $318A66 |
  JSR code_3FE522                           ; $318A67 |
  JSR code_3FE5DF                           ; $318A6A |
  LDA #$42                                  ; $318A6D |
  STA $DC                                   ; $318A6F |
code_318A71:
  JSR code_318A7C                           ; $318A71 |
  LDY #$08                                  ; $318A74 |
  JSR code_3FE60E                           ; $318A76 |
  JMP code_318A71                           ; $318A79 |

code_318A7C:
  JSR code_3FE485                           ; $318A7C |
  BCS loc_62A90                             ; $318A7F |
  LDA $056C,x                               ; $318A81 |
  CMP #$30                                  ; $318A84 |
  BEQ loc_62A90                             ; $318A86 |
  LDA $03ED                                 ; $318A88 |
  BMI loc_62A90                             ; $318A8B |
  JMP code_3FE468                           ; $318A8D |

loc_62A90:
  INC $0615                                 ; $318A90 |
  JMP code_3FE456                           ; $318A93 |

  db $1B, $73, $3F, $2C, $1B, $F5           ; $318A96 |

  JSR code_3FEBD1                           ; $318A9C |
loc_62A9F:
  JSR code_31997D                           ; $318A9F |
  LDA #$1F                                  ; $318AA2 |
  STA $08                                   ; $318AA4 |
  LDA #$8D                                  ; $318AA6 |
  STA $09                                   ; $318AA8 |
  JSR code_3ECC54                           ; $318AAA |
  TYA                                       ; $318AAD |
  CMP $05B9                                 ; $318AAE |
  BNE loc_62AC4                             ; $318AB1 |
  LDA $05C8,x                               ; $318AB3 |
  CMP #$02                                  ; $318AB6 |
  BCC loc_62AC9                             ; $318AB8 |
  LDY $05B9                                 ; $318ABA |
  INY                                       ; $318ABD |
  CPY #$03                                  ; $318ABE |
  BNE loc_62AC4                             ; $318AC0 |
  LDY #$00                                  ; $318AC2 |
loc_62AC4:
  LDA #$00                                  ; $318AC4 |
  STA $05D0                                 ; $318AC6 |
loc_62AC9:
  TYA                                       ; $318AC9 |
  STA $05B9                                 ; $318ACA |
  INC $05D0                                 ; $318ACD |
  LDA $8D22,y                               ; $318AD0 |
  STA $08                                   ; $318AD3 |
  LDA $8D25,y                               ; $318AD5 |
  STA $09                                   ; $318AD8 |
  JMP ($0008)                               ; $318ADA |

code_318ADD:
  LDA #$08                                  ; $318ADD |
  STA $063E                                 ; $318ADF |
  LDY #$1B                                  ; $318AE2 |
  JSR code_3FE522                           ; $318AE4 |
  LDA #$0A                                  ; $318AE7 |
  STA $062C                                 ; $318AE9 |
loc_62AEC:
  JSR code_31997D                           ; $318AEC |
  JSR code_3FEF0C                           ; $318AEF |
  DEC $062C                                 ; $318AF2 |
  BNE loc_62AEC                             ; $318AF5 |
  BEQ loc_62A9F                             ; $318AF7 |
  JSR code_31997D                           ; $318AF9 |
  LDA $05D0                                 ; $318AFC |
  CMP #$01                                  ; $318AFF |
  BNE loc_62A9F                             ; $318B01 |
  LDA #$03                                  ; $318B03 |
  STA $063E                                 ; $318B05 |
  LDY #$1E                                  ; $318B08 |
  JSR code_3FE522                           ; $318B0A |
  LDA #$08                                  ; $318B0D |
  STA $0615                                 ; $318B0F |
loc_62B12:
  JSR code_31997D                           ; $318B12 |
  DEC $0615                                 ; $318B15 |
  BNE loc_62B12                             ; $318B18 |
  LDY #$1F                                  ; $318B1A |
  JSR code_3FE522                           ; $318B1C |
  LDA #$28                                  ; $318B1F |
  STA $08                                   ; $318B21 |
  LDA #$8D                                  ; $318B23 |
  STA $09                                   ; $318B25 |
  JSR code_3ECC54                           ; $318B27 |
  LDA $8D2B,y                               ; $318B2A |
  STA $0615                                 ; $318B2D |
  JSR code_3FEF0C                           ; $318B30 |
  LDA $03D6                                 ; $318B33 |
  LSR                                       ; $318B36 |
  LSR                                       ; $318B37 |
  LSR                                       ; $318B38 |
  STA $03D6                                 ; $318B39 |
  TAY                                       ; $318B3C |
  LDA $8D2E,y                               ; $318B3D |
  STA $05FE                                 ; $318B40 |
  LDA $8D30,y                               ; $318B43 |
  STA $05E7                                 ; $318B46 |
loc_62B49:
  JSR code_31997D                           ; $318B49 |
  LDA $056C,x                               ; $318B4C |
  BEQ loc_62B6B                             ; $318B4F |
  CMP #$30                                  ; $318B51 |
  BEQ loc_62B8F                             ; $318B53 |
  LDY $03D6                                 ; $318B55 |
  CLC                                       ; $318B58 |
  LDA $05E7                                 ; $318B59 |
  ADC $8D3E,y                               ; $318B5C |
  STA $05E7                                 ; $318B5F |
  LDA $05FE                                 ; $318B62 |
  ADC $8D3C,y                               ; $318B65 |
  STA $05FE                                 ; $318B68 |
loc_62B6B:
  JSR code_3FE5B6                           ; $318B6B |
  LDA $11                                   ; $318B6E |
  LSR                                       ; $318B70 |
  LSR                                       ; $318B71 |
  LSR                                       ; $318B72 |
  CMP $03D6                                 ; $318B73 |
  BNE loc_62B87                             ; $318B76 |
  LDY $03D6                                 ; $318B78 |
  LDA $05FE                                 ; $318B7B |
  STA $069B                                 ; $318B7E |
  LDA $05E7                                 ; $318B81 |
  STA $069A                                 ; $318B84 |
loc_62B87:
  DEC $0615                                 ; $318B87 |
  BNE loc_62B49                             ; $318B8A |
  JMP code_318ADD                           ; $318B8C |

loc_62B8F:
  JSR code_3FEF0C                           ; $318B8F |
  LDA $03D6                                 ; $318B92 |
  EOR #$08                                  ; $318B95 |
  STA $03D6                                 ; $318B97 |
  LDA $03BF                                 ; $318B9A |
  EOR #$40                                  ; $318B9D |
  STA $03BF                                 ; $318B9F |
  LDY #$20                                  ; $318BA2 |
  JSR code_3FE522                           ; $318BA4 |
  LDA #$24                                  ; $318BA7 |
  STA $0615                                 ; $318BA9 |
loc_62BAC:
  JSR code_31997D                           ; $318BAC |
  DEC $0615                                 ; $318BAF |
  BNE loc_62BAC                             ; $318BB2 |
  LDY #$21                                  ; $318BB4 |
  JSR code_3FE522                           ; $318BB6 |
  LDA #$18                                  ; $318BB9 |
  STA $0615                                 ; $318BBB |
loc_62BBE:
  JSR code_31997D                           ; $318BBE |
  LDY #$00                                  ; $318BC1 |
  JSR code_3FE61A                           ; $318BC3 |
  LDA #$B2                                  ; $318BC6 |
  STA $08                                   ; $318BC8 |
  LDA #$9B                                  ; $318BCA |
  STA $09                                   ; $318BCC |
  JSR code_3FEC11                           ; $318BCE |
  JSR code_319AC5                           ; $318BD1 |
  LDA $12                                   ; $318BD4 |
  AND #$01                                  ; $318BD6 |
  BEQ loc_62BDD                             ; $318BD8 |
  JSR code_3FEF18                           ; $318BDA |
loc_62BDD:
  DEC $0615                                 ; $318BDD |
  BNE loc_62BBE                             ; $318BE0 |
  LDY #$1C                                  ; $318BE2 |
  JSR code_3FE522                           ; $318BE4 |
  LDA #$08                                  ; $318BE7 |
  STA $0615                                 ; $318BE9 |
loc_62BEC:
  JSR code_31997D                           ; $318BEC |
  DEC $0615                                 ; $318BEF |
  BNE loc_62BEC                             ; $318BF2 |
  JMP code_318ADD                           ; $318BF4 |

  INC $0641                                 ; $318BF7 |
  LDA #$03                                  ; $318BFA |
  STA $063E                                 ; $318BFC |
  JSR code_31997D                           ; $318BFF |
  LDY #$20                                  ; $318C02 |
  JSR code_3FE522                           ; $318C04 |
  LDA #$24                                  ; $318C07 |
  STA $0615                                 ; $318C09 |
loc_62C0C:
  JSR code_31997D                           ; $318C0C |
  JSR code_3FEF0C                           ; $318C0F |
  DEC $0615                                 ; $318C12 |
  BNE loc_62C0C                             ; $318C15 |
  LDY #$21                                  ; $318C17 |
  JSR code_3FE522                           ; $318C19 |
  JSR code_3FEF0C                           ; $318C1C |
  LDA #$32                                  ; $318C1F |
  STA $08                                   ; $318C21 |
  LDA #$8D                                  ; $318C23 |
  STA $09                                   ; $318C25 |
  JSR code_3ECC54                           ; $318C27 |
  LDA $8D35,y                               ; $318C2A |
  STA $0615                                 ; $318C2D |
loc_62C30:
  JSR code_31997D                           ; $318C30 |
  LDA #$00                                  ; $318C33 |
  STA $03CE,x                               ; $318C35 |
  LDY #$08                                  ; $318C38 |
  JSR code_3FE60E                           ; $318C3A |
  DEC $0615                                 ; $318C3D |
  BNE loc_62C30                             ; $318C40 |
  JSR code_319C2B                           ; $318C42 |
  LSR $062C                                 ; $318C45 |
  LSR $062C                                 ; $318C48 |
  JSR code_3FEF0C                           ; $318C4B |
loc_62C4E:
  JSR code_31997D                           ; $318C4E |
  LDY #$08                                  ; $318C51 |
  JSR code_3FE61A                           ; $318C53 |
  LDA #$B2                                  ; $318C56 |
  STA $08                                   ; $318C58 |
  LDA #$9B                                  ; $318C5A |
  STA $09                                   ; $318C5C |
  JSR code_3FEC11                           ; $318C5E |
  JSR code_319AC5                           ; $318C61 |
  LDA $12                                   ; $318C64 |
  AND #$01                                  ; $318C66 |
  BNE loc_62C6F                             ; $318C68 |
  DEC $062C                                 ; $318C6A |
  BNE loc_62C4E                             ; $318C6D |
loc_62C6F:
  JSR code_31997D                           ; $318C6F |
  LDA #$08                                  ; $318C72 |
  STA $03D6                                 ; $318C74 |
  LDY #$08                                  ; $318C77 |
  JSR code_3FE61A                           ; $318C79 |
  LDA #$B2                                  ; $318C7C |
  STA $08                                   ; $318C7E |
  LDA #$9B                                  ; $318C80 |
  STA $09                                   ; $318C82 |
  JSR code_3FEC11                           ; $318C84 |
  LDA $11                                   ; $318C87 |
  AND #$01                                  ; $318C89 |
  BEQ loc_62C6F                             ; $318C8B |
  LDA #$00                                  ; $318C8D |
  STA $0641                                 ; $318C8F |
  LDY #$1C                                  ; $318C92 |
  JSR code_3FE522                           ; $318C94 |
  LDA #$08                                  ; $318C97 |
  STA $0615                                 ; $318C99 |
loc_62C9C:
  JSR code_31997D                           ; $318C9C |
  DEC $0615                                 ; $318C9F |
  BNE loc_62C9C                             ; $318CA2 |
  JMP code_318ADD                           ; $318CA4 |

  LDA #$08                                  ; $318CA7 |
  STA $063E                                 ; $318CA9 |
  LDA #$18                                  ; $318CAC |
  STA $0615                                 ; $318CAE |
  LDY #$1D                                  ; $318CB1 |
  JSR code_3FE522                           ; $318CB3 |
  JSR code_3FEF0C                           ; $318CB6 |
  LDA $03D6                                 ; $318CB9 |
  LSR                                       ; $318CBC |
  LSR                                       ; $318CBD |
  AND #$02                                  ; $318CBE |
  STA $03D6                                 ; $318CC0 |
loc_62CC3:
  JSR code_31997D                           ; $318CC3 |
  DEC $0615                                 ; $318CC6 |
  BNE loc_62CC3                             ; $318CC9 |
  LDY #$1B                                  ; $318CCB |
  JSR code_3FE522                           ; $318CCD |
  LDY #$9A                                  ; $318CD0 |
  JSR code_3FE5AB                           ; $318CD2 |
  BCS loc_62D09                             ; $318CD5 |
  LDY $03D6                                 ; $318CD7 |
  LDA $8D38,y                               ; $318CDA |
  STA $03CE,x                               ; $318CDD |
  TXA                                       ; $318CE0 |
  STA $0615                                 ; $318CE1 |
  LDY $8F                                   ; $318CE4 |
  LDA #$03                                  ; $318CE6 |
  JSR code_3FE8FD                           ; $318CE8 |
  INC $03D6                                 ; $318CEB |
  LDY #$9A                                  ; $318CEE |
  JSR code_3FE5AB                           ; $318CF0 |
  BCS loc_62D09                             ; $318CF3 |
  LDY $03D6                                 ; $318CF5 |
  LDA $8D38,y                               ; $318CF8 |
  STA $03CE,x                               ; $318CFB |
  TXA                                       ; $318CFE |
  STA $062C                                 ; $318CFF |
  LDY $8F                                   ; $318D02 |
  LDA #$03                                  ; $318D04 |
  JSR code_3FE8FD                           ; $318D06 |
loc_62D09:
  JSR code_31997D                           ; $318D09 |
  LDY $0615                                 ; $318D0C |
  LDA $03A0,y                               ; $318D0F |
  BNE loc_62D09                             ; $318D12 |
  LDY $062C                                 ; $318D14 |
  LDA $03A0,y                               ; $318D17 |
  BNE loc_62D09                             ; $318D1A |
  JMP code_318ADD                           ; $318D1C |

  db $7F, $40, $40, $F9, $F7, $A7, $8A, $8B ; $318D1F |
  db $8C, $7F, $40, $40, $B4, $78, $3C, $FE ; $318D27 |
  db $01, $B4, $4C, $55, $55, $55, $07, $0C ; $318D2F |
  db $11, $03, $05, $0B, $0D, $FF, $00, $80 ; $318D37 |
  db $80, $22, $00, $00, $01, $00, $D4      ; $318D3F |

  JSR code_3FEBD1                           ; $318D46 |
  LDA #$42                                  ; $318D49 |
  STA $DC                                   ; $318D4B |
  LDA #$14                                  ; $318D4D |
  STA $05B1,x                               ; $318D4F |
loc_62D52:
  JSR code_3FEA6A                           ; $318D52 |
  JSR code_319C22                           ; $318D55 |
  LDY #$08                                  ; $318D58 |
  JSR code_3FE60E                           ; $318D5A |
  DEC $05B1,x                               ; $318D5D |
  BNE loc_62D52                             ; $318D60 |
  LDA #$42                                  ; $318D62 |
  STA $DC                                   ; $318D64 |
  LDA $03CE,x                               ; $318D66 |
  EOR #$06                                  ; $318D69 |
  STA $03CE,x                               ; $318D6B |
  BNE loc_62D52                             ; $318D6E |

  db $3E, $83, $46, $34, $1B, $F0           ; $318D70 |

  JSR code_3FEBD1                           ; $318D76 |
  LDA #$01                                  ; $318D79 |
  JSR code_3ECAA4                           ; $318D7B |
  LDA #$00                                  ; $318D7E |
  STA $062D                                 ; $318D80 |
code_318D83:
  LDY #$3E                                  ; $318D83 |
  JSR code_3FE522                           ; $318D85 |
  LDA #$F4                                  ; $318D88 |
  STA $058B                                 ; $318D8A |
  LDA #$00                                  ; $318D8D |
  STA $05B9                                 ; $318D8F |
  LDA #$00                                  ; $318D92 |
  STA $05D0                                 ; $318D94 |
  JSR code_3FEF0C                           ; $318D97 |
  JSR code_318F74                           ; $318D9A |
  LDA #$4B                                  ; $318D9D |
  STA $08                                   ; $318D9F |
  LDA #$9D                                  ; $318DA1 |
  STA $09                                   ; $318DA3 |
  JSR code_3ECC54                           ; $318DA5 |
  LDA $8FC7,y                               ; $318DA8 |
  STA $00                                   ; $318DAB |
  LDA $8FC9,y                               ; $318DAD |
  STA $01                                   ; $318DB0 |
  JMP ($0000)                               ; $318DB2 |

  LDA #$05                                  ; $318DB5 |
  STA $063E                                 ; $318DB7 |
  LDY #$3F                                  ; $318DBA |
  JSR code_3FE522                           ; $318DBC |
  LDA #$5E                                  ; $318DBF |
  STA $DC                                   ; $318DC1 |
loc_62DC3:
  JSR code_31997D                           ; $318DC3 |
  JSR code_318F74                           ; $318DC6 |
  LDA $0574                                 ; $318DC9 |
  BEQ loc_62DD3                             ; $318DCC |
  LDA #$01                                  ; $318DCE |
  STA $05D0                                 ; $318DD0 |
loc_62DD3:
  LDY #$00                                  ; $318DD3 |
  JSR code_3FE61A                           ; $318DD5 |
  LDA #$12                                  ; $318DD8 |
  STA $08                                   ; $318DDA |
  LDA #$9C                                  ; $318DDC |
  STA $09                                   ; $318DDE |
  JSR code_3FEC11                           ; $318DE0 |
  LDA $12                                   ; $318DE3 |
  AND #$01                                  ; $318DE5 |
  BEQ loc_62DC3                             ; $318DE7 |
  LDA #$64                                  ; $318DE9 |
  STA $DC                                   ; $318DEB |
code_318DED:
  LDA #$14                                  ; $318DED |
  STA $062C                                 ; $318DEF |
  LDY #$3E                                  ; $318DF2 |
  JSR code_3FE522                           ; $318DF4 |
  JSR code_3FEF0C                           ; $318DF7 |
loc_62DFA:
  JSR code_31997D                           ; $318DFA |
  LDA $056C,x                               ; $318DFD |
  BEQ loc_62E05                             ; $318E00 |
  INC $05D0                                 ; $318E02 |
loc_62E05:
  DEC $062C                                 ; $318E05 |
  BNE loc_62DFA                             ; $318E08 |
  JSR code_3FEF0C                           ; $318E0A |
  LDA $05D0                                 ; $318E0D |
  BNE loc_62E6A                             ; $318E10 |
  JSR code_31997D                           ; $318E12 |
  JSR code_318F74                           ; $318E15 |
  LDA #$C5                                  ; $318E18 |
  STA $08                                   ; $318E1A |
  LDA #$8F                                  ; $318E1C |
  STA $09                                   ; $318E1E |
  JSR code_3ECC54                           ; $318E20 |
  CPY #$00                                  ; $318E23 |
  BNE loc_62E6A                             ; $318E25 |
  LDA $062D                                 ; $318E27 |
  BNE loc_62E6A                             ; $318E2A |
  LDA $03E5                                 ; $318E2C |
  BMI loc_62E6A                             ; $318E2F |
  LDY #$40                                  ; $318E31 |
  JSR code_3FE522                           ; $318E33 |
  LDA #$05                                  ; $318E36 |
  STA $062C                                 ; $318E38 |
loc_62E3B:
  JSR code_31997D                           ; $318E3B |
  JSR code_318F74                           ; $318E3E |
  DEC $062C                                 ; $318E41 |
  BNE loc_62E3B                             ; $318E44 |
  LDA $03C0                                 ; $318E46 |
  ORA #$01                                  ; $318E49 |
  STA $03C0                                 ; $318E4B |
  JSR code_3EDEC9                           ; $318E4E |
  LDX $8F                                   ; $318E51 |
  LDA $03E5                                 ; $318E53 |
  STA $0616                                 ; $318E56 |
  LDA $042A                                 ; $318E59 |
  STA $05BA                                 ; $318E5C |
  LDA $0413                                 ; $318E5F |
  STA $05D1                                 ; $318E62 |
  LDA #$01                                  ; $318E65 |
  STA $062D                                 ; $318E67 |
loc_62E6A:
  LDA #$05                                  ; $318E6A |
  STA $063E                                 ; $318E6C |
  LDY #$42                                  ; $318E6F |
  JSR code_3FE522                           ; $318E71 |
  LDA #$F4                                  ; $318E74 |
  STA $058B                                 ; $318E76 |
  LDA #$0F                                  ; $318E79 |
  STA $062C                                 ; $318E7B |
loc_62E7E:
  JSR code_31997D                           ; $318E7E |
  JSR code_318F74                           ; $318E81 |
  DEC $062C                                 ; $318E84 |
  BNE loc_62E7E                             ; $318E87 |
  LDY #$77                                  ; $318E89 |
  JSR code_3FE5AB                           ; $318E8B |
  BCS loc_62EA6                             ; $318E8E |
  LDY $8F                                   ; $318E90 |
  LDA $03CE,y                               ; $318E92 |
  STA $03CE,x                               ; $318E95 |
  LSR $03D6                                 ; $318E98 |
  LSR $03D6                                 ; $318E9B |
  LSR $03D6                                 ; $318E9E |
  LDA #$40                                  ; $318EA1 |
  JSR code_3FE8CC                           ; $318EA3 |
loc_62EA6:
  JSR code_31997D                           ; $318EA6 |
  JSR code_318F74                           ; $318EA9 |
  LDA #$78                                  ; $318EAC |
  STA $062C                                 ; $318EAE |
  LDY #$3E                                  ; $318EB1 |
  JSR code_3FE522                           ; $318EB3 |
loc_62EB6:
  JSR code_31997D                           ; $318EB6 |
  JSR code_318F74                           ; $318EB9 |
  DEC $062C                                 ; $318EBC |
  BNE loc_62EB6                             ; $318EBF |
  LDA $062D                                 ; $318EC1 |
  BEQ loc_62EDC                             ; $318EC4 |
  LDA $03E5                                 ; $318EC6 |
  BMI loc_62EDC                             ; $318EC9 |
  LDA #$00                                  ; $318ECB |
  STA $062D                                 ; $318ECD |
  LDA $05BA                                 ; $318ED0 |
  STA $042A                                 ; $318ED3 |
  LDA $05D1                                 ; $318ED6 |
  STA $0413                                 ; $318ED9 |
loc_62EDC:
  LDA #$00                                  ; $318EDC |
  STA $05D0                                 ; $318EDE |
  JMP code_318D83                           ; $318EE1 |

  LDA #$00                                  ; $318EE4 |
  STA $058B                                 ; $318EE6 |
  LDA #$5C                                  ; $318EE9 |
  STA $DC                                   ; $318EEB |
  LDA #$14                                  ; $318EED |
  STA $062C                                 ; $318EEF |
loc_62EF2:
  JSR code_3FE468                           ; $318EF2 |
  JSR code_318F74                           ; $318EF5 |
  LDA $03BF                                 ; $318EF8 |
  EOR #$01                                  ; $318EFB |
  STA $03BF                                 ; $318EFD |
  DEC $062C                                 ; $318F00 |
  BNE loc_62EF2                             ; $318F03 |
  LDA $03BF                                 ; $318F05 |
  ORA #$01                                  ; $318F08 |
  STA $03BF                                 ; $318F0A |
  LDA $03C0                                 ; $318F0D |
  ORA #$01                                  ; $318F10 |
  STA $03C0                                 ; $318F12 |
  LDA #$00                                  ; $318F15 |
  STA $0640                                 ; $318F17 |
  LDA #$5A                                  ; $318F1A |
  STA $062C                                 ; $318F1C |
  LDA #$1E                                  ; $318F1F |
  STA $0615                                 ; $318F21 |
loc_62F24:
  JSR code_3FE468                           ; $318F24 |
  JSR code_318F74                           ; $318F27 |
  DEC $0615                                 ; $318F2A |
  BNE loc_62F35                             ; $318F2D |
  LDA $0486                                 ; $318F2F |
  STA $05E7                                 ; $318F32 |
loc_62F35:
  DEC $062C                                 ; $318F35 |
  BNE loc_62F24                             ; $318F38 |
  LDA $05E7                                 ; $318F3A |
  STA $048E                                 ; $318F3D |
  JSR code_3FEF0C                           ; $318F40 |
  LDA #$5D                                  ; $318F43 |
  STA $DC                                   ; $318F45 |
  LDA #$0A                                  ; $318F47 |
  STA $062C                                 ; $318F49 |
loc_62F4C:
  JSR code_3FE468                           ; $318F4C |
  JSR code_318F74                           ; $318F4F |
  LDA $03BF                                 ; $318F52 |
  EOR #$01                                  ; $318F55 |
  STA $03BF                                 ; $318F57 |
  DEC $062C                                 ; $318F5A |
  BNE loc_62F4C                             ; $318F5D |
  LDA $03BF                                 ; $318F5F |
  AND #$FE                                  ; $318F62 |
  STA $03BF                                 ; $318F64 |
  LDA #$F4                                  ; $318F67 |
  STA $058B                                 ; $318F69 |
  LDA #$00                                  ; $318F6C |
  STA $0574                                 ; $318F6E |
  JMP code_318DED                           ; $318F71 |

code_318F74:
  LDA $062D                                 ; $318F74 |
  BEQ locret_62FBA                          ; $318F77 |
  LDA $A2                                   ; $318F79 |
  BNE loc_62FB3                             ; $318F7B |
  LDA $03E5                                 ; $318F7D |
  BMI loc_62FB3                             ; $318F80 |
  LDA #$98                                  ; $318F82 |
  STA $042A                                 ; $318F84 |
  LDA #$8E                                  ; $318F87 |
  STA $0413                                 ; $318F89 |
  LDA $0510                                 ; $318F8C |
  BMI loc_62F94                             ; $318F8F |
  INC $0555                                 ; $318F91 |
loc_62F94:
  INC $A6                                   ; $318F94 |
  LDA $0616                                 ; $318F96 |
  LDA $03ED                                 ; $318F99 |
  BPL locret_62FBA                          ; $318F9C |
  DEC $0555                                 ; $318F9E |
  LDA $05BA                                 ; $318FA1 |
  STA $042A                                 ; $318FA4 |
  LDA $05D1                                 ; $318FA7 |
  STA $0413                                 ; $318FAA |
  LDA #$00                                  ; $318FAD |
  STA $062D                                 ; $318FAF |
  RTS                                       ; $318FB2 |

loc_62FB3:
  LDA #$00                                  ; $318FB3 |
  STA $062D                                 ; $318FB5 |
  BEQ locret_62FBA                          ; $318FB8 |
locret_62FBA:
  RTS                                       ; $318FBA |

  db $BF, $C2, $8F, $8F, $04, $05, $03, $0C ; $318FBB |
  db $0B, $0D, $C8, $37, $B5, $E4, $8D, $8E ; $318FC3 |
  db $C2, $00, $01, $01, $00, $43           ; $318FCB |

  JSR code_3FEBD1                           ; $318FD1 |
  LDA $03CE,x                               ; $318FD4 |
  LSR                                       ; $318FD7 |
  LSR                                       ; $318FD8 |
  LSR                                       ; $318FD9 |
  TAY                                       ; $318FDA |
  LDA $9038,y                               ; $318FDB |
  STA $0624,x                               ; $318FDE |
  LDA $903A,y                               ; $318FE1 |
  STA $060D,x                               ; $318FE4 |
loc_62FE7:
  JSR code_3FEA6A                           ; $318FE7 |
  LDA $03ED                                 ; $318FEA |
  BMI loc_63035                             ; $318FED |
  LDY #$00                                  ; $318FEF |
  JSR code_3FE60E                           ; $318FF1 |
  LDA $0486,x                               ; $318FF4 |
  CMP #$10                                  ; $318FF7 |
  BCC loc_62FFF                             ; $318FF9 |
  CMP #$F0                                  ; $318FFB |
  BCC loc_62FE7                             ; $318FFD |
loc_62FFF:
  LDA #$06                                  ; $318FFF |
  STA $05B1,x                               ; $319001 |
loc_63004:
  LDY #$14                                  ; $319004 |
  JSR code_3FE5AB                           ; $319006 |
  BCS loc_6302E                             ; $319009 |
  LDY $8F                                   ; $31900B |
  LDA $060D,y                               ; $31900D |
  STA $00                                   ; $319010 |
  LDA $0624,y                               ; $319012 |
  STA $01                                   ; $319015 |
  LDA $05B1,y                               ; $319017 |
  TAY                                       ; $31901A |
  LDA ($00),y                               ; $31901B |
  STA $03CE,x                               ; $31901D |
  LDA #$00                                  ; $319020 |
  STA $05C8,x                               ; $319022 |
  LDY $8F                                   ; $319025 |
  LDA #$03                                  ; $319027 |
  JSR code_3FE8FD                           ; $319029 |
  LDX $8F                                   ; $31902C |
loc_6302E:
  LDX $8F                                   ; $31902E |
  DEC $05B1,x                               ; $319030 |
  BPL loc_63004                             ; $319033 |
loc_63035:
  JMP code_3FE456                           ; $319035 |

  db $90, $90, $3C, $43, $09, $0A, $0B, $0C ; $319038 |
  db $0D, $0E, $0F, $01, $02, $03, $04, $05 ; $319040 |
  db $06, $07, $24, $84, $43, $35, $1B, $F4 ; $319048 |

  JSR code_3FEBD1                           ; $319050 |
loc_63053:
  JSR code_31997D                           ; $319053 |
  LDA #$D5                                  ; $319056 |
  STA $08                                   ; $319058 |
  LDA #$92                                  ; $31905A |
  STA $09                                   ; $31905C |
  JSR code_3ECC54                           ; $31905E |
  TYA                                       ; $319061 |
  CMP $05B9                                 ; $319062 |
  BNE loc_63078                             ; $319065 |
  LDA $05C8,x                               ; $319067 |
  CMP #$02                                  ; $31906A |
  BCC loc_6307D                             ; $31906C |
  LDY $05B9                                 ; $31906E |
  INY                                       ; $319071 |
  CPY #$03                                  ; $319072 |
  BNE loc_63078                             ; $319074 |
  LDY #$00                                  ; $319076 |
loc_63078:
  LDA #$00                                  ; $319078 |
  STA $05D0                                 ; $31907A |
loc_6307D:
  TYA                                       ; $31907D |
  STA $05B9                                 ; $31907E |
  INC $05D0                                 ; $319081 |
  LDA $92D8,y                               ; $319084 |
  STA $08                                   ; $319087 |
  LDA $92DB,y                               ; $319089 |
  STA $09                                   ; $31908C |
  JMP ($0008)                               ; $31908E |

code_319091:
  LDA #$08                                  ; $319091 |
  STA $063E                                 ; $319093 |
  LDY #$24                                  ; $319096 |
  JSR code_3FE522                           ; $319098 |
  LDA #$0A                                  ; $31909B |
  STA $062C                                 ; $31909D |
loc_630A0:
  JSR code_31997D                           ; $3190A0 |
  JSR code_3FEF0C                           ; $3190A3 |
  DEC $062C                                 ; $3190A6 |
  BNE loc_630A0                             ; $3190A9 |
  BEQ loc_63053                             ; $3190AB |
  LDA #$08                                  ; $3190AD |
  STA $063E                                 ; $3190AF |
  LDA #$01                                  ; $3190B2 |
  STA $05DF,x                               ; $3190B4 |
  JSR code_3FEF0C                           ; $3190B7 |
  LDY #$26                                  ; $3190BA |
  JSR code_3FE522                           ; $3190BC |
  LSR $03D6                                 ; $3190BF |
  LSR $03D6                                 ; $3190C2 |
  LSR $03D6                                 ; $3190C5 |
  LDY $03D6                                 ; $3190C8 |
  LDA $92E0,y                               ; $3190CB |
  STA $062C                                 ; $3190CE |
  LDA $92DE,y                               ; $3190D1 |
  STA $0615                                 ; $3190D4 |
loc_630D7:
  LDY #$9E                                  ; $3190D7 |
  JSR code_3FE5AB                           ; $3190D9 |
  BCS loc_63140                             ; $3190DC |
  LDA $04D3                                 ; $3190DE |
  CLC                                       ; $3190E1 |
  ADC #$0C                                  ; $3190E2 |
  STA $04CB,x                               ; $3190E4 |
  CLC                                       ; $3190E7 |
  LDA $0615                                 ; $3190E8 |
  ADC $048E                                 ; $3190EB |
  STA $0486,x                               ; $3190EE |
  LDA $062C                                 ; $3190F1 |
  ADC $0477                                 ; $3190F4 |
  STA $046F,x                               ; $3190F7 |
  CMP $0477                                 ; $3190FA |
  BEQ loc_63106                             ; $3190FD |
  LDA #$00                                  ; $3190FF |
  STA $03A0,x                               ; $319101 |
  BEQ loc_63151                             ; $319104 |
loc_63106:
  LDA $05E7                                 ; $319106 |
  STA $05FE                                 ; $319109 |
loc_6310C:
  LDA $03D6                                 ; $31910C |
  STA $03CE,x                               ; $31910F |
  LDY $03D6                                 ; $319112 |
  CLC                                       ; $319115 |
  LDA $0615                                 ; $319116 |
  ADC $92DE,y                               ; $319119 |
  STA $0615                                 ; $31911C |
  LDA $062C                                 ; $31911F |
  ADC $92E0,y                               ; $319122 |
  STA $062C                                 ; $319125 |
  LDY $05FE                                 ; $319128 |
  DEY                                       ; $31912B |
  STY $05FE                                 ; $31912C |
  BPL loc_6310C                             ; $31912F |
  INC $05E7                                 ; $319131 |
  LDA $05E7                                 ; $319134 |
  CMP #$04                                  ; $319137 |
  BCC loc_63140                             ; $319139 |
  LDA #$02                                  ; $31913B |
  STA $05E7                                 ; $31913D |
loc_63140:
  LDX $8F                                   ; $319140 |
  LDA #$0A                                  ; $319142 |
  STA $05FE                                 ; $319144 |
loc_63147:
  JSR code_31997D                           ; $319147 |
  DEC $05FE                                 ; $31914A |
  BNE loc_63147                             ; $31914D |
  BEQ loc_630D7                             ; $31914F |
loc_63151:
  JMP code_319091                           ; $319151 |

  INC $0641                                 ; $319154 |
  JSR code_31997D                           ; $319157 |
  LDA #$01                                  ; $31915A |
  STA $063E                                 ; $31915C |
  LDY #$27                                  ; $31915F |
  JSR code_3FE522                           ; $319161 |
  JSR code_3FEF0C                           ; $319164 |
  SEC                                       ; $319167 |
  LDA $0486                                 ; $319168 |
  SBC $048E                                 ; $31916B |
  BPL loc_63174                             ; $31916E |
  EOR #$FF                                  ; $319170 |
  ADC #$01                                  ; $319172 |
loc_63174:
  STA $062C                                 ; $319174 |
  LDA #$E2                                  ; $319177 |
  STA $08                                   ; $319179 |
  LDA #$92                                  ; $31917B |
  STA $09                                   ; $31917D |
  JSR code_3ECC54                           ; $31917F |
  LDA #$00                                  ; $319182 |
  STA $00                                   ; $319184 |
  LDA $062C                                 ; $319186 |
  STA $01                                   ; $319189 |
  TYA                                       ; $31918B |
  BEQ loc_631A3                             ; $31918C |
  CMP #$01                                  ; $31918E |
  BEQ loc_631A9                             ; $319190 |
  JSR code_319CB8                           ; $319192 |
  LDA $03D6                                 ; $319195 |
  EOR #$08                                  ; $319198 |
  STA $03D6                                 ; $31919A |
  JSR code_319D12                           ; $31919D |
  JMP code_3191AC                           ; $3191A0 |

loc_631A3:
  JSR code_319D12                           ; $3191A3 |
  JMP code_3191AC                           ; $3191A6 |

loc_631A9:
  JSR code_319CE3                           ; $3191A9 |
code_3191AC:
  LDA $01                                   ; $3191AC |
  STA $062C                                 ; $3191AE |
  LDA $00                                   ; $3191B1 |
  STA $0615                                 ; $3191B3 |
  LDA #$4B                                  ; $3191B6 |
  STA $08                                   ; $3191B8 |
  LDA #$9D                                  ; $3191BA |
  STA $09                                   ; $3191BC |
  JSR code_3ECC54                           ; $3191BE |
  LDA $92E5,y                               ; $3191C1 |
  STA $05FE                                 ; $3191C4 |
  LDA $92E7,y                               ; $3191C7 |
  STA $05E7                                 ; $3191CA |
  LDA $92E9,y                               ; $3191CD |
  STA $03                                   ; $3191D0 |
  LDA $92EB,y                               ; $3191D2 |
  STA $02                                   ; $3191D5 |
  LDA $062C                                 ; $3191D7 |
  STA $01                                   ; $3191DA |
  LDA $0615                                 ; $3191DC |
  STA $00                                   ; $3191DF |
  JSR code_3ECC70                           ; $3191E1 |
  LDA $03D6                                 ; $3191E4 |
  CMP #$04                                  ; $3191E7 |
  BEQ loc_631FD                             ; $3191E9 |
  LDA $04                                   ; $3191EB |
  EOR #$FF                                  ; $3191ED |
  STA $04                                   ; $3191EF |
  LDA $05                                   ; $3191F1 |
  EOR #$FF                                  ; $3191F3 |
  STA $05                                   ; $3191F5 |
  INC $04                                   ; $3191F7 |
  BNE loc_631FD                             ; $3191F9 |
  INC $05                                   ; $3191FB |
loc_631FD:
  LDA $04                                   ; $3191FD |
  STA $05BA                                 ; $3191FF |
  LDA $05                                   ; $319202 |
  STA $05D1                                 ; $319204 |
loc_63207:
  JSR code_31997D                           ; $319207 |
  LDA $056C,x                               ; $31920A |
  CMP #$14                                  ; $31920D |
  BEQ loc_6322D                             ; $31920F |
  LDA $05BA                                 ; $319211 |
  STA $EB                                   ; $319214 |
  LDA $05D1                                 ; $319216 |
  STA $ED                                   ; $319219 |
  LDA #$D2                                  ; $31921B |
  STA $08                                   ; $31921D |
  LDA #$9B                                  ; $31921F |
  STA $09                                   ; $319221 |
  JSR code_3FEC0A                           ; $319223 |
  JSR code_319AC5                           ; $319226 |
  LDA $12                                   ; $319229 |
  BEQ loc_6324D                             ; $31922B |
loc_6322D:
  LDA $03BF                                 ; $31922D |
  EOR #$40                                  ; $319230 |
  STA $03BF                                 ; $319232 |
  LDA $05BA                                 ; $319235 |
  EOR #$FF                                  ; $319238 |
  STA $05BA                                 ; $31923A |
  LDA $05D1                                 ; $31923D |
  EOR #$FF                                  ; $319240 |
  STA $05D1                                 ; $319242 |
  INC $05BA                                 ; $319245 |
  BNE loc_6324D                             ; $319248 |
  INC $05D1                                 ; $31924A |
loc_6324D:
  LDA $11                                   ; $31924D |
  AND #$01                                  ; $31924F |
  BEQ loc_63207                             ; $319251 |
  LDA #$4C                                  ; $319253 |
  STA $DC                                   ; $319255 |
  LDY #$28                                  ; $319257 |
  JSR code_3FE522                           ; $319259 |
  LDA #$10                                  ; $31925C |
  STA $0615                                 ; $31925E |
loc_63261:
  JSR code_31997D                           ; $319261 |
  DEC $0615                                 ; $319264 |
  BNE loc_63261                             ; $319267 |
  LDA #$00                                  ; $319269 |
  STA $0641                                 ; $31926B |
  JMP code_319091                           ; $31926E |

  LDA #$08                                  ; $319271 |
  STA $063E                                 ; $319273 |
  JSR code_3FE5B6                           ; $319276 |
  LDA $11                                   ; $319279 |
  STA $03D6                                 ; $31927B |
  JSR code_3FE5DF                           ; $31927E |
  LDA #$03                                  ; $319281 |
  STA $0615                                 ; $319283 |
loc_63286:
  LDY #$25                                  ; $319286 |
  JSR code_3FE522                           ; $319288 |
  LDA #$10                                  ; $31928B |
  STA $062C                                 ; $31928D |
loc_63290:
  JSR code_31997D                           ; $319290 |
  DEC $062C                                 ; $319293 |
  BNE loc_63290                             ; $319296 |
  LDY #$9D                                  ; $319298 |
  JSR code_3FE5AB                           ; $31929A |
  BCS loc_632AC                             ; $31929D |
  LDA $03D6                                 ; $31929F |
  STA $03CE,x                               ; $3192A2 |
  LDY #$08                                  ; $3192A5 |
  LDA #$29                                  ; $3192A7 |
  JSR code_3FE8BC                           ; $3192A9 |
loc_632AC:
  LDA #$10                                  ; $3192AC |
  STA $062C                                 ; $3192AE |
loc_632B1:
  JSR code_31997D                           ; $3192B1 |
  DEC $062C                                 ; $3192B4 |
  BNE loc_632B1                             ; $3192B7 |
  LDY #$24                                  ; $3192B9 |
  JSR code_3FE522                           ; $3192BB |
  LDA #$10                                  ; $3192BE |
  STA $062C                                 ; $3192C0 |
loc_632C3:
  JSR code_31997D                           ; $3192C3 |
  DEC $062C                                 ; $3192C6 |
  BNE loc_632C3                             ; $3192C9 |
  DEC $0615                                 ; $3192CB |
  BNE loc_63286                             ; $3192CE |
  LDX $8F                                   ; $3192D0 |
  JMP code_319091                           ; $3192D2 |

  db $7F, $60, $20, $AD, $54, $71, $90, $91 ; $3192D5 |
  db $92, $0C, $F4, $00, $FF, $7F, $60, $20 ; $3192DD |
  db $F9, $FA, $E4, $D7, $36, $30, $A9, $FB ; $3192E5 |
  db $2A, $00, $00, $36, $1A, $D3           ; $3192ED |

  JSR code_3FEBD1                           ; $3192F3 |
  LDA #$45                                  ; $3192F6 |
  STA $DC                                   ; $3192F8 |
  JSR code_3FE5DF                           ; $3192FA |
code_3192FD:
  JSR code_3FEA6A                           ; $3192FD |
  JSR code_319C22                           ; $319300 |
  LDY #$06                                  ; $319303 |
  JSR code_3FE60E                           ; $319305 |
  JMP code_3192FD                           ; $319308 |

  db $2B, $00, $00, $37, $1A, $64           ; $31930B |

  JSR code_3FEBD1                           ; $319311 |
  LDA #$52                                  ; $319314 |
  STA $DC                                   ; $319316 |
  LDA #$00                                  ; $319318 |
  STA $00                                   ; $31931A |
  STA $01                                   ; $31931C |
  STA $11                                   ; $31931E |
  JSR code_3ED9CD                           ; $319320 |
  LDA $11                                   ; $319323 |
  BNE loc_6336F                             ; $319325 |
  LDA #$52                                  ; $319327 |
  STA $DC                                   ; $319329 |
  LDA #$0A                                  ; $31932B |
  STA $05B1,x                               ; $31932D |
loc_63330:
  JSR code_319372                           ; $319330 |
  JSR code_319C22                           ; $319333 |
  DEC $05B1,x                               ; $319336 |
  BNE loc_63330                             ; $319339 |
  LDA #$38                                  ; $31933B |
  STA $059A,x                               ; $31933D |
  LDY #$2C                                  ; $319340 |
  JSR code_3FE522                           ; $319342 |
  LDA #$14                                  ; $319345 |
  STA $05B1,x                               ; $319347 |
loc_6334A:
  JSR code_319372                           ; $31934A |
  JSR code_319C22                           ; $31934D |
  DEC $05B1,x                               ; $319350 |
  BNE loc_6334A                             ; $319353 |
  LDA #$37                                  ; $319355 |
  STA $059A,x                               ; $319357 |
  LDY #$2D                                  ; $31935A |
  JSR code_3FE522                           ; $31935C |
  LDA #$0A                                  ; $31935F |
  STA $05B1,x                               ; $319361 |
loc_63364:
  JSR code_319372                           ; $319364 |
  JSR code_319C22                           ; $319367 |
  DEC $05B1,x                               ; $31936A |
  BNE loc_63364                             ; $31936D |
loc_6336F:
  JMP code_3FE456                           ; $31936F |

code_319372:
  LDA #$64                                  ; $319372 |
  STA $0583,x                               ; $319374 |
  LDA $0699                                 ; $319377 |
  CMP #$02                                  ; $31937A |
  BNE loc_63383                             ; $31937C |
  LDA #$D4                                  ; $31937E |
  STA $0583,x                               ; $319380 |
loc_63383:
  JMP code_3FE468                           ; $319383 |

  db $2E, $85, $44, $39, $1B, $F4           ; $319386 |

  JSR code_3FEBD1                           ; $31938C |
  JSR code_3FEF0C                           ; $31938F |
loc_63392:
  JSR code_31997D                           ; $319392 |
  LDA #$6E                                  ; $319395 |
  STA $08                                   ; $319397 |
  LDA #$95                                  ; $319399 |
  STA $09                                   ; $31939B |
  JSR code_3ECC54                           ; $31939D |
  TYA                                       ; $3193A0 |
  CMP $05B9                                 ; $3193A1 |
  BNE loc_633B7                             ; $3193A4 |
  LDA $05C8,x                               ; $3193A6 |
  CMP #$02                                  ; $3193A9 |
  BCC loc_633BC                             ; $3193AB |
  LDY $05B9                                 ; $3193AD |
  INY                                       ; $3193B0 |
  CPY #$03                                  ; $3193B1 |
  BNE loc_633B7                             ; $3193B3 |
  LDY #$00                                  ; $3193B5 |
loc_633B7:
  LDA #$00                                  ; $3193B7 |
  STA $05D0                                 ; $3193B9 |
loc_633BC:
  TYA                                       ; $3193BC |
  STA $05B9                                 ; $3193BD |
  INC $05D0                                 ; $3193C0 |
  LDA $9571,y                               ; $3193C3 |
  STA $08                                   ; $3193C6 |
  LDA $9574,y                               ; $3193C8 |
  STA $09                                   ; $3193CB |
  JMP ($0008)                               ; $3193CD |

code_3193D0:
  LDA #$08                                  ; $3193D0 |
  STA $063E                                 ; $3193D2 |
  LDY #$2E                                  ; $3193D5 |
  JSR code_3FE522                           ; $3193D7 |
loc_633DA:
  JSR code_31997D                           ; $3193DA |
  JSR code_3FEF0C                           ; $3193DD |
  DEC $062C                                 ; $3193E0 |
  BNE loc_633DA                             ; $3193E3 |
  BEQ loc_63392                             ; $3193E5 |
  JSR code_31997D                           ; $3193E7 |
  INC $0641                                 ; $3193EA |
  LDA #$01                                  ; $3193ED |
  STA $063E                                 ; $3193EF |
  LDY #$31                                  ; $3193F2 |
  JSR code_3FE522                           ; $3193F4 |
  JSR code_319C2B                           ; $3193F7 |
  LDA #$77                                  ; $3193FA |
  STA $08                                   ; $3193FC |
  LDA #$95                                  ; $3193FE |
  STA $09                                   ; $319400 |
  JSR code_3ECC54                           ; $319402 |
  LDA #$00                                  ; $319405 |
  STA $00                                   ; $319407 |
  LDA $062C                                 ; $319409 |
  STA $01                                   ; $31940C |
  TYA                                       ; $31940E |
  BEQ loc_6341B                             ; $31940F |
  CMP #$01                                  ; $319411 |
  BEQ loc_6342B                             ; $319413 |
  JSR code_319C3C                           ; $319415 |
  JMP code_31942B                           ; $319418 |

loc_6341B:
  CLC                                       ; $31941B |
  LDA $01                                   ; $31941C |
  ADC #$30                                  ; $31941E |
  STA $01                                   ; $319420 |
  BCC loc_63428                             ; $319422 |
  LDA #$E0                                  ; $319424 |
  STA $01                                   ; $319426 |
loc_63428:
  JMP code_31942B                           ; $319428 |

loc_6342B:
code_31942B:
  LSR $01                                   ; $31942B |
  ROR $00                                   ; $31942D |
  LDA $01                                   ; $31942F |
  STA $062C                                 ; $319431 |
  LDA #$00                                  ; $319434 |
  STA $02                                   ; $319436 |
  LDA #$06                                  ; $319438 |
  STA $03                                   ; $31943A |
  JSR code_3ECC70                           ; $31943C |
  LSR $05                                   ; $31943F |
  ROR $04                                   ; $319441 |
  LDA $05                                   ; $319443 |
  AND #$05                                  ; $319445 |
  STA $05                                   ; $319447 |
  LDA $05                                   ; $319449 |
  EOR #$FF                                  ; $31944B |
  STA $05FE                                 ; $31944D |
  LDA $04                                   ; $319450 |
  EOR #$FF                                  ; $319452 |
  STA $05E7                                 ; $319454 |
  INC $05E7                                 ; $319457 |
  BNE loc_6345F                             ; $31945A |
  INC $05FE                                 ; $31945C |
loc_6345F:
  LDA $05E7                                 ; $31945F |
  ORA #$01                                  ; $319462 |
  STA $05E7                                 ; $319464 |
loc_63467:
  JSR code_31997D                           ; $319467 |
  LDY #$00                                  ; $31946A |
  JSR code_3FE61A                           ; $31946C |
  LDA #$F2                                  ; $31946F |
  STA $08                                   ; $319471 |
  LDA #$9B                                  ; $319473 |
  STA $09                                   ; $319475 |
  JSR code_3FEC0A                           ; $319477 |
  JSR code_319AC5                           ; $31947A |
  LDA $12                                   ; $31947D |
  BEQ loc_63484                             ; $31947F |
  JSR code_3FEF18                           ; $319481 |
loc_63484:
  LDA $11                                   ; $319484 |
  AND #$01                                  ; $319486 |
  BEQ loc_63467                             ; $319488 |
  LDA #$4C                                  ; $31948A |
  STA $DC                                   ; $31948C |
  LDY #$32                                  ; $31948E |
  JSR code_3FE522                           ; $319490 |
  LDA #$04                                  ; $319493 |
  STA $0615                                 ; $319495 |
loc_63498:
  JSR code_31997D                           ; $319498 |
  DEC $0615                                 ; $31949B |
  BNE loc_63498                             ; $31949E |
  LDA #$00                                  ; $3194A0 |
  STA $0641                                 ; $3194A2 |
  LDA #$1E                                  ; $3194A5 |
  STA $062C                                 ; $3194A7 |
  JMP code_3193D0                           ; $3194AA |

  LDA #$08                                  ; $3194AD |
  STA $063E                                 ; $3194AF |
  LDY #$2F                                  ; $3194B2 |
  JSR code_3FE522                           ; $3194B4 |
  LDA #$0C                                  ; $3194B7 |
  STA $062C                                 ; $3194B9 |
loc_634BC:
  JSR code_31997D                           ; $3194BC |
  DEC $062C                                 ; $3194BF |
  BNE loc_634BC                             ; $3194C2 |
  LDY #$B0                                  ; $3194C4 |
  JSR code_3FE5AB                           ; $3194C6 |
  BCS loc_634DC                             ; $3194C9 |
  LDA $03D6                                 ; $3194CB |
  STA $03CE,x                               ; $3194CE |
  TXA                                       ; $3194D1 |
  STA $0615                                 ; $3194D2 |
  LDY $8F                                   ; $3194D5 |
  LDA #$03                                  ; $3194D7 |
  JSR code_3FE8FD                           ; $3194D9 |
loc_634DC:
  LDA #$20                                  ; $3194DC |
  STA $062C                                 ; $3194DE |
loc_634E1:
  JSR code_31997D                           ; $3194E1 |
  DEC $062C                                 ; $3194E4 |
  BNE loc_634E1                             ; $3194E7 |
  LDY #$2E                                  ; $3194E9 |
  JSR code_3FE522                           ; $3194EB |
loc_634EE:
  JSR code_31997D                           ; $3194EE |
  LDY $0615                                 ; $3194F1 |
  LDA $03A0,y                               ; $3194F4 |
  BNE loc_634EE                             ; $3194F7 |
  LDA #$1E                                  ; $3194F9 |
  STA $062C                                 ; $3194FB |
  JMP code_3193D0                           ; $3194FE |

  LDA #$08                                  ; $319501 |
  STA $063E                                 ; $319503 |
  LDY #$30                                  ; $319506 |
  JSR code_3FE522                           ; $319508 |
  LDA #$0C                                  ; $31950B |
  STA $062C                                 ; $31950D |
loc_63510:
  JSR code_31997D                           ; $319510 |
  DEC $062C                                 ; $319513 |
  BNE loc_63510                             ; $319516 |
  LDA #$02                                  ; $319518 |
  STA $062C                                 ; $31951A |
loc_6351D:
  JSR code_31997D                           ; $31951D |
loc_63520:
  LDY #$B1                                  ; $319520 |
  JSR code_3FE5AB                           ; $319522 |
  BCS loc_6351D                             ; $319525 |
  LDY $062C                                 ; $319527 |
  LDA $957A,y                               ; $31952A |
  STA $05C8,x                               ; $31952D |
  LDA $03D6                                 ; $319530 |
  STA $03CE,x                               ; $319533 |
  LDA $957D,y                               ; $319536 |
  LDY $8F                                   ; $319539 |
  JSR code_3FE8BC                           ; $31953B |
  DEC $062C                                 ; $31953E |
  BPL loc_63520                             ; $319541 |
  LDA #$00                                  ; $319543 |
  STA $0615                                 ; $319545 |
  LDA #$20                                  ; $319548 |
  STA $062C                                 ; $31954A |
loc_6354D:
  JSR code_31997D                           ; $31954D |
  DEC $062C                                 ; $319550 |
  BNE loc_6354D                             ; $319553 |
  LDX $8F                                   ; $319555 |
  LDY #$2E                                  ; $319557 |
  JSR code_3FE522                           ; $319559 |
loc_6355C:
  JSR code_31997D                           ; $31955C |
  LDA $0615                                 ; $31955F |
  CMP #$03                                  ; $319562 |
  BNE loc_6355C                             ; $319564 |
  LDA #$0A                                  ; $319566 |
  STA $062C                                 ; $319568 |
  JMP code_3193D0                           ; $31956B |

  db $7F, $40, $40, $E7, $AD, $01, $93, $94 ; $31956E |
  db $95, $7F, $60, $20, $00, $07, $08, $2A ; $319576 |
  db $2B, $2C, $34, $85, $44, $3A, $1A, $D5 ; $31957E |

  JSR code_3FEBD1                           ; $319586 |
  LDA #$00                                  ; $319589 |
  STA $060D,x                               ; $31958B |
  STA $0624,x                               ; $31958E |
  LDA #$42                                  ; $319591 |
  STA $DC                                   ; $319593 |
code_319595:
  JSR code_3FEA6A                           ; $319595 |
  JSR code_319C22                           ; $319598 |
  LDY #$08                                  ; $31959B |
  JSR code_3FE61A                           ; $31959D |
  LDY #$01                                  ; $3195A0 |
  JSR code_3FEEC9                           ; $3195A2 |
  JSR code_3FE4D1                           ; $3195A5 |
  JMP code_319595                           ; $3195A8 |

  db $35, $85, $44, $3B, $1A, $D4           ; $3195AB |

  JSR code_3FEBD1                           ; $3195B1 |
  JSR code_3FE5DF                           ; $3195B4 |
  LDA #$42                                  ; $3195B7 |
  STA $DC                                   ; $3195B9 |
code_3195BB:
  JSR code_3182E5                           ; $3195BB |
  JSR code_319C22                           ; $3195BE |
  LDY $05C8,x                               ; $3195C1 |
  JSR code_3FE60E                           ; $3195C4 |
  JMP code_3195BB                           ; $3195C7 |

  db $36, $86, $45, $3C, $1B, $F5           ; $3195CA |

  JSR code_3FEBD1                           ; $3195D0 |
  LDA #$00                                  ; $3195D3 |
  STA $05B9                                 ; $3195D5 |
code_3195D8:
  LDA $03B3                                 ; $3195D8 |
  BNE loc_63619                             ; $3195DB |
  LDA #$08                                  ; $3195DD |
  STA $063E                                 ; $3195DF |
  LDY #$3B ; '                              ; $3195E2 |
  JSR code_3FE522                           ; $3195E4 |
  LDA #$08                                  ; $3195E7 |
  STA $05D0                                 ; $3195E9 |
loc_635EC:
  JSR code_31997D                           ; $3195EC |
  DEC $05D0                                 ; $3195EF |
  BNE loc_635EC                             ; $3195F2 |
  JSR code_31975E                           ; $3195F4 |
  LDA #$59                                  ; $3195F7 |
  STA $DC                                   ; $3195F9 |
  LDX $8F                                   ; $3195FB |
  LDA #$64                                  ; $3195FD |
  STA $058B                                 ; $3195FF |
  LDA #$00                                  ; $319602 |
  STA $063E                                 ; $319604 |
  LDY #$36                                  ; $319607 |
  JSR code_3FE522                           ; $319609 |
  LDA #$08                                  ; $31960C |
  STA $05D0                                 ; $31960E |
loc_63611:
  JSR code_31997D                           ; $319611 |
  DEC $05D0                                 ; $319614 |
  BNE loc_63611                             ; $319617 |
loc_63619:
  LDA #$00                                  ; $319619 |
  STA $063E                                 ; $31961B |
  LDY #$38                                  ; $31961E |
  JSR code_3FE522                           ; $319620 |
  LDA #$08                                  ; $319623 |
  STA $05D0                                 ; $319625 |
loc_63628:
  JSR code_31997D                           ; $319628 |
  DEC $05D0                                 ; $31962B |
  BNE loc_63628                             ; $31962E |
  LDA #$01                                  ; $319630 |
  STA $063E                                 ; $319632 |
  LDA #$4B                                  ; $319635 |
  STA $08                                   ; $319637 |
  LDA #$9D                                  ; $319639 |
  STA $09                                   ; $31963B |
  JSR code_3ECC54                           ; $31963D |
  LDA $9770,y                               ; $319640 |
  STA $03D6                                 ; $319643 |
  JSR code_3FE5DF                           ; $319646 |
  LDY #$39                                  ; $319649 |
  JSR code_3FE522                           ; $31964B |
  INC $0641                                 ; $31964E |
  LDA #$4B                                  ; $319651 |
  STA $08                                   ; $319653 |
  LDA #$9D                                  ; $319655 |
  STA $09                                   ; $319657 |
  JSR code_3ECC54                           ; $319659 |
  LDA $9776,y                               ; $31965C |
  STA $05FE                                 ; $31965F |
  LDA $9778,y                               ; $319662 |
  STA $05E7                                 ; $319665 |
  LDA $977C,y                               ; $319668 |
  STA $0615                                 ; $31966B |
  LDA $977A,y                               ; $31966E |
  STA $062C                                 ; $319671 |
  LDA $03D6                                 ; $319674 |
  CMP #$04                                  ; $319677 |
  BEQ loc_63693                             ; $319679 |
  LDA $0615                                 ; $31967B |
  EOR #$FF                                  ; $31967E |
  STA $0615                                 ; $319680 |
  LDA $062C                                 ; $319683 |
  EOR #$FF                                  ; $319686 |
  STA $062C                                 ; $319688 |
  INC $0615                                 ; $31968B |
  BNE loc_63693                             ; $31968E |
  INC $062C                                 ; $319690 |
loc_63693:
  JSR code_31997D                           ; $319693 |
  LDA $056C,x                               ; $319696 |
  CMP #$14                                  ; $319699 |
  BEQ loc_636B9                             ; $31969B |
  LDA #$C2                                  ; $31969D |
  STA $08                                   ; $31969F |
  LDA #$9B                                  ; $3196A1 |
  STA $09                                   ; $3196A3 |
  LDA $0615                                 ; $3196A5 |
  STA $EB                                   ; $3196A8 |
  LDA $062C                                 ; $3196AA |
  STA $ED                                   ; $3196AD |
  JSR code_3FEC0A                           ; $3196AF |
  JSR code_319AC5                           ; $3196B2 |
  LDA $12                                   ; $3196B5 |
  BEQ loc_636D9                             ; $3196B7 |
loc_636B9:
  LDA $03BF                                 ; $3196B9 |
  EOR #$40                                  ; $3196BC |
  STA $03BF                                 ; $3196BE |
  LDA $0615                                 ; $3196C1 |
  EOR #$FF                                  ; $3196C4 |
  STA $0615                                 ; $3196C6 |
  LDA $062C                                 ; $3196C9 |
  EOR #$FF                                  ; $3196CC |
  STA $062C                                 ; $3196CE |
  INC $0615                                 ; $3196D1 |
  BNE loc_636D9                             ; $3196D4 |
  INC $062C                                 ; $3196D6 |
loc_636D9:
  LDA $11                                   ; $3196D9 |
  AND #$01                                  ; $3196DB |
  BEQ loc_63693                             ; $3196DD |
  LDA #$4C                                  ; $3196DF |
  STA $DC                                   ; $3196E1 |
  LDA #$08                                  ; $3196E3 |
  STA $063E                                 ; $3196E5 |
  LDA #$00                                  ; $3196E8 |
  STA $0641                                 ; $3196EA |
  LDA #$F4                                  ; $3196ED |
  STA $058B                                 ; $3196EF |
  LDY #$3C                                  ; $3196F2 |
  JSR code_3FE522                           ; $3196F4 |
  JSR code_3FEF0C                           ; $3196F7 |
  LDA #$42                                  ; $3196FA |
  STA $DC                                   ; $3196FC |
  INC $05B9                                 ; $3196FE |
loc_63701:
  JSR code_31997D                           ; $319701 |
  LDA #$00                                  ; $319704 |
  STA $05B9                                 ; $319706 |
  LDA $03B3                                 ; $319709 |
  BNE loc_63701                             ; $31970C |
  LDY #$37                                  ; $31970E |
  JSR code_3FE522                           ; $319710 |
  JSR code_319C2B                           ; $319713 |
  LSR $062C                                 ; $319716 |
  JSR code_3FEF0C                           ; $319719 |
  LSR $03D6                                 ; $31971C |
  LSR $03D6                                 ; $31971F |
  LSR $03D6                                 ; $319722 |
loc_63725:
  JSR code_31997D                           ; $319725 |
  LDA #$C2                                  ; $319728 |
  STA $08                                   ; $31972A |
  LDA #$9B                                  ; $31972C |
  STA $09                                   ; $31972E |
  LDY $03D6                                 ; $319730 |
  LDA $9784,y                               ; $319733 |
  STA $EB                                   ; $319736 |
  LDA $9782,y                               ; $319738 |
  STA $ED                                   ; $31973B |
  JSR code_3FEC0A                           ; $31973D |
  LDA $12                                   ; $319740 |
  AND #$01                                  ; $319742 |
  BEQ loc_63756                             ; $319744 |
  LDA $03D6                                 ; $319746 |
  EOR #$01                                  ; $319749 |
  STA $03D6                                 ; $31974B |
  LDA $03BF                                 ; $31974E |
  EOR #$40                                  ; $319751 |
  STA $03BF                                 ; $319753 |
loc_63756:
  DEC $062C                                 ; $319756 |
  BNE loc_63725                             ; $319759 |
  JMP code_3195D8                           ; $31975B |

code_31975E:
  LDY #$B5                                  ; $31975E |
  LDX #$13                                  ; $319760 |
  JSR code_3ECB28                           ; $319762 |

  db $41                                    ; $319765 |

  BCS locret_6376F                          ; $319766 |
  LDY $8F                                   ; $319768 |
  LDA #$03                                  ; $31976A |
  JSR code_3FE8FD                           ; $31976C |
locret_6376F:
  RTS                                       ; $31976F |

  db $04, $0C, $04, $00, $0C, $08, $F9, $FA ; $319770 |
  db $F8, $D7, $02, $01, $0A, $F0, $1D, $1E ; $319778 |
  db $1F, $20, $02, $FE, $00, $00, $3D, $00 ; $319780 |
  db $00, $01, $1A, $00                     ; $319788 |

  JSR code_3FEBD1                           ; $31978C |
code_31978F:
  JSR code_3FE468                           ; $31978F |
  LDA #$02                                  ; $319792 |
  STA $05B1,x                               ; $319794 |
loc_63797:
  LDY #$08                                  ; $319797 |
  JSR code_3FE60E                           ; $319799 |
  LDA $0499                                 ; $31979C |
  SEC                                       ; $31979F |
  SBC $05DF,x                               ; $3197A0 |
  STA $ED                                   ; $3197A3 |
  LDA $04DE                                 ; $3197A5 |
  SEC                                       ; $3197A8 |
  SBC $05F6,x                               ; $3197A9 |
  STA $EE                                   ; $3197AC |
  JSR code_3FE4CB                           ; $3197AE |
  LDA $0499                                 ; $3197B1 |
  STA $05DF,x                               ; $3197B4 |
  LDA $04DE                                 ; $3197B7 |
  STA $05F6,x                               ; $3197BA |
  JSR code_3FEA6A                           ; $3197BD |
  JSR code_319C22                           ; $3197C0 |
  LDA $03B3                                 ; $3197C3 |
  BEQ loc_637DB                             ; $3197C6 |
  DEC $05B1,x                               ; $3197C8 |
  BNE loc_63797                             ; $3197CB |
  INC $03CE,x                               ; $3197CD |
  LDA $03CE,x                               ; $3197D0 |
  AND #$0F                                  ; $3197D3 |
  STA $03CE,x                               ; $3197D5 |
  JMP code_31978F                           ; $3197D8 |

loc_637DB:
  JMP code_3FE456                           ; $3197DB |

  db $3D, $00, $00, $01, $1A, $00           ; $3197DE |

  JSR code_3FEBD1                           ; $3197E4 |
  LDA #$01                                  ; $3197E7 |
  STA $03B7,x                               ; $3197E9 |
  JSR code_31985C                           ; $3197EC |
  LDX $8F                                   ; $3197EF |
loc_637F1:
  JSR code_3FE468                           ; $3197F1 |
  LDA $056C,x                               ; $3197F4 |
  CMP #$14                                  ; $3197F7 |
  BNE loc_6381B                             ; $3197F9 |
  LDA $03BF                                 ; $3197FB |
  EOR #$40                                  ; $3197FE |
  STA $03BF                                 ; $319800 |
  LDA $0615                                 ; $319803 |
  EOR #$FF                                  ; $319806 |
  STA $0615                                 ; $319808 |
  LDA $062C                                 ; $31980B |
  EOR #$FF                                  ; $31980E |
  STA $062C                                 ; $319810 |
  INC $0615                                 ; $319813 |
  BNE loc_6381B                             ; $319816 |
  INC $062C                                 ; $319818 |
loc_6381B:
  LDA #$00                                  ; $31981B |
  STA $056C,x                               ; $31981D |
  LDA $048E                                 ; $319820 |
  STA $0486,x                               ; $319823 |
  LDA $04D3                                 ; $319826 |
  STA $04CB,x                               ; $319829 |
  LDA $03ED                                 ; $31982C |
  BMI loc_63859                             ; $31982F |
  LDA $05B9                                 ; $319831 |
  BEQ loc_637F1                             ; $319834 |
  LDA $03D6                                 ; $319836 |
  STA $03CE,x                               ; $319839 |
  LDA #$3C                                  ; $31983C |
  STA $059A,x                               ; $31983E |
  LDA #$64                                  ; $319841 |
  STA $0583,x                               ; $319843 |
code_319846:
  JSR code_3FEA6A                           ; $319846 |
  JSR code_319C22                           ; $319849 |
  LDY #$00                                  ; $31984C |
  JSR code_3FE60E                           ; $31984E |
  LDA $03ED                                 ; $319851 |
  BMI loc_63859                             ; $319854 |
  JMP code_319846                           ; $319856 |

loc_63859:
  JMP code_3FE456                           ; $319859 |

code_31985C:
  LDA #$03                                  ; $31985C |
  STA $05B1,x                               ; $31985E |
loc_63861:
  LDY #$B3                                  ; $319861 |
  JSR code_3FE5AB                           ; $319863 |
  BCS loc_6388D                             ; $319866 |
  LDY $05C4                                 ; $319868 |
  LDA $9772,y                               ; $31986B |
  STA $03CE,x                               ; $31986E |
  LDA $0499                                 ; $319871 |
  STA $05DF,x                               ; $319874 |
  LDA $04DE                                 ; $319877 |
  STA $05F6,x                               ; $31987A |
  LDA $977E,y                               ; $31987D |
  LDY $8F                                   ; $319880 |
  STA $05C8,x                               ; $319882 |
  JSR code_3FE8FD                           ; $319885 |
  DEC $05C4                                 ; $319888 |
  BPL loc_63861                             ; $31988B |
loc_6388D:
  LDX $8F                                   ; $31988D |
  RTS                                       ; $31988F |

code_319890:
  LDA #$FF                                  ; $319890 |
  STA $05B9                                 ; $319892 |
  LDA #$00                                  ; $319895 |
  STA $05D0                                 ; $319897 |
  STA $0641                                 ; $31989A |
  STA $063F                                 ; $31989D |
  STA $0640                                 ; $3198A0 |
  RTS                                       ; $3198A3 |

  db $03, $00, $00, $01, $FF, $00           ; $3198A4 |

  JSR code_319890                           ; $3198AA |
  LDX #$09                                  ; $3198AD |
  LDY #$94                                  ; $3198AF |
  JSR code_3ECB28                           ; $3198B1 |

  db $41                                    ; $3198B4 |

  LDX $8F                                   ; $3198B5 |
  LDY $063D                                 ; $3198B7 |
  LDA $F1FC,y                               ; $3198BA |
  TAY                                       ; $3198BD |
  JSR code_3FE522                           ; $3198BE |
  LDY $063D                                 ; $3198C1 |
  LDA $F214,y                               ; $3198C4 |
  JSR code_3EC9EF                           ; $3198C7 |
loc_638CA:
  LDA $DF                                   ; $3198CA |
  AND #$0F                                  ; $3198CC |
  BNE loc_638DB                             ; $3198CE |
  LDA #$30                                  ; $3198D0 |
  STA $0370                                 ; $3198D2 |
  STA $46                                   ; $3198D5 |
  LDA #$61                                  ; $3198D7 |
  STA $DC                                   ; $3198D9 |
loc_638DB:
  LDX $8F                                   ; $3198DB |
  LDA #$08                                  ; $3198DD |
  STA $03CE,x                               ; $3198DF |
  LDY #$06                                  ; $3198E2 |
  LDA $04CB,x                               ; $3198E4 |
  BMI loc_638F3                             ; $3198E7 |
  LDA #$00                                  ; $3198E9 |
  STA $11                                   ; $3198EB |
  JSR code_3FE60E                           ; $3198ED |
  JMP code_319906                           ; $3198F0 |

loc_638F3:
  JSR code_3FE61A                           ; $3198F3 |
  LDY $063D                                 ; $3198F6 |
  LDA $9B82,y                               ; $3198F9 |
  STA $08                                   ; $3198FC |
  LDA $9B8A,y                               ; $3198FE |
  STA $09                                   ; $319901 |
  JSR code_3FEC11                           ; $319903 |
code_319906:
  LDA #$FF                                  ; $319906 |
  STA $03ED                                 ; $319908 |
  STA $0642                                 ; $31990B |
  JSR code_3FE1DD                           ; $31990E |
  JSR code_3ECF4A                           ; $319911 |
  JSR code_3EC62B                           ; $319914 |
  LDA $0370                                 ; $319917 |
  CMP #$30                                  ; $31991A |
  BNE loc_63925                             ; $31991C |
  LDA #$0F                                  ; $31991E |
  STA $0370                                 ; $319920 |
  STA $46                                   ; $319923 |
loc_63925:
  LDA $11                                   ; $319925 |
  AND #$01                                  ; $319927 |
  BEQ loc_638CA                             ; $319929 |
  JSR code_3EDE7A                           ; $31992B |
  LDX $8F                                   ; $31992E |
  LDY $063D                                 ; $319930 |
  LDA $F204,y                               ; $319933 |
  TAY                                       ; $319936 |
  JSR code_3FE522                           ; $319937 |
  JSR code_3FEF29                           ; $31993A |
  LDY $063D                                 ; $31993D |
  LDA $9D43,y                               ; $319940 |
  TAY                                       ; $319943 |
  LDX #$08                                  ; $319944 |
  JSR code_3ECB28                           ; $319946 |

  db $41                                    ; $319949 |

  LDA $57                                   ; $31994A |
  STA $0477                                 ; $31994C |
  JMP code_3FE477                           ; $31994F |

  db $10, $00, $00, $01, $1A, $00           ; $319952 |

  JSR code_3FEBD1                           ; $319958 |
  LDA #$01                                  ; $31995B |
  STA $03B7,x                               ; $31995D |
loc_63960:
  LDA $0477                                 ; $319960 |
  STA $046F,x                               ; $319963 |
  LDA $048E                                 ; $319966 |
  STA $0486,x                               ; $319969 |
  LDA $04D3                                 ; $31996C |
  STA $04CB,x                               ; $31996F |
  JSR code_3FEA6A                           ; $319972 |
  LDA $03A8                                 ; $319975 |
  BNE loc_63960                             ; $319978 |
  JMP code_3FE456                           ; $31997A |

code_31997D:
  LDX $8F                                   ; $31997D |
  LDA $0640                                 ; $31997F |
  BEQ loc_639AE                             ; $319982 |
  DEC $063F                                 ; $319984 |
  BNE loc_63999                             ; $319987 |
  LDA #$02                                  ; $319989 |
  STA $063F                                 ; $31998B |
  LDA $03BF                                 ; $31998E |
  STA $03C0                                 ; $319991 |
  EOR #$01                                  ; $319994 |
  STA $03BF                                 ; $319996 |
loc_63999:
  DEC $0640                                 ; $319999 |
  BEQ loc_639A1                             ; $31999C |
  JMP code_319A2A                           ; $31999E |

loc_639A1:
  LDA $03BF                                 ; $3199A1 |
  AND #$FE                                  ; $3199A4 |
  STA $03BF                                 ; $3199A6 |
  LDA #$01                                  ; $3199A9 |
  STA $03C0                                 ; $3199AB |
loc_639AE:
  LDA $058B                                 ; $3199AE |
  AND #$F0                                  ; $3199B1 |
  CMP #$A0                                  ; $3199B3 |
  BEQ loc_63A2A                             ; $3199B5 |
  LDA $056C,x                               ; $3199B7 |
  BEQ loc_63A2A                             ; $3199BA |
  CMP #$30                                  ; $3199BC |
  BEQ loc_63A2A                             ; $3199BE |
  CMP #$14                                  ; $3199C0 |
  BNE loc_639C7                             ; $3199C2 |
  JMP code_319AD6                           ; $3199C4 |

loc_639C7:
  LDA $058B                                 ; $3199C7 |
  AND #$F0                                  ; $3199CA |
  CMP #$60                                  ; $3199CC |
  BEQ loc_63A2A                             ; $3199CE |
  LDA $056C,x                               ; $3199D0 |
  AND #$F0                                  ; $3199D3 |
  CMP #$10                                  ; $3199D5 |
  BEQ loc_639F5                             ; $3199D7 |
  LDY $063D                                 ; $3199D9 |
  LDA $9A35,y                               ; $3199DC |
  STA $08                                   ; $3199DF |
  LDA $9A3D,y                               ; $3199E1 |
  STA $09                                   ; $3199E4 |
  LDA $056C,x                               ; $3199E6 |
  LSR                                       ; $3199E9 |
  LSR                                       ; $3199EA |
  LSR                                       ; $3199EB |
  LSR                                       ; $3199EC |
  TAY                                       ; $3199ED |
  LDA ($08),y                               ; $3199EE |
  BEQ loc_63A2A                             ; $3199F0 |
  STA $0574                                 ; $3199F2 |
loc_639F5:
  LDA $056C,x                               ; $3199F5 |
  AND #$0F                                  ; $3199F8 |
  STA $00                                   ; $3199FA |
  LDA #$02                                  ; $3199FC |
  STA $063F                                 ; $3199FE |
  LDA #$3C                                  ; $319A01 |
  STA $0640                                 ; $319A03 |
  LDA #$35                                  ; $319A06 |
  STA $DC                                   ; $319A08 |
  LDA #$00                                  ; $319A0A |
  STA $056C,x                               ; $319A0C |
  LDA $03E5,x                               ; $319A0F |
  SEC                                       ; $319A12 |
  SBC $00                                   ; $319A13 |
  STA $03E5,x                               ; $319A15 |
  BPL loc_63A2A                             ; $319A18 |
  LDA $063D                                 ; $319A1A |
  CMP #$07                                  ; $319A1D |
  BNE loc_63A24                             ; $319A1F |
  JSR code_318F74                           ; $319A21 |
loc_63A24:
  JSR code_3FED3E                           ; $319A24 |
  JMP code_3FE456                           ; $319A27 |

loc_63A2A:
code_319A2A:
  LDA #$00                                  ; $319A2A |
  STA $056C,x                               ; $319A2C |
  JMP code_3FE468                           ; $319A2F |

  JMP code_3FE456                           ; $319A32 |

  db $45, $55, $65, $75, $85, $95, $A5, $B5 ; $319A35 |
  db $9A, $9A, $9A, $9A, $9A, $9A, $9A, $9A ; $319A3D |
  db $FF, $FF, $FF, $FF, $FF, $01, $01, $01 ; $319A45 |
  db $04, $00, $01, $01, $00, $FF, $FF, $FF ; $319A4D |
  db $FF, $FF, $FF, $FF, $FF, $01, $01, $01 ; $319A55 |
  db $01, $00, $01, $01, $04, $FF, $FF, $FF ; $319A5D |
  db $FF, $FF, $FF, $FF, $FF, $01, $01, $04 ; $319A65 |
  db $02, $00, $01, $01, $00, $FF, $FF, $FF ; $319A6D |
  db $FF, $FF, $FF, $FF, $FF, $01, $04, $01 ; $319A75 |
  db $01, $00, $01, $01, $00, $FF, $FF, $FF ; $319A7D |
  db $FF, $FF, $FF, $FF, $FF, $01, $01, $01 ; $319A85 |
  db $01, $00, $01, $04, $00, $FF, $FF, $FF ; $319A8D |
  db $FF, $FF, $FF, $FF, $FF, $01, $01, $01 ; $319A95 |
  db $01, $04, $01, $01, $00, $FF, $FF, $FF ; $319A9D |
  db $FF, $FF, $FF, $FF, $FF, $04, $01, $01 ; $319AA5 |
  db $01, $00, $01, $01, $00, $FF, $FF, $FF ; $319AAD |
  db $FF, $FF, $FF, $FF, $FF, $01, $01, $01 ; $319AB5 |
  db $01, $00, $04, $01, $00, $FF, $FF, $FF ; $319ABD |

code_319AC5:
  LDA $048E                                 ; $319AC5 |
  CMP #$20                                  ; $319AC8 |
  BCS locret_63AD5                          ; $319ACA |
  LDA #$01                                  ; $319ACC |
  STA $12                                   ; $319ACE |
  LDA #$20                                  ; $319AD0 |
  STA $048E                                 ; $319AD2 |
locret_63AD5:
  RTS                                       ; $319AD5 |

code_319AD6:
  LDA $063E                                 ; $319AD6 |
  BNE loc_63ADE                             ; $319AD9 |
  JMP code_319A2A                           ; $319ADB |

loc_63ADE:
  LDA #$02                                  ; $319ADE |
  STA $063F                                 ; $319AE0 |
  LDA #$3C                                  ; $319AE3 |
  STA $0640                                 ; $319AE5 |
  LDA #$35                                  ; $319AE8 |
  STA $DC                                   ; $319AEA |
  LDA #$00                                  ; $319AEC |
  STA $056C,x                               ; $319AEE |
  LDA $03E5,x                               ; $319AF1 |
  SEC                                       ; $319AF4 |
  SBC #$02                                  ; $319AF5 |
  STA $03E5,x                               ; $319AF7 |
  BPL loc_63B0C                             ; $319AFA |
  LDA $063D                                 ; $319AFC |
  CMP #$07                                  ; $319AFF |
  BNE loc_63B06                             ; $319B01 |
  JSR code_318F74                           ; $319B03 |
loc_63B06:
  JSR code_3FED3E                           ; $319B06 |
  JMP code_3FE456                           ; $319B09 |

loc_63B0C:
  LDA $0641                                 ; $319B0C |
  BEQ loc_63B24                             ; $319B0F |
  LDA $03D6                                 ; $319B11 |
  EOR #$08                                  ; $319B14 |
  STA $03D6                                 ; $319B16 |
  LDA $03BF                                 ; $319B19 |
  EOR #$40                                  ; $319B1C |
  STA $03BF                                 ; $319B1E |
  JMP code_3FE468                           ; $319B21 |

loc_63B24:
  PLA                                       ; $319B24 |
  PLA                                       ; $319B25 |
  LDA $063E                                 ; $319B26 |
  BEQ loc_63B6B                             ; $319B29 |
  JSR code_3FE5B6                           ; $319B2B |
  LDA $11                                   ; $319B2E |
  LSR                                       ; $319B30 |
  LSR                                       ; $319B31 |
  LSR                                       ; $319B32 |
  TAY                                       ; $319B33 |
  LDA $9B80,y                               ; $319B34 |
  STA $062C                                 ; $319B37 |
loc_63B3A:
  JSR code_31997D                           ; $319B3A |
  LDA $062C                                 ; $319B3D |
  STA $ED                                   ; $319B40 |
  LDA #$00                                  ; $319B42 |
  STA $EC                                   ; $319B44 |
  STA $EB                                   ; $319B46 |
  LDY $063D                                 ; $319B48 |
  LDA $9B82,y                               ; $319B4B |
  STA $08                                   ; $319B4E |
  LDA $9B8A,y                               ; $319B50 |
  STA $09                                   ; $319B53 |
  LDA #$02                                  ; $319B55 |
  STA $EE                                   ; $319B57 |
  JSR code_3FEC11                           ; $319B59 |
  DEC $063E                                 ; $319B5C |
  BNE loc_63B3A                             ; $319B5F |
  LDA #$01                                  ; $319B61 |
  STA $063E                                 ; $319B63 |
  LDA $05FE                                 ; $319B66 |
  BNE loc_63B3A                             ; $319B69 |
loc_63B6B:
  LDA #$1E                                  ; $319B6B |
  STA $062C                                 ; $319B6D |
  LDY $063D                                 ; $319B70 |
  LDA $9B92,y                               ; $319B73 |
  STA $08                                   ; $319B76 |
  LDA $9B9A,y                               ; $319B78 |
  STA $09                                   ; $319B7B |
  JMP ($0008)                               ; $319B7D |

  db $FE, $02, $A2, $B2, $C2, $D2, $E2, $F2 ; $319B80 |
  db $02, $12, $9B, $9B, $9B, $9B, $9B, $9B ; $319B88 |
  db $9C, $9C, $4A, $DD, $D8, $91, $48, $D0 ; $319B90 |
  db $63, $83, $80, $8A, $95, $90, $87, $93 ; $319B98 |
  db $83, $8D, $10, $07, $10, $F9, $F0, $07 ; $319BA0 |
  db $F0, $F9, $F0, $14, $10, $14, $F8, $F6 ; $319BA8 |
  db $08, $F6, $0E, $05, $0E, $FB, $F2, $05 ; $319BB0 |
  db $F2, $FB, $F8, $10, $08, $10, $F8, $F0 ; $319BB8 |
  db $08, $F0, $0C, $05, $0C, $FB, $F4, $05 ; $319BC0 |
  db $F4, $FB, $F6, $10, $0A, $10, $F8, $F0 ; $319BC8 |
  db $08, $F0, $0C, $05, $0C, $FB, $F4, $05 ; $319BD0 |
  db $F4, $FB, $F6, $10, $0A, $10, $F8, $F0 ; $319BD8 |
  db $08, $F0, $0C, $05, $0C, $FB, $F4, $05 ; $319BE0 |
  db $F4, $FB, $F6, $10, $0A, $10, $F8, $F0 ; $319BE8 |
  db $08, $F0, $0C, $05, $0C, $FB, $F4, $05 ; $319BF0 |
  db $F4, $FB, $F6, $0F, $0A, $0F, $F8, $F0 ; $319BF8 |
  db $08, $F0, $0C, $05, $0C, $FB, $F4, $05 ; $319C00 |
  db $F4, $FB, $F6, $0F, $0A, $0F, $F8, $F0 ; $319C08 |
  db $08, $F0, $0C, $08, $0C, $F8, $F4, $08 ; $319C10 |
  db $F4, $F8, $F4, $14, $0C, $14, $F8, $E8 ; $319C18 |
  db $08, $E8                               ; $319C20 |

code_319C22:
  LDA $03ED                                 ; $319C22 |
  BMI loc_63C28                             ; $319C25 |
  RTS                                       ; $319C27 |

loc_63C28:
  JMP code_3FE456                           ; $319C28 |

code_319C2B:
  SEC                                       ; $319C2B |
  LDA $0486                                 ; $319C2C |
  SBC $048E                                 ; $319C2F |
  BCS loc_63C38                             ; $319C32 |
  EOR #$FF                                  ; $319C34 |
  ADC #$01                                  ; $319C36 |
loc_63C38:
  STA $062C                                 ; $319C38 |
  RTS                                       ; $319C3B |

code_319C3C:
  LSR $01                                   ; $319C3C |
  ROR $00                                   ; $319C3E |
  RTS                                       ; $319C40 |

code_319C41:
  LSR $01                                   ; $319C41 |
  ROR $00                                   ; $319C43 |
  LDA $01                                   ; $319C45 |
  STA $05D1                                 ; $319C47 |
  LDA $00                                   ; $319C4A |
  STA $05BA                                 ; $319C4C |
  LSR $01                                   ; $319C4F |
  ROR $00                                   ; $319C51 |
  CLC                                       ; $319C53 |
  LDA $00                                   ; $319C54 |
  ADC $05BA                                 ; $319C56 |
  STA $00                                   ; $319C59 |
  LDA $01                                   ; $319C5B |
  ADC $05D1                                 ; $319C5D |
  STA $01                                   ; $319C60 |
  RTS                                       ; $319C62 |

code_319C63:
  LDA $02                                   ; $319C63 |
  STA $05BA                                 ; $319C65 |
  LDA $03                                   ; $319C68 |
  STA $05D1                                 ; $319C6A |
  LDA #$00                                  ; $319C6D |
  STA $02                                   ; $319C6F |
  LDA #$03                                  ; $319C71 |
  STA $03                                   ; $319C73 |
  JSR code_3ECC70                           ; $319C75 |
  LDA $04                                   ; $319C78 |
  CLC                                       ; $319C7A |
  ADC $04                                   ; $319C7B |
  STA $00                                   ; $319C7D |
  LDA $05                                   ; $319C7F |
  ADC $05                                   ; $319C81 |
  STA $01                                   ; $319C83 |
  LDA $05BA                                 ; $319C85 |
  STA $02                                   ; $319C88 |
  LDA $05D1                                 ; $319C8A |
  STA $03                                   ; $319C8D |
  RTS                                       ; $319C8F |

  LDA $02                                   ; $319C90 |
  STA $05BA                                 ; $319C92 |
  LDA $03                                   ; $319C95 |
  STA $05D1                                 ; $319C97 |
  LDA #$00                                  ; $319C9A |
  STA $02                                   ; $319C9C |
  LDA #$05                                  ; $319C9E |
  STA $03                                   ; $319CA0 |
  JSR code_3ECC70                           ; $319CA2 |
  LDA $04                                   ; $319CA5 |
  STA $00                                   ; $319CA7 |
  LDA $05                                   ; $319CA9 |
  STA $01                                   ; $319CAB |
  LDA $05BA                                 ; $319CAD |
  STA $02                                   ; $319CB0 |
  LDA $05D1                                 ; $319CB2 |
  STA $03                                   ; $319CB5 |
  RTS                                       ; $319CB7 |

code_319CB8:
  LDA $02                                   ; $319CB8 |
  STA $05BA                                 ; $319CBA |
  LDA $03                                   ; $319CBD |
  STA $05D1                                 ; $319CBF |
  LDA #$00                                  ; $319CC2 |
  STA $02                                   ; $319CC4 |
  LDA #$05                                  ; $319CC6 |
  STA $03                                   ; $319CC8 |
  JSR code_3ECC70                           ; $319CCA |
  LDA $04                                   ; $319CCD |
  ASL                                       ; $319CCF |
  STA $00                                   ; $319CD0 |
  ROL $05                                   ; $319CD2 |
  LDA $05                                   ; $319CD4 |
  STA $01                                   ; $319CD6 |
  LDA $05BA                                 ; $319CD8 |
  STA $02                                   ; $319CDB |
  LDA $05D1                                 ; $319CDD |
  STA $03                                   ; $319CE0 |
  RTS                                       ; $319CE2 |

code_319CE3:
  LDA $02                                   ; $319CE3 |
  STA $05BA                                 ; $319CE5 |
  LDA $03                                   ; $319CE8 |
  STA $05D1                                 ; $319CEA |
  LDA #$00                                  ; $319CED |
  STA $02                                   ; $319CEF |
  LDA #$05                                  ; $319CF1 |
  STA $03                                   ; $319CF3 |
  JSR code_3ECC70                           ; $319CF5 |
  ASL $04                                   ; $319CF8 |
  ROL $05                                   ; $319CFA |
  LDA $04                                   ; $319CFC |
  ASL                                       ; $319CFE |
  STA $00                                   ; $319CFF |
  ROL $05                                   ; $319D01 |
  LDA $05                                   ; $319D03 |
  STA $01                                   ; $319D05 |
  LDA $05BA                                 ; $319D07 |
  STA $02                                   ; $319D0A |
  LDA $05D1                                 ; $319D0C |
  STA $03                                   ; $319D0F |
  RTS                                       ; $319D11 |

code_319D12:
  LDA $01                                   ; $319D12 |
  STA $062C                                 ; $319D14 |
  LDA $02                                   ; $319D17 |
  STA $05BA                                 ; $319D19 |
  LDA $03                                   ; $319D1C |
  STA $05D1                                 ; $319D1E |
  LDA #$00                                  ; $319D21 |
  STA $02                                   ; $319D23 |
  LDA #$05                                  ; $319D25 |
  STA $03                                   ; $319D27 |
  JSR code_3ECC70                           ; $319D29 |
  CLC                                       ; $319D2C |
  LDA $04                                   ; $319D2D |
  STA $00                                   ; $319D2F |
  LDA $05                                   ; $319D31 |
  ADC $062C                                 ; $319D33 |
  STA $01                                   ; $319D36 |
  LDA $05BA                                 ; $319D38 |
  STA $02                                   ; $319D3B |
  LDA $05D1                                 ; $319D3D |
  STA $03                                   ; $319D40 |
  RTS                                       ; $319D42 |

  db $90, $99, $B2, $9C, $98, $9F, $95, $9B ; $319D43 |
  db $7F, $80, $4D, $DF, $4A, $01, $0D, $42 ; $319D4B |

  JSR code_3FEBD1                           ; $319D53 |
  LDA #$08                                  ; $319D56 |
  STA $03CE,x                               ; $319D58 |
  LDA #$00                                  ; $319D5B |
  STA $060D,x                               ; $319D5D |
  STA $0624,x                               ; $319D60 |
code_319D63:
  JSR code_3FEA6A                           ; $319D63 |
  LDY #$03                                  ; $319D66 |
  JSR code_3FEE9A                           ; $319D68 |
  LDA #$00                                  ; $319D6B |
  STA $ED                                   ; $319D6D |
  STA $EB                                   ; $319D6F |
  JSR code_3FE4D1                           ; $319D71 |
  JMP code_319D63                           ; $319D74 |

  db $4D, $DF, $4A, $5A, $0D, $64           ; $319D77 |

  JSR code_3FEBD1                           ; $319D7D |
  LDA #$01                                  ; $319D80 |
  STA $03B7,x                               ; $319D82 |
loc_63D85:
  LDA #$00                                  ; $319D85 |
  STA $056C,x                               ; $319D87 |
  JSR code_3FE468                           ; $319D8A |
  LDY $05B1,x                               ; $319D8D |
  LDA $056C,x                               ; $319D90 |
  CMP #$14                                  ; $319D93 |
  BNE loc_63D9A                             ; $319D95 |
  STA $056C,y                               ; $319D97 |
loc_63D9A:
  LDA #$03                                  ; $319D9A |
  JSR code_3FE8FD                           ; $319D9C |
  LDA $03E5,y                               ; $319D9F |
  BPL loc_63D85                             ; $319DA2 |
  JMP code_3FE456                           ; $319DA4 |

loc_63DA7:
  JMP code_3FE456                           ; $319DA7 |

  db $72, $BD, $5E, $2A, $03, $00           ; $319DAA |

  JSR code_3FEBD1                           ; $319DB0 |
  LDA $0696                                 ; $319DB3 |
  BNE loc_63DA7                             ; $319DB6 |
  LDA #$01                                  ; $319DB8 |
  STA $03B7,x                               ; $319DBA |
  LDA #$14                                  ; $319DBD |
  STA $05B1,x                               ; $319DBF |
loc_63DC2:
  JSR code_319EEF                           ; $319DC2 |
  JSR code_3FE468                           ; $319DC5 |
  DEC $05B1,x                               ; $319DC8 |
  BNE loc_63DC2                             ; $319DCB |
  LDA #$39                                  ; $319DCD |
  STA $DC                                   ; $319DCF |
  LDA #$50                                  ; $319DD1 |
  STA $05B1,x                               ; $319DD3 |
loc_63DD6:
  JSR code_319EEF                           ; $319DD6 |
  JSR code_3FE468                           ; $319DD9 |
  DEC $05B1,x                               ; $319DDC |
  BNE loc_63DD6                             ; $319DDF |
  LDA #$40                                  ; $319DE1 |
  STA $03B7,x                               ; $319DE3 |
  LDA #$08                                  ; $319DE6 |
  STA $03CE,x                               ; $319DE8 |
  LDA #$00                                  ; $319DEB |
  STA $060D,x                               ; $319DED |
  STA $0624,x                               ; $319DF0 |
loc_63DF3:
  JSR code_319EEF                           ; $319DF3 |
  JSR code_3FE468                           ; $319DF6 |
  LDY #$03                                  ; $319DF9 |
  JSR code_3FEE9A                           ; $319DFB |
  JSR code_3FE4D1                           ; $319DFE |
  LDA $04CB,x                               ; $319E01 |
  CMP #$50                                  ; $319E04 |
  BCC loc_63DF3                             ; $319E06 |
  LDA $060D,x                               ; $319E08 |
  STA $05DF,x                               ; $319E0B |
  LDA $0624,x                               ; $319E0E |
  STA $05F6,x                               ; $319E11 |
loc_63E14:
  JSR code_319EEF                           ; $319E14 |
  JSR code_3FE468                           ; $319E17 |
  LDA #$00                                  ; $319E1A |
  STA $ED                                   ; $319E1C |
  STA $EB                                   ; $319E1E |
  LDA #$FC                                  ; $319E20 |
  STA $08                                   ; $319E22 |
  LDA #$9E                                  ; $319E24 |
  STA $09                                   ; $319E26 |
  JSR code_3FEC06                           ; $319E28 |
  LDA $11                                   ; $319E2B |
  BEQ loc_63E14                             ; $319E2D |
  LDA #$37                                  ; $319E2F |
  STA $DC                                   ; $319E31 |
  LDY #$73                                  ; $319E33 |
  JSR code_3FE522                           ; $319E35 |
  LDA #$08                                  ; $319E38 |
  STA $05B1,x                               ; $319E3A |
loc_63E3D:
  JSR code_319EEF                           ; $319E3D |
  JSR code_3FE468                           ; $319E40 |
  DEC $05B1,x                               ; $319E43 |
  BNE loc_63E3D                             ; $319E46 |
  LDY #$75                                  ; $319E48 |
  JSR code_3FE522                           ; $319E4A |
  LDA #$3C                                  ; $319E4D |
  STA $05B1,x                               ; $319E4F |
loc_63E52:
  JSR code_319EEF                           ; $319E52 |
  JSR code_3FE468                           ; $319E55 |
  DEC $05B1,x                               ; $319E58 |
  BNE loc_63E52                             ; $319E5B |
  LDY #$8C                                  ; $319E5D |
  JSR code_3FE5AB                           ; $319E5F |
  LDY $8F                                   ; $319E62 |
  TXA                                       ; $319E64 |
  STA $0624,x                               ; $319E65 |
  LDA #$3B ; '                              ; $319E68 |
  JSR code_3FE8FD                           ; $319E6A |
  LDX $8F                                   ; $319E6D |
  LDY #$76                                  ; $319E6F |
  JSR code_3FE522                           ; $319E71 |
  LDA #$00                                  ; $319E74 |
  STA $03B7,x                               ; $319E76 |
  LDA #$AE                                  ; $319E79 |
  STA $05DF,x                               ; $319E7B |
  LDA #$FB                                  ; $319E7E |
  STA $05F6,x                               ; $319E80 |
loc_63E83:
  JSR code_319EEF                           ; $319E83 |
  JSR code_3FE468                           ; $319E86 |
  LDA #$FC                                  ; $319E89 |
  STA $08                                   ; $319E8B |
  LDA #$9E                                  ; $319E8D |
  STA $09                                   ; $319E8F |
  LDA #$FF                                  ; $319E91 |
  STA $ED                                   ; $319E93 |
  LDA #$00                                  ; $319E95 |
  STA $EB                                   ; $319E97 |
  JSR code_3FEC06                           ; $319E99 |
  LDA $11                                   ; $319E9C |
  BEQ loc_63E83                             ; $319E9E |
  LDY #$75                                  ; $319EA0 |
  JSR code_3FE522                           ; $319EA2 |
  LDA #$40                                  ; $319EA5 |
  STA $03B7,x                               ; $319EA7 |
  LDA #$1E                                  ; $319EAA |
  STA $05B1,x                               ; $319EAC |
loc_63EAF:
  JSR code_319EEF                           ; $319EAF |
  JSR code_3FE468                           ; $319EB2 |
  DEC $05B1,x                               ; $319EB5 |
  BNE loc_63EAF                             ; $319EB8 |
  LDA #$3A                                  ; $319EBA |
  STA $DC                                   ; $319EBC |
  LDY #$73                                  ; $319EBE |
  JSR code_3FE522                           ; $319EC0 |
  LDA #$08                                  ; $319EC3 |
  STA $05B1,x                               ; $319EC5 |
loc_63EC8:
  JSR code_319EEF                           ; $319EC8 |
  JSR code_3FE468                           ; $319ECB |
  DEC $05B1,x                               ; $319ECE |
  BNE loc_63EC8                             ; $319ED1 |
  LDY #$72                                  ; $319ED3 |
  JSR code_3FE522                           ; $319ED5 |
  LDA #$00                                  ; $319ED8 |
  STA $03CE,x                               ; $319EDA |
  LDA #$06                                  ; $319EDD |
  STA $DC                                   ; $319EDF |
code_319EE1:
  JSR code_319EEF                           ; $319EE1 |
  JSR code_3FE9D3                           ; $319EE4 |
  LDY #$08                                  ; $319EE7 |
  JSR code_3FE60E                           ; $319EE9 |
  JMP code_319EE1                           ; $319EEC |

code_319EEF:
  LDA #$00                                  ; $319EEF |
  STA $99                                   ; $319EF1 |
  STA $40                                   ; $319EF3 |
  STA $9A                                   ; $319EF5 |
  STA $42                                   ; $319EF7 |
  STA $44                                   ; $319EF9 |
  RTS                                       ; $319EFB |

  db $08, $06, $08, $FA, $F8, $06, $F8, $FA ; $319EFC |
  db $F8, $0C, $08, $0C, $F8, $F4, $08, $F4 ; $319F04 |
  db $72, $BD, $5E, $2A, $03, $00           ; $319F0C |

  LDA #$01                                  ; $319F12 |
  STA $03B7,x                               ; $319F14 |
  LDA #$00                                  ; $319F17 |
  LDY #$05                                  ; $319F19 |
loc_63F1B:
  STA $0643,y                               ; $319F1B |
  DEY                                       ; $319F1E |
  BPL loc_63F1B                             ; $319F1F |
  JMP code_3FE456                           ; $319F21 |

  db $86, $C1, $68, $58, $03, $00           ; $319F24 |

  JSR code_3FEBD1                           ; $319F2A |
  LDA #$01                                  ; $319F2D |
  STA $03B7,x                               ; $319F2F |
  LDA $04CB,x                               ; $319F32 |
  AND #$70                                  ; $319F35 |
  LSR                                       ; $319F37 |
  LSR                                       ; $319F38 |
  LSR                                       ; $319F39 |
  LSR                                       ; $319F3A |
  TAY                                       ; $319F3B |
  LDA $9FA8,y                               ; $319F3C |
  STA $05B1,x                               ; $319F3F |
  LDA $9FAD,y                               ; $319F42 |
  STA $05C8,x                               ; $319F45 |
  LDA $04CB,x                               ; $319F48 |
  AND #$80                                  ; $319F4B |
  ASL                                       ; $319F4D |
  ROL                                       ; $319F4E |
  TAY                                       ; $319F4F |
  LDA $9FB2,y                               ; $319F50 |
  STA $00                                   ; $319F53 |
  LDA $9FB3,y                               ; $319F55 |
  STA $01                                   ; $319F58 |
  LDA $04CB,x                               ; $319F5A |
  AND #$0F                                  ; $319F5D |
  TAY                                       ; $319F5F |
  LDA ($00),y                               ; $319F60 |
  STA $04CB,x                               ; $319F62 |
loc_63F65:
  JSR code_3FEA6A                           ; $319F65 |
  DEC $05B1,x                               ; $319F68 |
  BNE loc_63F65                             ; $319F6B |
  DEC $05C8,x                               ; $319F6D |
  BPL loc_63F65                             ; $319F70 |
  LDA #$50                                  ; $319F72 |
  STA $0583,x                               ; $319F74 |
  LDY #$86                                  ; $319F77 |
  JSR code_3FE522                           ; $319F79 |
  LDA #$00                                  ; $319F7C |
  STA $03B7,x                               ; $319F7E |
  LDA #$3B ; '                              ; $319F81 |
  STA $DC                                   ; $319F83 |
  LDA #$78                                  ; $319F85 |
  STA $05B1,x                               ; $319F87 |
loc_63F8A:
  JSR code_3FEA6A                           ; $319F8A |
  DEC $05B1,x                               ; $319F8D |
  BNE loc_63F8A                             ; $319F90 |
  LDA #$00                                  ; $319F92 |
  STA $0583,x                               ; $319F94 |
  LDA #$01                                  ; $319F97 |
  STA $03B7,x                               ; $319F99 |
  LDA #$00                                  ; $319F9C |
  STA $05C8,x                               ; $319F9E |
  LDA #$B4                                  ; $319FA1 |
  STA $05B1,x                               ; $319FA3 |
  BNE loc_63F65                             ; $319FA6 |

  db $3C, $78, $B4, $F0, $2C, $00, $00, $00 ; $319FA8 |
  db $00, $01, $B4, $9F, $98, $68, $48, $88 ; $319FB0 |
  db $B8, $68, $98, $38, $68, $98, $68, $80 ; $319FB8 |
  db $60, $80, $58, $68, $00, $00, $00, $00 ; $319FC0 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $319FC8 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $319FD0 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $319FD8 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $319FE0 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $319FE8 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $319FF0 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $319FF8 |
