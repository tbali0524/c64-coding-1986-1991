0 REM     * * * SPRITEMAKER 64 * * *
1 REM  ---------------------------------
2 REM   ( TOTH BALINT,1987-88.HUNGARY )
3 REM  ? 
4 REM  ? 
5 REM  ? 
6 REM  ? 
7 REM  ? 
8 REM  ? 
9 REM  ? 
10 IF PEEK (49152) = 33 THEN 20: PRINT ""
15 SYS 64738: PRINT ""
20 POKE 808,237:R$ = CHR$ (13)
25 K$ = "               "
30 V = 53248: DIM S$(15): DIM T(62): DIM K$(59)
40 POKE V + 32,14: POKE V + 33,0: POKE V + 21,0
50 PRINT CHR$ (142) CHR$ (8)"?"
60 FOR Z = 0 TO 15: READ Q$
70 S$(Z) = Q$ + LEFT$ (K$,10 - LEN (Q$)): NEXT 
120 PRINT TAB( 9)"**********************"
125 PRINT TAB( 9)"*                    *"
130 PRINT TAB( 9)"*   SPRITEMAKER 64   *"
140 PRINT TAB( 9)"*                    *"
150 PRINT TAB( 9)"*                    *"
160 PRINT TAB( 9)"*  ?IRTA:TOTH BALINT  *"
170 PRINT TAB( 9)"*                    *"
180 PRINT TAB( 9)"**********************"
190 FOR Z = 1 TO 2500: NEXT 
200 PRINT "?SPRITEMAKER 64 --- MENU"
210 PRINT "1?   SPRITE KESZITESE"
220 PRINT "2?   SPRITE ROGZITESE"
230 PRINT "3?   SPRITE VISSZAKERESESE"
240 PRINT "4?   SPRITE VISSZAKERESESE NEV ALAPJAN"
250 PRINT "5?   SPRITE KIPROBALASA"
260 PRINT "6?   VEGE"
270 PRINT "VALASSZON!(1-6)"
280 GET Z$: IF Z$ = "" THEN 280
290 IF Z$ = "1" THEN 390
300 IF Z$ = "2" THEN 1150
310 IF Z$ = "3" THEN 1280
320 IF Z$ = "4" THEN 1400
330 IF Z$ = "5" THEN 1550
340 IF Z$ = "6" THEN 360
350 GOTO 280
360 POKE V + 32,14: POKE V + 33,6
365 POKE 49152,0: PRINT ""
370 PRINT CHR$ (142) CHR$ (9)"??";
380 CLR : END 
390 PRINT "?SPRITE KESZITESE"
400 PRINT TAB( 12)"????????????????"
405 GOSUB 11100
410 INPUT "SPRITE SORSZAMA(0-7)";S1$
420 IF VAL (S1$) < 0 OR VAL (S1$) > 7 OR S1$ = "" THEN  390
425 IF VAL (S1$) = 0 THEN S1$ = "0"
430 INPUT "SPRITE NEVE(MAX.10 BETU)";S2$
440 IF LEN (S2$) > 10 THEN GOSUB 10000: GOTO 430
445 S2$ = S2$ + LEFT$ (K$,10 - LEN (S2$))
450 INPUT "X IRANYU NAGYITAS(I/N)";S3$
460 IF S3$ < > "I" AND S3$ < > "N" THEN GOSUB 10000: GOTO 450
470 INPUT "Y IRANYU NAGYITAS(I/N)";S4$
480 IF S4$ < > "I" AND S4$ < > "N" THEN GOSUB 10000: GOTO 470
490 PRINT "SZINEK:"
500 FOR Z = 0 TO 7
510 PRINT " ";Z;"?";S$(Z): NEXT 
520 PRINT "????????  8? ";S$(8)
530 PRINT TAB( 13)"  9? ";S$(9)
540 FOR Z = 10 TO 15
550 PRINT TAB( 13)"";Z;"?";S$(Z)
560 NEXT : PRINT "???????????????"
570 INPUT "SPRITE SZINENEK SZAMA(0-15)";S5$
580 IF VAL (S5$) < 0 OR VAL (S5$) > 15 OR S5$ = "" THEN GOSUB 10000: GOTO 570
582 IF VAL (S5$) = 0 THEN S5$ = "0"
585 S5$ = S5$ + LEFT$ (K$,2 - LEN (S5$))
590 INPUT "HATTER SZINENEK SZAMA(0-15)";S6$
600 IF VAL (S6$) < 0 OR VAL (S6$) > 15 OR S6$ = "" THEN GOSUB 10000: GOTO 590
605 IF VAL (S6$) = 0 THEN S6$ = "0"
610 S6$ = S6$ + LEFT$ (K$,2 - LEN (S6$))
620 INPUT "JAVITAS(I/N)";S7$
630 IF S7$ = "I" THEN 390
635 IF S7$ < > "N" THEN GOSUB 10000: GOTO 620
640 PRINT "?123456789012345678901234???????????Ŀ"
650 PRINT "????????????????????????ĴSPRITEMAKER?"
660 PRINT "1?                        ?64---SPRITE?"
670 PRINT "2?                        ? TERVEZES  ?"
680 PRINT "3?                        ???????????Ĵ"
690 PRINT "4?                        ?  ADATOK:  ?"
700 PRINT "5?                        ?           ?"
710 PRINT "6?                        ?SORSZAM:";S1$;"?  ?"
720 PRINT "7?                        ?NEV:       ?"
730 PRINT "8?                        ? ";S2$;"??"
740 PRINT "9?                        ?SZIN:      ?"
750 PRINT "0?                        ? ";S$( VAL (S5$));"??"
760 PRINT "1?                        ?HATTERSZIN:?"
770 PRINT "2?                        ? ";S$( VAL (S6$));"??"
780 PRINT "3?                        ?NAGYITAS:  ?"
790 PRINT "4?                        ?  X:";S3$;"?/Y:";S4$;"?  ?"
800 PRINT "5?                        ???????????Ĵ"
810 PRINT "6?                        ?IRANYITAS: ?"
820 PRINT "7?                        ? JOYSTICK 2??"
830 PRINT "8?                        ?IRAS:GOMB?  ?"
840 PRINT "9?                        ?TORLES:    ?"
850 PRINT "0?                        ? SZOKOZ?/CLR??"
860 PRINT "1?                        ?KESZ:RETURN??"
870 PRINT " ??????????????????????????????????????"
880 X = 1106:Y = PEEK (X)
890 POKE X,90
900 J = NOT PEEK (56320) AND 15
906 F = PEEK (56320) AND 16
910 IF (J AND 1) THEN GOSUB 10100
920 IF (J AND 2) THEN GOSUB 10200
930 IF (J AND 4) THEN GOSUB 10300
940 IF (J AND 8) THEN GOSUB 10400
950 IF F = 0 THEN Y = 160: POKE X,218
955 GET Z$: IF Z$ = "" THEN 900
960 IF ASC (Z$) = 32 THEN Y = 32: POKE X,90
970 IF ASC (Z$) = 13 THEN 990
975 IF ASC (Z$) = 147 THEN 640
980 GOTO 900
990 POKE X,Y
1000 X = 1106:K = 0:I = 1
1010 IF PEEK (X) = 160 THEN T(K) = T(K) + 128
1020 IF PEEK (X + 1) = 160 THEN T(K) = T(K) + 64
1030 IF PEEK (X + 2) = 160 THEN T(K) = T(K) + 32
1040 IF PEEK (X + 3) = 160 THEN T(K) = T(K) + 16
1050 IF PEEK (X + 4) = 160 THEN T(K) = T(K) + 8
1060 IF PEEK (X + 5) = 160 THEN T(K) = T(K) + 4
1070 IF PEEK (X + 6) = 160 THEN T(K) = T(K) + 2
1080 IF PEEK (X + 7) = 160 THEN T(K) = T(K) + 1
1090 K = K + 1:I = I + 1
1100 IF I = 4 THEN I = 1:X = X + 24: GOTO 1120
1110 X = X + 8
1120 IF K < 63 THEN 1010
1130 GOSUB 10500
1140 GOTO 200
1150 PRINT "?SPRITE ROGZITESE"
1160 PRINT TAB( 12)"????????????????"
1170 GOSUB 10700
1175 BE$ = S1$ + S2$ + S3$ + S4$ + S5$ + S6$
1180 PRINT "NYOMJA LE A 'RECORD'-OT ES A 'PLAY'-T!"
1185 GOSUB 11210
1190 OPEN 1,1,1,"SPRITE ADAT"
1200 PRINT# 1,BE$
1210 CLOSE 1
1220 OPEN 1,1,1,"SPRITE ADAT"
1230 FOR Z = 0 TO 62
1240 PRINT# 1,T(Z), CHR$ (13)
1245 NEXT 
1250 CLOSE 1
1260 GOSUB 10800
1270 GOTO 200
1280 PRINT "?SPRITE VISSZAKERESESE"
1290 PRINT TAB( 9)"?????????????????????"
1300 GOSUB 10700
1305 GOSUB 11200
1310 OPEN 1,1,0,"SPRITE ADAT"
1320 INPUT# 1,KI$
1330 CLOSE 1
1340 OPEN 1,1,0,"SPRITE ADAT"
1350 FOR Z = 0 TO 62
1360 INPUT# 1,T(Z)
1365 NEXT 
1370 CLOSE 1
1371 S1$ = LEFT$ (KI$,1)
1372 S2$ = MID$ (KI$,2,10)
1373 S3$ = MID$ (KI$,12,1)
1374 S4$ = MID$ (KI$,13,1)
1375 S5$ = MID$ (KI$,14,2)
1376 S6$ = MID$ (KI$,16,2)
1380 GOSUB 10800
1390 GOTO 200
1400 PRINT "?SPRITE VISSZAKERESESE NEV ALAPJAN"
1410 PRINT "?????????????????????????????????"
1420 PRINT "KERESETT SPRITE NEVE(MAX.10 BETU)"
1425 INPUT "";T$
1430 IF LEN (T$) > 10 THEN 1400
1440 T$ = T$ + LEFT$ (K$,10 - LEN (T$))
1450 GOSUB 10700
1455 GOSUB 11200
1460 OPEN 1,1,0,"SPRITE ADAT"
1470 INPUT# 1,KI$
1480 CLOSE 1
1490 IF MID$ (KI$,2,10) < > T$ THEN GOSUB 11000 : GOSUB 11200: GOTO 1460
1500 OPEN 1,1,0,"SPRITE ADAT"
1505 FOR Z = 0 TO 62
1510 INPUT# 1,T(Z)
1515 NEXT 
1520 CLOSE 1
1521 S1$ = LEFT$ (KI$,1)
1522 S2$ = MID$ (KI$,2,10)
1523 S3$ = MID$ (KI$,12,1)
1524 S4$ = MID$ (KI$,13,1)
1525 S5$ = MID$ (KI$,14,2)
1526 S6$ = MID$ (KI$,16,2)
1530 GOSUB 10800
1540 GOTO 200
1550 PRINT "?SPRITE KIPROBALASA"
1560 PRINT TAB( 10)"??????????????????"
1570 PRINT "SPRITE SZAMA      :?";S1$
1580 PRINT "SPRITE NEVE       :?";S2$
1590 PRINT "X IRANYU NAGYITAS :?";S3$
1600 PRINT "Y IRANYU NAGYITAS :?";S4$
1610 PRINT "SPRITE SZINE      :?";S$( VAL (S5$))
1620 PRINT "HATTER SZINE      :?";S$( VAL (S6$));""
1630 GOSUB 10600
1640 GOSUB 10500
1645 IF S6$ = "1 " THEN PRINT "?"
1650 PRINT "?ALLJ/MENJ        - SZOKOZ"
1660 PRINT "VISSZA A MENUHOZ - RETURN"
1670 POKE V + 33, VAL (S6$): POKE V + 39, VAL (S5$)
1680 IF S3$ = "I" THEN POKE V + 29,1
1690 IF S4$ = "I" THEN POKE V + 23,1
1700 POKE 2040,192: POKE V + 1,100
1710 FOR Z = 0 TO 62
1720 POKE 12288 + Z,T(Z)
1730 NEXT : POKE V + 21,1
1740 FOR Z = 0 TO 255
1750 POKE V,Z: GOSUB 10900
1760 NEXT : POKE V + 16,1
1770 FOR Z = 0 TO 80
1780 POKE V,Z: GOSUB 10900
1790 NEXT : POKE V,0: POKE V + 16,0
1800 GOTO 1740
10000 PRINT "?                                       ?"
10010 RETURN 
10100 IF X < 1146 THEN RETURN 
10110 X = X - 40: POKE X + 40,Y
10120 Y = PEEK (X): POKE X,90
10130 IF Y = 160 THEN POKE X,218
10140 RETURN 
10200 IF X > 1889 THEN RETURN 
10210 X = X + 40: POKE X - 40,Y
10220 Y = PEEK (X): POKE X,90
10230 IF Y = 160 THEN POKE X,218
10240 RETURN 
10300 FOR Z = 1106 TO 1906 STEP 40
10310 IF X = Z THEN RETURN 
10320 NEXT 
10330 X = X - 1: POKE X + 1,Y
10340 Y = PEEK (X): POKE X,90
10350 IF Y = 160 THEN POKE X,218
10360 RETURN 
10400 FOR Z = 1089 TO 1929 STEP 40
10410 IF X = Z THEN RETURN 
10420 NEXT 
10430 X = X + 1: POKE X - 1,Y
10440 Y = PEEK (X): POKE X,90
10450 IF Y = 160 THEN POKE X,218
10460 RETURN 
10500 INPUT "?KERI A SPRITE SZAMADATAIT(I/N)";S8$
10510 IF S8$ = "N" THEN RETURN 
10520 IF S8$ < > "I" THEN 10500
10530 PRINT "SPRITE SZAMADATOK:"
10540 FOR Z = 0 TO 9:K$(Z) = " " + STR$ (Z): NEXT 
10545 FOR Z = 10 TO 59:K$(Z) = STR$ (Z): NEXT 
10550 FOR Z = 0 TO 56 STEP 4
10555 PRINT "";K$(Z);".?";T(Z)
10560 PRINT "?";K$(Z + 1);".?";T(Z + 1)
10565 PRINT "?";K$(Z + 2);".?";T(Z + 2)
10570 PRINT "?";K$(Z + 3);".?";T(Z + 3): NEXT 
10575 PRINT " 60.?";T(60)
10580 PRINT "? 61.?";T(61)
10585 PRINT "? 62.?";T(62)
10590 GOSUB 10600: RETURN 
10600 PRINT "NYOMJON LE EGY BILLENTYUT!"
10610 GET Z$: IF Z$ = "" THEN 10610
10620 RETURN 
10700 PRINT "TEKERJE A MEGFELELO HELYRE A MAGNOT!"
10710 GOSUB 10600
10720 RETURN 
10800 PRINT "KESZ."
10810 GOSUB 10600
10820 RETURN 
10900 GET Z$: IF Z$ = "" THEN RETURN 
10910 IF ASC (Z$) = 13 THEN 10970
10920 IF ASC (Z$) = 32 THEN 10940
10930 GOTO 10900
10940 GET Z$: IF Z$ = "" THEN 10940
10950 IF ASC (Z$) = 32 THEN RETURN 
10955 IF ASC (Z$) = 13 THEN 10970
10960 GOTO 10940
10970 POKE V + 33,0: POKE V + 21,0
10980 POKE V + 29,0: POKE V + 23,0
10990 POKE V + 16,0: GOTO 200
11000 PRINT "TEKERJE A KOVETKEZO SPRITE"
11010 PRINT "ELEJERE A MAGNOT!"
11020 GOSUB 10600
11030 RETURN 
11100 FOR Z = 0 TO 62:T(Z) = 0: NEXT 
11120 RETURN 
11200 PRINT "NYOMJA LE A 'PLAY'-T A MAGNON!"
11210 WAIT 1,32,32
11220 RETURN 
20000 DATA FEKETE,FEHER,PIROS,CIAN,BIBOR
20010 DATA ZOLD,KEK,SARGA,NARANCS,BARNA
20020 DATA ROZSASZIN,VIL.SZURKE,KOZ.SZURKE
20030 DATA VIL.ZOLD,VIL.KEK,SOT.SZURKE
25000 :
30000 * END * END * END * END * END * END * END * END * 
