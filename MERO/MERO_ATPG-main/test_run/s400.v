/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09-SP5
// Date      : Wed Aug  9 14:01:16 2023
/////////////////////////////////////////////////////////////


module s400 ( GND, VDD, RST, CLK, CLR, FM, GRN1, GRN2, RED1, RED2, TEST, YLW1, 
        YLW2 );
  input GND, VDD, RST, CLK, CLR, FM, TEST;
  output GRN1, GRN2, RED1, RED2, YLW1, YLW2;
  wire   DFF_0_N3, DFF_20_N3, DFF_19_N3, DFF_18_N3, DFF_17_N3, DFF_16_N3,
         DFF_15_N3, DFF_14_N3, DFF_13_N3, DFF_12_N3, DFF_11_N3, DFF_10_N3,
         DFF_9_N3, DFF_8_N3, DFF_7_N3, DFF_6_N3, DFF_5_N3, DFF_4_N3, DFF_3_N3,
         DFF_2_N3, DFF_1_N3, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275;

  dffs1 DFF_0_Q_reg ( .DIN(DFF_0_N3), .CLK(CLK), .Q(n136), .QN(n270) );
  dffs1 DFF_20_Q_reg ( .DIN(DFF_20_N3), .CLK(CLK), .Q(n131), .QN(n271) );
  dffs1 DFF_19_Q_reg ( .DIN(DFF_19_N3), .CLK(CLK), .Q(n124), .QN(n264) );
  dffs1 DFF_18_Q_reg ( .DIN(DFF_18_N3), .CLK(CLK), .QN(n272) );
  dffs1 DFF_17_Q_reg ( .DIN(DFF_17_N3), .CLK(CLK), .Q(n134) );
  dffs1 DFF_16_Q_reg ( .DIN(DFF_16_N3), .CLK(CLK), .Q(n132), .QN(n262) );
  dffs1 DFF_15_Q_reg ( .DIN(DFF_15_N3), .CLK(CLK), .Q(n133), .QN(n263) );
  dffs1 DFF_14_Q_reg ( .DIN(DFF_14_N3), .CLK(CLK), .Q(n126), .QN(n269) );
  dffs1 DFF_13_Q_reg ( .DIN(DFF_13_N3), .CLK(CLK), .Q(n135), .QN(n268) );
  dffs1 DFF_12_Q_reg ( .DIN(DFF_12_N3), .CLK(CLK), .Q(n130), .QN(n274) );
  dffs1 DFF_11_Q_reg ( .DIN(DFF_11_N3), .CLK(CLK), .QN(n275) );
  dffs1 DFF_10_Q_reg ( .DIN(DFF_10_N3), .CLK(CLK), .Q(n128), .QN(n267) );
  dffs1 DFF_9_Q_reg ( .DIN(DFF_9_N3), .CLK(CLK), .Q(n127), .QN(n273) );
  dffs1 DFF_8_Q_reg ( .DIN(DFF_8_N3), .CLK(CLK), .Q(n125), .QN(n266) );
  dffs1 DFF_1_Q_reg ( .DIN(DFF_1_N3), .CLK(CLK), .Q(n129), .QN(n265) );
  dffs1 DFF_7_Q_reg ( .DIN(DFF_7_N3), .CLK(CLK), .Q(GRN1) );
  dffs1 DFF_4_Q_reg ( .DIN(DFF_4_N3), .CLK(CLK), .QN(RED2) );
  dffs1 DFF_3_Q_reg ( .DIN(DFF_3_N3), .CLK(CLK), .QN(YLW1) );
  dffs1 DFF_6_Q_reg ( .DIN(DFF_6_N3), .CLK(CLK), .Q(GRN2) );
  dffs1 DFF_5_Q_reg ( .DIN(DFF_5_N3), .CLK(CLK), .Q(RED1) );
  dffs1 DFF_2_Q_reg ( .DIN(DFF_2_N3), .CLK(CLK), .Q(YLW2) );
  nor2s1 U143 ( .DIN1(n137), .DIN2(n138), .Q(DFF_9_N3) );
  nor2s1 U144 ( .DIN1(n139), .DIN2(n127), .Q(n137) );
  nor2s1 U145 ( .DIN1(n140), .DIN2(n141), .Q(n139) );
  hi1s1 U146 ( .DIN(n142), .Q(n141) );
  nor2s1 U147 ( .DIN1(n275), .DIN2(n267), .Q(n142) );
  nor2s1 U148 ( .DIN1(n143), .DIN2(n144), .Q(DFF_7_N3) );
  nnd2s1 U149 ( .DIN1(n145), .DIN2(n146), .Q(n144) );
  nnd2s1 U150 ( .DIN1(n147), .DIN2(n148), .Q(n145) );
  nnd2s1 U151 ( .DIN1(n149), .DIN2(n266), .Q(n148) );
  nor2s1 U152 ( .DIN1(n150), .DIN2(n127), .Q(n149) );
  nnd2s1 U153 ( .DIN1(n265), .DIN2(n151), .Q(n147) );
  nnd2s1 U154 ( .DIN1(n125), .DIN2(n152), .Q(n151) );
  nnd2s1 U155 ( .DIN1(n153), .DIN2(n273), .Q(n152) );
  nor2s1 U156 ( .DIN1(n154), .DIN2(n155), .Q(DFF_6_N3) );
  nnd2s1 U157 ( .DIN1(n156), .DIN2(n157), .Q(n155) );
  nnd2s1 U158 ( .DIN1(n158), .DIN2(n125), .Q(n157) );
  nnd2s1 U159 ( .DIN1(n159), .DIN2(n160), .Q(n156) );
  nnd2s1 U160 ( .DIN1(n273), .DIN2(n274), .Q(n160) );
  nor2s1 U161 ( .DIN1(CLR), .DIN2(n153), .Q(n159) );
  nnd2s1 U162 ( .DIN1(n143), .DIN2(n146), .Q(n154) );
  hi1s1 U163 ( .DIN(n161), .Q(DFF_5_N3) );
  nnd2s1 U164 ( .DIN1(n146), .DIN2(n162), .Q(n161) );
  nnd2s1 U165 ( .DIN1(n163), .DIN2(n164), .Q(n162) );
  nnd2s1 U166 ( .DIN1(n153), .DIN2(n165), .Q(n163) );
  hi1s1 U167 ( .DIN(n166), .Q(n153) );
  nnd2s1 U168 ( .DIN1(n167), .DIN2(n168), .Q(DFF_4_N3) );
  nnd2s1 U169 ( .DIN1(n169), .DIN2(n146), .Q(n168) );
  nnd2s1 U170 ( .DIN1(n164), .DIN2(n170), .Q(n169) );
  nnd2s1 U171 ( .DIN1(n165), .DIN2(n171), .Q(n170) );
  nor2s1 U172 ( .DIN1(CLR), .DIN2(n172), .Q(n164) );
  nor2s1 U173 ( .DIN1(n173), .DIN2(n127), .Q(n172) );
  hi1s1 U174 ( .DIN(n165), .Q(n173) );
  nor2s1 U175 ( .DIN1(n125), .DIN2(n128), .Q(n165) );
  nnd2s1 U176 ( .DIN1(n167), .DIN2(n174), .Q(DFF_3_N3) );
  nnd2s1 U177 ( .DIN1(n175), .DIN2(n176), .Q(n174) );
  nnd2s1 U178 ( .DIN1(n177), .DIN2(n150), .Q(n176) );
  hi1s1 U179 ( .DIN(n171), .Q(n150) );
  nor2s1 U180 ( .DIN1(n178), .DIN2(n179), .Q(n177) );
  nor2s1 U181 ( .DIN1(n273), .DIN2(n180), .Q(n179) );
  nor2s1 U182 ( .DIN1(CLR), .DIN2(n128), .Q(n180) );
  nor2s1 U183 ( .DIN1(n181), .DIN2(n127), .Q(n178) );
  nor2s1 U184 ( .DIN1(n265), .DIN2(n143), .Q(n181) );
  hi1s1 U185 ( .DIN(n182), .Q(n175) );
  nnd2s1 U186 ( .DIN1(n146), .DIN2(n183), .Q(n182) );
  nnd2s1 U187 ( .DIN1(DFF_8_N3), .DIN2(n126), .Q(n167) );
  nor2s1 U188 ( .DIN1(n184), .DIN2(RST), .Q(DFF_8_N3) );
  hi1s1 U189 ( .DIN(n185), .Q(n184) );
  nnd2s1 U190 ( .DIN1(n183), .DIN2(n186), .Q(n185) );
  nnd2s1 U191 ( .DIN1(n187), .DIN2(n188), .Q(n186) );
  nor2s1 U192 ( .DIN1(n265), .DIN2(n171), .Q(n187) );
  nnd2s1 U193 ( .DIN1(n189), .DIN2(n190), .Q(n183) );
  nnd2s1 U194 ( .DIN1(n191), .DIN2(n192), .Q(n190) );
  nor2s1 U195 ( .DIN1(n267), .DIN2(n127), .Q(n192) );
  nor2s1 U196 ( .DIN1(n166), .DIN2(n129), .Q(n191) );
  nnd2s1 U197 ( .DIN1(n275), .DIN2(n130), .Q(n166) );
  nor2s1 U198 ( .DIN1(n266), .DIN2(CLR), .Q(n189) );
  nor2s1 U199 ( .DIN1(n193), .DIN2(n194), .Q(DFF_2_N3) );
  hi1s1 U200 ( .DIN(n195), .Q(n194) );
  nor2s1 U201 ( .DIN1(n196), .DIN2(n125), .Q(n195) );
  nnd2s1 U202 ( .DIN1(n146), .DIN2(n130), .Q(n193) );
  nnd2s1 U203 ( .DIN1(n197), .DIN2(n198), .Q(DFF_19_N3) );
  nnd2s1 U204 ( .DIN1(DFF_20_N3), .DIN2(n124), .Q(n198) );
  nnd2s1 U205 ( .DIN1(n199), .DIN2(n264), .Q(n197) );
  nor2s1 U206 ( .DIN1(n271), .DIN2(n200), .Q(n199) );
  nnd2s1 U207 ( .DIN1(n201), .DIN2(n202), .Q(DFF_18_N3) );
  hi1s1 U208 ( .DIN(n203), .Q(n202) );
  nor2s1 U209 ( .DIN1(n204), .DIN2(n272), .Q(n203) );
  nor2s1 U210 ( .DIN1(DFF_20_N3), .DIN2(n205), .Q(n204) );
  nor2s1 U211 ( .DIN1(n200), .DIN2(n124), .Q(n205) );
  nor2s1 U212 ( .DIN1(n200), .DIN2(n131), .Q(DFF_20_N3) );
  nnd2s1 U213 ( .DIN1(n206), .DIN2(n272), .Q(n201) );
  nor2s1 U214 ( .DIN1(n200), .DIN2(n207), .Q(n206) );
  nor2s1 U215 ( .DIN1(n208), .DIN2(n200), .Q(DFF_17_N3) );
  nnd2s1 U216 ( .DIN1(n209), .DIN2(n210), .Q(n200) );
  nor2s1 U217 ( .DIN1(n211), .DIN2(n134), .Q(n208) );
  nor2s1 U218 ( .DIN1(n272), .DIN2(n207), .Q(n211) );
  nnd2s1 U219 ( .DIN1(n131), .DIN2(n124), .Q(n207) );
  nor2s1 U220 ( .DIN1(n212), .DIN2(n213), .Q(DFF_16_N3) );
  nor2s1 U221 ( .DIN1(n214), .DIN2(n215), .Q(n212) );
  nor2s1 U222 ( .DIN1(n262), .DIN2(n216), .Q(n215) );
  nor2s1 U223 ( .DIN1(n217), .DIN2(n132), .Q(n214) );
  nor2s1 U224 ( .DIN1(n213), .DIN2(n218), .Q(DFF_15_N3) );
  nnd2s1 U225 ( .DIN1(n219), .DIN2(n220), .Q(n218) );
  nnd2s1 U226 ( .DIN1(n263), .DIN2(n221), .Q(n220) );
  nnd2s1 U227 ( .DIN1(n222), .DIN2(n133), .Q(n219) );
  hi1s1 U228 ( .DIN(n221), .Q(n222) );
  nor2s1 U229 ( .DIN1(n213), .DIN2(n223), .Q(DFF_14_N3) );
  nnd2s1 U230 ( .DIN1(n224), .DIN2(n225), .Q(n223) );
  nnd2s1 U231 ( .DIN1(n269), .DIN2(n226), .Q(n225) );
  nnd2s1 U232 ( .DIN1(n227), .DIN2(n126), .Q(n224) );
  nor2s1 U233 ( .DIN1(n228), .DIN2(n213), .Q(DFF_13_N3) );
  nnd2s1 U234 ( .DIN1(n229), .DIN2(n230), .Q(n213) );
  hi1s1 U235 ( .DIN(n231), .Q(n229) );
  nor2s1 U236 ( .DIN1(n232), .DIN2(n135), .Q(n228) );
  nor2s1 U237 ( .DIN1(n269), .DIN2(n226), .Q(n232) );
  hi1s1 U238 ( .DIN(n227), .Q(n226) );
  nor2s1 U239 ( .DIN1(n221), .DIN2(n263), .Q(n227) );
  nnd2s1 U240 ( .DIN1(n132), .DIN2(n216), .Q(n221) );
  nor2s1 U241 ( .DIN1(n138), .DIN2(n233), .Q(DFF_12_N3) );
  nnd2s1 U242 ( .DIN1(n140), .DIN2(n234), .Q(n233) );
  nnd2s1 U243 ( .DIN1(n274), .DIN2(n230), .Q(n234) );
  nor2s1 U244 ( .DIN1(n138), .DIN2(n235), .Q(DFF_11_N3) );
  nnd2s1 U245 ( .DIN1(n236), .DIN2(n237), .Q(n235) );
  nnd2s1 U246 ( .DIN1(n275), .DIN2(n140), .Q(n237) );
  hi1s1 U247 ( .DIN(n238), .Q(n236) );
  nnd2s1 U248 ( .DIN1(n209), .DIN2(n239), .Q(n138) );
  nor2s1 U249 ( .DIN1(RST), .DIN2(CLR), .Q(n209) );
  nor2s1 U250 ( .DIN1(n240), .DIN2(n241), .Q(DFF_10_N3) );
  nnd2s1 U251 ( .DIN1(n239), .DIN2(n146), .Q(n241) );
  nnd2s1 U252 ( .DIN1(n242), .DIN2(n243), .Q(n239) );
  nor2s1 U253 ( .DIN1(n273), .DIN2(n244), .Q(n242) );
  nor2s1 U254 ( .DIN1(n171), .DIN2(n128), .Q(n244) );
  nnd2s1 U255 ( .DIN1(n274), .DIN2(n275), .Q(n171) );
  nor2s1 U256 ( .DIN1(n245), .DIN2(n246), .Q(n240) );
  nor2s1 U257 ( .DIN1(n140), .DIN2(n196), .Q(n246) );
  nnd2s1 U258 ( .DIN1(n247), .DIN2(n267), .Q(n196) );
  nor2s1 U259 ( .DIN1(n275), .DIN2(CLR), .Q(n247) );
  nor2s1 U260 ( .DIN1(n238), .DIN2(n143), .Q(n245) );
  hi1s1 U261 ( .DIN(n188), .Q(n143) );
  nor2s1 U262 ( .DIN1(n267), .DIN2(CLR), .Q(n188) );
  nor2s1 U263 ( .DIN1(n275), .DIN2(n140), .Q(n238) );
  nnd2s1 U264 ( .DIN1(n243), .DIN2(n130), .Q(n140) );
  hi1s1 U265 ( .DIN(n230), .Q(n243) );
  nnd2s1 U266 ( .DIN1(n248), .DIN2(n249), .Q(n230) );
  nnd2s1 U267 ( .DIN1(n250), .DIN2(n262), .Q(n249) );
  nor2s1 U268 ( .DIN1(n126), .DIN2(n133), .Q(n250) );
  nor2s1 U269 ( .DIN1(n268), .DIN2(n217), .Q(n248) );
  hi1s1 U270 ( .DIN(n216), .Q(n217) );
  nnd2s1 U271 ( .DIN1(n270), .DIN2(n210), .Q(n216) );
  nnd2s1 U272 ( .DIN1(n134), .DIN2(n251), .Q(n210) );
  hi1s1 U273 ( .DIN(n252), .Q(n251) );
  nor2s1 U274 ( .DIN1(n253), .DIN2(n124), .Q(n252) );
  nnd2s1 U275 ( .DIN1(n272), .DIN2(n271), .Q(n253) );
  nor2s1 U276 ( .DIN1(n231), .DIN2(n254), .Q(DFF_1_N3) );
  nnd2s1 U277 ( .DIN1(n255), .DIN2(n256), .Q(n254) );
  hi1s1 U278 ( .DIN(n257), .Q(n256) );
  nor2s1 U279 ( .DIN1(n129), .DIN2(FM), .Q(n257) );
  nnd2s1 U280 ( .DIN1(FM), .DIN2(n129), .Q(n255) );
  nor2s1 U281 ( .DIN1(n231), .DIN2(n258), .Q(DFF_0_N3) );
  nnd2s1 U282 ( .DIN1(n259), .DIN2(n260), .Q(n258) );
  nnd2s1 U283 ( .DIN1(n270), .DIN2(n261), .Q(n260) );
  hi1s1 U284 ( .DIN(TEST), .Q(n261) );
  nnd2s1 U285 ( .DIN1(TEST), .DIN2(n136), .Q(n259) );
  nnd2s1 U286 ( .DIN1(n158), .DIN2(n146), .Q(n231) );
  hi1s1 U287 ( .DIN(RST), .Q(n146) );
  hi1s1 U288 ( .DIN(CLR), .Q(n158) );
endmodule

