; some code, mostly data

bank $34
org $A000

  JMP $806C                                 ; $34A000 |

  JMP $80FE                                 ; $348003 |

  LDA #$00                                  ; $348006 |
  STA $C2                                   ; $348008 |
  LDY #$08                                  ; $34800A |
loc_6800C:
  ASL $C2                                   ; $34800C |
  ROL $C1                                   ; $34800E |
  BCC loc_6801F                             ; $348010 |
  CLC                                       ; $348012 |
  LDA $C2                                   ; $348013 |
  ADC $C4                                   ; $348015 |
  STA $C2                                   ; $348017 |
  LDA $C1                                   ; $348019 |
  ADC #$00                                  ; $34801B |
  STA $C1                                   ; $34801D |
loc_6801F:
  DEY                                       ; $34801F |
  BNE loc_6800C                             ; $348020 |
  RTS                                       ; $348022 |

  ASL                                       ; $348023 |
  TAY                                       ; $348024 |
  INY                                       ; $348025 |
  PLA                                       ; $348026 |
  STA $C1                                   ; $348027 |
  PLA                                       ; $348029 |
  STA $C2                                   ; $34802A |
  LDA ($C1),y                               ; $34802C |
  PHA                                       ; $34802E |
  INY                                       ; $34802F |
  LDA ($C1),y                               ; $348030 |
  STA $C2                                   ; $348032 |
  PLA                                       ; $348034 |
  STA $C1                                   ; $348035 |
  JMP ($00C1)                               ; $348037 |

  STY $C1                                   ; $34803A |
  LDY #$00                                  ; $34803C |
  CMP #$C0                                  ; $34803E |
  BCS loc_68047                             ; $348040 |
  STA $C2                                   ; $348042 |
  LDA ($C1),y                               ; $348044 |
  RTS                                       ; $348046 |

loc_68047:
  SEC                                       ; $348047 |
  SBC #$20                                  ; $348048 |
  STA $C2                                   ; $34804A |
  LDA #$07                                  ; $34804C |
  STA $8000                                 ; $34804E |
  LDA #$36                                  ; $348051 |
  STA $8001                                 ; $348053 |
  LDA ($C1),y                               ; $348056 |
  PHA                                       ; $348058 |
  LDA #$07                                  ; $348059 |
  STA $8000                                 ; $34805B |
  LDA #$35                                  ; $34805E |
  STA $8001                                 ; $348060 |
  LDA #$20                                  ; $348063 |
  CLC                                       ; $348065 |
  ADC $C2                                   ; $348066 |
  STA $C2                                   ; $348068 |
  PLA                                       ; $34806A |
  RTS                                       ; $34806B |

  LDA $C0                                   ; $34806C |
  LSR                                       ; $34806E |
  BCS locret_680D7                          ; $34806F |
  LDA $D0                                   ; $348071 |
  ORA $D1                                   ; $348073 |
  BEQ loc_6807A                             ; $348075 |
  JSR $8251                                 ; $348077 |
loc_6807A:
  CLC                                       ; $34807A |
  LDA $CA                                   ; $34807B |
  ADC $C8                                   ; $34807D |
  STA $C8                                   ; $34807F |
  LDA $C9                                   ; $348081 |
  ADC #$00                                  ; $348083 |
  STA $C7                                   ; $348085 |
  LDA $CF                                   ; $348087 |
  PHA                                       ; $348089 |
  LDX #$03                                  ; $34808A |
loc_6808C:
  LSR $CF                                   ; $34808C |
  BCC loc_68099                             ; $34808E |
  LDA $CF                                   ; $348090 |
  ORA #$80                                  ; $348092 |
  STA $CF                                   ; $348094 |
  JSR $82DD                                 ; $348096 |
loc_68099:
  LDA $C0                                   ; $348099 |
  AND #$02                                  ; $34809B |
  BNE loc_680A6                             ; $34809D |
  TXA                                       ; $34809F |
  PHA                                       ; $3480A0 |
  JSR $8392                                 ; $3480A1 |
  PLA                                       ; $3480A4 |
  TAX                                       ; $3480A5 |
loc_680A6:
  DEX                                       ; $3480A6 |
  BPL loc_6808C                             ; $3480A7 |
  PLA                                       ; $3480A9 |
  STA $CF                                   ; $3480AA |
  LSR $C0                                   ; $3480AC |
  ASL $C0                                   ; $3480AE |
  LDA $CC                                   ; $3480B0 |
  AND #$7F                                  ; $3480B2 |
  BEQ locret_680D7                          ; $3480B4 |
  LDY #$00                                  ; $3480B6 |
  STY $C1                                   ; $3480B8 |
  LDY #$04                                  ; $3480BA |
loc_680BC:
  ASL                                       ; $3480BC |
  ROL $C1                                   ; $3480BD |
  DEY                                       ; $3480BF |
  BNE loc_680BC                             ; $3480C0 |
  CLC                                       ; $3480C2 |
  ADC $C0                                   ; $3480C3 |
  STA $C0                                   ; $3480C5 |
  LDA $C1                                   ; $3480C7 |
  ADC $CD                                   ; $3480C9 |
  BCC loc_680D5                             ; $3480CB |
  LDA $CC                                   ; $3480CD |
  AND #$80                                  ; $3480CF |
  STA $CC                                   ; $3480D1 |
  LDA #$FF                                  ; $3480D3 |
loc_680D5:
  STA $CD                                   ; $3480D5 |
locret_680D7:
  RTS                                       ; $3480D7 |

  TXA                                       ; $3480D8 |
  AND #$03                                  ; $3480D9 |
  EOR #$03                                  ; $3480DB |
  ASL                                       ; $3480DD |
  ASL                                       ; $3480DE |
  TAY                                       ; $3480DF |
  LDA #$30                                  ; $3480E0 |
  CPY #$08                                  ; $3480E2 |
  BNE loc_680E8                             ; $3480E4 |
  LDA #$00                                  ; $3480E6 |
loc_680E8:
  STA $4000,y                               ; $3480E8 |
  RTS                                       ; $3480EB |

  PHA                                       ; $3480EC |
  TXA                                       ; $3480ED |
  AND #$03                                  ; $3480EE |
  EOR #$03                                  ; $3480F0 |
  ASL                                       ; $3480F2 |
  ASL                                       ; $3480F3 |
  STY $C4                                   ; $3480F4 |
  ORA $C4                                   ; $3480F6 |
  TAY                                       ; $3480F8 |
  PLA                                       ; $3480F9 |
  STA $4000,y                               ; $3480FA |
  RTS                                       ; $3480FD |

  INC $C0                                   ; $3480FE |
  JSR $8106                                 ; $348100 |
  DEC $C0                                   ; $348103 |
  RTS                                       ; $348105 |

  CMP #$F0                                  ; $348106 |
  BCC loc_6810D                             ; $348108 |
  JMP $81AD                                 ; $34810A |

loc_6810D:
  CMP $8A40                                 ; $34810D |
  BCC loc_68118                             ; $348110 |
  SEC                                       ; $348112 |
  SBC $8A40                                 ; $348113 |
  BCS loc_6810D                             ; $348116 |
loc_68118:
  ASL                                       ; $348118 |
  TAX                                       ; $348119 |
  LDY $8A44,x                               ; $34811A |
  TYA                                       ; $34811D |
  ORA $8A43,x                               ; $34811E |
  BEQ locret_6816D                          ; $348121 |
  LDA $8A43,x                               ; $348123 |
  JSR $803A                                 ; $348126 |
  TAY                                       ; $348129 |
  BEQ loc_6816E                             ; $34812A |
  LDY #$00                                  ; $34812C |
  INX                                       ; $34812E |
  STA $C4                                   ; $34812F |
  AND #$7F                                  ; $348131 |
  CMP $CE                                   ; $348133 |
  BCC locret_6816D                          ; $348135 |
  STA $CE                                   ; $348137 |
  BNE loc_68145                             ; $348139 |
  LDA $D6                                   ; $34813B |
  BPL loc_68145                             ; $34813D |
  LDA $C4                                   ; $34813F |
  BMI loc_68145                             ; $348141 |
  STY $D7                                   ; $348143 |
loc_68145:
  STY $D6                                   ; $348145 |
  ASL $C4                                   ; $348147 |
  ROR $D6                                   ; $348149 |
  BPL loc_6814F                             ; $34814B |
  STX $D7                                   ; $34814D |
loc_6814F:
  LDX $C2                                   ; $34814F |
  INC $C1                                   ; $348151 |
  LDA $C1                                   ; $348153 |
  BNE loc_68158                             ; $348155 |
  INX                                       ; $348157 |
loc_68158:
  STA $D0                                   ; $348158 |
  STX $D1                                   ; $34815A |
  TYA                                       ; $34815C |
  STA $D2                                   ; $34815D |
  STA $D3                                   ; $34815F |
  STA $D4                                   ; $348161 |
  STA $D5                                   ; $348163 |
  LDY #$27                                  ; $348165 |
loc_68167:
  STA $0700,y                               ; $348167 |
  DEY                                       ; $34816A |
  BPL loc_68167                             ; $34816B |
locret_6816D:
  RTS                                       ; $34816D |

loc_6816E:
  LDX #$01                                  ; $34816E |
  STX $C9                                   ; $348170 |
  LDX #$99                                  ; $348172 |
  STX $CA                                   ; $348174 |
  STA $C8                                   ; $348176 |
  STA $CB                                   ; $348178 |
  STA $CC                                   ; $34817A |
  STA $CD                                   ; $34817C |
  LDX #$53                                  ; $34817E |
loc_68180:
  STA $0728,x                               ; $348180 |
  DEX                                       ; $348183 |
  BPL loc_68180                             ; $348184 |
  LDX #$03                                  ; $348186 |
loc_68188:
  INC $C1                                   ; $348188 |
  BNE loc_6818E                             ; $34818A |
  INC $C2                                   ; $34818C |
loc_6818E:
  LDY $C1                                   ; $34818E |
  LDA $C2                                   ; $348190 |
  JSR $803A                                 ; $348192 |
  STA $0754,x                               ; $348195 |
  INC $C1                                   ; $348198 |
  BNE loc_6819E                             ; $34819A |
  INC $C2                                   ; $34819C |
loc_6819E:
  LDY $C1                                   ; $34819E |
  LDA $C2                                   ; $3481A0 |
  JSR $803A                                 ; $3481A2 |
  STA $0750,x                               ; $3481A5 |
  DEX                                       ; $3481A8 |
  BPL loc_68188                             ; $3481A9 |
  BMI loc_681F0                             ; $3481AB |
  STY $C3                                   ; $3481AD |
  AND #$07                                  ; $3481AF |
  JSR $8023                                 ; $3481B1 |

  dw $81C4                                  ; $3481B4 |
  dw $81C7                                  ; $3481B6 |
  dw $81E3                                  ; $3481B8 |
  dw $821D                                  ; $3481BA |
  dw $8225                                  ; $3481BC |
  dw $822C                                  ; $3481BE |
  dw $8233                                  ; $3481C0 |
  dw $8249                                  ; $3481C2 |

  JSR $81E3                                 ; $3481C4 |
  LDA #$00                                  ; $3481C7 |
  STA $CE                                   ; $3481C9 |
  STA $D0                                   ; $3481CB |
  STA $D1                                   ; $3481CD |
  STA $D7                                   ; $3481CF |
  STA $D8                                   ; $3481D1 |
  LDA $CF                                   ; $3481D3 |
  BEQ locret_681E2                          ; $3481D5 |
  EOR #$0F                                  ; $3481D7 |
  STA $CF                                   ; $3481D9 |
  JSR $81F0                                 ; $3481DB |
  LDA #$00                                  ; $3481DE |
  STA $CF                                   ; $3481E0 |
locret_681E2:
  RTS                                       ; $3481E2 |

  LDA #$00                                  ; $3481E3 |
  LDX #$03                                  ; $3481E5 |
loc_681E7:
  STA $0754,x                               ; $3481E7 |
  STA $0750,x                               ; $3481EA |
  DEX                                       ; $3481ED |
  BPL loc_681E7                             ; $3481EE |
loc_681F0:
  LDA $CF                                   ; $3481F0 |
  PHA                                       ; $3481F2 |
  LDX #$03                                  ; $3481F3 |
loc_681F5:
  LSR $CF                                   ; $3481F5 |
  BCS loc_68209                             ; $3481F7 |
  JSR $80D8                                 ; $3481F9 |
  LDA $0754,x                               ; $3481FC |
  ORA $0750,x                               ; $3481FF |
  BEQ loc_68209                             ; $348202 |
  LDA #$FF                                  ; $348204 |
  STA $077C,x                               ; $348206 |
loc_68209:
  DEX                                       ; $348209 |
  BPL loc_681F5                             ; $34820A |
  PLA                                       ; $34820C |
  STA $CF                                   ; $34820D |
  LDA #$08                                  ; $34820F |
  STA {APU_PULSE1_SWEEP}                    ; $348211 |
  STA {APU_PULSE2_SWEEP}                    ; $348214 |
  LDA #$0F                                  ; $348217 |
  STA {APU_STATUS}                          ; $348219 |
  RTS                                       ; $34821C |

  LDA $C0                                   ; $34821D |
  ORA #$02                                  ; $34821F |
  STA $C0                                   ; $348221 |
  BNE loc_681F0                             ; $348223 |
  LDA $C0                                   ; $348225 |
  AND #$FD                                  ; $348227 |
  STA $C0                                   ; $348229 |
  RTS                                       ; $34822B |

  ASL $C3                                   ; $34822C |
  BEQ loc_68233                             ; $34822E |
  SEC                                       ; $348230 |
  ROR $C3                                   ; $348231 |
loc_68233:
  LDA $C0                                   ; $348233 |
  AND #$0F                                  ; $348235 |
  STA $C0                                   ; $348237 |
  LDY $C3                                   ; $348239 |
  STY $CC                                   ; $34823B |
  BEQ loc_68246                             ; $34823D |
  LDY #$FF                                  ; $34823F |
  CPY $CD                                   ; $348241 |
  BNE locret_68248                          ; $348243 |
  INY                                       ; $348245 |
loc_68246:
  STY $CD                                   ; $348246 |
locret_68248:
  RTS                                       ; $348248 |

  LDA #$00                                  ; $348249 |
  SEC                                       ; $34824B |
  SBC $C3                                   ; $34824C |
  STA $D8                                   ; $34824E |
  RTS                                       ; $348250 |

  LDA $D3                                   ; $348251 |
  BEQ loc_6825A                             ; $348253 |
  DEC $D3                                   ; $348255 |
  DEC $D5                                   ; $348257 |
  RTS                                       ; $348259 |

loc_6825A:
  JSR $8385                                 ; $34825A |
  STA $C4                                   ; $34825D |
  ASL                                       ; $34825F |
  BCC loc_68272                             ; $348260 |
  STY $CE                                   ; $348262 |
  LDA $D7                                   ; $348264 |
  LSR                                       ; $348266 |
  BCC loc_6826F                             ; $348267 |
  JSR $8118                                 ; $348269 |
  JMP $825A                                 ; $34826C |

loc_6826F:
  JMP $81C7                                 ; $34826F |

loc_68272:
  LSR $C4                                   ; $348272 |
  BCC loc_682A5                             ; $348274 |
  JSR $8385                                 ; $348276 |
  ASL                                       ; $348279 |
  BEQ loc_68288                             ; $34827A |
  ASL $D6                                   ; $34827C |
  PHP                                       ; $34827E |
  CMP $D6                                   ; $34827F |
  BEQ loc_68295                             ; $348281 |
  PLP                                       ; $348283 |
  ROR $D6                                   ; $348284 |
  INC $D6                                   ; $348286 |
loc_68288:
  JSR $8385                                 ; $348288 |
  TAX                                       ; $34828B |
  JSR $8385                                 ; $34828C |
  STA $D0                                   ; $34828F |
  STX $D1                                   ; $348291 |
  BNE loc_6825A                             ; $348293 |
loc_68295:
  TYA                                       ; $348295 |
  PLP                                       ; $348296 |
  ROR                                       ; $348297 |
  STA $D6                                   ; $348298 |
  CLC                                       ; $34829A |
  LDA #$02                                  ; $34829B |
  ADC $D0                                   ; $34829D |
  STA $D0                                   ; $34829F |
  BCC loc_682A5                             ; $3482A1 |
  INC $D1                                   ; $3482A3 |
loc_682A5:
  LSR $C4                                   ; $3482A5 |
  BCC loc_682AE                             ; $3482A7 |
  JSR $8385                                 ; $3482A9 |
  STA $D4                                   ; $3482AC |
loc_682AE:
  LSR $C4                                   ; $3482AE |
  BCC loc_682B7                             ; $3482B0 |
  JSR $8385                                 ; $3482B2 |
  STA $D2                                   ; $3482B5 |
loc_682B7:
  JSR $8385                                 ; $3482B7 |
  STA $D3                                   ; $3482BA |
  STA $C1                                   ; $3482BC |
  LDA $D4                                   ; $3482BE |
  STA $C4                                   ; $3482C0 |
  JSR $8006                                 ; $3482C2 |
  LDY $C1                                   ; $3482C5 |
  INY                                       ; $3482C7 |
  STY $D5                                   ; $3482C8 |
  INC $C0                                   ; $3482CA |
  JSR $8385                                 ; $3482CC |
  PHA                                       ; $3482CF |
  EOR $CF                                   ; $3482D0 |
  BEQ loc_682D9                             ; $3482D2 |
  STA $CF                                   ; $3482D4 |
  JSR $81D3                                 ; $3482D6 |
loc_682D9:
  PLA                                       ; $3482D9 |
  STA $CF                                   ; $3482DA |
  RTS                                       ; $3482DC |

  LDY $0700,x                               ; $3482DD |
  BEQ loc_682E5                             ; $3482E0 |
  JSR $8683                                 ; $3482E2 |
loc_682E5:
  LDA $C0                                   ; $3482E5 |
  LSR                                       ; $3482E7 |
  BCS loc_68309                             ; $3482E8 |
  JSR $86B9                                 ; $3482EA |
  LDA $D3                                   ; $3482ED |
  BEQ locret_682F9                          ; $3482EF |
  CPX #$01                                  ; $3482F1 |
  BEQ loc_682FA                             ; $3482F3 |
  LDA $D5                                   ; $3482F5 |
  BEQ loc_682FF                             ; $3482F7 |
locret_682F9:
  RTS                                       ; $3482F9 |

loc_682FA:
  DEC $0710,x                               ; $3482FA |
  BNE locret_682F9                          ; $3482FD |
loc_682FF:
  LDA $0704,x                               ; $3482FF |
  AND #$04                                  ; $348302 |
  BNE locret_682F9                          ; $348304 |
  JMP $85A2                                 ; $348306 |

loc_68309:
  LDA #$00                                  ; $348309 |
  STA $C4                                   ; $34830B |
  JSR $8385                                 ; $34830D |
loc_68310:
  LSR                                       ; $348310 |
  BCC loc_6831F                             ; $348311 |
  PHA                                       ; $348313 |
  JSR $8385                                 ; $348314 |
  STA $C3                                   ; $348317 |
  LDA $C4                                   ; $348319 |
  JSR $8325                                 ; $34831B |
  PLA                                       ; $34831E |
loc_6831F:
  BEQ loc_68332                             ; $34831F |
  INC $C4                                   ; $348321 |
  BNE loc_68310                             ; $348323 |
  JSR $8023                                 ; $348325 |

  db $6E, $86, $AC, $86, $59, $86, $A6, $86 ; $348328 |
  db $A0, $86                               ; $348330 |

loc_68332:
  JSR $8385                                 ; $348332 |
  TAY                                       ; $348335 |
  BNE loc_68348                             ; $348336 |
  STA $0710,x                               ; $348338 |
  LDA $0704,x                               ; $34833B |
  AND #$F8                                  ; $34833E |
  ORA #$04                                  ; $348340 |
  STA $0704,x                               ; $348342 |
  JMP $80D8                                 ; $348345 |

loc_68348:
  LDA $0704,x                               ; $348348 |
  ORA #$20                                  ; $34834B |
  STA $0704,x                               ; $34834D |
  LDA $0718,x                               ; $348350 |
  ASL                                       ; $348353 |
  LDA #$54                                  ; $348354 |
  BCS loc_6835A                             ; $348356 |
  LDA #$0A                                  ; $348358 |
loc_6835A:
  STA $071C,x                               ; $34835A |
  TYA                                       ; $34835D |
  BPL loc_6836A                             ; $34835E |
  CPX #$01                                  ; $348360 |
  BNE loc_68367                             ; $348362 |
  JSR $85AD                                 ; $348364 |
loc_68367:
  JMP $8643                                 ; $348367 |

loc_6836A:
  JSR $85AD                                 ; $34836A |
  LDA #$FF                                  ; $34836D |
  STA $077C,x                               ; $34836F |
  DEY                                       ; $348372 |
  TXA                                       ; $348373 |
  BNE loc_6837E                             ; $348374 |
  STA $C3                                   ; $348376 |
  TYA                                       ; $348378 |
  EOR #$0F                                  ; $348379 |
  JMP $8635                                 ; $34837B |

loc_6837E:
  TYA                                       ; $34837E |
  CLC                                       ; $34837F |
  ADC $D2                                   ; $348380 |
  JMP $85DD                                 ; $348382 |

  LDY $D0                                   ; $348385 |
  LDA $D1                                   ; $348387 |
  INC $D0                                   ; $348389 |
  BNE loc_6838F                             ; $34838B |
  INC $D1                                   ; $34838D |
loc_6838F:
  JMP $803A                                 ; $34838F |

  TXA                                       ; $348392 |
  ORA #$28                                  ; $348393 |
  TAX                                       ; $348395 |
  LDA $0728,x                               ; $348396 |
  ORA $072C,x                               ; $348399 |
  BEQ locret_683CB                          ; $34839C |
  LDA $0738,x                               ; $34839E |
  BEQ loc_683CC                             ; $3483A1 |
  LDY $0700,x                               ; $3483A3 |
  BEQ loc_683AE                             ; $3483A6 |
  JSR $8683                                 ; $3483A8 |
  JSR $86B9                                 ; $3483AB |
loc_683AE:
  LDA $0740,x                               ; $3483AE |
  SEC                                       ; $3483B1 |
  SBC $C7                                   ; $3483B2 |
  STA $0740,x                               ; $3483B4 |
  BEQ loc_683BB                             ; $3483B7 |
  BCS loc_683BE                             ; $3483B9 |
loc_683BB:
  JSR $85A2                                 ; $3483BB |
loc_683BE:
  LDA $0738,x                               ; $3483BE |
  SEC                                       ; $3483C1 |
  SBC $C7                                   ; $3483C2 |
  STA $0738,x                               ; $3483C4 |
  BEQ loc_683CC                             ; $3483C7 |
  BCC loc_683CC                             ; $3483C9 |
locret_683CB:
  RTS                                       ; $3483CB |

loc_683CC:
  JSR $8591                                 ; $3483CC |
  CMP #$20                                  ; $3483CF |
  BCS loc_683D9                             ; $3483D1 |
  JSR $8496                                 ; $3483D3 |
  JMP $83CC                                 ; $3483D6 |

loc_683D9:
  PHA                                       ; $3483D9 |
  ROL                                       ; $3483DA |
  ROL                                       ; $3483DB |
  ROL                                       ; $3483DC |
  ROL                                       ; $3483DD |
  AND #$07                                  ; $3483DE |
  TAY                                       ; $3483E0 |
  DEY                                       ; $3483E1 |
  LDA $0730,x                               ; $3483E2 |
  ASL                                       ; $3483E5 |
  ASL                                       ; $3483E6 |
  BPL loc_683EE                             ; $3483E7 |
  LDA $891C,y                               ; $3483E9 |
  BNE loc_68405                             ; $3483EC |
loc_683EE:
  ASL                                       ; $3483EE |
  ASL                                       ; $3483EF |
  LDA $8923,y                               ; $3483F0 |
  BCC loc_68405                             ; $3483F3 |
  STA $C3                                   ; $3483F5 |
  LDA $0730,x                               ; $3483F7 |
  AND #$EF                                  ; $3483FA |
  STA $0730,x                               ; $3483FC |
  LDA $C3                                   ; $3483FF |
  LSR                                       ; $348401 |
  CLC                                       ; $348402 |
  ADC $C3                                   ; $348403 |
loc_68405:
  CLC                                       ; $348405 |
  ADC $0738,x                               ; $348406 |
  STA $0738,x                               ; $348409 |
  TAY                                       ; $34840C |
  PLA                                       ; $34840D |
  AND #$1F                                  ; $34840E |
  BNE loc_68418                             ; $348410 |
  JSR $85A2                                 ; $348412 |
  JMP $8490                                 ; $348415 |

loc_68418:
  PHA                                       ; $348418 |
  STY $C4                                   ; $348419 |
  LDA $073C,x                               ; $34841B |
  STA $C1                                   ; $34841E |
  JSR $8006                                 ; $348420 |
  LDA $C1                                   ; $348423 |
  BNE loc_68429                             ; $348425 |
  LDA #$01                                  ; $348427 |
loc_68429:
  STA $0740,x                               ; $348429 |
  PLA                                       ; $34842C |
  TAY                                       ; $34842D |
  DEY                                       ; $34842E |
  LDA $0730,x                               ; $34842F |
  BPL loc_6843F                             ; $348432 |
  LDA $0718,x                               ; $348434 |
  BNE loc_68453                             ; $348437 |
  JSR $8643                                 ; $348439 |
  JMP $847D                                 ; $34843C |

loc_6843F:
  JSR $85AD                                 ; $34843F |
  LDA $CF                                   ; $348442 |
  BMI loc_68453                             ; $348444 |
  STY $C3                                   ; $348446 |
  TXA                                       ; $348448 |
  AND #$03                                  ; $348449 |
  TAY                                       ; $34844B |
  LDA #$FF                                  ; $34844C |
  STA $077C,y                               ; $34844E |
  LDY $C3                                   ; $348451 |
loc_68453:
  TXA                                       ; $348453 |
  AND #$03                                  ; $348454 |
  BNE loc_68465                             ; $348456 |
  STA $C3                                   ; $348458 |
  TYA                                       ; $34845A |
  AND #$0F                                  ; $34845B |
  EOR #$0F                                  ; $34845D |
  JSR $8635                                 ; $34845F |
  JMP $847D                                 ; $348462 |

loc_68465:
  STY $C3                                   ; $348465 |
  LDA $0730,x                               ; $348467 |
  AND #$0F                                  ; $34846A |
  TAY                                       ; $34846C |
  LDA $892A,y                               ; $34846D |
  CLC                                       ; $348470 |
  ADC $C3                                   ; $348471 |
  CLC                                       ; $348473 |
  ADC $CB                                   ; $348474 |
  CLC                                       ; $348476 |
  ADC $0734,x                               ; $348477 |
  JSR $85DD                                 ; $34847A |
  LDA $0730,x                               ; $34847D |
  TAY                                       ; $348480 |
  AND #$40                                  ; $348481 |
  ASL                                       ; $348483 |
  STA $C4                                   ; $348484 |
  TYA                                       ; $348486 |
  AND #$7F                                  ; $348487 |
  ORA $C4                                   ; $348489 |
  STA $0730,x                               ; $34848B |
  BPL locret_68495                          ; $34848E |
  LDA #$FF                                  ; $348490 |
  STA $0740,x                               ; $348492 |
locret_68495:
  RTS                                       ; $348495 |

  CMP #$04                                  ; $348496 |
  BCC loc_684A3                             ; $348498 |
  STA $C4                                   ; $34849A |
  JSR $8591                                 ; $34849C |
  STA $C3                                   ; $34849F |
  LDA $C4                                   ; $3484A1 |
loc_684A3:
  JSR $8023                                 ; $3484A3 |

  db $D8, $84, $DC, $84, $E0, $84, $E7, $84 ; $3484A6 |
  db $74, $85, $F0, $84, $FE, $84, $59, $86 ; $3484AE |
  db $6E, $86, $04, $85, $0F, $85, $14, $85 ; $3484B6 |
  db $A0, $86, $A6, $86, $1A, $85, $1E, $85 ; $3484BE |
  db $22, $85, $26, $85, $1A, $85, $1E, $85 ; $3484C6 |
  db $22, $85, $26, $85, $59, $85, $7F, $85 ; $3484CE |
  db $AC, $86                               ; $3484D6 |

  LDA #$20                                  ; $3484D8 |
  BNE loc_684E9                             ; $3484DA |
  LDA #$40                                  ; $3484DC |
  BNE loc_684E9                             ; $3484DE |
  LDA #$10                                  ; $3484E0 |
  ORA $0730,x                               ; $3484E2 |
  BNE loc_684EC                             ; $3484E5 |
  LDA #$08                                  ; $3484E7 |
loc_684E9:
  EOR $0730,x                               ; $3484E9 |
loc_684EC:
  STA $0730,x                               ; $3484EC |
  RTS                                       ; $3484EF |

  LDA #$00                                  ; $3484F0 |
  STA $C8                                   ; $3484F2 |
  JSR $8591                                 ; $3484F4 |
  LDY $C3                                   ; $3484F7 |
  STA $CA                                   ; $3484F9 |
  STY $C9                                   ; $3484FB |
  RTS                                       ; $3484FD |

  LDA $C3                                   ; $3484FE |
  STA $073C,x                               ; $348500 |
  RTS                                       ; $348503 |

  LDA $0730,x                               ; $348504 |
  AND #$F8                                  ; $348507 |
  ORA $C3                                   ; $348509 |
  STA $0730,x                               ; $34850B |
  RTS                                       ; $34850E |

  LDA $C3                                   ; $34850F |
  STA $CB                                   ; $348511 |
  RTS                                       ; $348513 |

  LDA $C3                                   ; $348514 |
  STA $0734,x                               ; $348516 |
  RTS                                       ; $348519 |

  LDA #$00                                  ; $34851A |
  BEQ loc_68528                             ; $34851C |
  LDA #$04                                  ; $34851E |
  BNE loc_68528                             ; $348520 |
  LDA #$08                                  ; $348522 |
  BNE loc_68528                             ; $348524 |
  LDA #$0C                                  ; $348526 |
loc_68528:
  STA $C2                                   ; $348528 |
  TXA                                       ; $34852A |
  CLC                                       ; $34852B |
  ADC $C2                                   ; $34852C |
  TAY                                       ; $34852E |
  LDA $C4                                   ; $34852F |
  CMP #$12                                  ; $348531 |
  BCS loc_68546                             ; $348533 |
  LDA $0744,y                               ; $348535 |
  SEC                                       ; $348538 |
  SBC #$01                                  ; $348539 |
  BCS loc_6853F                             ; $34853B |
  LDA $C3                                   ; $34853D |
loc_6853F:
  STA $0744,y                               ; $34853F |
  BEQ loc_68565                             ; $348542 |
  BNE loc_68554                             ; $348544 |
loc_68546:
  LDA $0744,y                               ; $348546 |
  SEC                                       ; $348549 |
  SBC #$01                                  ; $34854A |
  BNE loc_68565                             ; $34854C |
  STA $0744,y                               ; $34854E |
  JSR $8574                                 ; $348551 |
loc_68554:
  JSR $8591                                 ; $348554 |
  STA $C3                                   ; $348557 |
  JSR $8591                                 ; $348559 |
  STA $0728,x                               ; $34855C |
  LDA $C3                                   ; $34855F |
  STA $072C,x                               ; $348561 |
  RTS                                       ; $348564 |

loc_68565:
  LDA #$02                                  ; $348565 |
  CLC                                       ; $348567 |
  ADC $0728,x                               ; $348568 |
  STA $0728,x                               ; $34856B |
  BCC locret_68573                          ; $34856E |
  INC $072C,x                               ; $348570 |
locret_68573:
  RTS                                       ; $348573 |

  LDA $0730,x                               ; $348574 |
  AND #$97                                  ; $348577 |
  ORA $C3                                   ; $348579 |
  STA $0730,x                               ; $34857B |
  RTS                                       ; $34857E |

  PLA                                       ; $34857F |
  PLA                                       ; $348580 |
  LDA #$00                                  ; $348581 |
  STA $0728,x                               ; $348583 |
  STA $072C,x                               ; $348586 |
  LDA $CF                                   ; $348589 |
  BMI locret_68590                          ; $34858B |
  JMP $80D8                                 ; $34858D |

locret_68590:
  RTS                                       ; $348590 |

  LDY $0728,x                               ; $348591 |
  LDA $072C,x                               ; $348594 |
  INC $0728,x                               ; $348597 |
  BNE loc_6859F                             ; $34859A |
  INC $072C,x                               ; $34859C |
loc_6859F:
  JMP $803A                                 ; $34859F |

  LDA $0704,x                               ; $3485A2 |
  AND #$F8                                  ; $3485A5 |
  ORA #$03                                  ; $3485A7 |
  STA $0704,x                               ; $3485A9 |
  RTS                                       ; $3485AC |

  TYA                                       ; $3485AD |
  PHA                                       ; $3485AE |
  LDY #$00                                  ; $3485AF |
  LDA $0704,x                               ; $3485B1 |
  AND #$F8                                  ; $3485B4 |
  STA $0704,x                               ; $3485B6 |
  CPX #$29                                  ; $3485B9 |
  BEQ loc_685CF                             ; $3485BB |
  CPX #$01                                  ; $3485BD |
  BNE loc_685D6                             ; $3485BF |
  LDA $D3                                   ; $3485C1 |
  STA $C1                                   ; $3485C3 |
  LDA $070C,x                               ; $3485C5 |
  STA $C4                                   ; $3485C8 |
  JSR $8006                                 ; $3485CA |
  LDY $C1                                   ; $3485CD |
loc_685CF:
  INY                                       ; $3485CF |
  INC $0704,x                               ; $3485D0 |
  INC $0704,x                               ; $3485D3 |
loc_685D6:
  TYA                                       ; $3485D6 |
  STA $0710,x                               ; $3485D7 |
  PLA                                       ; $3485DA |
  TAY                                       ; $3485DB |
  RTS                                       ; $3485DC |

  CMP #$60                                  ; $3485DD |
  BCC loc_685E3                             ; $3485DF |
  LDA #$5F                                  ; $3485E1 |
loc_685E3:
  STA $C3                                   ; $3485E3 |
  INC $C3                                   ; $3485E5 |
  CPX #$28                                  ; $3485E7 |
  BCC loc_68629                             ; $3485E9 |
  LDA $071C,x                               ; $3485EB |
  BEQ loc_6861C                             ; $3485EE |
  CMP $C3                                   ; $3485F0 |
  BNE loc_685FB                             ; $3485F2 |
  LDA $0730,x                               ; $3485F4 |
  BPL loc_6861C                             ; $3485F7 |
  BMI loc_68643                             ; $3485F9 |
loc_685FB:
  LDA $0718,x                               ; $3485FB |
  BEQ loc_6861C                             ; $3485FE |
  BCS loc_68606                             ; $348600 |
  ORA #$80                                  ; $348602 |
  BNE loc_68608                             ; $348604 |
loc_68606:
  AND #$7F                                  ; $348606 |
loc_68608:
  STA $0718,x                               ; $348608 |
  LDA $0704,x                               ; $34860B |
  ORA #$20                                  ; $34860E |
  STA $0704,x                               ; $348610 |
  LDA $C3                                   ; $348613 |
  LDY $071C,x                               ; $348615 |
  STY $C3                                   ; $348618 |
  BNE loc_68626                             ; $34861A |
loc_6861C:
  LDA $0704,x                               ; $34861C |
  AND #$DF                                  ; $34861F |
  STA $0704,x                               ; $348621 |
  LDA $C3                                   ; $348624 |
loc_68626:
  STA $071C,x                               ; $348626 |
loc_68629:
  ASL $C3                                   ; $348629 |
  LDY $C3                                   ; $34862B |
  LDA $8960,y                               ; $34862D |
  STA $C3                                   ; $348630 |
  LDA $8961,y                               ; $348632 |
  STA $0724,x                               ; $348635 |
  LDA $C3                                   ; $348638 |
  STA $0720,x                               ; $34863A |
  LDY #$04                                  ; $34863D |
  LDA ($C5),y                               ; $34863F |
  BMI loc_6864B                             ; $348641 |
loc_68643:
  LDA $0704,x                               ; $348643 |
  AND #$08                                  ; $348646 |
  BNE loc_6864B                             ; $348648 |
  RTS                                       ; $34864A |

loc_6864B:
  LDA #$00                                  ; $34864B |
  STA $0708,x                               ; $34864D |
  LDA $0704,x                               ; $348650 |
  AND #$37                                  ; $348653 |
  STA $0704,x                               ; $348655 |
  RTS                                       ; $348658 |

  CPX #$01                                  ; $348659 |
  BNE loc_68661                             ; $34865B |
  LDA $C3                                   ; $34865D |
  BNE loc_6866A                             ; $34865F |
loc_68661:
  LDA $070C,x                               ; $348661 |
  AND #$C0                                  ; $348664 |
  ORA $C3                                   ; $348666 |
  ORA #$30                                  ; $348668 |
loc_6866A:
  STA $070C,x                               ; $34866A |
  RTS                                       ; $34866D |

  INC $C3                                   ; $34866E |
  LDA $C3                                   ; $348670 |
  CMP $0700,x                               ; $348672 |
  BEQ locret_6869F                          ; $348675 |
  STA $0700,x                               ; $348677 |
  TAY                                       ; $34867A |
  LDA $0704,x                               ; $34867B |
  ORA #$08                                  ; $34867E |
  STA $0704,x                               ; $348680 |
  DEY                                       ; $348683 |
  LDA #$00                                  ; $348684 |
  STA $C3                                   ; $348686 |
  TYA                                       ; $348688 |
  ASL                                       ; $348689 |
  ROL $C3                                   ; $34868A |
  ASL                                       ; $34868C |
  ROL $C3                                   ; $34868D |
  ASL                                       ; $34868F |
  ROL $C3                                   ; $348690 |
  CLC                                       ; $348692 |
  ADC $8A42                                 ; $348693 |
  STA $C5                                   ; $348696 |
  LDA $C3                                   ; $348698 |
  ADC $8A41                                 ; $34869A |
  STA $C6                                   ; $34869D |
locret_6869F:
  RTS                                       ; $34869F |

  LDA $C3                                   ; $3486A0 |
  STA $0714,x                               ; $3486A2 |
  RTS                                       ; $3486A5 |

  LDA $C3                                   ; $3486A6 |
  STA $0718,x                               ; $3486A8 |
  RTS                                       ; $3486AB |

  LDA $070C,x                               ; $3486AC |
  AND #$0F                                  ; $3486AF |
  ORA $C3                                   ; $3486B1 |
  ORA #$30                                  ; $3486B3 |
  STA $070C,x                               ; $3486B5 |
  RTS                                       ; $3486B8 |

  LDA $0710,x                               ; $3486B9 |
  STA $C4                                   ; $3486BC |
  LDA $0704,x                               ; $3486BE |
  AND #$07                                  ; $3486C1 |
  JSR $8023                                 ; $3486C3 |

  db $D0, $86, $E5, $86, $1F, $87, $01, $87 ; $3486C6 |
  db $1B, $89                               ; $3486CE |

  LDY #$00                                  ; $3486D0 |
  LDA ($C5),y                               ; $3486D2 |
  TAY                                       ; $3486D4 |
  LDA $C4                                   ; $3486D5 |
  CLC                                       ; $3486D7 |
  ADC $893A,y                               ; $3486D8 |
  BCS loc_686E1                             ; $3486DB |
  CMP #$F0                                  ; $3486DD |
  BCC loc_6871C                             ; $3486DF |
loc_686E1:
  LDA #$F0                                  ; $3486E1 |
  BNE loc_68719                             ; $3486E3 |
  LDY #$01                                  ; $3486E5 |
  LDA ($C5),y                               ; $3486E7 |
  BEQ loc_686FA                             ; $3486E9 |
  TAY                                       ; $3486EB |
  LDA $C4                                   ; $3486EC |
  SEC                                       ; $3486EE |
  SBC $893A,y                               ; $3486EF |
  BCC loc_686FA                             ; $3486F2 |
  LDY #$02                                  ; $3486F4 |
  CMP ($C5),y                               ; $3486F6 |
  BCS loc_6871C                             ; $3486F8 |
loc_686FA:
  LDY #$02                                  ; $3486FA |
  LDA ($C5),y                               ; $3486FC |
  JMP $8719                                 ; $3486FE |

  TXA                                       ; $348701 |
  AND #$03                                  ; $348702 |
  CMP #$01                                  ; $348704 |
  BEQ loc_68717                             ; $348706 |
  LDY #$03                                  ; $348708 |
  LDA ($C5),y                               ; $34870A |
  BEQ loc_6871F                             ; $34870C |
  TAY                                       ; $34870E |
  LDA $C4                                   ; $34870F |
  SEC                                       ; $348711 |
  SBC $893A,y                               ; $348712 |
  BCS loc_6871C                             ; $348715 |
loc_68717:
  LDA #$00                                  ; $348717 |
loc_68719:
  INC $0704,x                               ; $348719 |
loc_6871C:
  STA $0710,x                               ; $34871C |
loc_6871F:
  CPX #$28                                  ; $34871F |
  BCC loc_68736                             ; $348721 |
  LDA $CF                                   ; $348723 |
  BPL loc_6872A                             ; $348725 |
  JMP $88A7                                 ; $348727 |

loc_6872A:
  LDA $CD                                   ; $34872A |
  LDY $CC                                   ; $34872C |
  BMI loc_68732                             ; $34872E |
  EOR #$FF                                  ; $348730 |
loc_68732:
  CMP #$FF                                  ; $348732 |
  BNE loc_6873F                             ; $348734 |
loc_68736:
  TXA                                       ; $348736 |
  AND #$03                                  ; $348737 |
  CMP #$01                                  ; $348739 |
  BNE loc_6875F                             ; $34873B |
  BEQ loc_68751                             ; $34873D |
loc_6873F:
  CPX #$29                                  ; $34873F |
  BNE loc_6875A                             ; $348741 |
  STA $C4                                   ; $348743 |
  LDA $0740,x                               ; $348745 |
  STA $C1                                   ; $348748 |
  JSR $8006                                 ; $34874A |
  LDA $C1                                   ; $34874D |
  BEQ loc_687A9                             ; $34874F |
loc_68751:
  LDA $0710,x                               ; $348751 |
  BEQ loc_687A9                             ; $348754 |
  LDA #$FF                                  ; $348756 |
  BNE loc_687A9                             ; $348758 |
loc_6875A:
  CMP $0710,x                               ; $34875A |
  BCC loc_68762                             ; $34875D |
loc_6875F:
  LDA $0710,x                               ; $34875F |
loc_68762:
  LSR                                       ; $348762 |
  LSR                                       ; $348763 |
  LSR                                       ; $348764 |
  LSR                                       ; $348765 |
  EOR #$0F                                  ; $348766 |
  STA $C3                                   ; $348768 |
  LDY #$06                                  ; $34876A |
  LDA ($C5),y                               ; $34876C |
  CMP #$05                                  ; $34876E |
  BCC loc_68796                             ; $348770 |
  STA $C4                                   ; $348772 |
  LDY $0708,x                               ; $348774 |
  LDA $0704,x                               ; $348777 |
  ASL                                       ; $34877A |
  ASL                                       ; $34877B |
  TYA                                       ; $34877C |
  BCC loc_68781                             ; $34877D |
  EOR #$FF                                  ; $34877F |
loc_68781:
  BEQ loc_68796                             ; $348781 |
  STA $C1                                   ; $348783 |
  JSR $8006                                 ; $348785 |
  LDA $C1                                   ; $348788 |
  LSR                                       ; $34878A |
  LSR                                       ; $34878B |
  CMP #$10                                  ; $34878C |
  BCS loc_687A4                             ; $34878E |
  CMP $C3                                   ; $348790 |
  BCC loc_68796                             ; $348792 |
  STA $C3                                   ; $348794 |
loc_68796:
  LDA #$10                                  ; $348796 |
  STA $C4                                   ; $348798 |
  LDA $070C,x                               ; $34879A |
  SEC                                       ; $34879D |
  SBC $C3                                   ; $34879E |
  BIT $C4                                   ; $3487A0 |
  BNE loc_687A9                             ; $3487A2 |
loc_687A4:
  LDA $070C,x                               ; $3487A4 |
  AND #$F0                                  ; $3487A7 |
loc_687A9:
  LDY #$00                                  ; $3487A9 |
  JSR $80EC                                 ; $3487AB |
  TXA                                       ; $3487AE |
  AND #$03                                  ; $3487AF |
  TAY                                       ; $3487B1 |
  LDA $077C,y                               ; $3487B2 |
  BMI loc_6880B                             ; $3487B5 |
  LDY #$05                                  ; $3487B7 |
  LDA ($C5),y                               ; $3487B9 |
  BEQ loc_6880B                             ; $3487BB |
  STA $C4                                   ; $3487BD |
  LDY $0708,x                               ; $3487BF |
  LDA $0704,x                               ; $3487C2 |
  ASL                                       ; $3487C5 |
  ASL                                       ; $3487C6 |
  TYA                                       ; $3487C7 |
  BCC loc_687CC                             ; $3487C8 |
  EOR #$FF                                  ; $3487CA |
loc_687CC:
  BEQ loc_6880B                             ; $3487CC |
  STA $C1                                   ; $3487CE |
  JSR $8006                                 ; $3487D0 |
  LDA $C1                                   ; $3487D3 |
  LSR                                       ; $3487D5 |
  ROR $C2                                   ; $3487D6 |
  LSR                                       ; $3487D8 |
  ROR $C2                                   ; $3487D9 |
  LSR                                       ; $3487DB |
  ROR $C2                                   ; $3487DC |
  LSR                                       ; $3487DE |
  ROR $C2                                   ; $3487DF |
  TAY                                       ; $3487E1 |
  ORA $C2                                   ; $3487E2 |
  BEQ loc_6880B                             ; $3487E4 |
  LDA $0704,x                               ; $3487E6 |
  BMI loc_687F9                             ; $3487E9 |
  CLC                                       ; $3487EB |
  LDA $C2                                   ; $3487EC |
  ADC $0720,x                               ; $3487EE |
  STA $C2                                   ; $3487F1 |
  TYA                                       ; $3487F3 |
  ADC $0724,x                               ; $3487F4 |
  BNE loc_68808                             ; $3487F7 |
loc_687F9:
  SEC                                       ; $3487F9 |
  LDA $0720,x                               ; $3487FA |
  SBC $C2                                   ; $3487FD |
  STA $C2                                   ; $3487FF |
  LDA $0724,x                               ; $348801 |
  STY $C1                                   ; $348804 |
  SBC $C1                                   ; $348806 |
loc_68808:
  TAY                                       ; $348808 |
  BNE loc_68813                             ; $348809 |
loc_6880B:
  LDA $0720,x                               ; $34880B |
  STA $C2                                   ; $34880E |
  LDY $0724,x                               ; $348810 |
loc_68813:
  CPX #$28                                  ; $348813 |
  BCS loc_68834                             ; $348815 |
  LDA $D6                                   ; $348817 |
  BPL loc_68834                             ; $348819 |
  LDA $D8                                   ; $34881B |
  BEQ loc_68834                             ; $34881D |
  STA $C4                                   ; $34881F |
  STY $C1                                   ; $348821 |
  LDA $C2                                   ; $348823 |
  PHA                                       ; $348825 |
  JSR $8006                                 ; $348826 |
  PLA                                       ; $348829 |
  CLC                                       ; $34882A |
  ADC $C2                                   ; $34882B |
  STA $C2                                   ; $34882D |
  LDA #$00                                  ; $34882F |
  ADC $C1                                   ; $348831 |
  TAY                                       ; $348833 |
loc_68834:
  TXA                                       ; $348834 |
  AND #$03                                  ; $348835 |
  BNE loc_68848                             ; $348837 |
  TYA                                       ; $348839 |
  AND #$0F                                  ; $34883A |
  LDY #$07                                  ; $34883C |
  ORA ($C5),y                               ; $34883E |
  STA $C2                                   ; $348840 |
  LDA #$00                                  ; $348842 |
  STA $C1                                   ; $348844 |
  BEQ loc_6888B                             ; $348846 |
loc_68848:
  TYA                                       ; $348848 |
  LDY #$08                                  ; $348849 |
loc_6884B:
  DEY                                       ; $34884B |
  CMP $895A,y                               ; $34884C |
  BCC loc_6884B                             ; $34884F |
  STA $C1                                   ; $348851 |
  TYA                                       ; $348853 |
  CLC                                       ; $348854 |
  ADC $C1                                   ; $348855 |
  TAY                                       ; $348857 |
  AND #$07                                  ; $348858 |
  CLC                                       ; $34885A |
  ADC #$07                                  ; $34885B |
  STA $C1                                   ; $34885D |
  TYA                                       ; $34885F |
  AND #$38                                  ; $348860 |
  EOR #$38                                  ; $348862 |
  BEQ loc_6886F                             ; $348864 |
loc_68866:
  LSR $C1                                   ; $348866 |
  ROR $C2                                   ; $348868 |
  SEC                                       ; $34886A |
  SBC #$08                                  ; $34886B |
  BNE loc_68866                             ; $34886D |
loc_6886F:
  LDY #$00                                  ; $34886F |
  LDA $0714,x                               ; $348871 |
  BEQ loc_6888B                             ; $348874 |
  BPL loc_68879                             ; $348876 |
  DEY                                       ; $348878 |
loc_68879:
  CLC                                       ; $348879 |
  ADC $C2                                   ; $34887A |
  STA $C2                                   ; $34887C |
  TYA                                       ; $34887E |
  ADC $C1                                   ; $34887F |
  STA $C1                                   ; $348881 |
  LDA $C2                                   ; $348883 |
  ORA $C1                                   ; $348885 |
  BNE loc_6888B                             ; $348887 |
  INC $C2                                   ; $348889 |
loc_6888B:
  LDY #$02                                  ; $34888B |
  LDA $C2                                   ; $34888D |
  JSR $80EC                                 ; $34888F |
  TXA                                       ; $348892 |
  AND #$03                                  ; $348893 |
  TAY                                       ; $348895 |
  LDA $C1                                   ; $348896 |
  CMP $077C,y                               ; $348898 |
  BEQ loc_688A7                             ; $34889B |
  STA $077C,y                               ; $34889D |
  ORA #$08                                  ; $3488A0 |
  LDY #$03                                  ; $3488A2 |
  JSR $80EC                                 ; $3488A4 |
loc_688A7:
  LDA $0704,x                               ; $3488A7 |
  AND #$20                                  ; $3488AA |
  BEQ loc_68901                             ; $3488AC |
  LDA $0718,x                               ; $3488AE |
  BEQ loc_688F9                             ; $3488B1 |
  LDY #$00                                  ; $3488B3 |
  ASL                                       ; $3488B5 |
  PHP                                       ; $3488B6 |
  BCC loc_688BF                             ; $3488B7 |
  EOR #$FF                                  ; $3488B9 |
  CLC                                       ; $3488BB |
  ADC #$01                                  ; $3488BC |
  DEY                                       ; $3488BE |
loc_688BF:
  CLC                                       ; $3488BF |
  ADC $0720,x                               ; $3488C0 |
  STA $0720,x                               ; $3488C3 |
  TYA                                       ; $3488C6 |
  ADC $0724,x                               ; $3488C7 |
  STA $0724,x                               ; $3488CA |
  LDA $071C,x                               ; $3488CD |
  ASL                                       ; $3488D0 |
  TAY                                       ; $3488D1 |
  SEC                                       ; $3488D2 |
  LDA $0720,x                               ; $3488D3 |
  SBC $8960,y                               ; $3488D6 |
  LDA $0724,x                               ; $3488D9 |
  AND #$3F                                  ; $3488DC |
  SBC $8961,y                               ; $3488DE |
  LDA #$FF                                  ; $3488E1 |
  ADC #$00                                  ; $3488E3 |
  PLP                                       ; $3488E5 |
  ADC #$00                                  ; $3488E6 |
  BNE loc_68901                             ; $3488E8 |
  TXA                                       ; $3488EA |
  BEQ loc_68901                             ; $3488EB |
  LDA $8960,y                               ; $3488ED |
  STA $0720,x                               ; $3488F0 |
  LDA $8961,y                               ; $3488F3 |
  STA $0724,x                               ; $3488F6 |
loc_688F9:
  LDA $0704,x                               ; $3488F9 |
  AND #$DF                                  ; $3488FC |
  STA $0704,x                               ; $3488FE |
loc_68901:
  LDY #$04                                  ; $348901 |
  LDA ($C5),y                               ; $348903 |
  AND #$7F                                  ; $348905 |
  BEQ locret_6891B                          ; $348907 |
  CLC                                       ; $348909 |
  ADC $0708,x                               ; $34890A |
  STA $0708,x                               ; $34890D |
  BCC locret_6891B                          ; $348910 |
  LDA $0704,x                               ; $348912 |
  CLC                                       ; $348915 |
  ADC #$40                                  ; $348916 |
  STA $0704,x                               ; $348918 |
locret_6891B:
  RTS                                       ; $34891B |

  db $02, $04, $08, $10, $20, $40, $80, $03 ; $34891C |
  db $06, $0C, $18, $30, $60, $C0, $00, $0C ; $348924 |
  db $18, $24, $30, $3C, $48, $54, $18, $24 ; $34892C |
  db $30, $3C, $48, $54, $60, $6C, $00, $01 ; $348934 |
  db $02, $03, $04, $05, $06, $07, $08, $09 ; $34893C |
  db $0A, $0B, $0C, $0E, $0F, $10, $12, $13 ; $348944 |
  db $14, $16, $18, $1B, $1E, $23, $28, $30 ; $34894C |
  db $3C, $50, $7E, $7F, $FE, $FF, $00, $07 ; $348954 |
  db $0E, $15, $1C, $23, $2A, $31, $5C, $37 ; $34895C |
  db $9C, $36, $E7, $35, $3C, $35, $9B, $34 ; $348964 |
  db $02, $34, $72, $33, $EA, $32, $6A, $32 ; $34896C |
  db $F1, $31, $80, $31, $14, $31, $5C, $30 ; $348974 |
  db $9C, $2F, $E7, $2E, $3C, $2E, $9B, $2D ; $34897C |
  db $02, $2D, $72, $2C, $EA, $2B, $6A, $2B ; $348984 |
  db $F1, $2A, $80, $2A, $14, $2A, $5C, $29 ; $34898C |
  db $9C, $28, $E7, $27, $3C, $27, $9B, $26 ; $348994 |
  db $02, $26, $72, $25, $EA, $24, $6A, $24 ; $34899C |
  db $F1, $23, $80, $23, $14, $23, $5C, $22 ; $3489A4 |
  db $9C, $21, $E7, $20, $3C, $20, $9B, $1F ; $3489AC |
  db $02, $1F, $72, $1E, $EA, $1D, $6A, $1D ; $3489B4 |
  db $F1, $1C, $80, $1C, $14, $1C, $5C, $1B ; $3489BC |
  db $9C, $1A, $E7, $19, $3C, $19, $9B, $18 ; $3489C4 |
  db $02, $18, $72, $17, $EA, $16, $6A, $16 ; $3489CC |
  db $F1, $15, $80, $15, $14, $15, $5C, $14 ; $3489D4 |
  db $9C, $13, $E7, $12, $3C, $12, $9B, $11 ; $3489DC |
  db $02, $11, $72, $10, $EA, $0F, $6A, $0F ; $3489E4 |
  db $F1, $0E, $80, $0E, $14, $0E, $5C, $0D ; $3489EC |
  db $9C, $0C, $E7, $0B, $3C, $0B, $9B, $0A ; $3489F4 |
  db $02, $0A, $72, $09, $EA, $08, $6A, $08 ; $3489FC |
  db $F1, $07, $80, $07, $14, $07, $5C, $06 ; $348A04 |
  db $9C, $05, $E7, $04, $3C, $04, $9B, $03 ; $348A0C |
  db $02, $03, $72, $02, $EA, $01, $6A, $01 ; $348A14 |
  db $F1, $00, $80, $00, $14, $00, $00, $00 ; $348A1C |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $348A24 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $348A2C |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $348A34 |
  db $00, $00, $00, $00, $66, $8B, $0F, $8D ; $348A3C |
  db $47, $91, $67, $94, $E8, $98, $E4, $9D ; $348A44 |
  db $BA, $A1, $96, $A3, $FF, $A8, $43, $AC ; $348A4C |
  db $D7, $AD, $83, $B0, $97, $B3, $F5, $B7 ; $348A54 |
  db $5C, $B9, $D5, $BC, $5A, $BD, $3C, $BE ; $348A5C |
  db $DA, $BF, $C8, $C0, $CB, $C1, $9B, $C2 ; $348A64 |
  db $0F, $C2, $B5, $C3, $94, $C4, $2B, $C5 ; $348A6C |
  db $00, $C7, $3F, $C9, $86, $C9, $9E, $CB ; $348A74 |
  db $1E, $CC, $7B, $CD, $F7, $CF, $B1, $D1 ; $348A7C |
  db $D3, $D3, $B1, $D5, $A9, $D7, $58, $D7 ; $348A84 |
  db $64, $D7, $7F, $D7, $9D, $D7, $E1, $D7 ; $348A8C |
  db $F1, $D8, $0E, $D8, $52, $D8, $6C, $D8 ; $348A94 |
  db $7E, $D8, $94, $D8, $B6, $D8, $CA, $D9 ; $348A9C |
  db $30, $D9, $57, $D9, $6D, $D9, $7F, $D9 ; $348AA4 |
  db $A1, $D9, $BE, $D9, $CE, $D9, $EC, $DA ; $348AAC |
  db $03, $DA, $13, $DA, $42, $DA, $9B, $DA ; $348AB4 |
  db $B1, $DA, $C3, $DA, $D8, $DB, $0B, $DB ; $348ABC |
  db $10, $DB, $21, $DB, $33, $DB, $3F, $DB ; $348AC4 |
  db $58, $DB, $6C, $DB, $7B, $DB, $85, $DB ; $348ACC |
  db $92, $DB, $AF, $DB, $C1, $DB, $CD, $DB ; $348AD4 |
  db $E5, $DB, $F5, $DC, $0C, $DC, $25, $DC ; $348ADC |
  db $3E, $DC, $58, $DC, $78, $DC, $8A, $DC ; $348AE4 |
  db $9A, $DC, $A5, $DC, $CF, $DC, $F3, $DD ; $348AEC |
  db $1D, $DD, $74, $DD, $98, $DD, $B7, $DD ; $348AF4 |
  db $D3, $DD, $FB, $DE, $29, $DE, $6E, $DE ; $348AFC |
  db $81, $DE, $99, $DE, $D5, $DE, $E8, $DF ; $348B04 |
  db $06, $DF, $0B, $1F, $1A, $90, $14, $9E ; $348B0C |
  db $20, $26, $00, $1F, $1F, $F0, $1F, $FF ; $348B14 |
  db $03, $00, $00, $1D, $19, $C0, $10, $00 ; $348B1C |
  db $00, $00, $00, $1D, $19, $C0, $10, $E4 ; $348B24 |
  db $05, $00, $00, $1F, $1F, $D0, $0F, $E4 ; $348B2C |
  db $02, $1E, $00, $1C, $18, $B0, $06, $00 ; $348B34 |
  db $00, $00, $00, $1E, $14, $A0, $10, $C9 ; $348B3C |
  db $00, $42, $00, $1F, $1D, $E0, $0D, $80 ; $348B44 |
  db $00, $00, $80, $1C, $1C, $E0, $10, $00 ; $348B4C |
  db $00, $00, $00, $1C, $1C, $E0, $10, $DC ; $348B54 |
  db $04, $00, $00, $1F, $1F, $A0, $10, $00 ; $348B5C |
  db $00, $00, $00, $1F, $1D, $D0, $0F, $E3 ; $348B64 |
  db $03, $00, $00, $1E, $0D, $80, $07, $E5 ; $348B6C |
  db $04, $17, $00, $1F, $1D, $D0, $0F, $FF ; $348B74 |
  db $07, $00, $00, $1E, $0D, $E0, $12, $F0 ; $348B7C |
  db $01, $1F, $00, $1E, $1C, $D0, $10, $00 ; $348B84 |
  db $00, $00, $00, $1E, $1C, $D0, $10, $FF ; $348B8C |
  db $05, $00, $00, $1F, $17, $70, $0F, $9E ; $348B94 |
  db $20, $26, $00, $1F, $1C, $B0, $04, $D4 ; $348B9C |
  db $00, $46, $00, $1E, $1C, $D0, $10, $FF ; $348BA4 |
  db $02, $00, $00, $1C, $18, $B0, $06, $FF ; $348BAC |
  db $03, $00, $00, $1F, $1F, $E0, $1B, $9E ; $348BB4 |
  db $58, $7C, $00, $1F, $1F, $90, $1A, $AE ; $348BBC |
  db $20, $26, $00, $1F, $1C, $C0, $10, $00 ; $348BC4 |
  db $00, $00, $00, $1F, $1C, $C0, $10, $FF ; $348BCC |
  db $04, $00, $00, $1F, $1D, $E0, $0D, $FF ; $348BD4 |
  db $02, $00, $80, $1F, $1D, $B0, $06, $00 ; $348BDC |
  db $00, $00, $00, $1F, $1D, $B0, $06, $FF ; $348BE4 |
  db $01, $00, $00, $1F, $1F, $00, $1F, $00 ; $348BEC |
  db $00, $00, $00, $1F, $1A, $B0, $0F, $00 ; $348BF4 |
  db $00, $00, $00, $1F, $1A, $B0, $0F, $FF ; $348BFC |
  db $07, $00, $00, $1F, $1D, $90, $03, $FF ; $348C04 |
  db $00, $3D, $00, $1F, $1B, $90, $0F, $FF ; $348C0C |
  db $02, $00, $00, $1F, $1F, $70, $1F, $00 ; $348C14 |
  db $00, $00, $00, $1C, $19, $60, $0F, $FF ; $348C1C |
  db $13, $16, $00, $1F, $1F, $F0, $1F, $E9 ; $348C24 |
  db $00, $38, $00, $19, $1F, $F0, $1F, $95 ; $348C2C |
  db $02, $1D, $00, $1F, $1C, $90, $0F, $E4 ; $348C34 |
  db $0E, $1E, $00, $17, $02, $E0, $0F, $00 ; $348C3C |
  db $00, $00, $00, $1F, $1F, $F0, $0E, $80 ; $348C44 |
  db $00, $00, $80, $1F, $1F, $F0, $1F, $00 ; $348C4C |
  db $00, $00, $00, $1F, $1F, $F0, $1F, $FF ; $348C54 |
  db $02, $00, $00, $1F, $1F, $F0, $1F, $92 ; $348C5C |
  db $7F, $00, $00, $1F, $01, $00, $0F, $E3 ; $348C64 |
  db $7F, $00, $00, $1F, $1F, $F0, $1F, $FF ; $348C6C |
  db $4C, $00, $00, $1F, $1F, $F0, $1F, $99 ; $348C74 |
  db $7F, $00, $00, $1F, $1F, $C0, $14, $FF ; $348C7C |
  db $01, $01, $00, $1C, $1D, $B0, $08, $00 ; $348C84 |
  db $00, $00, $00, $1F, $1A, $A0, $07, $CF ; $348C8C |
  db $36, $00, $80, $1F, $1F, $F0, $1F, $A6 ; $348C94 |
  db $7F, $00, $80, $1C, $13, $10, $1F, $FF ; $348C9C |
  db $7F, $00, $00, $1F, $16, $D0, $10, $FF ; $348CA4 |
  db $01, $14, $00, $1F, $1F, $F0, $1F, $BC ; $348CAC |
  db $6F, $00, $00, $1F, $1F, $F0, $1F, $80 ; $348CB4 |
  db $00, $00, $80, $19, $12, $E0, $0F, $00 ; $348CBC |
  db $00, $00, $00, $1F, $01, $00, $0D, $00 ; $348CC4 |
  db $00, $00, $00, $1F, $1F, $F0, $0F, $BC ; $348CCC |
  db $6F, $00, $00, $1F, $17, $00, $16, $80 ; $348CD4 |
  db $00, $00, $00, $1F, $1F, $F0, $0F, $00 ; $348CDC |
  db $00, $00, $00, $1F, $1F, $F0, $1F, $D3 ; $348CE4 |
  db $16, $00, $00, $1F, $1C, $E0, $04, $E4 ; $348CEC |
  db $00, $46, $80, $1A, $1F, $E0, $1C, $00 ; $348CF4 |
  db $00, $00, $00, $1F, $1E, $C0, $07, $00 ; $348CFC |
  db $00, $00, $80, $1F, $01, $F0, $05, $E1 ; $348D04 |
  db $0D, $00, $00, $1F, $1F, $F0, $1F, $FF ; $348D0C |
  db $7F, $00, $00, $1C, $1F, $F0, $07, $FF ; $348D14 |
  db $7F, $36, $00, $19, $0B, $F0, $12, $FF ; $348D1C |
  db $7F, $36, $00, $1F, $12, $40, $1E, $FF ; $348D24 |
  db $7F, $51, $00, $1F, $1F, $F0, $1F, $FF ; $348D2C |
  db $19, $00, $00, $1F, $1F, $F0, $0F, $D7 ; $348D34 |
  db $09, $7F, $00, $1F, $00, $F0, $0F, $FF ; $348D3C |
  db $43, $00, $00, $00, $8D, $50, $8E, $7E ; $348D44 |
  db $8F, $99, $90, $96, $05, $01, $3B, $06 ; $348D4C |
  db $E6, $07, $0B, $08, $02, $09, $01, $18 ; $348D54 |
  db $C0, $04, $00, $80, $03, $8B, $8F, $6B ; $348D5C |
  db $86, $66, $01, $8B, $08, $03, $01, $AB ; $348D64 |
  db $08, $02, $0B, $FE, $0E, $01, $8D, $5D ; $348D6C |
  db $0B, $00, $80, $87, $8B, $67, $82, $62 ; $348D74 |
  db $01, $87, $08, $03, $01, $87, $08, $02 ; $348D7C |
  db $8B, $A4, $A9, $AD, $06, $C8, $B0, $04 ; $348D84 |
  db $08, $06, $E6, $04, $08, $6D, $8F, $8F ; $348D8C |
  db $8B, $66, $8B, $8F, $8B, $86, $02, $89 ; $348D94 |
  db $02, $8D, $01, $90, $08, $03, $01, $90 ; $348D9C |
  db $08, $02, $8F, $8D, $8B, $6D, $8E, $8E ; $348DA4 |
  db $8B, $67, $8B, $12, $08, $8D, $C8, $8E ; $348DAC |
  db $8D, $8B, $01, $A9, $08, $03, $02, $01 ; $348DB4 |
  db $89, $08, $02, $60, $89, $8B, $8D, $90 ; $348DBC |
  db $0E, $01, $8D, $8F, $8D, $8E, $90, $01 ; $348DC4 |
  db $B2, $08, $03, $02, $01, $92, $08, $02 ; $348DCC |
  db $60, $02, $AD, $92, $04, $48, $18, $00 ; $348DD4 |
  db $06, $F5, $B2, $08, $03, $01, $B2, $08 ; $348DDC |
  db $02, $90, $8F, $90, $92, $02, $92, $02 ; $348DE4 |
  db $90, $01, $AB, $08, $03, $AB, $01, $6B ; $348DEC |
  db $08, $02, $60, $02, $92, $02, $90, $01 ; $348DF4 |
  db $8B, $08, $03, $12, $48, $8E, $15, $01 ; $348DFC |
  db $AB, $08, $02, $B0, $90, $8F, $8D, $02 ; $348E04 |
  db $8F, $60, $8B, $8F, $90, $0E, $01, $8D ; $348E0C |
  db $D8, $08, $03, $01, $8B, $08, $02, $8D ; $348E14 |
  db $8E, $90, $01, $D2, $08, $03, $02, $B2 ; $348E1C |
  db $01, $72, $08, $02, $60, $18, $C0, $06 ; $348E24 |
  db $E6, $01, $B4, $01, $74, $96, $77, $02 ; $348E2C |
  db $96, $01, $92, $08, $03, $92, $01, $52 ; $348E34 |
  db $40, $08, $02, $01, $B6, $08, $03, $01 ; $348E3C |
  db $96, $08, $02, $09, $02, $8D, $8D, $8B ; $348E44 |
  db $88, $8A, $8B, $4B, $40, $01, $8B, $08 ; $348E4C |
  db $03, $02, $01, $8B, $08, $02, $80, $8B ; $348E54 |
  db $8A, $8B, $01, $AD, $08, $03, $01, $AD ; $348E5C |
  db $06, $FF, $08, $02, $52, $50, $4F, $4D ; $348E64 |
  db $4B, $4A, $48, $46, $09, $01, $50, $4F ; $348E6C |
  db $4D, $4B, $4A, $48, $46, $44, $16, $8D ; $348E74 |
  db $8B, $17, $06, $E6, $07, $0A, $08, $02 ; $348E7C |
  db $09, $02, $18, $C0, $04, $00, $80, $92 ; $348E84 |
  db $97, $72, $8F, $6F, $01, $92, $08, $03 ; $348E8C |
  db $01, $B2, $08, $02, $0B, $FE, $0E, $01 ; $348E94 |
  db $8E, $88, $0B, $00, $80, $8E, $93, $6E ; $348E9C |
  db $8B, $6B, $01, $8E, $08, $03, $01, $8E ; $348EA4 |
  db $08, $02, $93, $A9, $B0, $B0, $B5, $04 ; $348EAC |
  db $08, $04, $08, $06, $E6, $08, $06, $04 ; $348EB4 |
  db $08, $6F, $66, $6B, $6F, $66, $6B, $6F ; $348EBC |
  db $66, $0E, $01, $8E, $BB, $04, $08, $04 ; $348EC4 |
  db $08, $04, $08, $6D, $64, $69, $6D, $64 ; $348ECC |
  db $69, $6D, $69, $14, $08, $8E, $EF, $0E ; $348ED4 |
  db $01, $8E, $CD, $0B, $FE, $0F, $01, $8E ; $348EDC |
  db $CB, $0B, $00, $15, $08, $8E, $FA, $10 ; $348EE4 |
  db $01, $8E, $C9, $08, $02, $03, $90, $92 ; $348EEC |
  db $95, $99, $11, $01, $8E, $B5, $6D, $66 ; $348EF4 |
  db $6A, $6D, $66, $6A, $6D, $66, $08, $02 ; $348EFC |
  db $02, $03, $B6, $99, $06, $C8, $08, $05 ; $348F04 |
  db $04, $00, $69, $6D, $72, $01, $B5, $01 ; $348F0C |
  db $75, $94, $92, $90, $8F, $68, $6B, $70 ; $348F14 |
  db $02, $94, $92, $90, $8F, $8D, $8B, $67 ; $348F1C |
  db $6B, $70, $02, $93, $92, $90, $12, $00 ; $348F24 |
  db $8F, $40, $8E, $8D, $8B, $6B, $66, $6B ; $348F2C |
  db $8F, $6B, $6F, $02, $92, $92, $8F, $8B ; $348F34 |
  db $0E, $01, $8F, $0C, $92, $90, $8D, $6A ; $348F3C |
  db $66, $6A, $8D, $6A, $6D, $92, $6D, $72 ; $348F44 |
  db $01, $B6, $01, $76, $06, $E6, $08, $02 ; $348F4C |
  db $01, $B0, $01, $70, $92, $74, $02, $92 ; $348F54 |
  db $8D, $6A, $72, $76, $02, $99, $02, $96 ; $348F5C |
  db $96, $02, $97, $01, $AF, $01, $6F, $90 ; $348F64 |
  db $70, $90, $70, $74, $77, $9C, $9C, $9B ; $348F6C |
  db $9C, $01, $B6, $08, $03, $01, $B6, $06 ; $348F74 |
  db $FF, $08, $02, $0C, $01, $03, $52, $50 ; $348F7C |
  db $4F, $4D, $4B, $4A, $48, $46, $44, $43 ; $348F84 |
  db $41, $03, $57, $56, $54, $52, $50, $0C ; $348F8C |
  db $00, $16, $8E, $B3, $17, $06, $DC, $08 ; $348F94 |
  db $28, $09, $03, $01, $CB, $08, $01, $01 ; $348F9C |
  db $AB, $80, $08, $28, $8B, $01, $C9, $08 ; $348FA4 |
  db $01, $01, $A9, $08, $28, $80, $89, $01 ; $348FAC |
  db $C7, $08, $01, $01, $A7, $08, $28, $80 ; $348FB4 |
  db $87, $A9, $A9, $89, $89, $89, $89, $04 ; $348FBC |
  db $00, $04, $00, $04, $00, $8B, $60, $6B ; $348FC4 |
  db $60, $66, $69, $66, $0E, $01, $8F, $C7 ; $348FCC |
  db $04, $00, $04, $00, $89, $60, $69, $60 ; $348FD4 |
  db $64, $66, $64, $0E, $01, $8F, $D6, $0B ; $348FDC |
  db $FE, $0F, $01, $8F, $D4, $0B, $00, $14 ; $348FE4 |
  db $00, $90, $02, $89, $60, $69, $60, $64 ; $348FEC |
  db $66, $64, $60, $69, $60, $69, $60, $69 ; $348FF4 |
  db $60, $69, $10, $01, $8F, $C5, $04, $00 ; $348FFC |
  db $86, $60, $66, $60, $6A, $6D, $6A, $0E ; $349004 |
  db $01, $90, $02, $04, $00, $89, $60, $01 ; $34900C |
  db $A9, $01, $69, $89, $60, $01, $A9, $01 ; $349014 |
  db $69, $88, $60, $01, $A8, $01, $68, $88 ; $34901C |
  db $60, $01, $A8, $01, $68, $87, $60, $01 ; $349024 |
  db $A7, $01, $67, $87, $60, $01, $A7, $01 ; $34902C |
  db $67, $12, $00, $90, $47, $8B, $60, $01 ; $349034 |
  db $AB, $01, $6B, $8B, $86, $8B, $8F, $0E ; $34903C |
  db $01, $90, $0F, $86, $60, $86, $60, $86 ; $349044 |
  db $60, $66, $60, $66, $08, $15, $54, $54 ; $34904C |
  db $54, $4C, $4C, $4C, $45, $45, $08, $28 ; $349054 |
  db $64, $64, $80, $64, $64, $60, $64, $66 ; $34905C |
  db $66, $60, $66, $60, $66, $86, $67, $67 ; $349064 |
  db $80, $67, $67, $60, $67, $68, $68, $60 ; $34906C |
  db $68, $60, $68, $88, $84, $80, $64, $64 ; $349074 |
  db $80, $64, $64, $60, $64, $60, $64, $84 ; $34907C |
  db $86, $80, $66, $66, $80, $04, $00, $52 ; $349084 |
  db $40, $66, $0E, $03, $90, $89, $16, $8F ; $34908C |
  db $C3, $17, $06, $5A, $07, $0D, $08, $00 ; $349094 |
  db $04, $00, $CD, $80, $A0, $8D, $0E, $02 ; $34909C |
  db $90, $9C, $06, $B4, $AD, $AD, $06, $A0 ; $3490A4 |
  db $8D, $8D, $06, $5A, $07, $0B, $04, $00 ; $3490AC |
  db $4A, $0E, $07, $90, $B2, $04, $00, $04 ; $3490B4 |
  db $00, $04, $00, $06, $5A, $07, $0B, $85 ; $3490BC |
  db $6A, $85, $65, $8A, $0E, $06, $90, $BD ; $3490C4 |
  db $07, $0D, $06, $A0, $13, $00, $90, $DC ; $3490CC |
  db $8D, $8D, $8D, $8D, $0F, $01, $90, $BB ; $3490D4 |
  db $04, $00, $07, $0D, $8D, $07, $0B, $65 ; $3490DC |
  db $0E, $01, $90, $DC, $06, $5A, $4A, $4A ; $3490E4 |
  db $4A, $4A, $04, $00, $04, $00, $04, $00 ; $3490EC |
  db $02, $85, $85, $65, $8A, $0E, $02, $90 ; $3490F4 |
  db $F2, $13, $00, $91, $0F, $02, $85, $85 ; $3490FC |
  db $65, $6A, $6A, $14, $00, $91, $22, $0F ; $349104 |
  db $01, $90, $F0, $85, $07, $0D, $06, $A0 ; $34910C |
  db $8D, $8D, $07, $0B, $06, $5A, $4A, $4A ; $349114 |
  db $4A, $4A, $10, $01, $90, $EE, $02, $85 ; $34911C |
  db $85, $65, $8A, $02, $85, $85, $65, $8A ; $349124 |
  db $07, $0D, $06, $A0, $8D, $65, $8D, $65 ; $34912C |
  db $8D, $07, $0B, $06, $5A, $85, $85, $85 ; $349134 |
  db $80, $04, $00, $85, $8A, $65, $65, $8A ; $34913C |
  db $12, $00, $91, $52, $65, $65, $6A, $85 ; $349144 |
  db $65, $8A, $0E, $03, $91, $3D, $07, $0D ; $34914C |
  db $06, $A0, $8D, $8D, $06, $5A, $07, $0B ; $349154 |
  db $04, $00, $4A, $0E, $07, $91, $5C, $16 ; $34915C |
  db $90, $B9, $17, $00, $91, $70, $92, $81 ; $349164 |
  db $93, $94, $94, $5E, $05, $02, $16, $07 ; $34916C |
  db $0B, $08, $0F, $04, $08, $06, $E1, $18 ; $349174 |
  db $C0, $09, $01, $04, $08, $88, $A0, $8B ; $34917C |
  db $A0, $01, $6F, $08, $13, $02, $01, $8F ; $349184 |
  db $08, $0F, $80, $0D, $64, $01, $92, $08 ; $34918C |
  db $13, $01, $B2, $0D, $00, $08, $0F, $B1 ; $349194 |
  db $AF, $91, $06, $C8, $B2, $06, $E1, $01 ; $34919C |
  db $72, $08, $13, $02, $01, $92, $08, $0F ; $3491A4 |
  db $AD, $12, $08, $91, $BB, $01, $8A, $01 ; $3491AC |
  db $CA, $A8, $A6, $0E, $01, $91, $7F, $01 ; $3491B4 |
  db $96, $08, $10, $01, $D6, $08, $0F, $B4 ; $3491BC |
  db $B2, $06, $F0, $18, $00, $04, $48, $94 ; $3491C4 |
  db $08, $13, $01, $D4, $08, $0F, $B7, $94 ; $3491CC |
  db $06, $DC, $B6, $12, $08, $91, $EE, $B2 ; $3491D4 |
  db $B2, $AF, $92, $B4, $06, $F0, $B4, $92 ; $3491DC |
  db $91, $8F, $D1, $06, $DC, $CD, $0E, $01 ; $3491E4 |
  db $91, $C9, $09, $02, $AD, $AA, $06, $C8 ; $3491EC |
  db $A6, $86, $A8, $01, $A8, $08, $10, $88 ; $3491F4 |
  db $01, $C8, $08, $0F, $18, $C0, $06, $E1 ; $3491FC |
  db $A1, $A3, $A1, $C6, $84, $A3, $02, $A4 ; $349204 |
  db $A3, $A1, $03, $B7, $99, $BB, $06, $C8 ; $34920C |
  db $01, $BB, $08, $10, $9B, $01, $DB, $08 ; $349214 |
  db $0F, $06, $E1, $B7, $BB, $BC, $DE, $9C ; $34921C |
  db $BB, $06, $C8, $02, $BC, $06, $E1, $BC ; $349224 |
  db $BE, $03, $A8, $88, $06, $C8, $AA, $01 ; $34922C |
  db $CA, $08, $10, $8A, $01, $CA, $08, $0F ; $349234 |
  db $06, $E1, $AB, $AA, $04, $08, $8B, $8A ; $34923C |
  db $8B, $01, $6D, $08, $13, $02, $01, $8D ; $349244 |
  db $08, $0F, $8B, $12, $08, $92, $58, $AA ; $34924C |
  db $0E, $01, $92, $40, $8A, $8D, $AF, $AD ; $349254 |
  db $AB, $AA, $02, $A8, $06, $C8, $A6, $86 ; $34925C |
  db $83, $86, $04, $48, $88, $08, $13, $01 ; $349264 |
  db $C8, $08, $0F, $A6, $88, $0E, $01, $92 ; $34926C |
  db $66, $01, $E8, $08, $10, $01, $E8, $08 ; $349274 |
  db $0F, $16, $91, $77, $17, $07, $0A, $04 ; $34927C |
  db $00, $08, $0F, $06, $E1, $18, $C0, $09 ; $349284 |
  db $02, $04, $00, $C0, $80, $88, $8B, $8F ; $34928C |
  db $D4, $B2, $B4, $94, $B6, $B6, $B2, $8D ; $349294 |
  db $8A, $8B, $8D, $8A, $8F, $8D, $8B, $8A ; $34929C |
  db $0E, $01, $92, $8D, $06, $FF, $08, $12 ; $3492A4 |
  db $18, $40, $07, $0B, $04, $00, $90, $94 ; $3492AC |
  db $97, $94, $9B, $97, $94, $97, $8F, $92 ; $3492B4 |
  db $96, $92, $99, $96, $92, $96, $8D, $91 ; $3492BC |
  db $94, $91, $99, $94, $91, $94, $12, $00 ; $3492C4 |
  db $92, $DA, $8D, $91, $94, $91, $99, $94 ; $3492CC |
  db $91, $8D, $0E, $01, $92, $B0, $91, $8D ; $3492D4 |
  db $06, $FA, $07, $0A, $08, $0F, $18, $C0 ; $3492DC |
  db $A8, $61, $63, $65, $66, $68, $6A, $6B ; $3492E4 |
  db $6D, $06, $E1, $04, $00, $8B, $86, $8B ; $3492EC |
  db $8F, $92, $8F, $8B, $86, $89, $84, $89 ; $3492F4 |
  db $8D, $90, $8D, $89, $84, $12, $00, $93 ; $3492FC |
  db $28, $88, $83, $88, $8B, $8F, $94, $96 ; $349304 |
  db $97, $07, $0B, $08, $05, $06, $B4, $18 ; $34930C |
  db $C0, $03, $8D, $AF, $01, $8F, $08, $14 ; $349314 |
  db $01, $CF, $07, $0A, $06, $E1, $08, $0F ; $34931C |
  db $0E, $01, $92, $EF, $8A, $87, $8A, $8F ; $349324 |
  db $93, $8F, $8A, $87, $8A, $8B, $8D, $8F ; $34932C |
  db $06, $FA, $71, $73, $74, $76, $77, $79 ; $349334 |
  db $7B, $7C, $06, $E1, $02, $B4, $74, $76 ; $34933C |
  db $97, $96, $94, $8F, $02, $B2, $72, $74 ; $349344 |
  db $96, $94, $92, $8D, $02, $B0, $70, $72 ; $34934C |
  db $94, $92, $90, $94, $92, $8F, $92, $B6 ; $349354 |
  db $96, $92, $96, $97, $94, $90, $94, $97 ; $34935C |
  db $70, $72, $74, $72, $90, $96, $92, $8D ; $349364 |
  db $92, $96, $6D, $6F, $70, $6F, $8D, $94 ; $34936C |
  db $8F, $8B, $8F, $94, $8F, $8B, $8F, $06 ; $349374 |
  db $FA, $74, $68, $6A, $6B, $6D, $6F, $71 ; $34937C |
  db $73, $74, $76, $77, $79, $07, $09, $7B ; $349384 |
  db $7D, $7F, $03, $68, $16, $92, $83, $17 ; $34938C |
  db $04, $00, $06, $B4, $08, $28, $09, $03 ; $349394 |
  db $04, $00, $04, $00, $88, $0E, $0F, $93 ; $34939C |
  db $9E, $04, $00, $86, $0E, $0F, $93, $A5 ; $3493A4 |
  db $0F, $01, $93, $9C, $04, $00, $84, $84 ; $3493AC |
  db $84, $A4, $8B, $90, $84, $83, $83, $83 ; $3493B4 |
  db $A3, $8A, $8F, $8A, $81, $81, $81, $A1 ; $3493BC |
  db $88, $8D, $88, $81, $81, $81, $81, $08 ; $3493C4 |
  db $15, $12, $00, $93, $E1, $06, $F0, $76 ; $3493CC |
  db $96, $60, $6A, $8A, $60, $06, $B4, $08 ; $3493D4 |
  db $28, $0E, $01, $93, $B0, $06, $DC, $60 ; $3493DC |
  db $76, $96, $71, $71, $6A, $6A, $06, $B4 ; $3493E4 |
  db $08, $28, $04, $00, $04, $00, $8B, $0E ; $3493EC |
  db $07, $93, $F0, $04, $00, $89, $0E, $07 ; $3493F4 |
  db $93, $F7, $13, $00, $94, $10, $04, $00 ; $3493FC |
  db $88, $0E, $0C, $94, $02, $89, $8B, $88 ; $349404 |
  db $0F, $01, $93, $EE, $04, $00, $83, $0E ; $34940C |
  db $0C, $94, $10, $85, $87, $83, $04, $00 ; $349414 |
  db $88, $0E, $07, $94, $1A, $04, $00, $86 ; $34941C |
  db $0E, $07, $94, $21, $04, $00, $84, $0E ; $349424 |
  db $07, $94, $28, $04, $00, $83, $0E, $07 ; $34942C |
  db $94, $2F, $04, $00, $84, $0E, $07, $94 ; $349434 |
  db $36, $04, $00, $86, $0E, $07, $94, $3D ; $34943C |
  db $04, $00, $88, $0E, $08, $94, $44, $8A ; $349444 |
  db $8B, $8A, $06, $DC, $08, $15, $76, $76 ; $34944C |
  db $76, $76, $71, $71, $6A, $6A, $16, $93 ; $349454 |
  db $94, $17, $04, $00, $06, $5A, $07, $0B ; $34945C |
  db $08, $11, $04, $00, $04, $00, $A5, $8A ; $349464 |
  db $A5, $85, $12, $00, $94, $77, $AA, $0E ; $34946C |
  db $03, $94, $68, $8A, $8A, $0F, $01, $94 ; $349474 |
  db $66, $04, $00, $85, $8F, $8F, $85, $06 ; $34947C |
  db $0F, $08, $00, $00, $6F, $6F, $6F, $06 ; $349484 |
  db $5A, $08, $11, $00, $8F, $8A, $8F, $04 ; $34948C |
  db $00, $85, $8F, $8F, $85, $12, $00, $94 ; $349494 |
  db $A5, $8F, $8F, $8A, $8F, $0E, $02, $94 ; $34949C |
  db $93, $13, $00, $94, $B1, $85, $85, $85 ; $3494A4 |
  db $85, $0F, $01, $94, $7D, $A5, $A5, $04 ; $3494AC |
  db $00, $04, $00, $A5, $AA, $85, $85, $AA ; $3494B4 |
  db $85, $85, $8A, $A5, $85, $12, $00, $94 ; $3494BC |
  db $CA, $AA, $0E, $01, $94, $B5, $8A, $06 ; $3494C4 |
  db $F0, $07, $0C, $8D, $06, $5A, $07, $0B ; $3494CC |
  db $0F, $01, $94, $B3, $04, $00, $85, $85 ; $3494D4 |
  db $8A, $85, $0E, $0E, $94, $D8, $A5, $A5 ; $3494DC |
  db $16, $94, $5E, $17, $00, $94, $F1, $96 ; $3494E4 |
  db $37, $97, $5E, $98, $0C, $05, $02, $16 ; $3494EC |
  db $07, $0B, $09, $03, $C0, $04, $00, $08 ; $3494F4 |
  db $0F, $06, $C8, $18, $40, $84, $A7, $04 ; $3494FC |
  db $00, $04, $00, $06, $AA, $A9, $89, $06 ; $349504 |
  db $C8, $A9, $87, $A9, $00, $4B, $01, $4C ; $34950C |
  db $8C, $08, $10, $00, $01, $8C, $08, $0F ; $349514 |
  db $12, $00, $95, $30, $89, $87, $89, $80 ; $34951C |
  db $89, $8C, $13, $00, $95, $3C, $0B, $05 ; $349524 |
  db $0E, $01, $95, $05, $0B, $00, $90, $8E ; $34952C |
  db $90, $80, $84, $87, $0F, $01, $95, $03 ; $349534 |
  db $AE, $8C, $8E, $8C, $AE, $8F, $B0, $8B ; $34953C |
  db $87, $01, $89, $08, $10, $01, $A9, $08 ; $349544 |
  db $0F, $80, $06, $DC, $04, $00, $02, $89 ; $34954C |
  db $60, $69, $60, $A9, $87, $A9, $02, $01 ; $349554 |
  db $8C, $01, $4C, $40, $8C, $8B, $8C, $8B ; $34955C |
  db $89, $87, $84, $06, $FA, $12, $00, $95 ; $349564 |
  db $88, $02, $A7, $02, $AB, $08, $05, $06 ; $34956C |
  db $B4, $18, $C0, $02, $B3, $02, $B7, $9A ; $349574 |
  db $98, $97, $06, $DC, $08, $0F, $18, $40 ; $34957C |
  db $0E, $01, $95, $50, $02, $A2, $02, $A7 ; $349584 |
  db $08, $05, $06, $B4, $18, $C0, $02, $AE ; $34958C |
  db $02, $B3, $BA, $BF, $06, $F0, $08, $0F ; $349594 |
  db $18, $40, $02, $A5, $02, $A9, $AC, $8B ; $34959C |
  db $8C, $8B, $02, $87, $60, $87, $AB, $02 ; $3495A4 |
  db $AC, $02, $AE, $B0, $8E, $90, $8E, $02 ; $3495AC |
  db $89, $60, $89, $8C, $06, $B4, $AB, $8B ; $3495B4 |
  db $8B, $06, $DC, $8C, $8B, $89, $87, $01 ; $3495BC |
  db $A4, $08, $10, $A4, $01, $64, $60, $08 ; $3495C4 |
  db $0F, $8B, $AC, $06, $BE, $AE, $8E, $06 ; $3495CC |
  db $DC, $90, $91, $90, $8E, $8C, $01, $B0 ; $3495D4 |
  db $08, $10, $B0, $01, $70, $60, $04, $00 ; $3495DC |
  db $08, $0F, $90, $06, $BE, $B3, $B5, $06 ; $3495E4 |
  db $DC, $95, $93, $90, $93, $90, $8E, $12 ; $3495EC |
  db $00, $96, $1A, $01, $B0, $08, $10, $02 ; $3495F4 |
  db $01, $B0, $08, $0F, $80, $90, $93, $06 ; $3495FC |
  db $BE, $B5, $06, $DC, $95, $93, $95, $97 ; $349604 |
  db $98, $97, $01, $B5, $08, $10, $B5, $01 ; $34960C |
  db $75, $60, $0E, $01, $95, $E2, $B0, $8E ; $349614 |
  db $8C, $89, $80, $8B, $8C, $06, $BE, $AB ; $34961C |
  db $06, $DC, $8B, $AE, $8B, $89, $87, $01 ; $349624 |
  db $A9, $08, $10, $A9, $01, $69, $60, $16 ; $34962C |
  db $94, $F9, $17, $06, $C8, $07, $0A, $09 ; $349634 |
  db $02, $C0, $04, $00, $08, $0F, $18, $40 ; $34963C |
  db $8B, $AE, $04, $00, $04, $00, $06, $AA ; $349644 |
  db $B0, $90, $06, $C8, $B0, $8E, $B0, $01 ; $34964C |
  db $95, $08, $10, $01, $95, $08, $0F, $12 ; $349654 |
  db $00, $96, $6F, $90, $8E, $90, $80, $90 ; $34965C |
  db $95, $13, $00, $96, $7B, $0B, $05, $0E ; $349664 |
  db $01, $96, $48, $0B, $00, $97, $95, $97 ; $34966C |
  db $80, $8B, $8E, $0F, $01, $96, $46, $B5 ; $349674 |
  db $95, $95, $95, $B5, $96, $B7, $93, $8E ; $34967C |
  db $01, $90, $08, $10, $01, $B0, $08, $0F ; $349684 |
  db $A0, $04, $00, $18, $80, $07, $08, $06 ; $34968C |
  db $A0, $08, $0E, $04, $00, $80, $9C, $03 ; $349694 |
  db $89, $84, $8C, $8B, $89, $84, $0E, $01 ; $34969C |
  db $96, $97, $04, $00, $80, $9A, $9F, $9A ; $3496A4 |
  db $03, $8B, $89, $87, $82, $0E, $01, $96 ; $3496AC |
  db $A6, $0F, $01, $96, $8D, $06, $F0, $07 ; $3496B4 |
  db $08, $08, $08, $18, $80, $03, $89, $8C ; $3496BC |
  db $91, $AC, $93, $91, $8C, $8B, $8E, $93 ; $3496C4 |
  db $AE, $95, $93, $8E, $8C, $90, $93, $B0 ; $3496CC |
  db $93, $90, $8C, $8E, $91, $95, $B1, $98 ; $3496D4 |
  db $91, $06, $F0, $08, $0F, $0C, $03, $18 ; $3496DC |
  db $40, $07, $07, $B7, $97, $97, $98, $97 ; $3496E4 |
  db $95, $93, $01, $B0, $08, $10, $B0, $01 ; $3496EC |
  db $70, $60, $08, $0F, $97, $B8, $06, $BE ; $3496F4 |
  db $BA, $9A, $06, $DC, $9C, $9D, $9C, $9A ; $3496FC |
  db $98, $0C, $00, $07, $0A, $01, $B4, $08 ; $349704 |
  db $10, $B4, $01, $74, $60, $04, $00, $08 ; $34970C |
  db $0F, $93, $06, $BE, $B7, $B8, $06, $DC ; $349714 |
  db $98, $97, $93, $97, $93, $91, $12, $00 ; $34971C |
  db $97, $41, $B0, $91, $93, $02, $90, $60 ; $349724 |
  db $93, $97, $06, $BE, $B8, $06, $DC, $98 ; $34972C |
  db $97, $98, $9A, $9C, $9A, $B8, $97, $93 ; $349734 |
  db $95, $0E, $01, $97, $11, $B3, $91, $90 ; $34973C |
  db $8C, $80, $8E, $90, $06, $BE, $AE, $06 ; $349744 |
  db $DC, $8E, $B1, $8E, $8C, $8B, $01, $AC ; $34974C |
  db $08, $10, $AC, $01, $6C, $60, $16, $96 ; $349754 |
  db $3E, $17, $06, $D2, $08, $28, $09, $03 ; $34975C |
  db $C0, $04, $00, $84, $84, $80, $89, $04 ; $349764 |
  db $00, $80, $89, $A9, $84, $87, $84, $89 ; $34976C |
  db $80, $89, $A9, $89, $8C, $89, $8E, $80 ; $349774 |
  db $8E, $AE, $89, $8E, $89, $90, $80, $90 ; $34977C |
  db $12, $00, $97, $91, $B0, $90, $8B, $87 ; $349784 |
  db $89, $0E, $01, $97, $6B, $90, $A9, $80 ; $34978C |
  db $84, $04, $00, $A9, $89, $8C, $89, $8E ; $349794 |
  db $8C, $87, $A9, $89, $8C, $89, $8E, $8C ; $34979C |
  db $89, $A7, $87, $8B, $87, $8E, $8B, $89 ; $3497A4 |
  db $A7, $87, $8B, $87, $8E, $8B, $12, $00 ; $3497AC |
  db $97, $BB, $87, $0E, $01, $97, $95, $89 ; $3497B4 |
  db $87, $A5, $80, $A5, $89, $8C, $85, $A7 ; $3497BC |
  db $80, $A7, $8B, $8E, $8B, $AC, $80, $AC ; $3497C4 |
  db $8E, $90, $8C, $AE, $80, $AE, $90, $91 ; $3497CC |
  db $B0, $84, $A4, $84, $87, $8B, $B0, $84 ; $3497D4 |
  db $A4, $84, $88, $8B, $AE, $82, $A2, $82 ; $3497DC |
  db $84, $85, $A4, $84, $85, $84, $88, $84 ; $3497E4 |
  db $8B, $84, $04, $00, $02, $89, $69, $80 ; $3497EC |
  db $89, $80, $89, $80, $84, $0E, $05, $97 ; $3497F4 |
  db $EE, $02, $84, $64, $80, $84, $84, $87 ; $3497FC |
  db $8B, $89, $A9, $A0, $16, $97, $65, $17 ; $349804 |
  db $06, $96, $07, $0A, $08, $00, $A5, $65 ; $34980C |
  db $6D, $6D, $6D, $6A, $6A, $6A, $6A, $66 ; $349814 |
  db $66, $66, $66, $04, $00, $04, $00, $07 ; $34981C |
  db $0A, $85, $07, $09, $8F, $07, $0A, $8A ; $349824 |
  db $07, $09, $8F, $07, $0A, $85, $85, $8A ; $34982C |
  db $12, $00, $98, $3D, $85, $0E, $07, $98 ; $349834 |
  db $21, $06, $FA, $07, $0B, $8D, $06, $96 ; $34983C |
  db $04, $00, $04, $00, $07, $0A, $85, $07 ; $349844 |
  db $09, $8F, $07, $0A, $8A, $07, $09, $8F ; $34984C |
  db $07, $0A, $12, $00, $98, $62, $85, $85 ; $349854 |
  db $8A, $85, $0E, $03, $98, $46, $13, $00 ; $34985C |
  db $98, $6F, $85, $85, $6D, $6A, $86, $0F ; $349864 |
  db $01, $98, $44, $65, $6D, $6A, $66, $85 ; $34986C |
  db $85, $04, $00, $07, $0A, $85, $07, $09 ; $349874 |
  db $8F, $07, $0A, $8A, $85, $07, $09, $8F ; $34987C |
  db $07, $0A, $85, $12, $00, $98, $93, $8A ; $349884 |
  db $07, $09, $8F, $0E, $05, $98, $75, $6A ; $34988C |
  db $6A, $8A, $04, $00, $07, $0A, $85, $07 ; $349894 |
  db $09, $8F, $07, $0A, $8A, $85, $07, $09 ; $34989C |
  db $8F, $07, $0A, $85, $12, $00, $98, $B4 ; $3498A4 |
  db $8A, $07, $09, $8F, $0E, $01, $98, $96 ; $3498AC |
  db $6A, $6A, $8A, $07, $0A, $04, $00, $02 ; $3498B4 |
  db $85, $65, $8A, $A5, $85, $8A, $85, $12 ; $3498BC |
  db $00, $98, $D2, $02, $85, $65, $8A, $A5 ; $3498C4 |
  db $85, $AA, $0E, $03, $98, $B9, $6D, $6A ; $3498CC |
  db $86, $6D, $6A, $86, $65, $6A, $6A, $6A ; $3498D4 |
  db $6A, $6A, $6A, $6A, $16, $98, $1F, $17 ; $3498DC |
  db $00, $98, $ED, $9A, $32, $9B, $78, $9C ; $3498E4 |
  db $B2, $05, $01, $8C, $06, $E6, $07, $05 ; $3498EC |
  db $08, $07, $09, $02, $18, $80, $0C, $03 ; $3498F4 |
  db $89, $8D, $90, $B5, $0C, $00, $18, $40 ; $3498FC |
  db $06, $E1, $07, $0B, $90, $93, $95, $37 ; $349904 |
  db $01, $39, $02, $79, $01, $B9, $B7, $95 ; $34990C |
  db $93, $90, $02, $AE, $01, $8C, $02, $01 ; $349914 |
  db $6C, $40, $8C, $8E, $90, $01, $AE, $05 ; $34991C |
  db $01, $74, $01, $AE, $05, $01, $69, $B3 ; $349924 |
  db $05, $01, $4C, $B7, $05, $01, $C7, $06 ; $34992C |
  db $DC, $01, $D9, $07, $09, $08, $0B, $01 ; $349934 |
  db $D9, $07, $0B, $08, $07, $02, $BC, $BA ; $34993C |
  db $99, $97, $95, $01, $D3, $07, $09, $08 ; $349944 |
  db $0B, $01, $D3, $07, $0B, $08, $07, $CE ; $34994C |
  db $07, $09, $B0, $AE, $04, $00, $07, $0B ; $349954 |
  db $04, $00, $C0, $80, $90, $93, $95, $37 ; $34995C |
  db $01, $39, $02, $79, $01, $B9, $B7, $95 ; $349964 |
  db $93, $90, $8E, $8D, $8E, $8D, $8E, $8F ; $34996C |
  db $80, $12, $00, $99, $89, $B0, $8D, $89 ; $349974 |
  db $01, $A4, $08, $0D, $02, $01, $A4, $08 ; $34997C |
  db $07, $0E, $01, $99, $5C, $02, $01, $B0 ; $349984 |
  db $08, $0D, $02, $01, $D0, $08, $07, $04 ; $34998C |
  db $00, $A0, $60, $75, $70, $75, $97, $99 ; $349994 |
  db $97, $95, $A0, $60, $73, $6E, $73, $95 ; $34999C |
  db $97, $95, $93, $12, $00, $99, $BF, $A0 ; $3499A4 |
  db $60, $75, $70, $75, $97, $99, $97, $95 ; $3499AC |
  db $BC, $BA, $B9, $57, $59, $77, $95, $0E ; $3499B4 |
  db $01, $99, $93, $01, $91, $08, $0D, $01 ; $3499BC |
  db $B1, $08, $07, $71, $73, $B5, $53, $55 ; $3499C4 |
  db $73, $91, $B3, $B5, $B7, $98, $9A, $18 ; $3499CC |
  db $00, $04, $00, $9C, $5A, $5C, $7A, $98 ; $3499D4 |
  db $97, $98, $9A, $06, $BE, $BC, $06, $DC ; $3499DC |
  db $9C, $5C, $40, $7D, $7F, $7D, $7C, $7A ; $3499E4 |
  db $98, $9A, $06, $BE, $BC, $06, $DC, $9C ; $3499EC |
  db $5A, $5C, $7A, $98, $97, $98, $9A, $9C ; $3499F4 |
  db $97, $06, $F0, $01, $95, $08, $0B, $02 ; $3499FC |
  db $01, $B5, $06, $DC, $08, $07, $D3, $0E ; $349A04 |
  db $01, $99, $D5, $01, $D5, $01, $75, $60 ; $349A0C |
  db $95, $99, $9C, $01, $03, $A9, $08, $0D ; $349A14 |
  db $C9, $01, $89, $07, $06, $29, $28, $26 ; $349A1C |
  db $24, $22, $21, $03, $37, $35, $08, $07 ; $349A24 |
  db $18, $40, $16, $99, $58, $17, $06, $E6 ; $349A2C |
  db $07, $0A, $08, $07, $09, $02, $18, $80 ; $349A34 |
  db $89, $8D, $90, $01, $B5, $08, $0B, $02 ; $349A3C |
  db $01, $B5, $08, $07, $87, $8B, $8E, $01 ; $349A44 |
  db $B3, $08, $0B, $02, $01, $B3, $08, $07 ; $349A4C |
  db $85, $89, $8C, $01, $B1, $08, $0B, $02 ; $349A54 |
  db $01, $B1, $08, $07, $87, $8B, $8E, $02 ; $349A5C |
  db $B3, $AE, $04, $00, $04, $00, $18, $40 ; $349A64 |
  db $07, $0B, $06, $B4, $69, $64, $67, $69 ; $349A6C |
  db $6D, $69, $67, $69, $06, $F0, $08, $06 ; $349A74 |
  db $03, $69, $69, $75, $70, $73, $75, $06 ; $349A7C |
  db $B4, $08, $07, $03, $67, $64, $0E, $01 ; $349A84 |
  db $9A, $68, $0B, $FE, $0F, $01, $9A, $66 ; $349A8C |
  db $0B, $00, $04, $00, $08, $0A, $07, $0D ; $349A94 |
  db $06, $D2, $04, $00, $04, $00, $69, $64 ; $349A9C |
  db $67, $69, $60, $69, $60, $69, $60, $69 ; $349AA4 |
  db $60, $69, $69, $64, $67, $69, $0E, $01 ; $349AAC |
  db $9A, $A0, $67, $62, $64, $67, $60, $67 ; $349AB4 |
  db $60, $67, $60, $67, $60, $67, $67, $62 ; $349ABC |
  db $64, $67, $13, $00, $9A, $D8, $69, $64 ; $349AC4 |
  db $67, $69, $60, $69, $60, $69, $AB, $AB ; $349ACC |
  db $0F, $01, $9A, $9E, $68, $62, $64, $68 ; $349AD4 |
  db $60, $68, $60, $68, $07, $0A, $06, $F0 ; $349ADC |
  db $08, $08, $18, $80, $88, $8B, $8E, $90 ; $349AE4 |
  db $04, $40, $73, $02, $B3, $08, $09, $02 ; $349AEC |
  db $01, $B3, $08, $08, $71, $70, $6E, $02 ; $349AF4 |
  db $B0, $6E, $6D, $02, $AB, $6D, $6E, $12 ; $349AFC |
  db $00, $9B, $1C, $01, $B3, $08, $09, $02 ; $349B04 |
  db $01, $B3, $08, $08, $91, $90, $8E, $AD ; $349B0C |
  db $AB, $A9, $8B, $8D, $0E, $01, $9A, $EC ; $349B14 |
  db $02, $AC, $6C, $6B, $A9, $8B, $8C, $AB ; $349B1C |
  db $AC, $AE, $90, $91, $18, $00, $08, $07 ; $349B24 |
  db $06, $DC, $04, $00, $98, $57, $58, $77 ; $349B2C |
  db $95, $93, $95, $97, $06, $BE, $B8, $06 ; $349B34 |
  db $DC, $98, $58, $40, $7A, $7C, $7A, $78 ; $349B3C |
  db $77, $95, $97, $06, $BE, $B8, $06, $DC ; $349B44 |
  db $98, $57, $58, $77, $95, $93, $95, $97 ; $349B4C |
  db $98, $93, $06, $F0, $D1, $06, $DC, $CE ; $349B54 |
  db $0E, $01, $9B, $2E, $04, $00, $18, $40 ; $349B5C |
  db $07, $09, $06, $B4, $69, $64, $67, $69 ; $349B64 |
  db $6D, $69, $67, $69, $0E, $03, $9B, $60 ; $349B6C |
  db $16, $9A, $96, $17, $06, $F0, $08, $28 ; $349B74 |
  db $09, $02, $01, $D5, $08, $01, $01, $D5 ; $349B7C |
  db $08, $28, $01, $D3, $08, $01, $01, $D3 ; $349B84 |
  db $08, $28, $01, $D1, $08, $01, $01, $D1 ; $349B8C |
  db $08, $28, $CE, $AB, $A7, $04, $00, $09 ; $349B94 |
  db $03, $06, $B4, $89, $60, $69, $6D, $6E ; $349B9C |
  db $60, $6D, $60, $69, $60, $69, $8D, $8E ; $349BA4 |
  db $0E, $01, $9B, $99, $87, $60, $67, $6B ; $349BAC |
  db $6C, $60, $6B, $60, $67, $60, $67, $8B ; $349BB4 |
  db $8C, $87, $60, $67, $6B, $6C, $60, $6B ; $349BBC |
  db $04, $00, $08, $15, $60, $74, $94, $6F ; $349BC4 |
  db $6F, $68, $68, $08, $28, $04, $00, $04 ; $349BCC |
  db $00, $89, $60, $69, $6D, $6E, $60, $6D ; $349BD4 |
  db $60, $69, $60, $69, $8D, $8E, $0E, $01 ; $349BDC |
  db $9B, $D3, $87, $60, $67, $6B, $6C, $60 ; $349BE4 |
  db $6B, $60, $67, $60, $67, $8B, $8C, $13 ; $349BEC |
  db $00, $9C, $04, $89, $60, $69, $6D, $69 ; $349BF4 |
  db $60, $69, $A4, $A4, $0F, $01, $9B, $D1 ; $349BFC |
  db $84, $60, $64, $6B, $64, $60, $64, $60 ; $349C04 |
  db $64, $64, $60, $88, $8B, $04, $00, $69 ; $349C0C |
  db $69, $60, $69, $89, $80, $69, $75, $60 ; $349C14 |
  db $70, $60, $6D, $60, $69, $67, $67, $60 ; $349C1C |
  db $67, $87, $80, $67, $73, $60, $6E, $60 ; $349C24 |
  db $6B, $60, $67, $12, $00, $9C, $50, $69 ; $349C2C |
  db $69, $60, $69, $89, $80, $69, $75, $60 ; $349C34 |
  db $70, $60, $6D, $60, $69, $67, $67, $60 ; $349C3C |
  db $67, $87, $80, $60, $67, $87, $8B, $8E ; $349C44 |
  db $0E, $01, $9C, $11, $65, $65, $60, $65 ; $349C4C |
  db $85, $80, $65, $71, $60, $6C, $60, $69 ; $349C54 |
  db $60, $65, $04, $00, $87, $53, $02, $60 ; $349C5C |
  db $0E, $03, $9C, $5E, $04, $00, $04, $00 ; $349C64 |
  db $89, $60, $69, $70, $69, $60, $69, $60 ; $349C6C |
  db $69, $69, $02, $80, $84, $0E, $01, $9C ; $349C74 |
  db $6A, $87, $60, $67, $6E, $67, $60, $67 ; $349C7C |
  db $60, $67, $67, $02, $80, $82, $85, $60 ; $349C84 |
  db $65, $6C, $65, $60, $65, $60, $67, $87 ; $349C8C |
  db $8B, $8E, $0F, $01, $9C, $68, $89, $60 ; $349C94 |
  db $69, $69, $60, $69, $69, $60, $69, $69 ; $349C9C |
  db $60, $84, $84, $89, $60, $69, $69, $60 ; $349CA4 |
  db $69, $69, $16, $9B, $C4, $17, $06, $64 ; $349CAC |
  db $08, $00, $E0, $E0, $E0, $E0, $04, $00 ; $349CB4 |
  db $07, $0B, $02, $85, $65, $8A, $65, $85 ; $349CBC |
  db $65, $85, $8A, $07, $0A, $6F, $6F, $07 ; $349CC4 |
  db $0B, $02, $85, $65, $8A, $65, $12, $00 ; $349CCC |
  db $9C, $E0, $85, $65, $85, $8A, $6A, $6A ; $349CD4 |
  db $0E, $01, $9C, $BA, $65, $A5, $A5, $04 ; $349CDC |
  db $00, $04, $00, $04, $00, $07, $0B, $02 ; $349CE4 |
  db $85, $65, $8A, $65, $85, $65, $85, $8A ; $349CEC |
  db $07, $0A, $6F, $6F, $07, $0B, $02, $85 ; $349CF4 |
  db $65, $8A, $65, $12, $00, $9D, $0D, $85 ; $349CFC |
  db $65, $85, $8A, $6A, $6A, $0E, $01, $9C ; $349D04 |
  db $E7, $65, $13, $00, $9D, $1A, $07, $0D ; $349D0C |
  db $AD, $AD, $0F, $01, $9C, $E5, $6A, $6A ; $349D14 |
  db $6A, $6A, $6A, $6A, $6A, $6A, $04, $00 ; $349D1C |
  db $04, $00, $07, $0D, $06, $F0, $8F, $06 ; $349D24 |
  db $78, $07, $0A, $6F, $07, $0B, $65, $8A ; $349D2C |
  db $07, $0A, $6F, $6F, $6F, $07, $0B, $65 ; $349D34 |
  db $85, $8A, $07, $0A, $6F, $6F, $0E, $02 ; $349D3C |
  db $9D, $24, $13, $00, $9D, $60, $07, $0B ; $349D44 |
  db $02, $85, $65, $8A, $07, $0A, $6F, $6F ; $349D4C |
  db $07, $0B, $65, $6A, $8A, $8A, $6A, $6A ; $349D54 |
  db $0F, $01, $9D, $22, $07, $0B, $65, $02 ; $349D5C |
  db $85, $65, $02, $85, $65, $6A, $6A, $6A ; $349D64 |
  db $6A, $6A, $6A, $6A, $04, $00, $04, $00 ; $349D6C |
  db $06, $E6, $07, $0D, $02, $8D, $06, $8C ; $349D74 |
  db $07, $0B, $65, $6A, $65, $07, $0A, $6F ; $349D7C |
  db $6F, $07, $0B, $65, $65, $85, $12, $00 ; $349D84 |
  db $9D, $97, $8A, $07, $0A, $6F, $6F, $0E ; $349D8C |
  db $03, $9D, $72, $6A, $6A, $6A, $6A, $0F ; $349D94 |
  db $01, $9D, $70, $02, $85, $65, $8A, $65 ; $349D9C |
  db $85, $65, $85, $8A, $07, $0A, $6F, $6F ; $349DA4 |
  db $07, $0B, $02, $85, $65, $8A, $65, $65 ; $349DAC |
  db $A5, $A5, $16, $9C, $E3, $17, $00, $9D ; $349DB4 |
  db $C3, $9E, $C9, $9F, $C0, $A0, $AE, $05 ; $349DBC |
  db $01, $D8, $06, $E6, $07, $0B, $E0, $E0 ; $349DC4 |
  db $04, $00, $18, $40, $09, $01, $08, $02 ; $349DCC |
  db $04, $00, $04, $00, $7E, $03, $69, $6B ; $349DD4 |
  db $66, $69, $60, $6B, $6E, $60, $6E, $8B ; $349DDC |
  db $89, $8B, $0E, $01, $9D, $D6, $64, $60 ; $349DE4 |
  db $67, $01, $69, $08, $03, $01, $A9, $08 ; $349DEC |
  db $02, $80, $84, $87, $89, $01, $8D, $08 ; $349DF4 |
  db $03, $01, $AD, $08, $02, $13, $08, $9E ; $349DFC |
  db $0D, $AB, $89, $87, $84, $0F, $01, $9D ; $349E04 |
  db $D4, $AE, $8D, $8B, $89, $04, $40, $9F ; $349E0C |
  db $08, $03, $01, $DF, $08, $02, $03, $8B ; $349E14 |
  db $8E, $92, $01, $70, $08, $03, $02, $01 ; $349E1C |
  db $90, $08, $02, $12, $08, $9E, $34, $8E ; $349E24 |
  db $AD, $8B, $89, $86, $0E, $01, $9E, $11 ; $349E2C |
  db $92, $06, $C8, $B0, $06, $E6, $8D, $8E ; $349E34 |
  db $90, $72, $70, $60, $02, $8E, $92, $70 ; $349E3C |
  db $6E, $60, $02, $8D, $90, $6E, $6D, $60 ; $349E44 |
  db $02, $8B, $8E, $8D, $8B, $89, $84, $01 ; $349E4C |
  db $86, $08, $03, $02, $01, $A6, $08, $02 ; $349E54 |
  db $80, $8A, $8D, $90, $80, $92, $60, $06 ; $349E5C |
  db $B4, $02, $92, $06, $E6, $07, $0B, $0D ; $349E64 |
  db $7F, $01, $B2, $01, $52, $07, $08, $4D ; $349E6C |
  db $4A, $46, $80, $0D, $00, $07, $0B, $04 ; $349E74 |
  db $08, $6B, $6B, $60, $6B, $A0, $60, $6B ; $349E7C |
  db $6E, $60, $6B, $60, $69, $60, $0E, $02 ; $349E84 |
  db $9E, $7B, $AB, $AD, $6B, $60, $02, $A9 ; $349E8C |
  db $04, $08, $6B, $6B, $60, $6B, $A0, $60 ; $349E94 |
  db $6B, $12, $08, $9E, $AB, $6E, $60, $6B ; $349E9C |
  db $60, $69, $60, $0E, $02, $9E, $94, $6D ; $349EA4 |
  db $60, $6E, $60, $70, $60, $02, $B2, $09 ; $349EAC |
  db $02, $01, $8D, $08, $03, $02, $01, $AD ; $349EB4 |
  db $0D, $7F, $4A, $46, $41, $03, $56, $0D ; $349EBC |
  db $00, $16, $9D, $CC, $17, $09, $02, $E0 ; $349EC4 |
  db $E0, $04, $00, $04, $00, $04, $00, $07 ; $349ECC |
  db $0A, $06, $E6, $08, $02, $18, $40, $6B ; $349ED4 |
  db $6E, $72, $6B, $6E, $60, $72, $72, $60 ; $349EDC |
  db $72, $8E, $8B, $8E, $0E, $01, $9E, $D1 ; $349EE4 |
  db $6D, $60, $6D, $8D, $08, $05, $07, $09 ; $349EEC |
  db $06, $96, $18, $00, $79, $03, $69, $64 ; $349EF4 |
  db $8D, $06, $E6, $07, $0A, $08, $02, $18 ; $349EFC |
  db $40, $03, $8D, $90, $90, $60, $06, $96 ; $349F04 |
  db $08, $05, $07, $09, $18, $00, $7C, $03 ; $349F0C |
  db $69, $64, $6D, $69, $70, $6D, $75, $70 ; $349F14 |
  db $6D, $70, $6D, $69, $64, $61, $0F, $01 ; $349F1C |
  db $9E, $CF, $07, $0A, $06, $B4, $04, $08 ; $349F24 |
  db $04, $08, $6B, $67, $62, $0E, $04, $9F ; $349F2C |
  db $2C, $6B, $04, $08, $69, $64, $61, $0E ; $349F34 |
  db $04, $9F, $36, $69, $0F, $01, $9F, $2A ; $349F3C |
  db $06, $E6, $08, $02, $18, $40, $03, $6B ; $349F44 |
  db $6B, $60, $01, $AB, $01, $6B, $6D, $6D ; $349F4C |
  db $60, $01, $AD, $01, $6D, $6E, $6E, $60 ; $349F54 |
  db $01, $AE, $01, $6E, $70, $70, $60, $02 ; $349F5C |
  db $90, $8D, $6A, $66, $61, $66, $6A, $66 ; $349F64 |
  db $6A, $6D, $90, $8D, $92, $96, $80, $99 ; $349F6C |
  db $60, $06, $B4, $02, $99, $06, $E6, $B9 ; $349F74 |
  db $A0, $04, $00, $6E, $6E, $60, $6E, $A0 ; $349F7C |
  db $60, $6E, $72, $60, $6E, $60, $6D, $60 ; $349F84 |
  db $0E, $02, $9F, $7D, $AE, $B0, $6E, $60 ; $349F8C |
  db $02, $AD, $04, $00, $6E, $6E, $60, $6E ; $349F94 |
  db $A0, $60, $6E, $12, $00, $9F, $AD, $72 ; $349F9C |
  db $60, $6E, $60, $6D, $60, $0E, $02, $9F ; $349FA4 |
  db $96, $70, $60, $72, $60, $73, $60, $02 ; $349FAC |
  db $B6, $01, $BE, $08, $03, $01, $BE, $80 ; $349FB4 |
  db $16, $9E, $CD, $17, $08, $28, $09, $03 ; $349FBC |
  db $06, $D2, $6B, $66, $69, $66, $60, $8B ; $349FC4 |
  db $6B, $A6, $89, $66, $69, $6B, $66, $69 ; $349FCC |
  db $66, $60, $8B, $6B, $A6, $89, $8D, $04 ; $349FD4 |
  db $00, $04, $00, $04, $00, $04, $00, $8B ; $349FDC |
  db $60, $66, $60, $66, $8B, $0E, $03, $9F ; $349FE4 |
  db $E1, $0B, $FE, $0F, $01, $9F, $DF, $0B ; $349FEC |
  db $00, $10, $01, $9F, $DD, $04, $00, $04 ; $349FF4 |
  db $00, $87, $60, $62                     ; $349FFC |
