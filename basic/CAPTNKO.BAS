10 DIM  Q(10)
20 DIM  Q$(10)
30 FOR  X = 1 TO 10
40 READ  Q(X)
50 NEXT  X
60 FOR  Y = 1 TO 10
70 READ  Q$(Y)
80 NEXT  Y
90 A = 100:B = 999:C = 3:D = 0
100 PRINT "“"
110 POKE  53280,0
120 POKE  53281,0
130 PRINT  TAB( 14)"CAPTAIN K.O."
140 PRINT 
150 PRINT  TAB( 13)"BY:TOTH BALINT"
160 PRINT  TAB( 6)"COPYRIGHT:MCMLXXXVI.HUNGARY"
170 FOR  Z = 1 TO 2000: NEXT  Z
180 PRINT "“"
190 PRINT  TAB( 14)"CAPTAIN K.O."
200 PRINT  TAB( 10)"KILL THE CROSS!"
210 PRINT  TAB( 10)"DOWN-F7"
220 PRINT  TAB( 10)"FIRE-F1"
230 PRINT "WHAT IS YOUR NAME?"
240 INPUT  A$
250 PRINT  TAB( 15)"GOOD LUCK!"
260 FOR  Z = 1 TO 500: NEXT  Z
270 PRINT "“"
280 GOSUB  10000
290 PRINT ""
300 GOSUB  10100
310 GOSUB  10400
320 GET  B$:D = D + 1
330 IF  D < 5 THEN  360
340 B = B - 10:D = 0: GOSUB  10000
350 GOSUB  10300
360 IF  B$ = "" THEN  320
370 IF  ASC (B$) = 133 THEN  630
380 IF  ASC (B$) = 136 THEN  400
390 GOTO  320
400 PRINT "“": GOSUB  10000
410 PRINT ""
420 GOSUB  10100
430 GOSUB  10400
440 GET  B$:D = D + 1
450 IF  D < 10 THEN  480
460 B = B - 10:D = 0: GOSUB  10000
470 GOSUB  10300
480 IF  B$ = "" THEN  440
490 IF  ASC (B$) = 133 THEN  740
500 IF  ASC (B$) = 136 THEN  520
510 GOTO  440
520 PRINT "“": GOSUB  10000
530 PRINT "": GOSUB  10100
540 GOSUB  10400
550 GET  B$:D = D + 1
560 IF  D < 10 THEN  590
570 B = B - 10:D = 0: GOSUB  10000
580 GOSUB  10300
590 IF  B$ = "" THEN  550
600 IF  ASC (B$) = 133 THEN  850
610 IF  ASC (B$) = 136 THEN  270
620 GOTO  550
630 PRINT "": GOSUB  10200
640 IF  E > 1 THEN  720
650 PRINT "³"
660 PRINT  TAB( 37)"ÄX"
670 PRINT  TAB( 38)"³"
680 PRINT "WELL DONE!"
690 FOR  Z = 1 TO 500: NEXT  Z
700 A = A + 10: IF  B < 950 THEN  706
703 B = 999: GOTO  710
706 B = B + 50
710 GOTO  270
720 FOR  Z = 1 TO 100: NEXT  Z
730 GOTO  270
740 PRINT "": GOSUB  10200
750 IF  E < > 2 THEN  830
760 PRINT "³"
770 PRINT  TAB( 37)"ÄX"
780 PRINT  TAB( 38)"³"
790 PRINT "WELL DONE!"
800 FOR  Z = 1 TO 500: NEXT  Z
810 A = A + 10: IF  B < 950 THEN  816
813 B = 999: GOTO  820
816 B = B + 50
820 GOTO  400
830 FOR  Z = 1 TO 100: NEXT  Z
840 GOTO  400
850 PRINT "": GOSUB  10200
860 IF  E < 3 THEN  940
870 PRINT "³"
880 PRINT  TAB( 37)"ÄX"
890 PRINT  TAB( 38)"³"
900 PRINT "WELL DONE!"
910 FOR  Z = 1 TO 500: NEXT  Z
920 A = A + 10: IF  B < 950 THEN  926
923 B = 999: GOTO  930
926 B = B + 50
930 GOTO  520
940 FOR  Z = 1 TO 100: NEXT  Z
950 GOTO  520
960 PRINT "“"
980 PRINT "THE END"
990 FOR  Z = 1 TO 1000: NEXT  Z
1000 A = A - 100
1010 PRINT "“"
1020 IF  A > = 900 THEN  1140
1030 IF  A > = 800 THEN  1150
1040 IF  A > = 700 THEN  1160
1050 IF  A > = 600 THEN  1170
1060 IF  A > = 500 THEN  1180
1070 IF  A > = 400 THEN  1190
1080 IF  A > = 300 THEN  1200
1090 IF  A > = 200 THEN  1210
1100 IF  A > = 100 THEN  1220
1110 IF  A = 0 THEN  1230
1120 Q$(10) = A$:Q(10) = A
1130 GOTO  1230
1140 Q$(1) = A$:Q(1) = A: GOTO  1230
1150 Q$(2) = A$:Q(2) = A: GOTO  1230
1160 Q$(3) = A$:Q(3) = A: GOTO  1230
1170 Q$(4) = A$:Q(4) = A: GOTO  1230
1180 Q$(5) = A$:Q(5) = A: GOTO  1230
1190 Q$(6) = A$:Q(6) = A: GOTO  1230
1200 Q$(7) = A$:Q(7) = A: GOTO  1230
1210 Q$(8) = A$:Q(8) = A: GOTO  1230
1220 Q$(9) = A$:Q(9) = A
1230 PRINT  TAB( 14)"HIGH SCORE:"
1240 PRINT  TAB( 14)"ÄÄÄÄÄÄÄÄÄÄÄ"
1250 PRINT "1. ";Q$(1);"   ";Q(1);"POINT"
1260 PRINT "2. ";Q$(2);"   ";Q(2);"POINT"
1270 PRINT "3. ";Q$(3);"   ";Q(3);"POINT"
1280 PRINT "4. ";Q$(4);"   ";Q(4);"POINT"
1290 PRINT "5. ";Q$(5);"   ";Q(5);"POINT"
1300 PRINT "6. ";Q$(6);"   ";Q(6);"POINT"
1310 PRINT "7. ";Q$(7);"   ";Q(7);"POINT"
1320 PRINT "8. ";Q$(8);"   ";Q(8);"POINT"
1330 PRINT "9. ";Q$(9);"   ";Q(9);"POINT"
1340 PRINT "10. ";Q$(10);"   ";Q(10);"POINT"
1350 FOR  Z = 1 TO 4000: NEXT  Z
1360 RESTORE 
1370 GOTO  30
1380 END 
10000 PRINT "                                       "
10010 PRINT "     SCORE: ";A;" ENERGY: ";B;" SHIP: ";C;"    "
10020 PRINT "                                       ’"
10030 RETURN 
10100 PRINT "Ÿ\ ’ÄÄ_"
10110 PRINT "  þ  ’Ä"
10120 PRINT "/ ’ÄÄÄ"
10130 RETURN 
10200 PRINT  TAB( 11)"ž Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä Ä "
10210 RETURN 
10300 IF B > 109 THEN  10380
10310 C = C - 1:B = 999
10320 IF  C = 0 THEN  960
10330 PRINT "LOW ENERGY,THE SPACESHIP DESTROYED"                          
10340 FOR  Z = 1 TO 1500: NEXT  Z
10350 PRINT "“": GOSUB 10000
10360 PRINT "": GOSUB  10100
10370 GOSUB  10400
10380 RETURN 
10400 E = INT (1 + 3 * RND (1))
10410 IF  E = 1 THEN  PRINT "X"
10420 IF  E < > 2 THEN  10440
10430 PRINT "X"           
10440 IF  E < 3 THEN 10460
10450 PRINT "X"
10460 RETURN 
10500 DATA  900,800,700,600,500,400,300,200,100,10
10510 DATA  CAPTAIN K.O.,CAPTAIN K.O.,CAPTAIN K.O.,CAPTAIN K.O.,CAPTAIN K.O.
10520 DATA  CAPTAIN K.O.,CAPTAIN K.O.,CAPTAIN K.O.,CAPTAIN K.O.,CAPTAIN K.O.
