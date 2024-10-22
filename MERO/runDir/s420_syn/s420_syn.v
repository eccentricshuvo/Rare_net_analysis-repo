/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP5
// Date      : Wed Aug 28 14:52:41 2024
/////////////////////////////////////////////////////////////


module s420 ( GND, VDD, RST, CLK, C_0, C_1, C_10, C_11, C_12, C_13, C_14, C_15, 
        C_16, C_2, C_3, C_4, C_5, C_6, C_7, C_8, C_9, P_0, Z );
  input GND, VDD, RST, CLK, C_0, C_1, C_10, C_11, C_12, C_13, C_14, C_15, C_16,
         C_2, C_3, C_4, C_5, C_6, C_7, C_8, C_9, P_0;
  output Z;
  wire   X_4, X_3, X_2, X_1, X_8, X_7, X_6, X_5, X_12, X_11, X_10, X_9, X_16,
         X_15, X_14, X_13, DFF_0_N3, DFF_1_N3, DFF_2_N3, DFF_3_N3, DFF_4_N3,
         DFF_5_N3, DFF_6_N3, DFF_7_N3, DFF_8_N3, DFF_9_N3, DFF_10_N3,
         DFF_11_N3, DFF_12_N3, DFF_13_N3, DFF_14_N3, DFF_15_N3, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175;

  dffs1 DFF_15_Q_reg ( .DIN(DFF_15_N3), .CLK(CLK), .Q(X_13), .QN(n175) );
  dffs1 DFF_5_Q_reg ( .DIN(DFF_5_N3), .CLK(CLK), .Q(X_7), .QN(n174) );
  dffs1 DFF_7_Q_reg ( .DIN(DFF_7_N3), .CLK(CLK), .Q(X_5), .QN(n173) );
  dffs1 DFF_1_Q_reg ( .DIN(DFF_1_N3), .CLK(CLK), .Q(X_3), .QN(n172) );
  dffs1 DFF_13_Q_reg ( .DIN(DFF_13_N3), .CLK(CLK), .Q(X_15), .QN(n171) );
  dffs1 DFF_9_Q_reg ( .DIN(DFF_9_N3), .CLK(CLK), .Q(X_11), .QN(n170) );
  dffs1 DFF_11_Q_reg ( .DIN(DFF_11_N3), .CLK(CLK), .Q(X_9), .QN(n169) );
  dffs1 DFF_12_Q_reg ( .DIN(DFF_12_N3), .CLK(CLK), .Q(X_16) );
  dffs1 DFF_2_Q_reg ( .DIN(DFF_2_N3), .CLK(CLK), .Q(X_2) );
  dffs1 DFF_8_Q_reg ( .DIN(DFF_8_N3), .CLK(CLK), .Q(X_12) );
  dffs1 DFF_0_Q_reg ( .DIN(DFF_0_N3), .CLK(CLK), .Q(X_4) );
  dffs1 DFF_6_Q_reg ( .DIN(DFF_6_N3), .CLK(CLK), .Q(X_6) );
  dffs1 DFF_3_Q_reg ( .DIN(DFF_3_N3), .CLK(CLK), .Q(X_1) );
  dffs1 DFF_4_Q_reg ( .DIN(DFF_4_N3), .CLK(CLK), .Q(X_8) );
  dffs1 DFF_14_Q_reg ( .DIN(DFF_14_N3), .CLK(CLK), .Q(X_14) );
  dffs1 DFF_10_Q_reg ( .DIN(DFF_10_N3), .CLK(CLK), .Q(X_10) );
  nor2s1 U108 ( .DIN1(C_9), .DIN2(n169), .Q(n91) );
  nor2s1 U109 ( .DIN1(X_8), .DIN2(n91), .Q(n112) );
  nor2s1 U110 ( .DIN1(C_11), .DIN2(n170), .Q(n92) );
  nor2s1 U111 ( .DIN1(X_10), .DIN2(n92), .Q(n107) );
  nor2s1 U112 ( .DIN1(C_15), .DIN2(n171), .Q(n93) );
  nor2s1 U113 ( .DIN1(X_14), .DIN2(n93), .Q(n96) );
  nnd2s1 U114 ( .DIN1(X_16), .DIN2(C_16), .Q(n94) );
  nnd2s1 U115 ( .DIN1(n94), .DIN2(n171), .Q(n95) );
  nnd2s1 U116 ( .DIN1(n96), .DIN2(n95), .Q(n98) );
  nnd2s1 U117 ( .DIN1(C_14), .DIN2(X_14), .Q(n97) );
  and2s1 U118 ( .DIN1(n98), .DIN2(n97), .Q(n99) );
  nor2s1 U119 ( .DIN1(X_13), .DIN2(n99), .Q(n101) );
  and2s1 U120 ( .DIN1(C_13), .DIN2(X_13), .Q(n100) );
  nor2s1 U121 ( .DIN1(n101), .DIN2(n100), .Q(n102) );
  nor2s1 U122 ( .DIN1(X_12), .DIN2(n102), .Q(n104) );
  and2s1 U123 ( .DIN1(X_12), .DIN2(C_12), .Q(n103) );
  nor2s1 U124 ( .DIN1(n104), .DIN2(n103), .Q(n105) );
  nnd2s1 U125 ( .DIN1(n105), .DIN2(n170), .Q(n106) );
  nnd2s1 U126 ( .DIN1(n107), .DIN2(n106), .Q(n109) );
  nnd2s1 U127 ( .DIN1(X_10), .DIN2(C_10), .Q(n108) );
  and2s1 U128 ( .DIN1(n109), .DIN2(n108), .Q(n110) );
  nnd2s1 U129 ( .DIN1(n110), .DIN2(n169), .Q(n111) );
  nnd2s1 U130 ( .DIN1(n112), .DIN2(n111), .Q(n114) );
  nnd2s1 U131 ( .DIN1(C_8), .DIN2(X_8), .Q(n113) );
  and2s1 U132 ( .DIN1(n114), .DIN2(n113), .Q(n115) );
  nor2s1 U133 ( .DIN1(X_7), .DIN2(n115), .Q(n117) );
  and2s1 U134 ( .DIN1(C_7), .DIN2(X_7), .Q(n116) );
  nor2s1 U135 ( .DIN1(n117), .DIN2(n116), .Q(n118) );
  nor2s1 U136 ( .DIN1(X_6), .DIN2(n118), .Q(n120) );
  and2s1 U137 ( .DIN1(C_6), .DIN2(X_6), .Q(n119) );
  nor2s1 U138 ( .DIN1(n120), .DIN2(n119), .Q(n121) );
  nor2s1 U139 ( .DIN1(X_5), .DIN2(n121), .Q(n123) );
  and2s1 U140 ( .DIN1(C_5), .DIN2(X_5), .Q(n122) );
  nor2s1 U141 ( .DIN1(n123), .DIN2(n122), .Q(n124) );
  nor2s1 U142 ( .DIN1(X_4), .DIN2(n124), .Q(n126) );
  and2s1 U143 ( .DIN1(C_4), .DIN2(X_4), .Q(n125) );
  nor2s1 U144 ( .DIN1(n126), .DIN2(n125), .Q(n127) );
  nor2s1 U145 ( .DIN1(X_3), .DIN2(n127), .Q(n129) );
  and2s1 U146 ( .DIN1(C_3), .DIN2(X_3), .Q(n128) );
  nor2s1 U147 ( .DIN1(n129), .DIN2(n128), .Q(n130) );
  nor2s1 U148 ( .DIN1(X_2), .DIN2(n130), .Q(n132) );
  and2s1 U149 ( .DIN1(X_2), .DIN2(C_2), .Q(n131) );
  nor2s1 U150 ( .DIN1(n132), .DIN2(n131), .Q(n133) );
  nor2s1 U151 ( .DIN1(n133), .DIN2(X_1), .Q(n134) );
  nor2s1 U152 ( .DIN1(C_0), .DIN2(n134), .Q(n136) );
  nnd2s1 U153 ( .DIN1(X_1), .DIN2(C_1), .Q(n135) );
  nnd2s1 U154 ( .DIN1(n136), .DIN2(n135), .Q(n137) );
  and2s1 U155 ( .DIN1(P_0), .DIN2(n137), .Q(Z) );
  and2s1 U156 ( .DIN1(P_0), .DIN2(X_1), .Q(n163) );
  nnd2s1 U157 ( .DIN1(X_2), .DIN2(n163), .Q(n165) );
  nor2s1 U158 ( .DIN1(n172), .DIN2(n165), .Q(n167) );
  nnd2s1 U159 ( .DIN1(X_4), .DIN2(n167), .Q(n154) );
  nor2s1 U160 ( .DIN1(n173), .DIN2(n154), .Q(n156) );
  nnd2s1 U161 ( .DIN1(X_6), .DIN2(n156), .Q(n158) );
  nor2s1 U162 ( .DIN1(n174), .DIN2(n158), .Q(n160) );
  nnd2s1 U163 ( .DIN1(X_8), .DIN2(n160), .Q(n146) );
  nor2s1 U164 ( .DIN1(n169), .DIN2(n146), .Q(n148) );
  nnd2s1 U165 ( .DIN1(X_10), .DIN2(n148), .Q(n150) );
  nor2s1 U166 ( .DIN1(n170), .DIN2(n150), .Q(n152) );
  nnd2s1 U167 ( .DIN1(X_12), .DIN2(n152), .Q(n139) );
  xor2s1 U168 ( .DIN1(X_13), .DIN2(n139), .Q(n138) );
  nor2s1 U169 ( .DIN1(RST), .DIN2(n138), .Q(DFF_15_N3) );
  nor2s1 U170 ( .DIN1(n175), .DIN2(n139), .Q(n141) );
  xnr2s1 U171 ( .DIN1(X_14), .DIN2(n141), .Q(n140) );
  nor2s1 U172 ( .DIN1(RST), .DIN2(n140), .Q(DFF_14_N3) );
  nnd2s1 U173 ( .DIN1(X_14), .DIN2(n141), .Q(n143) );
  xor2s1 U174 ( .DIN1(X_15), .DIN2(n143), .Q(n142) );
  nor2s1 U175 ( .DIN1(RST), .DIN2(n142), .Q(DFF_13_N3) );
  nor2s1 U176 ( .DIN1(n171), .DIN2(n143), .Q(n144) );
  xnr2s1 U177 ( .DIN1(X_16), .DIN2(n144), .Q(n145) );
  nor2s1 U178 ( .DIN1(RST), .DIN2(n145), .Q(DFF_12_N3) );
  xor2s1 U179 ( .DIN1(X_9), .DIN2(n146), .Q(n147) );
  nor2s1 U180 ( .DIN1(RST), .DIN2(n147), .Q(DFF_11_N3) );
  xnr2s1 U181 ( .DIN1(X_10), .DIN2(n148), .Q(n149) );
  nor2s1 U182 ( .DIN1(RST), .DIN2(n149), .Q(DFF_10_N3) );
  xor2s1 U183 ( .DIN1(X_11), .DIN2(n150), .Q(n151) );
  nor2s1 U184 ( .DIN1(RST), .DIN2(n151), .Q(DFF_9_N3) );
  xnr2s1 U185 ( .DIN1(X_12), .DIN2(n152), .Q(n153) );
  nor2s1 U186 ( .DIN1(RST), .DIN2(n153), .Q(DFF_8_N3) );
  xor2s1 U187 ( .DIN1(X_5), .DIN2(n154), .Q(n155) );
  nor2s1 U188 ( .DIN1(RST), .DIN2(n155), .Q(DFF_7_N3) );
  xnr2s1 U189 ( .DIN1(X_6), .DIN2(n156), .Q(n157) );
  nor2s1 U190 ( .DIN1(RST), .DIN2(n157), .Q(DFF_6_N3) );
  xor2s1 U191 ( .DIN1(X_7), .DIN2(n158), .Q(n159) );
  nor2s1 U192 ( .DIN1(RST), .DIN2(n159), .Q(DFF_5_N3) );
  xnr2s1 U193 ( .DIN1(X_8), .DIN2(n160), .Q(n161) );
  nor2s1 U194 ( .DIN1(RST), .DIN2(n161), .Q(DFF_4_N3) );
  xnr2s1 U195 ( .DIN1(X_1), .DIN2(P_0), .Q(n162) );
  nor2s1 U196 ( .DIN1(RST), .DIN2(n162), .Q(DFF_3_N3) );
  xnr2s1 U197 ( .DIN1(X_2), .DIN2(n163), .Q(n164) );
  nor2s1 U198 ( .DIN1(RST), .DIN2(n164), .Q(DFF_2_N3) );
  xor2s1 U199 ( .DIN1(X_3), .DIN2(n165), .Q(n166) );
  nor2s1 U200 ( .DIN1(RST), .DIN2(n166), .Q(DFF_1_N3) );
  xnr2s1 U201 ( .DIN1(X_4), .DIN2(n167), .Q(n168) );
  nor2s1 U202 ( .DIN1(RST), .DIN2(n168), .Q(DFF_0_N3) );
endmodule

