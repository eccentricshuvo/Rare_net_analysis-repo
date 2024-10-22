 U536 (310)  XOR (xor2s1)
     DIN1      I  309-U534/Q
     DIN2      I  307-U535/Q
     Q         O  311-U537/DIN1
 U537 (311)  XOR (xor2s1)
     DIN1      I  310-U536/Q
     DIN2      I  239-U525/Q
     Q         O  312-U538/DIN2
 U538 (312)  XNOR (xnr2s1)
     DIN1      I  274-U508/Q
     DIN2      I  311-U537/Q
     Q         O  313-U540/DIN1
 U540 (313)  XNOR (xnr2s1)
     DIN1      I  312-U538/Q
     DIN2      I  308-U539/Q
     Q         O  315-U778/DIN1
                  318-U541/DIN2
 U541 (318)  XOR (xor2s1)
     DIN1      I  292-U517/Q
     DIN2      I  313-U540/Q
     Q         O  319-U542/DIN2
 U542 (319)  NAND (nnd2s1)
     DIN1      I  27-G123
     DIN2      I  318-U541/Q
     Q         O  320-U543/DIN2
 U625 (555)  NOR (nor2s1)
     DIN1      I  409-U623/Q
     DIN2      I  537-U624/Q
     Q         O  563-U676/DIN1
 U643 (516)  NOR (nor2s1)
     DIN2      I  405-U621/Q
     DIN1      I  514-U642/Q
     Q         O  517-U644/DIN2
 U661 (534)  NOR (nor2s1)
     DIN2      I  255-U440/Q
     DIN1      I  528-U658/Q
     Q         O  535-U665/DIN1
 U662 (531)  NOR (nor2s1)
     DIN1      I  409-U623/Q
     DIN2      I  47-G141
     Q         O  532-U664/DIN1
 U669 (554)  NAND (nnd2s1)
     DIN1      I  135-G8
     DIN2      I  408-U628/Q
     Q         O  557-U670/DIN2
 U681 (549)  NOR (nor2s1)
     DIN1      I  403-U679/Q
     DIN2      I  225-U680/Q
     Q         O  565-U682/DIN2
 U687 (566)  OR (or2s1)
     DIN1      I  565-U682/Q
     DIN2      I  550-U686/Q
     Q         O  567-U688/DIN2
 U688 (567)  NAND (nnd2s1)
     DIN1      I  547-U619/Q
     DIN2      I  566-U687/Q
     Q         O  568-U689/DIN2
 U689 (568)  NAND (nnd2s1)
     DIN2      I  567-U688/Q
     DIN1      I  546-U608/Q
     Q         O  569-U692/DIN1
 U691 (548)  NAND (nnd2s1)
     DIN1      I  402-U607/Q
     DIN2      I  350-U690/Q
     Q         O  569-U692/DIN2
 U717 (501)  NAND (nnd2s1)
     DIN1      I  496-U713/Q
     DIN2      I  500-U716/Q
     Q         O  502-U718/DIN2
 U718 (502)  NOR (nor2s1)
     DIN2      I  501-U717/Q
     DIN1      I  350-U690/Q
     Q         O  503-U719/DIN2
 U719 (503)  NAND (nnd2s1)
     DIN1      I  498-U710/Q
     DIN2      I  502-U718/Q
     Q         O  504-U720/DIN2
 U720 (504)  NOR (nor2s1)
     DIN1      I  493-U708/Q
     DIN2      I  503-U719/Q
     Q         O  505-U721/DIN1
 U735 (461)  NAND (nnd2s1)
     DIN1      I  457-U727/Q
     DIN2      I  460-U734/Q
     Q         O  462-U736/DIN2
 U749 (482)  NAND (nnd2s1)
     DIN1      I  473-U745/Q
     DIN2      I  481-U748/Q
     Q         O  485-U751/DIN1
 U751 (485)  NOR (nor2s1)
     DIN1      I  482-U749/Q
     DIN2      I  484-U750/Q
     Q         O  486-U753/DIN1
 U753 (486)  NAND (nnd2s1)
     DIN1      I  485-U751/Q
     DIN2      I  476-U752/Q
     Q         O  487-U755/DIN1
 U755 (487)  NOR (nor2s1)
     DIN1      I  486-U753/Q
     DIN2      I  483-U754/Q
     Q         O  488-U756/DIN2
 U756 (488)  NAND (nnd2s1)
     DIN1      I  479-U742/Q
     DIN2      I  487-U755/Q
     Q         O  489-U775/DIN1
 U772 (447)  NAND (nnd2s1)
     DIN1      I  446-U768/Q
     DIN2      I  441-U771/Q
     Q         O  469-U773/DIN2
 U773 (469)  NOR (nor2s1)
     DIN1      I  468-U763/Q
     DIN2      I  447-U772/Q
     Q         O  470-U774/DIN2
 U774 (470)  NAND (nnd2s1)
     DIN1      I  23-G12
     DIN2      I  469-U773/Q
     Q         O  489-U775/DIN2
 U775 (489)  NAND (nnd2s1)
     DIN2      I  470-U774/Q
     DIN1      I  488-U756/Q
     Q         O  507-U776/DIN2
 U778 (315)  XNOR (xnr2s1)
     DIN1      I  313-U540/Q
     DIN2      I  314-U777/Q
     Q         O  316-U779/DIN2
 U805 (428)  XNOR (xnr2s1)
     DIN1      I  427-U804/Q
     DIN2      I  364-U616/Q
     Q         O  429-U806/DIN2
 U806 (429)  XOR (xor2s1)
     DIN1      I  426-U803/Q
     DIN2      I  428-U805/Q
     Q         O  430-U808/DIN1
 U808 (430)  XOR (xor2s1)
     DIN1      I  429-U806/Q
     DIN2      I  425-U807/Q
     Q         O  431-U810/DIN1
 U810 (431)  XNOR (xnr2s1)
     DIN1      I  430-U808/Q
     DIN2      I  421-U809/Q
     Q         O  432-U811/DIN2
 U818 (184)  XOR (xor2s1)
     DIN1      I  181-U814/Q
     DIN2      I  183-U817/Q
     Q         O  185-U820/DIN1
 U820 (185)  XOR (xor2s1)
     DIN1      I  184-U818/Q
     DIN2      I  179-U819/Q
     Q         O  186-U821/DIN1
 U822 (433)  NOR (nor2s1)
     DIN2      I  202-U795/Q
     DIN1      I  195-U788/Q
     Q         O  434-U823/DIN1
 U823 (434)  NAND (nnd2s1)
     DIN1      I  433-U822/Q
     DIN2      I  316-U779/Q
     Q         O  435-U824/DIN2
 U824 (435)  NOR (nor2s1)
     DIN1      I  372-U569/Q
     DIN2      I  434-U823/Q
     Q         O  436-U825/DIN1
 U825 (436)  AND (and2s1)
     DIN1      I  435-U824/Q
     DIN2      I  432-U811/Q
     Q         O  437-U826/DIN1
