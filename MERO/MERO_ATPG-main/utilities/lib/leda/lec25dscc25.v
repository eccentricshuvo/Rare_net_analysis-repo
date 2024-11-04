// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-input and, 1x
// Q = DIN1 & DIN2
module and2s1 (Q, DIN1, DIN2);
	output Q;
	input  DIN1;
	input  DIN2;
	and _i0 (Q,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-input AND, 2x
// Q = DIN1 & DIN2
module and2s2 (Q, DIN1, DIN2);
	output Q;
	input  DIN1;
	input  DIN2;
	and _i0 (Q,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-input AND, 3x
// Q = DIN1 & DIN2
module and2s3 (Q, DIN1, DIN2);
	output Q;
	input  DIN1;
	input  DIN2;
	and _i0 (Q,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3-input AND, 1x
// Q = DIN1 & DIN2 & DIN3
module and3s1 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	and _i0 (Q,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3-input AND, 2x
// Q = DIN1 & DIN2 & DIN3
module and3s2 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	and _i0 (Q,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3-input AND, 3x
// Q = DIN1 & DIN2 & DIN3
module and3s3 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	and _i0 (Q,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4-input AND, 1x
// Q = DIN1 & DIN2 & DIN3 & DIN4
module and4s1 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	and _i0 (Q,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4-input AND, 2x
// Q = DIN1 & DIN2 & DIN3 & DIN4
module and4s2 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	and _i0 (Q,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4-input AND, 3x
// Q = DIN1 & DIN2 & DIN3 & DIN4
module and4s3 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	and _i0 (Q,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/1/1/2 AND-OR-AND-Invert Gate, 1x
// Q = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))
module aoai1112s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	and _i0 (_n2,DIN4,DIN5);
	or _i1 (_n1,DIN3,_n2);
	nand _i2 (Q,DIN1,DIN2,_n1);
	not _wi0 (_wn2,DIN3);
	and _wi1 (_wn1,DIN5,_wn2,DIN4);
	not _wi2 (_wn6,DIN5);
	and _wi3 (_wn5,DIN4,_wn6);
	not _wi4 (_wn7,DIN4);
	or _wi5 (_wn4,_wn5,_wn7);
	and _wi6 (_wn3,DIN3,_wn4);
	or _wi7 (DIN1Qstate0,_wn1,_wn3);
	or _wi15 (DIN2Qstate0,_wn1,_wn3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/1/1/2 AND-OR-AND-Invert Gate, 2x
// Q = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))
module aoai1112s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	and _i0 (_n2,DIN4,DIN5);
	or _i1 (_n1,DIN3,_n2);
	nand _i2 (Q,DIN1,DIN2,_n1);
	not _wi0 (_wn2,DIN3);
	and _wi1 (_wn1,DIN5,_wn2,DIN4);
	not _wi2 (_wn6,DIN5);
	and _wi3 (_wn5,DIN4,_wn6);
	not _wi4 (_wn7,DIN4);
	or _wi5 (_wn4,_wn5,_wn7);
	and _wi6 (_wn3,DIN3,_wn4);
	or _wi7 (DIN1Qstate0,_wn1,_wn3);
	or _wi15 (DIN2Qstate0,_wn1,_wn3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/1/1/2 AND-OR-AND-Invert Gate, 3x
// Q = !(DIN1 & DIN2 & (DIN3 | (DIN4 & DIN5)))
module aoai1112s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	and _i0 (_n2,DIN4,DIN5);
	or _i1 (_n1,DIN3,_n2);
	nand _i2 (Q,DIN1,DIN2,_n1);
	not _wi0 (_wn2,DIN3);
	and _wi1 (_wn1,DIN5,_wn2,DIN4);
	not _wi2 (_wn6,DIN5);
	and _wi3 (_wn5,DIN4,_wn6);
	not _wi4 (_wn7,DIN4);
	or _wi5 (_wn4,_wn5,_wn7);
	and _wi6 (_wn3,DIN3,_wn4);
	or _wi7 (DIN1Qstate0,_wn1,_wn3);
	or _wi15 (DIN2Qstate0,_wn1,_wn3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/2/2 AND-OR-AND-Invert Gate, 1x
// Q = !(DIN1 & ((DIN2 & DIN3) | (DIN4 & DIN5)))
module aoai122s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	and _i0 (_n2,DIN2,DIN3);
	and _i1 (_n3,DIN4,DIN5);
	or _i2 (_n1,_n2,_n3);
	nand _i3 (Q,DIN1,_n1);
	not _wi0 (_wn2,DIN2);
	and _wi1 (_wn1,DIN5,_wn2,DIN4);
	not _wi2 (_wn4,DIN3);
	and _wi3 (_wn3,DIN5,DIN4,DIN2,_wn4);
	or _wi4 (DIN1Qstate1,_wn1,_wn3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/2/2 AND-OR-AND-Invert Gate, 2x
// Q = !(DIN1 & ((DIN2 & DIN3) | (DIN4 & DIN5)))
module aoai122s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	and _i0 (_n2,DIN2,DIN3);
	and _i1 (_n3,DIN4,DIN5);
	or _i2 (_n1,_n2,_n3);
	nand _i3 (Q,DIN1,_n1);
	not _wi0 (_wn2,DIN2);
	and _wi1 (_wn1,DIN5,_wn2,DIN4);
	not _wi2 (_wn6,DIN3);
	and _wi3 (_wn5,DIN5,_wn6,DIN4);
	not _wi4 (_wn10,DIN5);
	and _wi5 (_wn9,DIN4,_wn10);
	not _wi6 (_wn11,DIN4);
	or _wi7 (_wn8,_wn9,_wn11);
	and _wi8 (_wn7,DIN3,_wn8);
	or _wi9 (_wn4,_wn5,_wn7);
	and _wi10 (_wn3,DIN2,_wn4);
	or _wi11 (DIN1Qstate0,_wn1,_wn3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/2/2 AND-OR-AND-Invert Gate, 3x
// Q = !(DIN1 & ((DIN2 & DIN3) | (DIN4 & DIN5)))
module aoai122s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	and _i0 (_n2,DIN2,DIN3);
	and _i1 (_n3,DIN4,DIN5);
	or _i2 (_n1,_n2,_n3);
	nand _i3 (Q,DIN1,_n1);
	not _wi0 (_wn2,DIN2);
	and _wi1 (_wn1,DIN5,_wn2,DIN4);
	not _wi2 (_wn6,DIN3);
	and _wi3 (_wn5,DIN5,_wn6,DIN4);
	not _wi4 (_wn10,DIN5);
	and _wi5 (_wn9,DIN4,_wn10);
	not _wi6 (_wn11,DIN4);
	or _wi7 (_wn8,_wn9,_wn11);
	and _wi8 (_wn7,DIN3,_wn8);
	or _wi9 (_wn4,_wn5,_wn7);
	and _wi10 (_wn3,DIN2,_wn4);
	or _wi11 (DIN1Qstate0,_wn1,_wn3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/2/3 and-or-invert gate, 1x
// Q = !(DIN1 | (DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))
module aoi123s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	and _i0 (_n1,DIN2,DIN3);
	and _i1 (_n2,DIN6,DIN4,DIN5);
	nor _i2 (Q,DIN1,_n1,_n2);
	not _wi0 (_wn2,DIN2);
	not _wi1 (_wn5,DIN4);
	and _wi2 (_wn4,DIN6,_wn5,DIN5);
	not _wi3 (_wn9,DIN5);
	and _wi4 (_wn8,_wn9,DIN6);
	not _wi5 (_wn11,DIN6);
	and _wi6 (_wn10,DIN5,_wn11);
	or _wi7 (_wn7,_wn8,_wn10);
	and _wi8 (_wn6,DIN4,_wn7);
	or _wi9 (_wn3,_wn4,_wn6);
	and _wi10 (_wn1,_wn2,DIN3,_wn3);
	not _wi11 (_wn13,DIN3);
	and _wi21 (_wn12,DIN2,_wn13,_wn3);
	or _wi22 (DIN1Qstate0,_wn1,_wn12);
	or _wi27 (_wn26,_wn10,_wn9);
	and _wi28 (_wn24,_wn5,_wn26);
	and _wi31 (_wn30,_wn11,DIN4,_wn9);
	or _wi32 (DIN3Qstate1,_wn24,_wn30);
	or _wi42 (DIN2Qstate1,_wn24,_wn30);
	and _wi54 (_wn47,_wn13,_wn3);
	and _wi65 (_wn58,DIN3,DIN2Qstate1);
	or _wi66 (_wn46,_wn47,_wn58);
	and _wi67 (_wn44,_wn2,_wn46);
	and _wi79 (_wn69,DIN2,_wn13,DIN2Qstate1);
	or _wi80 (DIN1Qstate1,_wn44,_wn69);
	and _wi93 (DIN1Qstate2,_wn2,_wn13,DIN2Qstate1);
	or _wi102 (DIN3Qstate0,_wn4,_wn6);
	or _wi111 (DIN2Qstate0,_wn4,_wn6);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/2/3 and-or-invert gate, 2x
// Q = !(DIN1 | (DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))
module aoi123s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	and _i0 (_n1,DIN2,DIN3);
	and _i1 (_n2,DIN6,DIN4,DIN5);
	nor _i2 (Q,DIN1,_n1,_n2);
	not _wi0 (_wn2,DIN2);
	not _wi1 (_wn5,DIN4);
	and _wi2 (_wn4,DIN6,_wn5,DIN5);
	not _wi3 (_wn9,DIN5);
	and _wi4 (_wn8,_wn9,DIN6);
	not _wi5 (_wn11,DIN6);
	and _wi6 (_wn10,DIN5,_wn11);
	or _wi7 (_wn7,_wn8,_wn10);
	and _wi8 (_wn6,DIN4,_wn7);
	or _wi9 (_wn3,_wn4,_wn6);
	and _wi10 (_wn1,_wn2,DIN3,_wn3);
	not _wi11 (_wn13,DIN3);
	and _wi21 (_wn12,DIN2,_wn13,_wn3);
	or _wi22 (DIN1Qstate0,_wn1,_wn12);
	or _wi27 (_wn26,_wn10,_wn9);
	and _wi28 (_wn24,_wn5,_wn26);
	and _wi31 (_wn30,_wn11,DIN4,_wn9);
	or _wi32 (DIN3Qstate1,_wn24,_wn30);
	or _wi42 (DIN2Qstate1,_wn24,_wn30);
	and _wi54 (_wn47,_wn13,_wn3);
	and _wi65 (_wn58,DIN3,DIN2Qstate1);
	or _wi66 (_wn46,_wn47,_wn58);
	and _wi67 (_wn44,_wn2,_wn46);
	and _wi79 (_wn69,DIN2,_wn13,DIN2Qstate1);
	or _wi80 (DIN1Qstate1,_wn44,_wn69);
	and _wi93 (DIN1Qstate2,_wn2,_wn13,DIN2Qstate1);
	or _wi102 (DIN3Qstate0,_wn4,_wn6);
	or _wi111 (DIN2Qstate0,_wn4,_wn6);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/2/3 and-or-invert gate, 3x
// Q = !(DIN1 | (DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))
module aoi123s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	and _i0 (_n1,DIN2,DIN3);
	and _i1 (_n2,DIN6,DIN4,DIN5);
	nor _i2 (Q,DIN1,_n1,_n2);
	not _wi0 (_wn2,DIN2);
	not _wi1 (_wn5,DIN4);
	and _wi2 (_wn4,DIN6,_wn5,DIN5);
	not _wi3 (_wn9,DIN5);
	and _wi4 (_wn8,_wn9,DIN6);
	not _wi5 (_wn11,DIN6);
	and _wi6 (_wn10,DIN5,_wn11);
	or _wi7 (_wn7,_wn8,_wn10);
	and _wi8 (_wn6,DIN4,_wn7);
	or _wi9 (_wn3,_wn4,_wn6);
	and _wi10 (_wn1,_wn2,DIN3,_wn3);
	not _wi11 (_wn13,DIN3);
	and _wi21 (_wn12,DIN2,_wn13,_wn3);
	or _wi22 (DIN1Qstate0,_wn1,_wn12);
	or _wi27 (_wn26,_wn10,_wn9);
	and _wi28 (_wn24,_wn5,_wn26);
	and _wi31 (_wn30,_wn11,DIN4,_wn9);
	or _wi32 (DIN3Qstate1,_wn24,_wn30);
	or _wi42 (DIN2Qstate1,_wn24,_wn30);
	and _wi54 (_wn47,_wn13,_wn3);
	and _wi61 (_wn60,_wn5,_wn7);
	or _wi65 (_wn59,_wn60,_wn30);
	and _wi66 (_wn58,DIN3,_wn59);
	or _wi67 (_wn46,_wn47,_wn58);
	and _wi68 (_wn44,_wn2,_wn46);
	and _wi80 (_wn70,DIN2,_wn13,DIN2Qstate1);
	or _wi81 (DIN1Qstate1,_wn44,_wn70);
	or _wi90 (DIN3Qstate0,_wn4,_wn6);
	and _wi103 (DIN1Qstate3,_wn2,_wn13,DIN2Qstate1);
	or _wi112 (DIN2Qstate0,_wn4,_wn6);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/3 and-or-invert gate, 1x
// Q = !(DIN1 | (DIN2 & DIN3 & DIN4))
module aoi13s1 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	and _i0 (_n1,DIN4,DIN2,DIN3);
	nor _i1 (Q,DIN1,_n1);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/3 and-or-invert gate, 2x
// Q = !(DIN1 | (DIN2 & DIN3 & DIN4))
module aoi13s2 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	and _i0 (_n1,DIN4,DIN2,DIN3);
	nor _i1 (Q,DIN1,_n1);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/3 and-or-invert gate, 3x
// Q = !(DIN1 | (DIN2 & DIN3 & DIN4))
module aoi13s3 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	and _i0 (_n1,DIN4,DIN2,DIN3);
	nor _i1 (Q,DIN1,_n1);
	not _wi0 (_wn2,DIN2);
	not _wi1 (_wn5,DIN3);
	and _wi2 (_wn4,_wn5,DIN4);
	or _wi3 (_wn3,_wn4,DIN3);
	and _wi4 (_wn1,_wn2,_wn3);
	not _wi5 (_wn9,DIN4);
	and _wi6 (_wn8,DIN3,_wn9);
	or _wi8 (_wn7,_wn8,_wn5);
	and _wi9 (_wn6,DIN2,_wn7);
	or _wi10 (DIN1Qstate0,_wn1,_wn6);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/1/1 and-or-invert gate, 1x
// Q = !((DIN1 & DIN2) | DIN3 | DIN4)
module aoi211s1 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	and _i0 (_n1,DIN1,DIN2);
	nor _i1 (Q,DIN4,_n1,DIN3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/1/1 and-or-invert gate, 2x
// Q = !((DIN1 & DIN2) | DIN3 | DIN4)
module aoi211s2 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	and _i0 (_n1,DIN1,DIN2);
	nor _i1 (Q,DIN4,_n1,DIN3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/1/1 and-or-invert gate, 3x
// Q = !((DIN1 & DIN2) | DIN3 | DIN4)
module aoi211s3 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	and _i0 (_n1,DIN1,DIN2);
	nor _i1 (Q,DIN4,_n1,DIN3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/1 and-or-invert gate, 1x
// Q = !((DIN1 & DIN2) | DIN3)
module aoi21s1 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	and _i0 (_n1,DIN1,DIN2);
	nor _i1 (Q,_n1,DIN3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/1 and-or-invert gate, 2x
// Q = !((DIN1 & DIN2) | DIN3)
module aoi21s2 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	and _i0 (_n1,DIN1,DIN2);
	nor _i1 (Q,_n1,DIN3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/1 and-or-invert gate, 3x
// Q = !((DIN1 & DIN2) | DIN3)
module aoi21s3 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	and _i0 (_n1,DIN1,DIN2);
	nor _i1 (Q,_n1,DIN3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2/1 and-or-invert gate, 1x
// Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | DIN5)
module aoi221s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	and _i0 (_n1,DIN1,DIN2);
	and _i1 (_n2,DIN3,DIN4);
	nor _i2 (Q,DIN5,_n1,_n2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2/1 and-or-invert gate, 2x
// Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | DIN5)
module aoi221s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	and _i0 (_n1,DIN1,DIN2);
	and _i1 (_n2,DIN3,DIN4);
	nor _i2 (Q,DIN5,_n1,_n2);
	not _wi0 (_wn2,DIN1);
	not _wi1 (_wn5,DIN2);
	not _wi2 (_wn8,DIN3);
	and _wi3 (_wn7,_wn8,DIN4);
	not _wi4 (_wn10,DIN4);
	and _wi5 (_wn9,DIN3,_wn10);
	or _wi6 (_wn6,_wn7,_wn9);
	and _wi7 (_wn4,_wn5,_wn6);
	or _wi11 (_wn12,_wn9,_wn8);
	and _wi12 (_wn11,DIN2,_wn12);
	or _wi13 (_wn3,_wn4,_wn11);
	and _wi14 (_wn1,_wn2,_wn3);
	and _wi20 (_wn16,DIN1,_wn5,_wn12);
	or _wi21 (DIN5Qstate0,_wn1,_wn16);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2/1 and-or-invert gate, 3x
// Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | DIN5)
module aoi221s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	and _i0 (_n1,DIN1,DIN2);
	and _i1 (_n2,DIN3,DIN4);
	nor _i2 (Q,DIN5,_n1,_n2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2/2/1 AND-OR-Invert Gate, 1x
// Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6) | DIN7)
module aoi2221s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	input  DIN7;
	and _i0 (_n1,DIN1,DIN2);
	and _i1 (_n2,DIN3,DIN4);
	and _i2 (_n3,DIN5,DIN6);
	nor _i3 (Q,DIN7,_n1,_n2,_n3);
	not _wi0 (_wn2,DIN3);
	not _wi1 (_wn5,DIN5);
	and _wi2 (_wn4,_wn5,DIN6);
	not _wi3 (_wn7,DIN6);
	and _wi4 (_wn6,DIN5,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,DIN4,_wn3);
	not _wi7 (_wn9,DIN4);
	and _wi13 (_wn8,DIN3,_wn9,_wn3);
	or _wi14 (DIN1Qstate0,_wn1,_wn8);
	not _wi15 (_wn17,DIN1);
	not _wi16 (_wn20,DIN2);
	and _wi18 (_wn19,_wn20,_wn2);
	and _wi21 (_wn22,_wn9,DIN2,_wn2);
	or _wi22 (_wn18,_wn19,_wn22);
	and _wi23 (_wn16,_wn17,_wn18);
	and _wi27 (_wn25,_wn9,_wn2,DIN1,_wn20);
	or _wi28 (DIN6Qstate1,_wn16,_wn25);
	or _wi42 (DIN5Qstate1,_wn16,_wn25);
	and _wi50 (_wn47,_wn20,_wn3);
	and _wi53 (_wn54,_wn7,DIN2,_wn5);
	or _wi54 (_wn46,_wn47,_wn54);
	and _wi55 (_wn44,_wn17,_wn46);
	and _wi59 (_wn57,_wn7,_wn5,DIN1,_wn20);
	or _wi60 (DIN4Qstate1,_wn44,_wn57);
	or _wi78 (DIN3Qstate1,_wn44,_wn57);
	and _wi86 (_wn83,_wn9,_wn3);
	and _wi89 (_wn90,_wn7,DIN4,_wn5);
	or _wi90 (_wn82,_wn83,_wn90);
	and _wi91 (_wn80,_wn2,_wn82);
	and _wi95 (_wn93,_wn7,_wn5,DIN3,_wn9);
	or _wi96 (DIN2Qstate1,_wn80,_wn93);
	or _wi114 (DIN1Qstate1,_wn80,_wn93);
	and _wi119 (_wn122,_wn7,DIN5,_wn2,DIN4);
	or _wi127 (_wn121,_wn122,_wn8);
	and _wi128 (_wn119,_wn20,_wn121);
	and _wi144 (_wn132,DIN2,DIN1Qstate0);
	or _wi145 (_wn118,_wn119,_wn132);
	and _wi146 (_wn116,_wn17,_wn118);
	and _wi151 (_wn154,_wn7,_wn9,DIN5);
	and _wi157 (_wn157,DIN4,_wn3);
	or _wi158 (_wn153,_wn154,_wn157);
	and _wi159 (_wn151,_wn2,_wn153);
	or _wi167 (_wn150,_wn151,_wn8);
	and _wi168 (_wn148,DIN1,_wn20,_wn150);
	or _wi169 (DIN7Qstate0,_wn116,_wn148);
	and _wi173 (_wn174,_wn9,_wn20,DIN3);
	and _wi175 (_wn179,_wn2,DIN4);
	and _wi177 (_wn181,DIN3,_wn9);
	or _wi178 (_wn178,_wn179,_wn181);
	and _wi179 (_wn177,DIN2,_wn178);
	or _wi180 (_wn173,_wn174,_wn177);
	and _wi181 (_wn171,_wn17,_wn173);
	and _wi188 (_wn183,DIN1,_wn20,_wn178);
	or _wi189 (DIN6Qstate0,_wn171,_wn183);
	or _wi209 (DIN5Qstate0,_wn171,_wn183);
	and _wi216 (_wn211,_wn17,DIN2,_wn3);
	and _wi223 (_wn218,DIN1,_wn20,_wn3);
	or _wi224 (DIN4Qstate0,_wn211,_wn218);
	or _wi239 (DIN3Qstate0,_wn211,_wn218);
	or _wi254 (DIN2Qstate0,_wn1,_wn8);
	and _wi266 (_wn272,DIN4,_wn5);
	or _wi267 (_wn264,_wn83,_wn272);
	and _wi268 (_wn262,_wn2,_wn264);
	or _wi273 (_wn261,_wn262,_wn93);
	and _wi274 (_wn259,_wn20,_wn261);
	and _wi293 (_wn278,DIN2,DIN1Qstate1);
	or _wi294 (_wn258,_wn259,_wn278);
	and _wi295 (_wn256,_wn17,_wn258);
	and _wi300 (_wn303,_wn9,_wn5);
	or _wi304 (_wn302,_wn303,_wn90);
	and _wi305 (_wn300,_wn2,_wn302);
	or _wi310 (_wn299,_wn300,_wn93);
	and _wi311 (_wn297,DIN1,_wn20,_wn299);
	or _wi312 (DIN7Qstate1,_wn256,_wn297);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2/2/1 AND-OR-Invert Gate, 2x
// Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6) | DIN7)
module aoi2221s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	input  DIN7;
	and _i0 (_n1,DIN1,DIN2);
	and _i1 (_n2,DIN3,DIN4);
	and _i2 (_n3,DIN5,DIN6);
	nor _i3 (Q,DIN7,_n1,_n2,_n3);
	not _wi0 (_wn2,DIN3);
	not _wi1 (_wn5,DIN5);
	and _wi2 (_wn4,_wn5,DIN6);
	not _wi3 (_wn7,DIN6);
	and _wi4 (_wn6,DIN5,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,DIN4,_wn3);
	not _wi7 (_wn9,DIN4);
	and _wi13 (_wn8,DIN3,_wn9,_wn3);
	or _wi14 (DIN1Qstate0,_wn1,_wn8);
	not _wi15 (_wn17,DIN1);
	not _wi16 (_wn20,DIN2);
	and _wi18 (_wn22,_wn2,DIN4);
	and _wi20 (_wn24,DIN3,_wn9);
	or _wi21 (_wn21,_wn22,_wn24);
	and _wi22 (_wn19,_wn20,_wn21);
	and _wi25 (_wn26,_wn9,DIN2,_wn2);
	or _wi26 (_wn18,_wn19,_wn26);
	and _wi27 (_wn16,_wn17,_wn18);
	and _wi31 (_wn29,_wn9,_wn2,DIN1,_wn20);
	or _wi32 (DIN6Qstate1,_wn16,_wn29);
	and _wi40 (_wn37,_wn20,_wn3);
	and _wi43 (_wn44,_wn7,DIN2,_wn5);
	or _wi44 (_wn36,_wn37,_wn44);
	and _wi45 (_wn34,_wn17,_wn36);
	and _wi49 (_wn47,_wn7,_wn5,DIN1,_wn20);
	or _wi50 (DIN4Qstate1,_wn34,_wn47);
	and _wi58 (_wn55,_wn9,_wn3);
	and _wi61 (_wn62,_wn7,DIN4,_wn5);
	or _wi62 (_wn54,_wn55,_wn62);
	and _wi63 (_wn52,_wn2,_wn54);
	and _wi67 (_wn65,_wn7,_wn5,DIN3,_wn9);
	or _wi68 (DIN2Qstate1,_wn52,_wn65);
	and _wi89 (_wn73,_wn20,DIN2Qstate1);
	and _wi94 (_wn93,_wn7,_wn5,_wn9,DIN2,_wn2);
	or _wi95 (_wn72,_wn73,_wn93);
	and _wi96 (_wn70,_wn17,_wn72);
	and _wi102 (_wn98,_wn7,_wn5,_wn9,_wn2,DIN1,_wn20);
	or _wi103 (DIN7Qstate2,_wn70,_wn98);
	and _wi110 (_wn105,_wn17,DIN2,_wn21);
	and _wi117 (_wn112,DIN1,_wn20,_wn21);
	or _wi118 (DIN6Qstate0,_wn105,_wn112);
	and _wi125 (_wn120,_wn17,DIN2,_wn3);
	and _wi132 (_wn127,DIN1,_wn20,_wn3);
	or _wi133 (DIN4Qstate0,_wn120,_wn127);
	or _wi148 (DIN2Qstate0,_wn1,_wn8);
	and _wi166 (_wn153,_wn20,DIN2Qstate0);
	and _wi185 (_wn170,DIN2,DIN2Qstate1);
	or _wi186 (_wn152,_wn153,_wn170);
	and _wi187 (_wn150,_wn17,_wn152);
	and _wi207 (_wn189,DIN1,_wn20,DIN2Qstate1);
	or _wi208 (DIN7Qstate1,_wn150,_wn189);
	or _wi226 (DIN5Qstate1,_wn16,_wn29);
	or _wi244 (DIN3Qstate1,_wn34,_wn47);
	or _wi262 (DIN1Qstate1,_wn52,_wn65);
	and _wi269 (DIN7Qstate3,_wn7,_wn5,_wn9,_wn2,_wn17,_wn20);
	and _wi286 (_wn271,_wn17,DIN2,DIN2Qstate0);
	and _wi303 (_wn288,DIN1,_wn20,DIN2Qstate0);
	or _wi304 (DIN7Qstate0,_wn271,_wn288);
	or _wi319 (DIN5Qstate0,_wn105,_wn112);
	or _wi334 (DIN3Qstate0,_wn120,_wn127);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2/2/1 AND-OR-Invert Gate, 3x
// Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6) | DIN7)
module aoi2221s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	input  DIN7;
	and _i0 (_n1,DIN1,DIN2);
	and _i1 (_n2,DIN3,DIN4);
	and _i2 (_n3,DIN5,DIN6);
	nor _i3 (Q,DIN7,_n1,_n2,_n3);
	not _wi0 (_wn2,DIN3);
	not _wi1 (_wn5,DIN5);
	and _wi2 (_wn4,_wn5,DIN6);
	not _wi3 (_wn7,DIN6);
	and _wi4 (_wn6,DIN5,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,DIN4,_wn3);
	not _wi7 (_wn9,DIN4);
	and _wi13 (_wn8,DIN3,_wn9,_wn3);
	or _wi14 (DIN1Qstate0,_wn1,_wn8);
	not _wi15 (_wn17,DIN1);
	not _wi16 (_wn20,DIN2);
	and _wi18 (_wn22,_wn2,DIN4);
	and _wi20 (_wn24,DIN3,_wn9);
	or _wi21 (_wn21,_wn22,_wn24);
	and _wi22 (_wn19,_wn20,_wn21);
	and _wi25 (_wn26,_wn9,DIN2,_wn2);
	or _wi26 (_wn18,_wn19,_wn26);
	and _wi27 (_wn16,_wn17,_wn18);
	and _wi31 (_wn29,_wn9,_wn2,DIN1,_wn20);
	or _wi32 (DIN6Qstate1,_wn16,_wn29);
	and _wi40 (_wn37,_wn20,_wn3);
	and _wi43 (_wn44,_wn7,DIN2,_wn5);
	or _wi44 (_wn36,_wn37,_wn44);
	and _wi45 (_wn34,_wn17,_wn36);
	and _wi49 (_wn47,_wn7,_wn5,DIN1,_wn20);
	or _wi50 (DIN4Qstate1,_wn34,_wn47);
	and _wi58 (_wn55,_wn9,_wn3);
	and _wi61 (_wn62,_wn7,DIN4,_wn5);
	or _wi62 (_wn54,_wn55,_wn62);
	and _wi63 (_wn52,_wn2,_wn54);
	and _wi67 (_wn65,_wn7,_wn5,DIN3,_wn9);
	or _wi68 (DIN2Qstate1,_wn52,_wn65);
	and _wi89 (_wn73,_wn20,DIN2Qstate1);
	and _wi94 (_wn93,_wn7,_wn5,_wn9,DIN2,_wn2);
	or _wi95 (_wn72,_wn73,_wn93);
	and _wi96 (_wn70,_wn17,_wn72);
	and _wi102 (_wn98,_wn7,_wn5,_wn9,_wn2,DIN1,_wn20);
	or _wi103 (DIN7Qstate2,_wn70,_wn98);
	and _wi110 (_wn105,_wn17,DIN2,_wn21);
	and _wi117 (_wn112,DIN1,_wn20,_wn21);
	or _wi118 (DIN6Qstate0,_wn105,_wn112);
	and _wi125 (_wn120,_wn17,DIN2,_wn3);
	and _wi132 (_wn127,DIN1,_wn20,_wn3);
	or _wi133 (DIN4Qstate0,_wn120,_wn127);
	or _wi148 (DIN2Qstate0,_wn1,_wn8);
	and _wi166 (_wn153,_wn20,DIN2Qstate0);
	and _wi185 (_wn170,DIN2,DIN2Qstate1);
	or _wi186 (_wn152,_wn153,_wn170);
	and _wi187 (_wn150,_wn17,_wn152);
	and _wi207 (_wn189,DIN1,_wn20,DIN2Qstate1);
	or _wi208 (DIN7Qstate1,_wn150,_wn189);
	or _wi226 (DIN5Qstate1,_wn16,_wn29);
	or _wi244 (DIN3Qstate1,_wn34,_wn47);
	or _wi262 (DIN1Qstate1,_wn52,_wn65);
	and _wi269 (DIN7Qstate3,_wn7,_wn5,_wn9,_wn2,_wn17,_wn20);
	and _wi286 (_wn271,_wn17,DIN2,DIN2Qstate0);
	and _wi303 (_wn288,DIN1,_wn20,DIN2Qstate0);
	or _wi304 (DIN7Qstate0,_wn271,_wn288);
	or _wi319 (DIN5Qstate0,_wn105,_wn112);
	or _wi334 (DIN3Qstate0,_wn120,_wn127);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2/2 and-or-invert gate, 1x
// Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6))
module aoi222s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	and _i0 (_n1,DIN1,DIN2);
	and _i1 (_n2,DIN3,DIN4);
	and _i2 (_n3,DIN5,DIN6);
	nor _i3 (Q,_n1,_n2,_n3);
	not _wi0 (_wn2,DIN1);
	not _wi1 (_wn5,DIN2);
	not _wi2 (_wn8,DIN3);
	and _wi3 (_wn7,_wn8,DIN4);
	not _wi4 (_wn10,DIN4);
	and _wi5 (_wn9,DIN3,_wn10);
	or _wi6 (_wn6,_wn7,_wn9);
	and _wi7 (_wn4,_wn5,_wn6);
	or _wi11 (_wn12,_wn9,_wn8);
	and _wi12 (_wn11,DIN2,_wn12);
	or _wi13 (_wn3,_wn4,_wn11);
	and _wi14 (_wn1,_wn2,_wn3);
	and _wi20 (_wn16,DIN1,_wn5,_wn12);
	or _wi21 (DIN6Qstate0,_wn1,_wn16);
	or _wi43 (DIN5Qstate0,_wn1,_wn16);
	not _wi46 (_wn52,DIN5);
	and _wi47 (_wn51,_wn52,DIN6);
	not _wi48 (_wn54,DIN6);
	and _wi49 (_wn53,DIN5,_wn54);
	or _wi50 (_wn50,_wn51,_wn53);
	and _wi51 (_wn48,_wn5,_wn50);
	or _wi55 (_wn56,_wn53,_wn52);
	and _wi56 (_wn55,DIN2,_wn56);
	or _wi57 (_wn47,_wn48,_wn55);
	and _wi58 (_wn45,_wn2,_wn47);
	and _wi64 (_wn60,DIN1,_wn5,_wn56);
	or _wi65 (DIN4Qstate0,_wn45,_wn60);
	or _wi87 (DIN3Qstate0,_wn45,_wn60);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2/2 and-or-invert gate, 2x
// Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6))
module aoi222s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	and _i0 (_n1,DIN1,DIN2);
	and _i1 (_n2,DIN3,DIN4);
	and _i2 (_n3,DIN5,DIN6);
	nor _i3 (Q,_n1,_n2,_n3);
	not _wi0 (_wn2,DIN3);
	not _wi1 (_wn5,DIN4);
	not _wi2 (_wn8,DIN5);
	and _wi3 (_wn7,_wn8,DIN6);
	not _wi4 (_wn10,DIN6);
	and _wi5 (_wn9,DIN5,_wn10);
	or _wi6 (_wn6,_wn7,_wn9);
	and _wi7 (_wn4,_wn5,_wn6);
	or _wi11 (_wn12,_wn9,_wn8);
	and _wi12 (_wn11,DIN4,_wn12);
	or _wi13 (_wn3,_wn4,_wn11);
	and _wi14 (_wn1,_wn2,_wn3);
	and _wi20 (_wn16,DIN3,_wn5,_wn12);
	or _wi21 (DIN1Qstate0,_wn1,_wn16);
	not _wi22 (_wn24,DIN1);
	not _wi23 (_wn27,DIN2);
	and _wi25 (_wn29,_wn2,DIN4);
	and _wi27 (_wn31,DIN3,_wn5);
	or _wi28 (_wn28,_wn29,_wn31);
	and _wi29 (_wn26,_wn27,_wn28);
	or _wi33 (_wn34,_wn31,_wn2);
	and _wi34 (_wn33,DIN2,_wn34);
	or _wi35 (_wn25,_wn26,_wn33);
	and _wi36 (_wn23,_wn24,_wn25);
	and _wi42 (_wn38,DIN1,_wn27,_wn34);
	or _wi43 (DIN6Qstate0,_wn23,_wn38);
	or _wi65 (DIN5Qstate0,_wn23,_wn38);
	and _wi73 (_wn70,_wn27,_wn6);
	and _wi78 (_wn77,DIN2,_wn12);
	or _wi79 (_wn69,_wn70,_wn77);
	and _wi80 (_wn67,_wn24,_wn69);
	and _wi86 (_wn82,DIN1,_wn27,_wn12);
	or _wi87 (DIN4Qstate0,_wn67,_wn82);
	or _wi109 (DIN3Qstate0,_wn67,_wn82);
	or _wi131 (DIN2Qstate0,_wn1,_wn16);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2/2 and-or-invert gate, 3x
// Q = !((DIN1 & DIN2) | (DIN3 & DIN4) | (DIN5 & DIN6))
module aoi222s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	and _i0 (_n1,DIN1,DIN2);
	and _i1 (_n2,DIN3,DIN4);
	and _i2 (_n3,DIN5,DIN6);
	nor _i3 (Q,_n1,_n2,_n3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2 and-or-invert gate, 1x
// Q = !((DIN1 & DIN2) | (DIN3 & DIN4))
module aoi22s1 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	and _i0 (_n1,DIN1,DIN2);
	and _i1 (_n2,DIN3,DIN4);
	nor _i2 (Q,_n1,_n2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2 and-or-invert gate, 2x
// Q = !((DIN1 & DIN2) | (DIN3 & DIN4))
module aoi22s2 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	and _i0 (_n1,DIN1,DIN2);
	and _i1 (_n2,DIN3,DIN4);
	nor _i2 (Q,_n1,_n2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2 and-or-invert gate, 3x
// Q = !((DIN1 & DIN2) | (DIN3 & DIN4))
module aoi22s3 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	and _i0 (_n1,DIN1,DIN2);
	and _i1 (_n2,DIN3,DIN4);
	nor _i2 (Q,_n1,_n2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/3 and-or-invert gate, 1x
// Q = !((DIN1 & DIN2) | (DIN3 & DIN4 & DIN5))
module aoi23s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	and _i0 (_n1,DIN1,DIN2);
	and _i1 (_n2,DIN5,DIN3,DIN4);
	nor _i2 (Q,_n1,_n2);
	not _wi0 (_wn2,DIN3);
	not _wi1 (_wn5,DIN4);
	and _wi2 (_wn4,_wn5,DIN5);
	or _wi3 (_wn3,_wn4,DIN4);
	and _wi4 (_wn1,_wn2,_wn3);
	not _wi5 (_wn9,DIN5);
	and _wi6 (_wn8,DIN4,_wn9);
	or _wi8 (_wn7,_wn8,_wn5);
	and _wi9 (_wn6,DIN3,_wn7);
	or _wi10 (DIN2Qstate0,_wn1,_wn6);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/3 and-or-invert gate, 2x
// Q = !((DIN1 & DIN2) | (DIN3 & DIN4 & DIN5))
module aoi23s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	and _i0 (_n1,DIN1,DIN2);
	and _i1 (_n2,DIN5,DIN3,DIN4);
	nor _i2 (Q,_n1,_n2);
	not _wi0 (_wn2,DIN3);
	not _wi1 (_wn5,DIN4);
	and _wi2 (_wn4,_wn5,DIN5);
	or _wi3 (_wn3,_wn4,DIN4);
	and _wi4 (_wn1,_wn2,_wn3);
	not _wi5 (_wn9,DIN5);
	and _wi6 (_wn8,DIN4,_wn9);
	or _wi8 (_wn7,_wn8,_wn5);
	and _wi9 (_wn6,DIN3,_wn7);
	or _wi10 (DIN1Qstate0,_wn1,_wn6);
	or _wi21 (DIN2Qstate0,_wn1,_wn6);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/3 and-or-invert gate, 3x
// Q = !((DIN1 & DIN2) | (DIN3 & DIN4 & DIN5))
module aoi23s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	and _i0 (_n1,DIN1,DIN2);
	and _i1 (_n2,DIN5,DIN3,DIN4);
	nor _i2 (Q,_n1,_n2);
	not _wi0 (_wn2,DIN3);
	and _wi1 (_wn1,DIN5,_wn2,DIN4);
	not _wi2 (_wn6,DIN4);
	and _wi3 (_wn5,_wn6,DIN5);
	not _wi4 (_wn8,DIN5);
	and _wi5 (_wn7,DIN4,_wn8);
	or _wi6 (_wn4,_wn5,_wn7);
	and _wi7 (_wn3,DIN3,_wn4);
	or _wi8 (DIN1Qstate0,_wn1,_wn3);
	or _wi13 (_wn12,_wn7,_wn6);
	and _wi14 (_wn10,_wn2,_wn12);
	and _wi17 (_wn16,_wn8,DIN3,_wn6);
	or _wi18 (DIN2Qstate1,_wn10,_wn16);
	or _wi28 (DIN1Qstate1,_wn10,_wn16);
	or _wi37 (DIN2Qstate0,_wn1,_wn3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3/3 AND-OR-Invert Gate, 1x
// Q = !((DIN1 & DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))
module aoi33s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	and _i0 (_n1,DIN3,DIN1,DIN2);
	and _i1 (_n2,DIN6,DIN4,DIN5);
	nor _i2 (Q,_n1,_n2);
	not _wi0 (_wn2,DIN4);
	and _wi1 (_wn1,_wn2,DIN6);
	not _wi2 (_wn6,DIN5);
	and _wi3 (_wn5,_wn6,DIN6);
	not _wi4 (_wn8,DIN6);
	and _wi5 (_wn7,DIN5,_wn8);
	or _wi6 (_wn4,_wn5,_wn7);
	and _wi7 (_wn3,DIN4,_wn4);
	or _wi8 (DIN1Qstate0,_wn1,_wn3);
	not _wi9 (_wn11,DIN1);
	not _wi10 (_wn12,DIN3);
	and _wi11 (_wn10,_wn11,_wn12);
	not _wi13 (_wn15,DIN2);
	and _wi14 (_wn13,_wn12,DIN1,_wn15);
	or _wi15 (DIN4Qstate1,_wn10,_wn13);
	and _wi18 (_wn17,_wn2,_wn8);
	and _wi21 (_wn20,_wn8,DIN4,_wn6);
	or _wi22 (DIN3Qstate1,_wn17,_wn20);
	or _wi29 (DIN2Qstate1,_wn17,_wn20);
	or _wi36 (DIN1Qstate1,_wn17,_wn20);
	and _wi39 (_wn41,_wn15,DIN3);
	or _wi40 (_wn40,_wn41,DIN2);
	and _wi41 (_wn38,_wn11,_wn40);
	and _wi43 (_wn45,DIN2,_wn12);
	or _wi45 (_wn44,_wn45,_wn15);
	and _wi46 (_wn43,DIN1,_wn44);
	or _wi47 (DIN6Qstate0,_wn38,_wn43);
	or _wi58 (DIN5Qstate0,_wn38,_wn43);
	and _wi60 (_wn60,_wn11,DIN3);
	or _wi65 (_wn63,_wn41,_wn45);
	and _wi66 (_wn62,DIN1,_wn63);
	or _wi67 (DIN4Qstate0,_wn60,_wn62);
	or _wi76 (DIN3Qstate0,_wn1,_wn3);
	or _wi85 (DIN2Qstate0,_wn1,_wn3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3/3 AND-OR-Invert Gate, 2x
// Q = !((DIN1 & DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))
module aoi33s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	and _i0 (_n1,DIN3,DIN1,DIN2);
	and _i1 (_n2,DIN6,DIN4,DIN5);
	nor _i2 (Q,_n1,_n2);
	not _wi0 (_wn2,DIN4);
	and _wi1 (_wn1,DIN6,_wn2,DIN5);
	not _wi2 (_wn6,DIN5);
	and _wi3 (_wn5,_wn6,DIN6);
	not _wi4 (_wn8,DIN6);
	and _wi5 (_wn7,DIN5,_wn8);
	or _wi6 (_wn4,_wn5,_wn7);
	and _wi7 (_wn3,DIN4,_wn4);
	or _wi8 (DIN1Qstate0,_wn1,_wn3);
	not _wi9 (_wn11,DIN1);
	not _wi10 (_wn12,DIN3);
	and _wi11 (_wn10,_wn11,_wn12);
	not _wi13 (_wn15,DIN2);
	and _wi14 (_wn13,_wn12,DIN1,_wn15);
	or _wi15 (DIN6Qstate1,_wn10,_wn13);
	and _wi18 (_wn20,DIN2,_wn12);
	or _wi20 (_wn19,_wn20,_wn15);
	and _wi21 (_wn17,_wn11,_wn19);
	or _wi25 (DIN5Qstate1,_wn17,_wn13);
	or _wi35 (DIN4Qstate1,_wn17,_wn13);
	and _wi38 (_wn37,_wn2,_wn8);
	and _wi41 (_wn40,_wn8,DIN4,_wn6);
	or _wi42 (DIN3Qstate1,_wn37,_wn40);
	or _wi47 (_wn46,_wn7,_wn6);
	and _wi48 (_wn44,_wn2,_wn46);
	or _wi52 (DIN2Qstate1,_wn44,_wn40);
	or _wi62 (DIN1Qstate1,_wn44,_wn40);
	and _wi64 (_wn64,_wn11,DIN3);
	and _wi66 (_wn68,_wn15,DIN3);
	or _wi69 (_wn67,_wn68,_wn20);
	and _wi70 (_wn66,DIN1,_wn67);
	or _wi71 (DIN6Qstate0,_wn64,_wn66);
	and _wi73 (_wn73,DIN3,_wn11,DIN2);
	or _wi80 (DIN5Qstate0,_wn73,_wn66);
	or _wi89 (DIN4Qstate0,_wn73,_wn66);
	and _wi91 (_wn91,_wn2,DIN6);
	or _wi98 (DIN3Qstate0,_wn91,_wn3);
	or _wi107 (DIN2Qstate0,_wn1,_wn3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3/3 AND-OR-Invert Gate, 3x
// Q = !((DIN1 & DIN2 & DIN3) | (DIN4 & DIN5 & DIN6))
module aoi33s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	and _i0 (_n1,DIN3,DIN1,DIN2);
	and _i1 (_n2,DIN6,DIN4,DIN5);
	nor _i2 (Q,_n1,_n2);
	not _wi0 (_wn2,DIN4);
	and _wi1 (_wn1,DIN6,_wn2,DIN5);
	not _wi2 (_wn6,DIN5);
	and _wi3 (_wn5,_wn6,DIN6);
	not _wi4 (_wn8,DIN6);
	and _wi5 (_wn7,DIN5,_wn8);
	or _wi6 (_wn4,_wn5,_wn7);
	and _wi7 (_wn3,DIN4,_wn4);
	or _wi8 (DIN1Qstate0,_wn1,_wn3);
	not _wi9 (_wn11,DIN1);
	not _wi10 (_wn14,DIN3);
	and _wi11 (_wn13,DIN2,_wn14);
	not _wi12 (_wn15,DIN2);
	or _wi13 (_wn12,_wn13,_wn15);
	and _wi14 (_wn10,_wn11,_wn12);
	and _wi17 (_wn16,_wn14,DIN1,_wn15);
	or _wi18 (DIN6Qstate1,_wn10,_wn16);
	or _wi28 (DIN5Qstate1,_wn10,_wn16);
	or _wi38 (DIN4Qstate1,_wn10,_wn16);
	or _wi43 (_wn42,_wn7,_wn6);
	and _wi44 (_wn40,_wn2,_wn42);
	and _wi47 (_wn46,_wn8,DIN4,_wn6);
	or _wi48 (DIN3Qstate1,_wn40,_wn46);
	or _wi58 (DIN2Qstate1,_wn40,_wn46);
	or _wi68 (DIN1Qstate1,_wn40,_wn46);
	and _wi70 (_wn70,DIN3,_wn11,DIN2);
	and _wi72 (_wn74,_wn15,DIN3);
	or _wi75 (_wn73,_wn74,_wn13);
	and _wi76 (_wn72,DIN1,_wn73);
	or _wi77 (DIN6Qstate0,_wn70,_wn72);
	or _wi86 (DIN5Qstate0,_wn70,_wn72);
	or _wi95 (DIN4Qstate0,_wn70,_wn72);
	or _wi104 (DIN3Qstate0,_wn1,_wn3);
	or _wi113 (DIN2Qstate0,_wn1,_wn3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4/1/1/1 AND-OR-Invert Gate, 1x
// Q = !((DIN1 & DIN2 & DIN3 & DIN4) | DIN5 | DIN6 | DIN7)
module aoi4111s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	input  DIN7;
	and _i0 (_n1,DIN4,DIN3,DIN1,DIN2);
	nor _i1 (Q,DIN7,DIN6,_n1,DIN5);
	not _wi0 (_wn2,DIN1);
	not _wi1 (_wn5,DIN2);
	and _wi2 (_wn4,_wn5,DIN4);
	not _wi3 (_wn9,DIN3);
	and _wi4 (_wn8,_wn9,DIN4);
	not _wi5 (_wn11,DIN4);
	and _wi6 (_wn10,DIN3,_wn11);
	or _wi7 (_wn7,_wn8,_wn10);
	and _wi8 (_wn6,DIN2,_wn7);
	or _wi9 (_wn3,_wn4,_wn6);
	and _wi10 (_wn1,_wn2,_wn3);
	and _wi17 (_wn14,_wn5,_wn7);
	and _wi19 (_wn21,DIN2,_wn11);
	or _wi20 (_wn13,_wn14,_wn21);
	and _wi21 (_wn12,DIN1,_wn13);
	or _wi22 (DIN6Qstate1,_wn1,_wn12);
	or _wi27 (_wn29,_wn8,DIN3);
	and _wi28 (_wn27,_wn5,_wn29);
	or _wi32 (_wn33,_wn10,_wn9);
	and _wi33 (_wn32,DIN2,_wn33);
	or _wi34 (_wn26,_wn27,_wn32);
	and _wi35 (_wn24,_wn2,_wn26);
	and _wi41 (_wn39,_wn5,_wn33);
	or _wi44 (_wn38,_wn39,_wn21);
	and _wi45 (_wn37,DIN1,_wn38);
	or _wi46 (DIN5Qstate1,_wn24,_wn37);
	and _wi50 (_wn51,_wn5,_wn11);
	and _wi53 (_wn54,_wn11,DIN2,_wn9);
	or _wi54 (_wn50,_wn51,_wn54);
	and _wi55 (_wn48,_wn2,_wn50);
	and _wi59 (_wn57,_wn11,_wn9,DIN1,_wn5);
	or _wi60 (DIN7Qstate2,_wn48,_wn57);
	or _wi74 (DIN6Qstate2,_wn48,_wn57);
	and _wi76 (_wn76,DIN4,DIN3,_wn2,DIN2);
	and _wi78 (_wn80,DIN4,_wn5,DIN3);
	and _wi80 (_wn82,DIN4,DIN2,_wn9);
	or _wi81 (_wn79,_wn80,_wn82);
	and _wi82 (_wn78,DIN1,_wn79);
	or _wi83 (DIN7Qstate0,_wn76,_wn78);
	or _wi92 (DIN6Qstate0,_wn76,_wn78);
	or _wi101 (DIN5Qstate0,_wn76,_wn78);
	or _wi124 (DIN7Qstate1,_wn1,_wn12);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4/1/1/1 AND-OR-Invert Gate, 2x
// Q = !((DIN1 & DIN2 & DIN3 & DIN4) | DIN5 | DIN6 | DIN7)
module aoi4111s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	input  DIN7;
	and _i0 (_n1,DIN4,DIN3,DIN1,DIN2);
	nor _i1 (Q,DIN7,DIN6,_n1,DIN5);
	not _wi0 (_wn2,DIN1);
	not _wi1 (_wn5,DIN2);
	and _wi2 (_wn4,DIN4,_wn5,DIN3);
	not _wi3 (_wn7,DIN3);
	and _wi4 (_wn6,DIN4,DIN2,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,_wn3);
	and _wi9 (_wn10,DIN4,_wn5,_wn7);
	not _wi10 (_wn14,DIN4);
	and _wi11 (_wn13,_wn14,DIN2,DIN3);
	or _wi12 (_wn9,_wn10,_wn13);
	and _wi13 (_wn8,DIN1,_wn9);
	or _wi14 (DIN6Qstate1,_wn1,_wn8);
	and _wi17 (_wn19,_wn5,DIN4);
	and _wi19 (_wn23,_wn7,DIN4);
	and _wi21 (_wn25,DIN3,_wn14);
	or _wi22 (_wn22,_wn23,_wn25);
	and _wi23 (_wn21,DIN2,_wn22);
	or _wi24 (_wn18,_wn19,_wn21);
	and _wi25 (_wn16,_wn2,_wn18);
	and _wi32 (_wn29,_wn5,_wn22);
	and _wi34 (_wn36,DIN2,_wn14);
	or _wi35 (_wn28,_wn29,_wn36);
	and _wi36 (_wn27,DIN1,_wn28);
	or _wi37 (DIN5Qstate1,_wn16,_wn27);
	or _wi43 (_wn44,_wn25,_wn7);
	and _wi44 (_wn42,_wn5,_wn44);
	or _wi47 (_wn41,_wn42,_wn36);
	and _wi48 (_wn39,_wn2,_wn41);
	and _wi51 (_wn52,_wn5,_wn14);
	and _wi54 (_wn55,_wn14,DIN2,_wn7);
	or _wi55 (_wn51,_wn52,_wn55);
	and _wi56 (_wn50,DIN1,_wn51);
	or _wi57 (DIN7Qstate2,_wn39,_wn50);
	or _wi77 (DIN6Qstate2,_wn39,_wn50);
	and _wi86 (_wn79,_wn2,_wn51);
	and _wi90 (_wn88,_wn14,_wn7,DIN1,_wn5);
	or _wi91 (DIN5Qstate2,_wn79,_wn88);
	and _wi93 (_wn93,DIN4,DIN3,_wn2,DIN2);
	and _wi99 (_wn95,DIN1,_wn3);
	or _wi100 (DIN7Qstate0,_wn93,_wn95);
	or _wi109 (DIN6Qstate0,_wn93,_wn95);
	or _wi118 (DIN5Qstate0,_wn93,_wn95);
	or _wi133 (DIN7Qstate1,_wn1,_wn8);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4/1/1/1 AND-OR-Invert Gate, 3x
// Q = !((DIN1 & DIN2 & DIN3 & DIN4) | DIN5 | DIN6 | DIN7)
module aoi4111s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	input  DIN7;
	and _i0 (_n1,DIN4,DIN3,DIN1,DIN2);
	nor _i1 (Q,DIN7,DIN6,_n1,DIN5);
	not _wi0 (_wn2,DIN1);
	not _wi1 (_wn5,DIN4);
	and _wi2 (_wn4,DIN3,_wn5);
	not _wi3 (_wn6,DIN3);
	or _wi4 (_wn3,_wn4,_wn6);
	and _wi5 (_wn1,_wn2,_wn3);
	not _wi6 (_wn10,DIN2);
	and _wi11 (_wn9,_wn10,_wn3);
	and _wi13 (_wn15,DIN2,_wn5);
	or _wi14 (_wn8,_wn9,_wn15);
	and _wi15 (_wn7,DIN1,_wn8);
	or _wi16 (DIN6Qstate1,_wn1,_wn7);
	or _wi33 (DIN5Qstate1,_wn1,_wn7);
	and _wi35 (_wn35,DIN4,_wn2,DIN3);
	and _wi37 (_wn39,DIN4,_wn10,DIN3);
	and _wi39 (_wn41,DIN4,DIN2,_wn6);
	or _wi40 (_wn38,_wn39,_wn41);
	and _wi41 (_wn37,DIN1,_wn38);
	or _wi42 (DIN7Qstate0,_wn35,_wn37);
	or _wi51 (DIN6Qstate0,_wn35,_wn37);
	or _wi60 (DIN5Qstate0,_wn35,_wn37);
	or _wi77 (DIN7Qstate1,_wn1,_wn7);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4/2 and-or-invert gate, 1x
// Q = !((DIN1 & DIN2 & DIN3 & DIN4) | (DIN5 & DIN6))
module aoi42s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	and _i0 (_n1,DIN4,DIN3,DIN1,DIN2);
	and _i1 (_n2,DIN5,DIN6);
	nor _i2 (Q,_n1,_n2);
	not _wi0 (_wn2,DIN1);
	and _wi1 (_wn1,DIN4,DIN3,_wn2,DIN2);
	not _wi2 (_wn4,DIN4);
	not _wi3 (_wn5,DIN3);
	and _wi4 (_wn3,_wn4,_wn5,DIN1,DIN2);
	or _wi5 (DIN5Qstate1,_wn1,_wn3);
	not _wi7 (_wn11,DIN2);
	and _wi8 (_wn10,DIN4,_wn11,DIN3);
	and _wi10 (_wn14,_wn5,DIN4);
	and _wi12 (_wn16,DIN3,_wn4);
	or _wi13 (_wn13,_wn14,_wn16);
	and _wi14 (_wn12,DIN2,_wn13);
	or _wi15 (_wn9,_wn10,_wn12);
	and _wi16 (_wn7,_wn2,_wn9);
	or _wi21 (_wn22,_wn16,_wn5);
	and _wi22 (_wn20,_wn11,_wn22);
	and _wi25 (_wn26,_wn4,DIN2,_wn5);
	or _wi26 (_wn19,_wn20,_wn26);
	and _wi27 (_wn18,DIN1,_wn19);
	or _wi28 (DIN6Qstate2,_wn7,_wn18);
	or _wi33 (_wn35,_wn14,DIN3);
	and _wi34 (_wn33,_wn11,_wn35);
	and _wi39 (_wn38,DIN2,_wn22);
	or _wi40 (_wn32,_wn33,_wn38);
	and _wi41 (_wn30,_wn2,_wn32);
	and _wi47 (_wn43,DIN1,_wn11,_wn22);
	or _wi48 (DIN5Qstate2,_wn30,_wn43);
	and _wi60 (DIN6Qstate3,_wn2,_wn19);
	and _wi70 (DIN6Qstate0,DIN1,_wn9);
	and _wi80 (DIN5Qstate0,DIN1,_wn9);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4/2 and-or-invert gate, 2x
// Q = !((DIN1 & DIN2 & DIN3 & DIN4) | (DIN5 & DIN6))
module aoi42s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	and _i0 (_n1,DIN4,DIN3,DIN1,DIN2);
	and _i1 (_n2,DIN5,DIN6);
	nor _i2 (Q,_n1,_n2);
	not _wi0 (_wn2,DIN1);
	not _wi1 (_wn5,DIN2);
	and _wi2 (_wn4,DIN4,_wn5,DIN3);
	not _wi3 (_wn9,DIN3);
	and _wi4 (_wn8,_wn9,DIN4);
	not _wi5 (_wn11,DIN4);
	and _wi6 (_wn10,DIN3,_wn11);
	or _wi7 (_wn7,_wn8,_wn10);
	and _wi8 (_wn6,DIN2,_wn7);
	or _wi9 (_wn3,_wn4,_wn6);
	and _wi10 (_wn1,_wn2,_wn3);
	or _wi15 (_wn16,_wn10,_wn9);
	and _wi16 (_wn14,_wn5,_wn16);
	and _wi19 (_wn20,_wn11,DIN2,_wn9);
	or _wi20 (_wn13,_wn14,_wn20);
	and _wi21 (_wn12,DIN1,_wn13);
	or _wi22 (DIN6Qstate1,_wn1,_wn12);
	or _wi45 (DIN5Qstate1,_wn1,_wn12);
	and _wi57 (DIN6Qstate2,_wn2,_wn13);
	and _wi69 (DIN5Qstate2,_wn2,_wn13);
	and _wi71 (_wn71,DIN4,DIN3,_wn2,DIN2);
	and _wi81 (_wn73,DIN1,_wn3);
	or _wi82 (DIN6Qstate0,_wn71,_wn73);
	or _wi95 (DIN5Qstate0,_wn71,_wn73);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4/2 and-or-invert gate, 3x
// Q = !((DIN1 & DIN2 & DIN3 & DIN4) | (DIN5 & DIN6))
module aoi42s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	and _i0 (_n1,DIN4,DIN3,DIN1,DIN2);
	and _i1 (_n2,DIN5,DIN6);
	nor _i2 (Q,_n1,_n2);
	not _wi0 (_wn2,DIN1);
	not _wi1 (_wn5,DIN2);
	not _wi2 (_wn8,DIN4);
	and _wi3 (_wn7,DIN3,_wn8);
	not _wi4 (_wn9,DIN3);
	or _wi5 (_wn6,_wn7,_wn9);
	and _wi6 (_wn4,_wn5,_wn6);
	and _wi9 (_wn10,_wn8,DIN2,_wn9);
	or _wi10 (_wn3,_wn4,_wn10);
	and _wi11 (_wn1,_wn2,_wn3);
	and _wi15 (_wn13,_wn8,_wn9,DIN1,_wn5);
	or _wi16 (DIN6Qstate3,_wn1,_wn13);
	or _wi33 (DIN5Qstate3,_wn1,_wn13);
	and _wi35 (_wn36,DIN4,_wn5,DIN3);
	and _wi37 (_wn40,_wn9,DIN4);
	or _wi40 (_wn39,_wn40,_wn7);
	and _wi41 (_wn38,DIN2,_wn39);
	or _wi42 (_wn35,_wn36,_wn38);
	and _wi43 (DIN6Qstate0,DIN1,_wn35);
	and _wi53 (DIN5Qstate0,DIN1,_wn35);
	and _wi64 (_wn55,_wn2,_wn35);
	and _wi71 (_wn68,_wn5,_wn39);
	or _wi75 (_wn67,_wn68,_wn10);
	and _wi76 (_wn66,DIN1,_wn67);
	or _wi77 (DIN6Qstate2,_wn55,_wn66);
	or _wi101 (DIN5Qstate2,_wn55,_wn66);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Bi-directional Switch w/active High Enable, 1x
// INOUT2 = E ? INOUT1 : 'z'
module bshes1 (INOUT2, E, INOUT1);
	output INOUT2;
	input  E;
	input  INOUT1;
	bufif1 _i0 (INOUT2, INOUT1, E);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Bi-directional Switch w/active High Enable, 2x
// INOUT2 = E ? INOUT1 : 'z'
module bshes2 (INOUT2, E, INOUT1);
	output INOUT2;
	input  E;
	input  INOUT1;
	bufif1 _i0 (INOUT2, INOUT1, E);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Bi-directional Switch w/active High Enable, 3x
// INOUT2 = E ? INOUT1 : 'z'
module bshes3 (INOUT2, E, INOUT1);
	output INOUT2;
	input  E;
	input  INOUT1;
	bufif1 _i0 (INOUT2, INOUT1, E);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Bi-directional Switch w/active Low Enable, 1x
// INOUT2 = (!EB) ? INOUT1 : 'z'
module bsles1 (INOUT2, EB, INOUT1);
	output INOUT2;
	input  EB;
	input  INOUT1;
	bufif0 _i0 (INOUT2, INOUT1, EB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Bi-directional Switch w/active Low Enable, 2x
// INOUT2 = (!EB) ? INOUT1 : 'z'
module bsles2 (INOUT2, EB, INOUT1);
	output INOUT2;
	input  EB;
	input  INOUT1;
	bufif0 _i0 (INOUT2, INOUT1, EB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Bi-directional Switch w/active Low Enable, 3x
// INOUT2 = (!EB) ? INOUT1 : 'z'
module bsles3 (INOUT2, EB, INOUT1);
	output INOUT2;
	input  EB;
	input  INOUT1;
	bufif0 _i0 (INOUT2, INOUT1, EB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-Bit Carry Lookahead Cell, 1x
// OUTC = GIN0 | PIN0 & CIN0;OUTP = PIN0 & PIN1;OUTG = GIN1 | PIN1 & GIN0
module clc2s1 (OUTC, OUTG, OUTP, CIN0, GIN0, GIN1, PIN0, PIN1);
	output OUTC;
	output OUTG;
	output OUTP;
	input  CIN0;
	input  GIN0;
	input  GIN1;
	input  PIN0;
	input  PIN1;
	and _i0 (_n1,PIN0,CIN0);
	or _i1 (OUTC,GIN0,_n1);
	and _i2 (OUTP,PIN0,PIN1);
	and _i3 (_n4,PIN1,GIN0);
	or _i4 (OUTG,GIN1,_n4);
	not _wi0 (_wn3,PIN1);
	not _wi1 (_wn4,GIN1);
	not _wi2 (_wn5,PIN0);
	and _wi3 (_wn2,_wn3,_wn4,_wn5);
	and _wi5 (_wn6,GIN1,_wn5);
	or _wi6 (_wn1,_wn2,_wn6);
	and _wi7 (GIN0OUTCstate5,CIN0,_wn1);
	not _wi8 (_wn9,CIN0);
	and _wi11 (_wn11,_wn3,_wn4,PIN0);
	and _wi12 (_wn14,GIN1,PIN0);
	or _wi13 (_wn10,_wn11,_wn14);
	and _wi14 (GIN0OUTCstate1,_wn9,_wn10);
	and _wi23 (GIN0OUTCstate4,_wn9,_wn1);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-Bit Carry Lookahead Cell, 2x
// OUTC = GIN0 | PIN0 & CIN0;OUTP = PIN0 & PIN1;OUTG = GIN1 | PIN1 & GIN0
module clc2s2 (OUTC, OUTG, OUTP, CIN0, GIN0, GIN1, PIN0, PIN1);
	output OUTC;
	output OUTG;
	output OUTP;
	input  CIN0;
	input  GIN0;
	input  GIN1;
	input  PIN0;
	input  PIN1;
	and _i0 (_n1,PIN0,CIN0);
	or _i1 (OUTC,GIN0,_n1);
	and _i2 (OUTP,PIN0,PIN1);
	and _i3 (_n4,PIN1,GIN0);
	or _i4 (OUTG,GIN1,_n4);
	not _wi0 (_wn1,CIN0);
	not _wi1 (_wn4,PIN1);
	not _wi2 (_wn5,GIN1);
	not _wi3 (_wn6,PIN0);
	and _wi4 (_wn3,_wn4,_wn5,_wn6);
	and _wi6 (_wn7,GIN1,_wn6);
	or _wi7 (_wn2,_wn3,_wn7);
	and _wi8 (GIN0OUTCstate5,_wn1,_wn2);
	and _wi12 (_wn12,_wn4,_wn5,PIN0);
	and _wi13 (_wn15,GIN1,PIN0);
	or _wi14 (_wn11,_wn12,_wn15);
	and _wi15 (GIN0OUTCstate1,_wn1,_wn11);
	and _wi23 (GIN0OUTCstate4,CIN0,_wn2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-Bit Carry Lookahead Cell, 3x
// OUTC = GIN0 | PIN0 & CIN0;OUTP = PIN0 & PIN1;OUTG = GIN1 | PIN1 & GIN0
module clc2s3 (OUTC, OUTG, OUTP, CIN0, GIN0, GIN1, PIN0, PIN1);
	output OUTC;
	output OUTG;
	output OUTP;
	input  CIN0;
	input  GIN0;
	input  GIN1;
	input  PIN0;
	input  PIN1;
	and _i0 (_n1,PIN0,CIN0);
	or _i1 (OUTC,GIN0,_n1);
	and _i2 (OUTP,PIN0,PIN1);
	and _i3 (_n4,PIN1,GIN0);
	or _i4 (OUTG,GIN1,_n4);
	not _wi0 (_wn3,PIN1);
	not _wi1 (_wn4,GIN1);
	not _wi2 (_wn5,PIN0);
	and _wi3 (_wn2,_wn3,_wn4,_wn5);
	and _wi5 (_wn6,GIN1,_wn5);
	or _wi6 (_wn1,_wn2,_wn6);
	and _wi7 (GIN0OUTCstate4,CIN0,_wn1);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting 2 to 4 decoder w/active high enable, 1x
// OUTD0 = !(!BIN1 & !BIN0 & E);OUTD1 = !(!BIN1 & BIN0 & E);OUTD2 = !(BIN1 & !BIN0 & E);OUTD3 = !(BIN1 & BIN0 & E)
module dchei24s1 (OUTD0, OUTD1, OUTD2, OUTD3, BIN0, BIN1, E);
	output OUTD0;
	output OUTD1;
	output OUTD2;
	output OUTD3;
	input  BIN0;
	input  BIN1;
	input  E;
	not _i0 (_n1,BIN1);
	not _i1 (_n2,BIN0);
	nand _i2 (OUTD0,E,_n1,_n2);
	nand _i4 (OUTD1,E,_n1,BIN0);
	nand _i6 (OUTD2,E,BIN1,_n2);
	nand _i7 (OUTD3,E,BIN1,BIN0);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting 2 to 4 decoder w/active high enable, 2x
// OUTD0 = !(!BIN1 & !BIN0 & E);OUTD1 = !(!BIN1 & BIN0 & E);OUTD2 = !(BIN1 & !BIN0 & E);OUTD3 = !(BIN1 & BIN0 & E)
module dchei24s2 (OUTD0, OUTD1, OUTD2, OUTD3, BIN0, BIN1, E);
	output OUTD0;
	output OUTD1;
	output OUTD2;
	output OUTD3;
	input  BIN0;
	input  BIN1;
	input  E;
	not _i0 (_n1,BIN1);
	not _i1 (_n2,BIN0);
	nand _i2 (OUTD0,E,_n1,_n2);
	nand _i4 (OUTD1,E,_n1,BIN0);
	nand _i6 (OUTD2,E,BIN1,_n2);
	nand _i7 (OUTD3,E,BIN1,BIN0);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting 2 to 4 decoder w/active high enable, 3x
// OUTD0 = !(!BIN1 & !BIN0 & E);OUTD1 = !(!BIN1 & BIN0 & E);OUTD2 = !(BIN1 & !BIN0 & E);OUTD3 = !(BIN1 & BIN0 & E)
module dchei24s3 (OUTD0, OUTD1, OUTD2, OUTD3, BIN0, BIN1, E);
	output OUTD0;
	output OUTD1;
	output OUTD2;
	output OUTD3;
	input  BIN0;
	input  BIN1;
	input  E;
	not _i0 (_n1,BIN1);
	not _i1 (_n2,BIN0);
	nand _i2 (OUTD0,E,_n1,_n2);
	nand _i4 (OUTD1,E,_n1,BIN0);
	nand _i6 (OUTD2,E,BIN1,_n2);
	nand _i7 (OUTD3,E,BIN1,BIN0);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting 2 to 4 decoder, 1x
// OUTD0 = !(!BIN1 & !BIN0);OUTD1 = !(!BIN1 & BIN0);OUTD2 = !(BIN1 & !BIN0);OUTD3 = !(BIN1 & BIN0)
module dci24s1 (OUTD0, OUTD1, OUTD2, OUTD3, BIN0, BIN1);
	output OUTD0;
	output OUTD1;
	output OUTD2;
	output OUTD3;
	input  BIN0;
	input  BIN1;
	not _i0 (_n1,BIN1);
	not _i1 (_n2,BIN0);
	nand _i2 (OUTD0,_n1,_n2);
	nand _i4 (OUTD1,_n1,BIN0);
	nand _i6 (OUTD2,BIN1,_n2);
	nand _i7 (OUTD3,BIN1,BIN0);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting 2 to 4 decoder, 2x
// OUTD0 = !(!BIN1 & !BIN0);OUTD1 = !(!BIN1 & BIN0);OUTD2 = !(BIN1 & !BIN0);OUTD3 = !(BIN1 & BIN0)
module dci24s2 (OUTD0, OUTD1, OUTD2, OUTD3, BIN0, BIN1);
	output OUTD0;
	output OUTD1;
	output OUTD2;
	output OUTD3;
	input  BIN0;
	input  BIN1;
	not _i0 (_n1,BIN1);
	not _i1 (_n2,BIN0);
	nand _i2 (OUTD0,_n1,_n2);
	nand _i4 (OUTD1,_n1,BIN0);
	nand _i6 (OUTD2,BIN1,_n2);
	nand _i7 (OUTD3,BIN1,BIN0);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting 2 to 4 decoder, 3x
// OUTD0 = !(!BIN1 & !BIN0);OUTD1 = !(!BIN1 & BIN0);OUTD2 = !(BIN1 & !BIN0);OUTD3 = !(BIN1 & BIN0)
module dci24s3 (OUTD0, OUTD1, OUTD2, OUTD3, BIN0, BIN1);
	output OUTD0;
	output OUTD1;
	output OUTD2;
	output OUTD3;
	input  BIN0;
	input  BIN1;
	not _i0 (_n1,BIN1);
	not _i1 (_n2,BIN0);
	nand _i2 (OUTD0,_n1,_n2);
	nand _i4 (OUTD1,_n1,BIN0);
	nand _i6 (OUTD2,BIN1,_n2);
	nand _i7 (OUTD3,BIN1,BIN0);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting 2 to 4 decoder w/active law enable, 1x
// OUTD0 = !(!BIN1 & !BIN0 & !EB);OUTD1 = !(!BIN1 & BIN0 & !EB);OUTD2 = !(BIN1 & !BIN0 & !EB);OUTD3 = !(BIN1 & BIN0 & !EB)
module dclei24s1 (OUTD0, OUTD1, OUTD2, OUTD3, BIN0, BIN1, EB);
	output OUTD0;
	output OUTD1;
	output OUTD2;
	output OUTD3;
	input  BIN0;
	input  BIN1;
	input  EB;
	not _i0 (_n1,EB);
	not _i1 (_n2,BIN1);
	not _i2 (_n3,BIN0);
	nand _i3 (OUTD0,_n1,_n2,_n3);
	nand _i6 (OUTD1,_n1,_n2,BIN0);
	nand _i9 (OUTD2,_n1,BIN1,_n3);
	nand _i11 (OUTD3,_n1,BIN1,BIN0);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting 2 to 4 decoder w/active law enable, 2x
// OUTD0 = !(!BIN1 & !BIN0 & !EB);OUTD1 = !(!BIN1 & BIN0 & !EB);OUTD2 = !(BIN1 & !BIN0 & !EB);OUTD3 = !(BIN1 & BIN0 & !EB)
module dclei24s2 (OUTD0, OUTD1, OUTD2, OUTD3, BIN0, BIN1, EB);
	output OUTD0;
	output OUTD1;
	output OUTD2;
	output OUTD3;
	input  BIN0;
	input  BIN1;
	input  EB;
	not _i0 (_n1,EB);
	not _i1 (_n2,BIN1);
	not _i2 (_n3,BIN0);
	nand _i3 (OUTD0,_n1,_n2,_n3);
	nand _i6 (OUTD1,_n1,_n2,BIN0);
	nand _i9 (OUTD2,_n1,BIN1,_n3);
	nand _i11 (OUTD3,_n1,BIN1,BIN0);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting 2 to 4 decoder w/active law enable, 3x
// OUTD0 = !(!BIN1 & !BIN0 & !EB);OUTD1 = !(!BIN1 & BIN0 & !EB);OUTD2 = !(BIN1 & !BIN0 & !EB);OUTD3 = !(BIN1 & BIN0 & !EB)
module dclei24s3 (OUTD0, OUTD1, OUTD2, OUTD3, BIN0, BIN1, EB);
	output OUTD0;
	output OUTD1;
	output OUTD2;
	output OUTD3;
	input  BIN0;
	input  BIN1;
	input  EB;
	not _i0 (_n1,EB);
	not _i1 (_n2,BIN1);
	not _i2 (_n3,BIN0);
	nand _i3 (OUTD0,_n1,_n2,_n3);
	nand _i6 (OUTD1,_n1,_n2,BIN0);
	nand _i9 (OUTD2,_n1,BIN1,_n3);
	nand _i11 (OUTD3,_n1,BIN1,BIN0);
endmodule
`endcelldefine
// Added by Moshiur
`celldefine
// D FF w/async clear and enable
module dffacles1 (Q, QN, DIN, EB, CLK, CLRB);
	output Q, QN;
	input  DIN, EB, CLK, CLRB;
	reg Q;
	always @(posedge CLK or negedge CLRB)
		begin
			if (CLRB == 1'b0)
			begin 
				Q <= 1'b0;
			end
			else if (EB == 1'b0)
			begin 
				Q <= DIN;
			end
		end
	assign QN = ~Q;
endmodule
`endcelldefine

//Added by Moshiur
`celldefine
// D FF w/async set and enable
module dffasles1 (Q, QN, DIN, EB, CLK, SETB);
	output Q, QN;
	input  DIN, EB, CLK, SETB;
	reg Q;
	always @(posedge CLK or negedge SETB)
		begin
			if (SETB == 1'b0)
			begin
				Q <= 1'b1;
			end
			else if (EB == 1'b0)
			begin
				Q <= DIN;
			end
		end
	assign QN = ~Q;

endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// D Flip-Flop w/Async. Clear, 1x
// Q  = !CLRB ? 0 : rising(CLK) ? DIN  : 'p';QN = !Q
module dffacs1 (Q, QN, CLK, CLRB, DIN);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	reg notifier;
	not _i0 (_n1,CLRB);
	p_ffr _i1 (Q, DIN, CLK, _n1, notifier);
	not _i2 (QN,Q);
	buf _wi0 (shcheckCLKCLRBlh,DIN);
	buf _wi1 (shcheckCLKDINlh,CLRB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// D Flip-Flop w/Async. Clear, 2x
// Q  = !CLRB ? 0 : rising(CLK) ? DIN  : 'p';QN = !Q
module dffacs2 (Q, QN, CLK, CLRB, DIN);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	reg notifier;
	not _i0 (_n1,CLRB);
	p_ffr _i1 (Q, DIN, CLK, _n1, notifier);
	not _i2 (QN,Q);
	buf _wi0 (shcheckCLKCLRBlh,DIN);
	buf _wi1 (shcheckCLKDINlh,CLRB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// D Flip-Flop w/Async. Set and Clear, 1x
// Q  = !CLRB ? 0 : !SETB ? 1 : rising(CLK) ?  DIN : 'p';QN = !Q
module dffascs1 (Q, QN, CLK, CLRB, DIN, SETB);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	input  SETB;
	reg notifier;
	not _i0 (_n1,SETB);
	not _i1 (_n2,CLRB);
	p_ffrs _i2 (Q, DIN, CLK, _n2, _n1, notifier);
	not _i3 (QN,Q);
	and _wi0 (shcheckCLKCLRBlh,DIN,SETB);
	and _wi1 (shcheckCLKDINlh,CLRB,SETB);
	not _wi2 (_wn3,DIN);
	and _wi3 (shcheckCLKSETBlh,CLRB,_wn3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// D Flip-Flop w/Async. Set and Clear, 2x
// Q  = !CLRB ? 0 : !SETB ? 1 : rising(CLK) ?  DIN : 'p';QN = !Q
module dffascs2 (Q, QN, CLK, CLRB, DIN, SETB);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	input  SETB;
	reg notifier;
	not _i0 (_n1,SETB);
	not _i1 (_n2,CLRB);
	p_ffrs _i2 (Q, DIN, CLK, _n2, _n1, notifier);
	not _i3 (QN,Q);
	and _wi0 (shcheckCLKCLRBlh,DIN,SETB);
	and _wi1 (shcheckCLKDINlh,CLRB,SETB);
	not _wi2 (_wn3,DIN);
	and _wi3 (shcheckCLKSETBlh,CLRB,_wn3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// D Flip-Flop w/Async. Set, 1x
// QN = !SETB ? 0 : rising(CLK) ? !DIN : 'p';Q  = !QN
module dffass1 (Q, QN, CLK, DIN, SETB);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	input  SETB;
	reg notifier;
	not _i0 (_n1,DIN);
	not _i1 (_n2,SETB);
	p_ffr _i2 (QN, _n1, CLK, _n2, notifier);
	not _i3 (Q,QN);
	buf _wi0 (shcheckCLKDINlh,SETB);
	not _wi1 (shcheckCLKSETBlh,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// D Flip-Flop w/Async. Set, 2x
// QN = !SETB ? 0 : rising(CLK) ? !DIN : 'p';Q  = !QN
module dffass2 (Q, QN, CLK, DIN, SETB);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	input  SETB;
	reg notifier;
	not _i0 (_n1,DIN);
	not _i1 (_n2,SETB);
	p_ffr _i2 (QN, _n1, CLK, _n2, notifier);
	not _i3 (Q,QN);
	buf _wi0 (shcheckCLKDINlh,SETB);
	not _wi1 (shcheckCLKSETBlh,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// D Flip-Flop w/sync. Clear, 1x
// QN = rising(CLK) ? (!DIN | !CLRB) : 'p';Q  = !QN
module dffcs1 (Q, QN, CLK, CLRB, DIN);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	reg notifier;
	not _i0 (_n2,DIN);
	not _i1 (_n3,CLRB);
	or _i2 (_n1,_n2,_n3);
	p_ff _i3 (QN, _n1, CLK, notifier);
	not _i4 (Q,QN);
	buf _wi0 (shcheckCLKCLRBlh,DIN);
	buf _wi1 (shcheckCLKDINlh,CLRB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// D Flip-Flop w/sync. Clear, 2x
// QN = rising(CLK) ? (!DIN | !CLRB) : 'p';Q  = !QN
module dffcs2 (Q, QN, CLK, CLRB, DIN);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	reg notifier;
	not _i0 (_n2,DIN);
	not _i1 (_n3,CLRB);
	or _i2 (_n1,_n2,_n3);
	p_ff _i3 (QN, _n1, CLK, notifier);
	not _i4 (Q,QN);
	buf _wi0 (shcheckCLKCLRBlh,DIN);
	buf _wi1 (shcheckCLKDINlh,CLRB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// D Flip-Flop w/active Low Enable, 1x
// Q  = rising(CLK) ? ((!EB) ? DIN : 's') : 'p';QN = !Q
module dffles1 (Q, QN, CLK, DIN, EB);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	input  EB;
	reg notifier;
	not _i0 (_n2,EB);
	p_mux21 _i1 (_n1, DIN, buf_Q, _n2);
	p_ff _i2 (buf_Q, _n1, CLK, notifier);
	not _i3 (QN,buf_Q);
	buf _iQ(Q, buf_Q);
	not _wi0 (shcheckCLKDINlh,EB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// D Flip-Flop w/active Low Enable, 2x
// Q  = rising(CLK) ? ((!EB) ? DIN : 's') : 'p';QN = !Q
module dffles2 (Q, QN, CLK, DIN, EB);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	input  EB;
	reg notifier;
	not _i0 (_n2,EB);
	p_mux21 _i1 (_n1, DIN, buf_Q, _n2);
	p_ff _i2 (buf_Q, _n1, CLK, notifier);
	not _i3 (QN,buf_Q);
	buf _iQ(Q, buf_Q);
	not _wi0 (shcheckCLKDINlh,EB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// D Flip-Flop, 1x
// Q  = rising(CLK) ? DIN : 'p';QN = !Q
module dffs1 (Q, QN, CLK, DIN);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	reg notifier;
	p_ff _i0 (Q, DIN, CLK, notifier);
	not _i1 (QN,Q);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// D Flip-Flop, 2x
// Q  = rising(CLK) ? DIN : 'p';QN = !Q
module dffs2 (Q, QN, CLK, DIN);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	reg notifier;
	p_ff _i0 (Q, DIN, CLK, notifier);
	not _i1 (QN,Q);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// D Flip-Flop w/sync. Set and Clear, 1x
// QN = rising(CLK) ?  !(CLRB & ( DIN | !SETB)) : 'p';Q  = !QN
module dffscs1 (Q, QN, CLK, CLRB, DIN, SETB);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	input  SETB;
	reg notifier;
	not _i0 (_n3,SETB);
	or _i1 (_n2,DIN,_n3);
	nand _i2 (_n1,CLRB,_n2);
	p_ff _i3 (QN, _n1, CLK, notifier);
	not _i4 (Q,QN);
	not _wi0 (_wn2,DIN);
	not _wi1 (_wn3,SETB);
	and _wi2 (_wn1,_wn2,_wn3);
	or _wi3 (shcheckCLKCLRBlh,_wn1,DIN);
	and _wi4 (shcheckCLKDINlh,CLRB,SETB);
	and _wi6 (shcheckCLKSETBlh,CLRB,_wn2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// D Flip-Flop w/sync. Set and Clear, 2x
// QN = rising(CLK) ?  !(CLRB & ( DIN | !SETB)) : 'p';Q  = !QN
module dffscs2 (Q, QN, CLK, CLRB, DIN, SETB);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	input  SETB;
	reg notifier;
	not _i0 (_n3,SETB);
	or _i1 (_n2,DIN,_n3);
	nand _i2 (_n1,CLRB,_n2);
	p_ff _i3 (QN, _n1, CLK, notifier);
	not _i4 (Q,QN);
	not _wi0 (_wn2,DIN);
	not _wi1 (_wn3,SETB);
	and _wi2 (_wn1,_wn2,_wn3);
	or _wi3 (shcheckCLKCLRBlh,_wn1,DIN);
	and _wi4 (shcheckCLKDINlh,CLRB,SETB);
	and _wi6 (shcheckCLKSETBlh,CLRB,_wn2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// D Flip-Flop w/sync. Set, 1x
// QN = rising(CLK) ? !(DIN | !SETB) : 'p';Q  = !QN
module dffss1 (Q, QN, CLK, DIN, SETB);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	input  SETB;
	reg notifier;
	not _i0 (_n2,SETB);
	nor _i1 (_n1,DIN,_n2);
	p_ff _i2 (QN, _n1, CLK, notifier);
	not _i3 (Q,QN);
	buf _wi0 (shcheckCLKDINlh,SETB);
	not _wi1 (shcheckCLKSETBlh,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// D Flip-Flop w/sync. Set, 2x
// QN = rising(CLK) ? !(DIN | !SETB) : 'p';Q  = !QN
module dffss2 (Q, QN, CLK, DIN, SETB);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	input  SETB;
	reg notifier;
	not _i0 (_n2,SETB);
	nor _i1 (_n1,DIN,_n2);
	p_ff _i2 (QN, _n1, CLK, notifier);
	not _i3 (Q,QN);
	buf _wi0 (shcheckCLKDINlh,SETB);
	not _wi1 (shcheckCLKSETBlh,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// dual inverter, 1x
// Q1 = !DIN1;Q2 = !DIN2
module di2s1 (Q1, Q2, DIN1, DIN2);
	output Q1;
	output Q2;
	input  DIN1;
	input  DIN2;
	not _i0 (Q1,DIN1);
	not _i1 (Q2,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// dual inverter, 10x
// Q1 = !DIN1;Q2 = !DIN2
module di2s10 (Q1, Q2, DIN1, DIN2);
	output Q1;
	output Q2;
	input  DIN1;
	input  DIN2;
	not _i0 (Q1,DIN1);
	not _i1 (Q2,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// dual inverter, 11x
// Q1 = !DIN1;Q2 = !DIN2
module di2s11 (Q1, Q2, DIN1, DIN2);
	output Q1;
	output Q2;
	input  DIN1;
	input  DIN2;
	not _i0 (Q1,DIN1);
	not _i1 (Q2,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// dual inverter, 12x
// Q1 = !DIN1;Q2 = !DIN2
module di2s12 (Q1, Q2, DIN1, DIN2);
	output Q1;
	output Q2;
	input  DIN1;
	input  DIN2;
	not _i0 (Q1,DIN1);
	not _i1 (Q2,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// dual inverter, 2x
// Q1 = !DIN1;Q2 = !DIN2
module di2s2 (Q1, Q2, DIN1, DIN2);
	output Q1;
	output Q2;
	input  DIN1;
	input  DIN2;
	not _i0 (Q1,DIN1);
	not _i1 (Q2,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// dual inverter, 3x
// Q1 = !DIN1;Q2 = !DIN2
module di2s3 (Q1, Q2, DIN1, DIN2);
	output Q1;
	output Q2;
	input  DIN1;
	input  DIN2;
	not _i0 (Q1,DIN1);
	not _i1 (Q2,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// dual inverter, 4x
// Q1 = !DIN1;Q2 = !DIN2
module di2s4 (Q1, Q2, DIN1, DIN2);
	output Q1;
	output Q2;
	input  DIN1;
	input  DIN2;
	not _i0 (Q1,DIN1);
	not _i1 (Q2,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// dual inverter, 5x
// Q1 = !DIN1;Q2 = !DIN2
module di2s5 (Q1, Q2, DIN1, DIN2);
	output Q1;
	output Q2;
	input  DIN1;
	input  DIN2;
	not _i0 (Q1,DIN1);
	not _i1 (Q2,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// dual inverter, 6x
// Q1 = !DIN1;Q2 = !DIN2
module di2s6 (Q1, Q2, DIN1, DIN2);
	output Q1;
	output Q2;
	input  DIN1;
	input  DIN2;
	not _i0 (Q1,DIN1);
	not _i1 (Q2,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// dual inverter, 7x
// Q1 = !DIN1;Q2 = !DIN2
module di2s7 (Q1, Q2, DIN1, DIN2);
	output Q1;
	output Q2;
	input  DIN1;
	input  DIN2;
	not _i0 (Q1,DIN1);
	not _i1 (Q2,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// dual inverter, 8x
// Q1 = !DIN1;Q2 = !DIN2
module di2s8 (Q1, Q2, DIN1, DIN2);
	output Q1;
	output Q2;
	input  DIN1;
	input  DIN2;
	not _i0 (Q1,DIN1);
	not _i1 (Q2,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// dual inverter, 9x
// Q1 = !DIN1;Q2 = !DIN2
module di2s9 (Q1, Q2, DIN1, DIN2);
	output Q1;
	output Q2;
	input  DIN1;
	input  DIN2;
	not _i0 (Q1,DIN1);
	not _i1 (Q2,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Data Select Multiplexer w/Clock, 1x
// Q = (DIN1 & (!CLK)) | (DIN2 & CLK)
module dsmxc31s1 (Q, CLK, DIN1, DIN2);
	output Q;
	input  CLK;
	input  DIN1;
	input  DIN2;
	not _i0 (_n2,CLK);
	and _i1 (_n1,DIN1,_n2);
	and _i2 (_n3,DIN2,CLK);
	or _i3 (Q,_n1,_n3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Data Select Multiplexer w/Clock, 2x
// Q = (DIN1 & (!CLK)) | (DIN2 & CLK)
module dsmxc31s2 (Q, CLK, DIN1, DIN2);
	output Q;
	input  CLK;
	input  DIN1;
	input  DIN2;
	not _i0 (_n2,CLK);
	and _i1 (_n1,DIN1,_n2);
	and _i2 (_n3,DIN2,CLK);
	or _i3 (Q,_n1,_n3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1-bit full adder, 1x
// OUTS = (AIN ^ BIN) ^ CIN;OUTC = ((AIN & BIN) | (BIN & CIN) | (CIN & AIN))
module fadd1s1 (OUTC, OUTS, AIN, BIN, CIN);
	output OUTC;
	output OUTS;
	input  AIN;
	input  BIN;
	input  CIN;
	xor _i0 (OUTS,CIN,AIN,BIN);
	and _i1 (_n2,AIN,BIN);
	and _i2 (_n3,BIN,CIN);
	and _i3 (_n4,CIN,AIN);
	or _i4 (OUTC,_n2,_n3,_n4);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1-bit full adder, 2x
// OUTS = (AIN ^ BIN) ^ CIN;OUTC = ((AIN & BIN) | (BIN & CIN) | (CIN & AIN))
module fadd1s2 (OUTC, OUTS, AIN, BIN, CIN);
	output OUTC;
	output OUTS;
	input  AIN;
	input  BIN;
	input  CIN;
	xor _i0 (OUTS,CIN,AIN,BIN);
	and _i1 (_n2,AIN,BIN);
	and _i2 (_n3,BIN,CIN);
	and _i3 (_n4,CIN,AIN);
	or _i4 (OUTC,_n2,_n3,_n4);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1-bit full adder, 3x
// OUTS = (AIN ^ BIN) ^ CIN;OUTC = ((AIN & BIN) | (BIN & CIN) | (CIN & AIN))
module fadd1s3 (OUTC, OUTS, AIN, BIN, CIN);
	output OUTC;
	output OUTS;
	input  AIN;
	input  BIN;
	input  CIN;
	xor _i0 (OUTS,CIN,AIN,BIN);
	and _i1 (_n2,AIN,BIN);
	and _i2 (_n3,BIN,CIN);
	and _i3 (_n4,CIN,AIN);
	or _i4 (OUTC,_n2,_n3,_n4);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1-Bit Full Adder w/P.G Output, 1x
// OUTP = AIN ^ BIN;OUTG = AIN & BIN;OUTS = (AIN ^ BIN) ^ CIN
module faddpgs1 (OUTG, OUTP, OUTS, AIN, BIN, CIN);
	output OUTG;
	output OUTP;
	output OUTS;
	input  AIN;
	input  BIN;
	input  CIN;
	xor _i0 (OUTP,AIN,BIN);
	and _i1 (OUTG,AIN,BIN);
	xor _i2 (OUTS,CIN,AIN,BIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1-Bit Full Adder w/P.G Output, 2x
// OUTP = AIN ^ BIN;OUTG = AIN & BIN;OUTS = (AIN ^ BIN) ^ CIN
module faddpgs2 (OUTG, OUTP, OUTS, AIN, BIN, CIN);
	output OUTG;
	output OUTP;
	output OUTS;
	input  AIN;
	input  BIN;
	input  CIN;
	xor _i0 (OUTP,AIN,BIN);
	and _i1 (OUTG,AIN,BIN);
	xor _i2 (OUTS,CIN,AIN,BIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1-Bit Full Adder w/P.G Output, 3x
// OUTP = AIN ^ BIN;OUTG = AIN & BIN;OUTS = (AIN ^ BIN) ^ CIN
module faddpgs3 (OUTG, OUTP, OUTS, AIN, BIN, CIN);
	output OUTG;
	output OUTP;
	output OUTS;
	input  AIN;
	input  BIN;
	input  CIN;
	xor _i0 (OUTP,AIN,BIN);
	and _i1 (OUTG,AIN,BIN);
	xor _i2 (OUTS,CIN,AIN,BIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1-Bit Half Adder, 1x
// OUTS = AIN ^ BIN;OUTC = AIN & BIN
module hadd1s1 (OUTC, OUTS, AIN, BIN);
	output OUTC;
	output OUTS;
	input  AIN;
	input  BIN;
	xor _i0 (OUTS,AIN,BIN);
	and _i1 (OUTC,AIN,BIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1-Bit Half Adder, 2x
// OUTS = AIN ^ BIN;OUTC = AIN & BIN
module hadd1s2 (OUTC, OUTS, AIN, BIN);
	output OUTC;
	output OUTS;
	input  AIN;
	input  BIN;
	xor _i0 (OUTS,AIN,BIN);
	and _i1 (OUTC,AIN,BIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1-Bit Half Adder, 3x
// OUTS = AIN ^ BIN;OUTC = AIN & BIN
module hadd1s3 (OUTC, OUTS, AIN, BIN);
	output OUTC;
	output OUTS;
	input  AIN;
	input  BIN;
	xor _i0 (OUTS,AIN,BIN);
	and _i1 (OUTC,AIN,BIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// hi-impedance inverter, 1x
// Q = !DIN
module hi1s1 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// hi-impedance inverting buffer, 1x
// Q = !DIN
module hib1s1 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// hi-impedance non-inverting buffer, 1x
// Q = DIN
module hnb1s1 (Q, DIN);
	output Q;
	input  DIN;
	buf _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverter, 1x
// Q = !DIN
module i1s1 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverter, 10x
// Q = !DIN
module i1s10 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverter, 11x
// Q = !DIN
module i1s11 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverter, 12x
// Q = !DIN
module i1s12 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverter, 2x
// Q = !DIN
module i1s2 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverter, 3x
// Q = !DIN
module i1s3 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverter, 4x
// Q = !DIN
module i1s4 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverter, 5x
// Q = !DIN
module i1s5 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverter, 6x
// Q = !DIN
module i1s6 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverter, 7x
// Q = !DIN
module i1s7 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverter, 8x
// Q = !DIN
module i1s8 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverter, 9x
// Q = !DIN
module i1s9 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting buffer, 1x
// Q = !DIN
module ib1s1 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting buffer, 10x
// Q = !DIN
module ib1s10 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting buffer, 11x
// Q = !DIN
module ib1s11 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting buffer, 12x
// Q = !DIN
module ib1s12 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting buffer, 2x
// Q = !DIN
module ib1s2 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting buffer, 3x
// Q = !DIN
module ib1s3 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting buffer, 4x
// Q = !DIN
module ib1s4 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting buffer, 5x
// Q = !DIN
module ib1s5 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting buffer, 6x
// Q = !DIN
module ib1s6 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting buffer, 7x
// Q = !DIN
module ib1s7 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting buffer, 8x
// Q = !DIN
module ib1s8 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting buffer, 9x
// Q = !DIN
module ib1s9 (Q, DIN);
	output Q;
	input  DIN;
	not _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Clocked Latch, 1x
// QN = CLK ?  !DIN : 'p';Q  = !QN
module lclks1 (Q, QN, CLK, DIN);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	reg notifier;
	not _i0 (_n1,DIN);
	p_latch _i1 (QN, _n1, CLK, notifier);
	not _i2 (Q,QN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Clocked Latch, 2x
// QN = CLK ?  !DIN : 'p';Q  = !QN
module lclks2 (Q, QN, CLK, DIN);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	reg notifier;
	not _i0 (_n1,DIN);
	p_latch _i1 (QN, _n1, CLK, notifier);
	not _i2 (Q,QN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Latch w/Clear, 1x
// QN = !CLRB ? 1 : CLK ?  !DIN : 'p';Q  = !QN
module lcs1 (Q, QN, CLK, CLRB, DIN);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	reg notifier;
	not _i0 (_n1,DIN);
	not _i1 (_n2,CLRB);
	p_latchs _i2 (QN, _n1, CLK, _n2, notifier);
	not _i3 (Q,QN);
	buf _wi0 (shcheckCLKCLRBhl,DIN);
	buf _wi1 (shcheckCLKDINhl,CLRB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Latch w/Clear, 2x
// QN = !CLRB ? 1 : CLK ?  !DIN : 'p';Q  = !QN
module lcs2 (Q, QN, CLK, CLRB, DIN);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	reg notifier;
	not _i0 (_n1,DIN);
	not _i1 (_n2,CLRB);
	p_latchs _i2 (QN, _n1, CLK, _n2, notifier);
	not _i3 (Q,QN);
	buf _wi0 (shcheckCLKCLRBhl,DIN);
	buf _wi1 (shcheckCLKDINhl,CLRB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// NAND Latch, 1x
// Q = !SIN ? 1 : !RIN ? 0 : 'p';QN = !RIN ? 1 : !SIN ? 0 : 'p'
module lnnds1 (Q, QN, RIN, SIN);
	output Q;
	output QN;
	input  RIN;
	input  SIN;
	reg notifier;
	not _i0 (_n1,RIN);
	not _i1 (_n2,SIN);
	p_sr _i2 (Q,_n2,_n1,notifier);
	p_sr _i5 (QN,_n1,_n2,notifier);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// NAND Latch, 2x
// Q = !SIN ? 1 : !RIN ? 0 : 'p';QN = !RIN ? 1 : !SIN ? 0 : 'p'
module lnnds2 (Q, QN, RIN, SIN);
	output Q;
	output QN;
	input  RIN;
	input  SIN;
	reg notifier;
	not _i0 (_n1,RIN);
	not _i1 (_n2,SIN);
	p_sr _i2 (Q,_n2,_n1,notifier);
	p_sr _i5 (QN,_n1,_n2,notifier);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// NOR Latch, 1x
// Q = RIN ? 0 : SIN ? 1 : 'p';QN = SIN ? 0 : RIN ? 1 : 'p'
module lnors1 (Q, QN, RIN, SIN);
	output Q;
	output QN;
	input  RIN;
	input  SIN;
	reg notifier;
	p_rs _i0 (Q, SIN, RIN, notifier);
	p_rs _i1 (QN, RIN, SIN, notifier);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// NOR Latch, 2x
// Q = RIN ? 0 : SIN ? 1 : 'p';QN = SIN ? 0 : RIN ? 1 : 'p'
module lnors2 (Q, QN, RIN, SIN);
	output Q;
	output QN;
	input  RIN;
	input  SIN;
	reg notifier;
	p_rs _i0 (Q, SIN, RIN, notifier);
	p_rs _i1 (QN, RIN, SIN, notifier);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Latch w/Set and Clear,1x
// Q  = CLK ?  (CLRB & ( DIN | !SETB)) : 'p';QN = !Q
module lscs1 (Q, QN, CLK, CLRB, DIN, SETB);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	input  SETB;
	reg notifier;
	not _i0 (_n3,SETB);
	or _i1 (_n2,DIN,_n3);
	and _i2 (_n1,CLRB,_n2);
	p_latch _i3 (Q, _n1, CLK, notifier);
	not _i4 (QN,Q);
	not _wi0 (_wn2,DIN);
	not _wi1 (_wn3,SETB);
	and _wi2 (_wn1,_wn2,_wn3);
	or _wi3 (shcheckCLKCLRBhl,_wn1,DIN);
	and _wi4 (shcheckCLKDINhl,CLRB,SETB);
	and _wi6 (shcheckCLKSETBhl,CLRB,_wn2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Latch w/Set and Clear,2x
// Q  = CLK ?  (CLRB & ( DIN | !SETB)) : 'p';QN = !Q
module lscs2 (Q, QN, CLK, CLRB, DIN, SETB);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	input  SETB;
	reg notifier;
	not _i0 (_n3,SETB);
	or _i1 (_n2,DIN,_n3);
	and _i2 (_n1,CLRB,_n2);
	p_latch _i3 (Q, _n1, CLK, notifier);
	not _i4 (QN,Q);
	not _wi0 (_wn2,DIN);
	not _wi1 (_wn3,SETB);
	and _wi2 (_wn1,_wn2,_wn3);
	or _wi3 (shcheckCLKCLRBhl,_wn1,DIN);
	and _wi4 (shcheckCLKDINhl,CLRB,SETB);
	and _wi6 (shcheckCLKSETBhl,CLRB,_wn2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Latch w/Set, 1x
// Q  = !SETB ? 1 : CLK ?  DIN : 'p';QN = !Q
module lss1 (Q, QN, CLK, DIN, SETB);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	input  SETB;
	reg notifier;
	not _i0 (_n1,SETB);
	p_latchs _i1 (Q, DIN, CLK, _n1, notifier);
	not _i2 (QN,Q);
	buf _wi0 (shcheckCLKDINhl,SETB);
	not _wi1 (shcheckCLKSETBhl,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Latch w/Set, 2x
// Q  = !SETB ? 1 : CLK ?  DIN : 'p';QN = !Q
module lss2 (Q, QN, CLK, DIN, SETB);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	input  SETB;
	reg notifier;
	not _i0 (_n1,SETB);
	p_latchs _i1 (Q, DIN, CLK, _n1, notifier);
	not _i2 (QN,Q);
	buf _wi0 (shcheckCLKDINhl,SETB);
	not _wi1 (shcheckCLKSETBhl,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2 to 1 multiplexer, 1x
// Q = (DIN1 & !SIN) | (DIN2 & SIN)
module mx21s1 (Q, DIN1, DIN2, SIN);
	output Q;
	input  DIN1;
	input  DIN2;
	input  SIN;
	not _i0 (_n2,SIN);
	and _i1 (_n1,DIN1,_n2);
	and _i2 (_n3,DIN2,SIN);
	or _i3 (Q,_n1,_n3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2 to 1 multiplexer, 1x
// Q = (DIN1 & SINB) | (DIN2 & SIN)
module mx22s1 (Q, DIN1, DIN2, SIN, SINB);
	output Q;
	input  DIN1;
	input  DIN2;
	input  SIN;
	input  SINB;
	and _i1 (_n1,DIN1,SINB);
	and _i2 (_n2,DIN2,SIN);
	or _i3 (Q,_n1,_n2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2 to 1 multiplexer, 2x
// Q = (DIN1 & !SIN) | (DIN2 & SIN)
module mx21s2 (Q, DIN1, DIN2, SIN);
	output Q;
	input  DIN1;
	input  DIN2;
	input  SIN;
	not _i0 (_n2,SIN);
	and _i1 (_n1,DIN1,_n2);
	and _i2 (_n3,DIN2,SIN);
	or _i3 (Q,_n1,_n3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2 to 1 multiplexer, 3x
// Q = (DIN1 & !SIN) | (DIN2 & SIN)
module mx21s3 (Q, DIN1, DIN2, SIN);
	output Q;
	input  DIN1;
	input  DIN2;
	input  SIN;
	not _i0 (_n2,SIN);
	and _i1 (_n1,DIN1,_n2);
	and _i2 (_n3,DIN2,SIN);
	or _i3 (Q,_n1,_n3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4 to 1 multiplexer, 1x
// Q = (DIN1 & !SIN1 & !SIN0) | (DIN2 & !SIN1 & SIN0) | (DIN3 & SIN1 & !SIN0) | (DIN4 & SIN1 & SIN0)
module mx41s1 (Q, DIN1, DIN2, DIN3, DIN4, SIN0, SIN1);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  SIN0;
	input  SIN1;
	not _i0 (_n2,SIN0);
	not _i1 (_n3,SIN1);
	and _i2 (_n1,_n2,DIN1,_n3);
	and _i4 (_n4,SIN0,DIN2,_n3);
	and _i6 (_n6,_n2,DIN3,SIN1);
	and _i7 (_n8,SIN0,DIN4,SIN1);
	or _i8 (Q,_n1,_n4,_n6,_n8);
	not _wi0 (_wn2,DIN1);
	not _wi1 (_wn5,DIN2);
	not _wi2 (_wn6,DIN3);
	and _wi3 (_wn4,SIN1,DIN4,_wn5,_wn6);
	not _wi5 (_wn13,DIN4);
	not _wi6 (_wn14,SIN1);
	and _wi7 (_wn12,_wn13,_wn14);
	or _wi8 (_wn11,_wn12,DIN4);
	and _wi9 (_wn9,_wn6,_wn11);
	and _wi11 (_wn15,DIN3,_wn14);
	or _wi12 (_wn8,_wn9,_wn15);
	and _wi13 (_wn7,DIN2,_wn8);
	or _wi14 (_wn3,_wn4,_wn7);
	and _wi15 (_wn1,_wn2,_wn3);
	and _wi17 (_wn17,SIN1,DIN4,DIN1,_wn6);
	or _wi18 (SIN0Qstate0,_wn1,_wn17);
	and _wi22 (_wn26,SIN0,_wn6,DIN4);
	not _wi24 (_wn32,SIN0);
	and _wi25 (_wn30,_wn13,_wn32);
	or _wi26 (_wn29,_wn30,DIN4);
	and _wi27 (_wn28,DIN3,_wn29);
	or _wi28 (_wn25,_wn26,_wn28);
	and _wi29 (_wn23,_wn5,_wn25);
	and _wi31 (_wn33,_wn32,DIN2,DIN3);
	or _wi32 (_wn22,_wn23,_wn33);
	and _wi33 (_wn20,_wn2,_wn22);
	and _wi35 (_wn35,SIN0,DIN4,DIN1,_wn5);
	or _wi36 (SIN1Qstate1,_wn20,_wn35);
	and _wi39 (_wn38,SIN1,_wn13,_wn2,DIN3);
	and _wi43 (_wn46,_wn6,_wn14);
	and _wi45 (_wn51,DIN4,_wn14);
	or _wi47 (_wn50,_wn51,_wn13);
	and _wi48 (_wn49,DIN3,_wn50);
	or _wi49 (_wn45,_wn46,_wn49);
	and _wi50 (_wn43,_wn5,_wn45);
	and _wi52 (_wn54,SIN1,_wn13,DIN2,DIN3);
	or _wi53 (_wn42,_wn43,_wn54);
	and _wi54 (_wn41,DIN1,_wn42);
	or _wi55 (SIN0Qstate1,_wn38,_wn41);
	and _wi58 (_wn57,SIN0,_wn13,_wn2,DIN2);
	and _wi62 (_wn62,_wn32,_wn5,_wn6);
	and _wi65 (_wn71,DIN4,_wn32);
	or _wi67 (_wn70,_wn71,_wn13);
	and _wi68 (_wn68,_wn6,_wn70);
	and _wi70 (_wn74,SIN0,DIN3,_wn13);
	or _wi71 (_wn67,_wn68,_wn74);
	and _wi72 (_wn66,DIN2,_wn67);
	or _wi73 (_wn61,_wn62,_wn66);
	and _wi74 (_wn60,DIN1,_wn61);
	or _wi75 (SIN1Qstate0,_wn57,_wn60);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4 to 1 multiplexer, 2x
// Q = (DIN1 & !SIN1 & !SIN0) | (DIN2 & !SIN1 & SIN0) | (DIN3 & SIN1 & !SIN0) | (DIN4 & SIN1 & SIN0)
module mx41s2 (Q, DIN1, DIN2, DIN3, DIN4, SIN0, SIN1);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  SIN0;
	input  SIN1;
	not _i0 (_n2,SIN0);
	not _i1 (_n3,SIN1);
	and _i2 (_n1,_n2,DIN1,_n3);
	and _i4 (_n4,SIN0,DIN2,_n3);
	and _i6 (_n6,_n2,DIN3,SIN1);
	and _i7 (_n8,SIN0,DIN4,SIN1);
	or _i8 (Q,_n1,_n4,_n6,_n8);
	not _wi0 (_wn2,DIN1);
	not _wi1 (_wn5,DIN2);
	not _wi2 (_wn6,DIN3);
	and _wi3 (_wn4,SIN1,DIN4,_wn5,_wn6);
	not _wi5 (_wn13,DIN4);
	not _wi6 (_wn14,SIN1);
	and _wi7 (_wn12,_wn13,_wn14);
	or _wi8 (_wn11,_wn12,DIN4);
	and _wi9 (_wn9,_wn6,_wn11);
	and _wi11 (_wn15,DIN3,_wn14);
	or _wi12 (_wn8,_wn9,_wn15);
	and _wi13 (_wn7,DIN2,_wn8);
	or _wi14 (_wn3,_wn4,_wn7);
	and _wi15 (_wn1,_wn2,_wn3);
	and _wi17 (_wn17,SIN1,DIN4,DIN1,_wn6);
	or _wi18 (SIN0Qstate0,_wn1,_wn17);
	and _wi22 (_wn26,SIN0,_wn6,DIN4);
	not _wi24 (_wn32,SIN0);
	and _wi25 (_wn30,_wn13,_wn32);
	or _wi26 (_wn29,_wn30,DIN4);
	and _wi27 (_wn28,DIN3,_wn29);
	or _wi28 (_wn25,_wn26,_wn28);
	and _wi29 (_wn23,_wn5,_wn25);
	and _wi31 (_wn33,_wn32,DIN2,DIN3);
	or _wi32 (_wn22,_wn23,_wn33);
	and _wi33 (_wn20,_wn2,_wn22);
	and _wi35 (_wn35,SIN0,DIN4,DIN1,_wn5);
	or _wi36 (SIN1Qstate1,_wn20,_wn35);
	and _wi39 (_wn38,SIN1,_wn13,_wn2,DIN3);
	and _wi43 (_wn46,_wn6,_wn14);
	and _wi45 (_wn51,DIN4,_wn14);
	or _wi47 (_wn50,_wn51,_wn13);
	and _wi48 (_wn49,DIN3,_wn50);
	or _wi49 (_wn45,_wn46,_wn49);
	and _wi50 (_wn43,_wn5,_wn45);
	and _wi52 (_wn54,SIN1,_wn13,DIN2,DIN3);
	or _wi53 (_wn42,_wn43,_wn54);
	and _wi54 (_wn41,DIN1,_wn42);
	or _wi55 (SIN0Qstate1,_wn38,_wn41);
	and _wi58 (_wn57,SIN0,_wn13,_wn2,DIN2);
	and _wi62 (_wn62,_wn32,_wn5,_wn6);
	and _wi65 (_wn71,DIN4,_wn32);
	or _wi67 (_wn70,_wn71,_wn13);
	and _wi68 (_wn68,_wn6,_wn70);
	and _wi70 (_wn74,SIN0,DIN3,_wn13);
	or _wi71 (_wn67,_wn68,_wn74);
	and _wi72 (_wn66,DIN2,_wn67);
	or _wi73 (_wn61,_wn62,_wn66);
	and _wi74 (_wn60,DIN1,_wn61);
	or _wi75 (SIN1Qstate0,_wn57,_wn60);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4 to 1 multiplexer, 3x
// Q = (DIN1 & !SIN1 & !SIN0) | (DIN2 & !SIN1 & SIN0) | (DIN3 & SIN1 & !SIN0) | (DIN4 & SIN1 & SIN0)
module mx41s3 (Q, DIN1, DIN2, DIN3, DIN4, SIN0, SIN1);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  SIN0;
	input  SIN1;
	not _i0 (_n2,SIN0);
	not _i1 (_n3,SIN1);
	and _i2 (_n1,_n2,DIN1,_n3);
	and _i4 (_n4,SIN0,DIN2,_n3);
	and _i6 (_n6,_n2,DIN3,SIN1);
	and _i7 (_n8,SIN0,DIN4,SIN1);
	or _i8 (Q,_n1,_n4,_n6,_n8);
	not _wi0 (_wn2,DIN1);
	not _wi1 (_wn5,DIN2);
	not _wi2 (_wn6,DIN3);
	and _wi3 (_wn4,SIN1,DIN4,_wn5,_wn6);
	not _wi5 (_wn13,DIN4);
	not _wi6 (_wn14,SIN1);
	and _wi7 (_wn12,_wn13,_wn14);
	or _wi8 (_wn11,_wn12,DIN4);
	and _wi9 (_wn9,_wn6,_wn11);
	and _wi11 (_wn15,DIN3,_wn14);
	or _wi12 (_wn8,_wn9,_wn15);
	and _wi13 (_wn7,DIN2,_wn8);
	or _wi14 (_wn3,_wn4,_wn7);
	and _wi15 (_wn1,_wn2,_wn3);
	and _wi17 (_wn17,SIN1,DIN4,DIN1,_wn6);
	or _wi18 (SIN0Qstate0,_wn1,_wn17);
	and _wi22 (_wn26,SIN0,_wn6,DIN4);
	not _wi24 (_wn32,SIN0);
	and _wi25 (_wn30,_wn13,_wn32);
	or _wi26 (_wn29,_wn30,DIN4);
	and _wi27 (_wn28,DIN3,_wn29);
	or _wi28 (_wn25,_wn26,_wn28);
	and _wi29 (_wn23,_wn5,_wn25);
	and _wi31 (_wn33,_wn32,DIN2,DIN3);
	or _wi32 (_wn22,_wn23,_wn33);
	and _wi33 (_wn20,_wn2,_wn22);
	and _wi35 (_wn35,SIN0,DIN4,DIN1,_wn5);
	or _wi36 (SIN1Qstate1,_wn20,_wn35);
	and _wi39 (_wn38,SIN1,_wn13,_wn2,DIN3);
	and _wi43 (_wn46,_wn6,_wn14);
	and _wi45 (_wn51,DIN4,_wn14);
	or _wi47 (_wn50,_wn51,_wn13);
	and _wi48 (_wn49,DIN3,_wn50);
	or _wi49 (_wn45,_wn46,_wn49);
	and _wi50 (_wn43,_wn5,_wn45);
	and _wi52 (_wn54,SIN1,_wn13,DIN2,DIN3);
	or _wi53 (_wn42,_wn43,_wn54);
	and _wi54 (_wn41,DIN1,_wn42);
	or _wi55 (SIN0Qstate1,_wn38,_wn41);
	and _wi58 (_wn57,SIN0,_wn13,_wn2,DIN2);
	and _wi62 (_wn62,_wn32,_wn5,_wn6);
	and _wi65 (_wn71,DIN4,_wn32);
	or _wi67 (_wn70,_wn71,_wn13);
	and _wi68 (_wn68,_wn6,_wn70);
	and _wi70 (_wn74,SIN0,DIN3,_wn13);
	or _wi71 (_wn67,_wn68,_wn74);
	and _wi72 (_wn66,DIN2,_wn67);
	or _wi73 (_wn61,_wn62,_wn66);
	and _wi74 (_wn60,DIN1,_wn61);
	or _wi75 (SIN1Qstate0,_wn57,_wn60);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting 2 to 1 multiplexer, 1x
// Q = !((DIN1 & !SIN) | (DIN2 & SIN))
module mxi21s1 (Q, DIN1, DIN2, SIN);
	output Q;
	input  DIN1;
	input  DIN2;
	input  SIN;
	not _i0 (_n2,SIN);
	and _i1 (_n1,DIN1,_n2);
	and _i2 (_n3,DIN2,SIN);
	nor _i3 (Q,_n1,_n3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting 2 to 1 multiplexer, 2x
// Q = !((DIN1 & !SIN) | (DIN2 & SIN))
module mxi21s2 (Q, DIN1, DIN2, SIN);
	output Q;
	input  DIN1;
	input  DIN2;
	input  SIN;
	not _i0 (_n2,SIN);
	and _i1 (_n1,DIN1,_n2);
	and _i2 (_n3,DIN2,SIN);
	nor _i3 (Q,_n1,_n3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// inverting 2 to 1 multiplexer, 3x
// Q = !((DIN1 & !SIN) | (DIN2 & SIN))
module mxi21s3 (Q, DIN1, DIN2, SIN);
	output Q;
	input  DIN1;
	input  DIN2;
	input  SIN;
	not _i0 (_n2,SIN);
	and _i1 (_n1,DIN1,_n2);
	and _i2 (_n3,DIN2,SIN);
	nor _i3 (Q,_n1,_n3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Inverting 4 to 1 multiplexer, 1x
// Q = !((DIN1 & !SIN0 & !SIN1) | (DIN2 & !SIN1 & SIN0) | (DIN3 & SIN1 & !SIN0) | (DIN4 & SIN1 & SIN0))
module mxi41s1 (Q, DIN1, DIN2, DIN3, DIN4, SIN0, SIN1);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  SIN0;
	input  SIN1;
	not _i0 (_n2,SIN1);
	not _i1 (_n3,SIN0);
	and _i2 (_n1,_n2,DIN1,_n3);
	and _i4 (_n4,SIN0,DIN2,_n2);
	and _i6 (_n6,_n3,DIN3,SIN1);
	and _i7 (_n8,SIN0,DIN4,SIN1);
	nor _i8 (Q,_n1,_n4,_n6,_n8);
	not _wi0 (_wn2,DIN1);
	not _wi1 (_wn5,DIN2);
	not _wi2 (_wn6,DIN3);
	and _wi3 (_wn4,SIN1,DIN4,_wn5,_wn6);
	not _wi5 (_wn13,DIN4);
	not _wi6 (_wn14,SIN1);
	and _wi7 (_wn12,_wn13,_wn14);
	or _wi8 (_wn11,_wn12,DIN4);
	and _wi9 (_wn9,_wn6,_wn11);
	and _wi11 (_wn15,DIN3,_wn14);
	or _wi12 (_wn8,_wn9,_wn15);
	and _wi13 (_wn7,DIN2,_wn8);
	or _wi14 (_wn3,_wn4,_wn7);
	and _wi15 (_wn1,_wn2,_wn3);
	and _wi17 (_wn17,SIN1,DIN4,DIN1,_wn6);
	or _wi18 (SIN0Qstate0,_wn1,_wn17);
	and _wi22 (_wn26,SIN0,_wn6,DIN4);
	not _wi24 (_wn32,SIN0);
	and _wi25 (_wn30,_wn13,_wn32);
	or _wi26 (_wn29,_wn30,DIN4);
	and _wi27 (_wn28,DIN3,_wn29);
	or _wi28 (_wn25,_wn26,_wn28);
	and _wi29 (_wn23,_wn5,_wn25);
	and _wi31 (_wn33,_wn32,DIN2,DIN3);
	or _wi32 (_wn22,_wn23,_wn33);
	and _wi33 (_wn20,_wn2,_wn22);
	and _wi35 (_wn35,SIN0,DIN4,DIN1,_wn5);
	or _wi36 (SIN1Qstate1,_wn20,_wn35);
	and _wi39 (_wn38,SIN1,_wn13,_wn2,DIN3);
	and _wi43 (_wn46,_wn6,_wn14);
	and _wi45 (_wn51,DIN4,_wn14);
	or _wi47 (_wn50,_wn51,_wn13);
	and _wi48 (_wn49,DIN3,_wn50);
	or _wi49 (_wn45,_wn46,_wn49);
	and _wi50 (_wn43,_wn5,_wn45);
	and _wi52 (_wn54,SIN1,_wn13,DIN2,DIN3);
	or _wi53 (_wn42,_wn43,_wn54);
	and _wi54 (_wn41,DIN1,_wn42);
	or _wi55 (SIN0Qstate1,_wn38,_wn41);
	and _wi58 (_wn57,SIN0,_wn13,_wn2,DIN2);
	and _wi62 (_wn62,_wn32,_wn5,_wn6);
	and _wi65 (_wn71,DIN4,_wn32);
	or _wi67 (_wn70,_wn71,_wn13);
	and _wi68 (_wn68,_wn6,_wn70);
	and _wi70 (_wn74,SIN0,DIN3,_wn13);
	or _wi71 (_wn67,_wn68,_wn74);
	and _wi72 (_wn66,DIN2,_wn67);
	or _wi73 (_wn61,_wn62,_wn66);
	and _wi74 (_wn60,DIN1,_wn61);
	or _wi75 (SIN1Qstate0,_wn57,_wn60);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Inverting 4 to 1 multiplexer, 2x
// Q = !((DIN1 & !SIN1 & !SIN0) | (DIN2 & !SIN1 & SIN0) | (DIN3 & SIN1 & !SIN0) | (DIN4 & SIN1 & SIN0))
module mxi41s2 (Q, DIN1, DIN2, DIN3, DIN4, SIN0, SIN1);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  SIN0;
	input  SIN1;
	not _i0 (_n2,SIN0);
	not _i1 (_n3,SIN1);
	and _i2 (_n1,_n2,DIN1,_n3);
	and _i4 (_n4,SIN0,DIN2,_n3);
	and _i6 (_n6,_n2,DIN3,SIN1);
	and _i7 (_n8,SIN0,DIN4,SIN1);
	nor _i8 (Q,_n1,_n4,_n6,_n8);
	not _wi0 (_wn2,DIN1);
	not _wi1 (_wn5,DIN2);
	not _wi2 (_wn6,DIN3);
	and _wi3 (_wn4,SIN1,DIN4,_wn5,_wn6);
	not _wi5 (_wn13,DIN4);
	not _wi6 (_wn14,SIN1);
	and _wi7 (_wn12,_wn13,_wn14);
	or _wi8 (_wn11,_wn12,DIN4);
	and _wi9 (_wn9,_wn6,_wn11);
	and _wi11 (_wn15,DIN3,_wn14);
	or _wi12 (_wn8,_wn9,_wn15);
	and _wi13 (_wn7,DIN2,_wn8);
	or _wi14 (_wn3,_wn4,_wn7);
	and _wi15 (_wn1,_wn2,_wn3);
	and _wi17 (_wn17,SIN1,DIN4,DIN1,_wn6);
	or _wi18 (SIN0Qstate0,_wn1,_wn17);
	and _wi22 (_wn26,SIN0,_wn6,DIN4);
	not _wi24 (_wn32,SIN0);
	and _wi25 (_wn30,_wn13,_wn32);
	or _wi26 (_wn29,_wn30,DIN4);
	and _wi27 (_wn28,DIN3,_wn29);
	or _wi28 (_wn25,_wn26,_wn28);
	and _wi29 (_wn23,_wn5,_wn25);
	and _wi31 (_wn33,_wn32,DIN2,DIN3);
	or _wi32 (_wn22,_wn23,_wn33);
	and _wi33 (_wn20,_wn2,_wn22);
	and _wi35 (_wn35,SIN0,DIN4,DIN1,_wn5);
	or _wi36 (SIN1Qstate1,_wn20,_wn35);
	and _wi39 (_wn38,SIN1,_wn13,_wn2,DIN3);
	and _wi43 (_wn46,_wn6,_wn14);
	and _wi45 (_wn51,DIN4,_wn14);
	or _wi47 (_wn50,_wn51,_wn13);
	and _wi48 (_wn49,DIN3,_wn50);
	or _wi49 (_wn45,_wn46,_wn49);
	and _wi50 (_wn43,_wn5,_wn45);
	and _wi52 (_wn54,SIN1,_wn13,DIN2,DIN3);
	or _wi53 (_wn42,_wn43,_wn54);
	and _wi54 (_wn41,DIN1,_wn42);
	or _wi55 (SIN0Qstate1,_wn38,_wn41);
	and _wi58 (_wn57,SIN0,_wn13,_wn2,DIN2);
	and _wi62 (_wn62,_wn32,_wn5,_wn6);
	and _wi65 (_wn71,DIN4,_wn32);
	or _wi67 (_wn70,_wn71,_wn13);
	and _wi68 (_wn68,_wn6,_wn70);
	and _wi70 (_wn74,SIN0,DIN3,_wn13);
	or _wi71 (_wn67,_wn68,_wn74);
	and _wi72 (_wn66,DIN2,_wn67);
	or _wi73 (_wn61,_wn62,_wn66);
	and _wi74 (_wn60,DIN1,_wn61);
	or _wi75 (SIN1Qstate0,_wn57,_wn60);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Inverting 4 to 1 multiplexer, 3x
// Q = !((DIN1 & !SIN1 & !SIN0) | (DIN2 & !SIN1 & SIN0) | (DIN3 & SIN1 & !SIN0) | (DIN4 & SIN1 & SIN0))
module mxi41s3 (Q, DIN1, DIN2, DIN3, DIN4, SIN0, SIN1);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  SIN0;
	input  SIN1;
	not _i0 (_n2,SIN0);
	not _i1 (_n3,SIN1);
	and _i2 (_n1,_n2,DIN1,_n3);
	and _i4 (_n4,SIN0,DIN2,_n3);
	and _i6 (_n6,_n2,DIN3,SIN1);
	and _i7 (_n8,SIN0,DIN4,SIN1);
	nor _i8 (Q,_n1,_n4,_n6,_n8);
	not _wi0 (_wn2,DIN1);
	not _wi1 (_wn5,DIN2);
	not _wi2 (_wn6,DIN3);
	and _wi3 (_wn4,SIN1,DIN4,_wn5,_wn6);
	not _wi5 (_wn13,DIN4);
	not _wi6 (_wn14,SIN1);
	and _wi7 (_wn12,_wn13,_wn14);
	or _wi8 (_wn11,_wn12,DIN4);
	and _wi9 (_wn9,_wn6,_wn11);
	and _wi11 (_wn15,DIN3,_wn14);
	or _wi12 (_wn8,_wn9,_wn15);
	and _wi13 (_wn7,DIN2,_wn8);
	or _wi14 (_wn3,_wn4,_wn7);
	and _wi15 (_wn1,_wn2,_wn3);
	and _wi17 (_wn17,SIN1,DIN4,DIN1,_wn6);
	or _wi18 (SIN0Qstate0,_wn1,_wn17);
	and _wi22 (_wn26,SIN0,_wn6,DIN4);
	not _wi24 (_wn32,SIN0);
	and _wi25 (_wn30,_wn13,_wn32);
	or _wi26 (_wn29,_wn30,DIN4);
	and _wi27 (_wn28,DIN3,_wn29);
	or _wi28 (_wn25,_wn26,_wn28);
	and _wi29 (_wn23,_wn5,_wn25);
	and _wi31 (_wn33,_wn32,DIN2,DIN3);
	or _wi32 (_wn22,_wn23,_wn33);
	and _wi33 (_wn20,_wn2,_wn22);
	and _wi35 (_wn35,SIN0,DIN4,DIN1,_wn5);
	or _wi36 (SIN1Qstate1,_wn20,_wn35);
	and _wi39 (_wn38,SIN1,_wn13,_wn2,DIN3);
	and _wi43 (_wn46,_wn6,_wn14);
	and _wi45 (_wn51,DIN4,_wn14);
	or _wi47 (_wn50,_wn51,_wn13);
	and _wi48 (_wn49,DIN3,_wn50);
	or _wi49 (_wn45,_wn46,_wn49);
	and _wi50 (_wn43,_wn5,_wn45);
	and _wi52 (_wn54,SIN1,_wn13,DIN2,DIN3);
	or _wi53 (_wn42,_wn43,_wn54);
	and _wi54 (_wn41,DIN1,_wn42);
	or _wi55 (SIN0Qstate1,_wn38,_wn41);
	and _wi58 (_wn57,SIN0,_wn13,_wn2,DIN2);
	and _wi62 (_wn62,_wn32,_wn5,_wn6);
	and _wi65 (_wn71,DIN4,_wn32);
	or _wi67 (_wn70,_wn71,_wn13);
	and _wi68 (_wn68,_wn6,_wn70);
	and _wi70 (_wn74,SIN0,DIN3,_wn13);
	or _wi71 (_wn67,_wn68,_wn74);
	and _wi72 (_wn66,DIN2,_wn67);
	or _wi73 (_wn61,_wn62,_wn66);
	and _wi74 (_wn60,DIN1,_wn61);
	or _wi75 (SIN1Qstate0,_wn57,_wn60);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// non-inverting buffer, 1x
// Q = DIN
module nb1s1 (Q, DIN);
	output Q;
	input  DIN;
	buf _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// non-inverting buffer, 10x
// Q = DIN
module nb1s10 (Q, DIN);
	output Q;
	input  DIN;
	buf _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// non-inverting buffer, 11x
// Q = DIN
module nb1s11 (Q, DIN);
	output Q;
	input  DIN;
	buf _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// non-inverting buffer, 12x
// Q = DIN
module nb1s12 (Q, DIN);
	output Q;
	input  DIN;
	buf _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// non-inverting buffer, 2x
// Q = DIN
module nb1s2 (Q, DIN);
	output Q;
	input  DIN;
	buf _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// non-inverting buffer, 3x
// Q = DIN
module nb1s3 (Q, DIN);
	output Q;
	input  DIN;
	buf _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// non-inverting buffer, 4x
// Q = DIN
module nb1s4 (Q, DIN);
	output Q;
	input  DIN;
	buf _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// non-inverting buffer, 5x
// Q = DIN
module nb1s5 (Q, DIN);
	output Q;
	input  DIN;
	buf _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// non-inverting buffer, 6x
// Q = DIN
module nb1s6 (Q, DIN);
	output Q;
	input  DIN;
	buf _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// non-inverting buffer, 7x
// Q = DIN
module nb1s7 (Q, DIN);
	output Q;
	input  DIN;
	buf _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// non-inverting buffer, 8x
// Q = DIN
module nb1s8 (Q, DIN);
	output Q;
	input  DIN;
	buf _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// non-inverting buffer, 9x
// Q = DIN
module nb1s9 (Q, DIN);
	output Q;
	input  DIN;
	buf _i0 (Q,DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-input nand, 1x
// Q = !(DIN1 & DIN2)
module nnd2s1 (Q, DIN1, DIN2);
	output Q;
	input  DIN1;
	input  DIN2;
	nand _i0 (Q,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-input nand, 2x
// Q = !(DIN1 & DIN2)
module nnd2s2 (Q, DIN1, DIN2);
	output Q;
	input  DIN1;
	input  DIN2;
	nand _i0 (Q,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-input nand, 3x
// Q = !(DIN1 & DIN2)
module nnd2s3 (Q, DIN1, DIN2);
	output Q;
	input  DIN1;
	input  DIN2;
	nand _i0 (Q,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3-input nand, 1x
// Q = !(DIN1 & DIN2 & DIN3)
module nnd3s1 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	nand _i0 (Q,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3-input nand, 2x
// Q = !(DIN1 & DIN2 & DIN3)
module nnd3s2 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	nand _i0 (Q,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3-input nand, 3x
// Q = !(DIN1 & DIN2 & DIN3)
module nnd3s3 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	nand _i0 (Q,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4-input nand, 1x
// Q = !(DIN1 & DIN2 & DIN3 & DIN4)
module nnd4s1 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	nand _i0 (Q,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4-input nand, 2x
// Q = !(DIN1 & DIN2 & DIN3 & DIN4)
module nnd4s2 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	nand _i0 (Q,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4-input nand, 3x
// Q = !(DIN1 & DIN2 & DIN3 & DIN4)
module nnd4s3 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	nand _i0 (Q,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 5-input nand, 3x
// Q = !(DIN1 & DIN2 & DIN3 & DIN4 & DIN5)
module nnd5s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	nand _i0 (Q,DIN5,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 6-input nand, 3x
// Q = !(DIN1 & DIN2 & DIN3 & DIN4 & DIN5 & DIN6)
module nnd6s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	nand _i0 (Q,DIN6,DIN5,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 7-input nand, 3x
// Q = !(DIN1 & DIN2 & DIN3 & DIN4 & DIN5 & DIN6 & DIN7)
module nnd7s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	input  DIN7;
	nand _i0 (Q,DIN7,DIN6,DIN5,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 8-input NAND, 3x
// Q = !(DIN1 & DIN2 & DIN3 & DIN4 & DIN5 & DIN6 & DIN7 & DIN8)
module nnd8s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7, DIN8);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	input  DIN7;
	input  DIN8;
	nand _i0 (Q,DIN8,DIN7,DIN6,DIN5,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-input nor, 1x
// Q = !(DIN1 | DIN2)
module nor2s1 (Q, DIN1, DIN2);
	output Q;
	input  DIN1;
	input  DIN2;
	nor _i0 (Q,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-input nor, 2x
// Q = !(DIN1 | DIN2)
module nor2s2 (Q, DIN1, DIN2);
	output Q;
	input  DIN1;
	input  DIN2;
	nor _i0 (Q,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-input nor, 3x
// Q = !(DIN1 | DIN2)
module nor2s3 (Q, DIN1, DIN2);
	output Q;
	input  DIN1;
	input  DIN2;
	nor _i0 (Q,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3-input nor, 1x
// Q = !(DIN1 | DIN2 | DIN3)
module nor3s1 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	nor _i0 (Q,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3-input nor, 2x
// Q = !(DIN1 | DIN2 | DIN3)
module nor3s2 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	nor _i0 (Q,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3-input nor, 3x
// Q = !(DIN1 | DIN2 | DIN3)
module nor3s3 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	nor _i0 (Q,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4-input nor, 1x
// Q = !(DIN1 | DIN2 | DIN3 | DIN4)
module nor4s1 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	nor _i0 (Q,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4-input nor, 2x
// Q = !(DIN1 | DIN2 | DIN3 | DIN4)
module nor4s2 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	nor _i0 (Q,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4-input nor, 3x
// Q = !(DIN1 | DIN2 | DIN3 | DIN4)
module nor4s3 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	nor _i0 (Q,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 5-input nor, 1x
// Q = !(DIN1 | DIN2 | DIN3 | DIN4 | DIN5)
module nor5s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	nor _i0 (Q,DIN5,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 5-input nor, 2x
// Q = !(DIN1 | DIN2 | DIN3 | DIN4 | DIN5)
module nor5s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	nor _i0 (Q,DIN5,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 5-input nor, 3x
// Q = !(DIN1 | DIN2 | DIN3 | DIN4 | DIN5)
module nor5s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	nor _i0 (Q,DIN5,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 6-input nor, 1x
// Q = !(DIN1 | DIN2 | DIN3 | DIN4 | DIN5 | DIN6)
module nor6s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	nor _i0 (Q,DIN6,DIN5,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 6-input nor, 2x
// Q = !(DIN1 | DIN2 | DIN3 | DIN4 | DIN5 | DIN6)
module nor6s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	nor _i0 (Q,DIN6,DIN5,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 6-input nor, 3x
// Q = !(DIN1 | DIN2 | DIN3 | DIN4 | DIN5 | DIN6)
module nor6s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	nor _i0 (Q,DIN6,DIN5,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 7-input nor, 3x
// Q = !(DIN1 | DIN2 | DIN3 | DIN4 | DIN5 | DIN6 | DIN7)
module nor7s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	input  DIN7;
	nor _i0 (Q,DIN7,DIN6,DIN5,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// NMOSFET Pull-down, 1x
// OUTD = GIN ? 0 : 'z'
module npd1s1 (OUTD, GIN);
	output OUTD;
	input  GIN;
	nmos _i0 (OUTD, 1'b0, GIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// NMOSFET Pull-down, 2x
// OUTD = GIN ? 0 : 'z'
module npd1s2 (OUTD, GIN);
	output OUTD;
	input  GIN;
	nmos _i0 (OUTD, 1'b0, GIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// NMOS pass transistor, 1x
// OUTD = DIN ? OUTS : 'z'
module npt1s1 (OUTD, DIN, OUTS);
	output OUTD;
	input  DIN;
	input  OUTS;
	bufif1 _i0 (OUTD, OUTS, DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// NMOS pass transistor, 2x
// OUTD = DIN ? OUTS : 'z'
module npt1s2 (OUTD, DIN, OUTS);
	output OUTD;
	input  DIN;
	input  OUTS;
	bufif1 _i0 (OUTD, OUTS, DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// NMOS pass transistor, 3x
// OUTD = DIN ? OUTS : 'z'
module npt1s3 (OUTD, DIN, OUTS);
	output OUTD;
	input  DIN;
	input  OUTS;
	bufif1 _i0 (OUTD, OUTS, DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// NMOS pass transistor, 4x
// OUTD = DIN ? OUTS : 'z'
module npt1s4 (OUTD, DIN, OUTS);
	output OUTD;
	input  DIN;
	input  OUTS;
	bufif1 _i0 (OUTD, OUTS, DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// NMOS pass transistor, 5x
// OUTD = DIN ? OUTS : 'z'
module npt1s5 (OUTD, DIN, OUTS);
	output OUTD;
	input  DIN;
	input  OUTS;
	bufif1 _i0 (OUTD, OUTS, DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// NMOS pass transistor, 6x
// OUTD = DIN ? OUTS : 'z'
module npt1s6 (OUTD, DIN, OUTS);
	output OUTD;
	input  DIN;
	input  OUTS;
	bufif1 _i0 (OUTD, OUTS, DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/1/2/3 OR-AND-AND-OR-Invert Gate, 1x
// Q = !((DIN1 & DIN2 & DIN3 ) | ((DIN4 | DIN5 ) & DIN6) | DIN7)
module oaaoi1123s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	input  DIN7;
	and _i0 (_n1,DIN3,DIN1,DIN2);
	or _i1 (_n3,DIN4,DIN5);
	and _i2 (_n2,_n3,DIN6);
	nor _i3 (Q,DIN7,_n1,_n2);
	not _wi0 (_wn2,DIN1);
	not _wi1 (_wn5,DIN5);
	not _wi2 (_wn6,DIN2);
	not _wi3 (_wn7,DIN4);
	and _wi4 (_wn4,DIN6,_wn5,_wn6,_wn7);
	not _wi6 (_wn12,DIN3);
	and _wi8 (_wn10,DIN6,_wn5,_wn12,_wn7);
	and _wi11 (_wn19,_wn5,DIN6);
	not _wi12 (_wn22,DIN6);
	and _wi13 (_wn21,DIN5,_wn22);
	or _wi14 (_wn18,_wn19,_wn21);
	and _wi15 (_wn16,_wn7,_wn18);
	and _wi17 (_wn23,_wn22,DIN4,DIN5);
	or _wi18 (_wn15,_wn16,_wn23);
	and _wi19 (_wn14,DIN3,_wn15);
	or _wi20 (_wn9,_wn10,_wn14);
	and _wi21 (_wn8,DIN2,_wn9);
	or _wi22 (_wn3,_wn4,_wn8);
	and _wi23 (_wn1,_wn2,_wn3);
	and _wi41 (_wn27,_wn6,_wn9);
	and _wi45 (_wn45,DIN6,_wn5,_wn7,DIN2,_wn12);
	or _wi46 (_wn26,_wn27,_wn45);
	and _wi47 (_wn25,DIN1,_wn26);
	or _wi48 (DIN7Qstate0,_wn1,_wn25);
	and _wi53 (_wn56,_wn5,_wn12,DIN4);
	and _wi55 (_wn61,_wn7,DIN5);
	and _wi57 (_wn63,DIN4,_wn5);
	or _wi58 (_wn60,_wn61,_wn63);
	and _wi59 (_wn59,DIN3,_wn60);
	or _wi60 (_wn55,_wn56,_wn59);
	and _wi61 (_wn53,_wn6,_wn55);
	and _wi67 (_wn65,DIN2,_wn60);
	or _wi68 (_wn52,_wn53,_wn65);
	and _wi69 (_wn50,_wn2,_wn52);
	and _wi76 (_wn73,_wn6,_wn60);
	and _wi83 (_wn80,DIN2,_wn12,_wn60);
	or _wi84 (_wn72,_wn73,_wn80);
	and _wi85 (_wn71,DIN1,_wn72);
	or _wi86 (DIN6Qstate0,_wn50,_wn71);
	and _wi89 (_wn91,DIN5,DIN4,_wn6,DIN3);
	and _wi90 (_wn93,DIN5,DIN2,DIN4);
	or _wi91 (_wn90,_wn91,_wn93);
	and _wi92 (_wn88,_wn2,_wn90);
	and _wi94 (_wn96,DIN5,_wn6,DIN4);
	and _wi96 (_wn98,DIN5,DIN4,DIN2,_wn12);
	or _wi97 (_wn95,_wn96,_wn98);
	and _wi98 (_wn94,DIN1,_wn95);
	or _wi99 (DIN6Qstate2,_wn88,_wn94);
	and _wi103 (_wn104,_wn6,_wn22);
	and _wi106 (_wn109,_wn12,_wn22);
	and _wi109 (_wn112,_wn22,DIN3,_wn5);
	or _wi110 (_wn108,_wn109,_wn112);
	and _wi111 (_wn107,DIN2,_wn108);
	or _wi112 (_wn103,_wn104,_wn107);
	and _wi113 (_wn101,_wn2,_wn103);
	and _wi122 (_wn117,_wn6,_wn108);
	and _wi125 (_wn126,_wn22,DIN2,_wn12);
	or _wi126 (_wn116,_wn117,_wn126);
	and _wi127 (_wn115,DIN1,_wn116);
	or _wi128 (DIN7Qstate1,_wn101,_wn115);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/1/2/3 OR-AND-AND-OR-Invert Gate, 2x
// Q = !((DIN1 & DIN2 & DIN3 ) | ((DIN4 | DIN5 ) & DIN6) | DIN7)
module oaaoi1123s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	input  DIN7;
	and _i0 (_n1,DIN3,DIN1,DIN2);
	or _i1 (_n3,DIN4,DIN5);
	and _i2 (_n2,_n3,DIN6);
	nor _i3 (Q,DIN7,_n1,_n2);
	not _wi0 (_wn2,DIN4);
	not _wi1 (_wn5,DIN6);
	and _wi2 (_wn4,DIN5,_wn5);
	not _wi3 (_wn6,DIN5);
	or _wi4 (_wn3,_wn4,_wn6);
	and _wi5 (_wn1,_wn2,_wn3);
	and _wi8 (_wn7,_wn5,DIN4,_wn6);
	or _wi9 (DIN1Qstate0,_wn1,_wn7);
	not _wi10 (_wn12,DIN1);
	and _wi11 (_wn11,DIN5,_wn12,DIN4);
	not _wi12 (_wn16,DIN2);
	and _wi13 (_wn15,DIN5,_wn16,DIN4);
	not _wi14 (_wn18,DIN3);
	and _wi15 (_wn17,DIN5,DIN4,DIN2,_wn18);
	or _wi16 (_wn14,_wn15,_wn17);
	and _wi17 (_wn13,DIN1,_wn14);
	or _wi18 (DIN6Qstate1,_wn11,_wn13);
	and _wi21 (_wn23,_wn2,DIN5);
	and _wi23 (_wn25,DIN4,_wn6);
	or _wi24 (_wn22,_wn23,_wn25);
	and _wi25 (_wn20,_wn12,_wn22);
	and _wi32 (_wn29,_wn16,_wn22);
	and _wi39 (_wn36,DIN2,_wn18,_wn22);
	or _wi40 (_wn28,_wn29,_wn36);
	and _wi41 (_wn27,DIN1,_wn28);
	or _wi42 (DIN6Qstate0,_wn20,_wn27);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/1/2/3 OR-AND-AND-OR-Invert Gate, 3x
// Q = !((DIN1 & DIN2 & DIN3 ) | ((DIN4 | DIN5 ) & DIN6) | DIN7)
module oaaoi1123s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	input  DIN7;
	and _i0 (_n1,DIN3,DIN1,DIN2);
	or _i1 (_n3,DIN4,DIN5);
	and _i2 (_n2,_n3,DIN6);
	nor _i3 (Q,DIN7,_n1,_n2);
	not _wi0 (_wn2,DIN4);
	not _wi1 (_wn5,DIN6);
	and _wi2 (_wn4,DIN5,_wn5);
	not _wi3 (_wn6,DIN5);
	or _wi4 (_wn3,_wn4,_wn6);
	and _wi5 (_wn1,_wn2,_wn3);
	and _wi8 (_wn7,_wn5,DIN4,_wn6);
	or _wi9 (DIN1Qstate0,_wn1,_wn7);
	not _wi10 (_wn12,DIN1);
	and _wi11 (_wn11,DIN5,_wn12,DIN4);
	not _wi12 (_wn16,DIN2);
	and _wi13 (_wn15,DIN5,_wn16,DIN4);
	not _wi14 (_wn18,DIN3);
	and _wi15 (_wn17,DIN5,DIN4,DIN2,_wn18);
	or _wi16 (_wn14,_wn15,_wn17);
	and _wi17 (_wn13,DIN1,_wn14);
	or _wi18 (DIN6Qstate1,_wn11,_wn13);
	and _wi21 (_wn23,_wn2,DIN5);
	and _wi23 (_wn25,DIN4,_wn6);
	or _wi24 (_wn22,_wn23,_wn25);
	and _wi25 (_wn20,_wn12,_wn22);
	and _wi32 (_wn29,_wn16,_wn22);
	and _wi39 (_wn36,DIN2,_wn18,_wn22);
	or _wi40 (_wn28,_wn29,_wn36);
	and _wi41 (_wn27,DIN1,_wn28);
	or _wi42 (DIN6Qstate0,_wn20,_wn27);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/1/1/2 OR-AND-Invert Gate, 1x
// Q = !(DIN1 & DIN2 & DIN3 & (DIN4 | DIN5))
module oai1112s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	or _i0 (_n1,DIN4,DIN5);
	nand _i1 (Q,DIN3,DIN1,DIN2,_n1);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/1/1/2 OR-AND-Invert Gate, 2x
// Q = !(DIN1 & DIN2 & DIN3 & (DIN4 | DIN5))
module oai1112s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	or _i0 (_n1,DIN4,DIN5);
	nand _i1 (Q,DIN3,DIN1,DIN2,_n1);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/1/1/2 OR-AND-Invert Gate, 3x
// Q = !(DIN1 & DIN2 & DIN3 & (DIN4 | DIN5))
module oai1112s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	or _i0 (_n1,DIN4,DIN5);
	nand _i1 (Q,DIN3,DIN1,DIN2,_n1);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/3 or-and-invert gate, 1x
// Q = !(DIN1 & (DIN2 | DIN3 | DIN4))
module oai13s1 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	or _i0 (_n1,DIN4,DIN2,DIN3);
	nand _i1 (Q,DIN1,_n1);
	not _wi0 (_wn2,DIN4);
	not _wi1 (_wn3,DIN2);
	and _wi2 (_wn1,_wn2,_wn3,DIN3);
	not _wi4 (_wn6,DIN3);
	and _wi5 (_wn4,_wn2,DIN2,_wn6);
	or _wi6 (DIN1Qstate0,_wn1,_wn4);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/3 or-and-invert gate, 2x
// Q = !(DIN1 & (DIN2 | DIN3 | DIN4))
module oai13s2 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	or _i0 (_n1,DIN4,DIN2,DIN3);
	nand _i1 (Q,DIN1,_n1);
	not _wi0 (_wn2,DIN4);
	not _wi1 (_wn3,DIN2);
	and _wi2 (_wn1,_wn2,_wn3,DIN3);
	not _wi4 (_wn6,DIN3);
	and _wi5 (_wn4,_wn2,DIN2,_wn6);
	or _wi6 (DIN1Qstate0,_wn1,_wn4);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1/3 or-and-invert gate, 3x
// Q = !(DIN1 & (DIN2 | DIN3 | DIN4))
module oai13s3 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	or _i0 (_n1,DIN4,DIN2,DIN3);
	nand _i1 (Q,DIN1,_n1);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/1/1 or-and-invert gate, 1x
// Q = !((DIN1 | DIN2) & DIN3 & DIN4)
module oai211s1 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	or _i0 (_n1,DIN1,DIN2);
	nand _i1 (Q,DIN4,_n1,DIN3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/1/1 or-and-invert gate, 2x
// Q = !((DIN1 | DIN2) & DIN3 & DIN4)
module oai211s2 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	or _i0 (_n1,DIN1,DIN2);
	nand _i1 (Q,DIN4,_n1,DIN3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/1/1 or-and-invert gate, 3x
// Q = !((DIN1 | DIN2) & DIN3 & DIN4)
module oai211s3 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	or _i0 (_n1,DIN1,DIN2);
	nand _i1 (Q,DIN4,_n1,DIN3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/1 or-and-invert gate, 1x
// Q = !((DIN1 | DIN2) & DIN3)
module oai21s1 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	or _i0 (_n1,DIN1,DIN2);
	nand _i1 (Q,_n1,DIN3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/1 or-and-invert gate, 2x
// Q = !((DIN1 | DIN2) & DIN3)
module oai21s2 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	or _i0 (_n1,DIN1,DIN2);
	nand _i1 (Q,_n1,DIN3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/1 or-and-invert gate, 3x
// Q = !((DIN1 | DIN2) & DIN3)
module oai21s3 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	or _i0 (_n1,DIN1,DIN2);
	nand _i1 (Q,_n1,DIN3);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2/1 OR-AND-Invert Gate, 1x
// Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & DIN5)
module oai221s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	or _i0 (_n1,DIN1,DIN2);
	or _i1 (_n2,DIN3,DIN4);
	nand _i2 (Q,DIN5,_n1,_n2);
	not _wi0 (_wn2,DIN1);
	and _wi1 (_wn1,DIN4,DIN3,_wn2,DIN2);
	and _wi2 (_wn3,DIN4,DIN1,DIN2);
	or _wi3 (DIN5Qstate1,_wn1,_wn3);
	not _wi5 (_wn9,DIN3);
	and _wi6 (_wn8,_wn9,DIN4);
	not _wi7 (_wn11,DIN4);
	and _wi8 (_wn10,DIN3,_wn11);
	or _wi9 (_wn7,_wn8,_wn10);
	and _wi10 (_wn5,_wn2,DIN2,_wn7);
	not _wi11 (_wn15,DIN2);
	or _wi14 (_wn16,_wn8,DIN3);
	and _wi15 (_wn14,_wn15,_wn16);
	and _wi17 (_wn19,_wn11,DIN2,DIN3);
	or _wi18 (_wn13,_wn14,_wn19);
	and _wi19 (_wn12,DIN1,_wn13);
	or _wi20 (DIN5Qstate0,_wn5,_wn12);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2/1 OR-AND-Invert Gate, 2x
// Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & DIN5)
module oai221s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	or _i0 (_n1,DIN1,DIN2);
	or _i1 (_n2,DIN3,DIN4);
	nand _i2 (Q,DIN5,_n1,_n2);
	not _wi0 (_wn2,DIN1);
	and _wi1 (_wn1,DIN4,DIN3,_wn2,DIN2);
	and _wi2 (_wn3,DIN4,DIN1,DIN2);
	or _wi3 (DIN5Qstate1,_wn1,_wn3);
	not _wi5 (_wn9,DIN3);
	and _wi6 (_wn8,_wn9,DIN4);
	not _wi7 (_wn11,DIN4);
	and _wi8 (_wn10,DIN3,_wn11);
	or _wi9 (_wn7,_wn8,_wn10);
	and _wi10 (_wn5,_wn2,DIN2,_wn7);
	not _wi11 (_wn15,DIN2);
	or _wi14 (_wn16,_wn8,DIN3);
	and _wi15 (_wn14,_wn15,_wn16);
	and _wi17 (_wn19,_wn11,DIN2,DIN3);
	or _wi18 (_wn13,_wn14,_wn19);
	and _wi19 (_wn12,DIN1,_wn13);
	or _wi20 (DIN5Qstate0,_wn5,_wn12);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2/1 OR-AND-Invert Gate, 3x
// Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & DIN5)
module oai221s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	or _i0 (_n1,DIN1,DIN2);
	or _i1 (_n2,DIN3,DIN4);
	nand _i2 (Q,DIN5,_n1,_n2);
	not _wi0 (_wn2,DIN1);
	not _wi1 (_wn5,DIN3);
	and _wi2 (_wn4,_wn5,DIN4);
	or _wi3 (_wn3,_wn4,DIN3);
	and _wi4 (_wn1,_wn2,DIN2,_wn3);
	not _wi5 (_wn9,DIN2);
	and _wi9 (_wn8,_wn9,_wn3);
	not _wi12 (_wn18,DIN4);
	and _wi13 (_wn17,DIN3,_wn18);
	or _wi14 (_wn14,_wn4,_wn17);
	and _wi15 (_wn13,DIN2,_wn14);
	or _wi16 (_wn7,_wn8,_wn13);
	and _wi17 (_wn6,DIN1,_wn7);
	or _wi18 (DIN5Qstate0,_wn1,_wn6);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2/2/2 OR-AND-Invert Gate, 1x
// Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6) & (DIN7 | DIN8))
module oai2222s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7, DIN8);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	input  DIN7;
	input  DIN8;
	or _i0 (_n1,DIN1,DIN2);
	or _i1 (_n2,DIN3,DIN4);
	or _i2 (_n3,DIN5,DIN6);
	or _i3 (_n4,DIN7,DIN8);
	nand _i4 (Q,_n1,_n2,_n3,_n4);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2/2/2 OR-AND-Invert Gate, 2x
// Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6) & (DIN7 | DIN8))
module oai2222s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7, DIN8);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	input  DIN7;
	input  DIN8;
	or _i0 (_n1,DIN1,DIN2);
	or _i1 (_n2,DIN3,DIN4);
	or _i2 (_n3,DIN5,DIN6);
	or _i3 (_n4,DIN7,DIN8);
	nand _i4 (Q,_n1,_n2,_n3,_n4);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2/2/2 OR-AND-Invert Gate, 3x
// Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6) & (DIN7 | DIN8))
module oai2222s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7, DIN8);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	input  DIN7;
	input  DIN8;
	or _i0 (_n1,DIN1,DIN2);
	or _i1 (_n2,DIN3,DIN4);
	or _i2 (_n3,DIN5,DIN6);
	or _i3 (_n4,DIN7,DIN8);
	nand _i4 (Q,_n1,_n2,_n3,_n4);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2/2 OR-AND-Invert Gate, 1x
// Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6))
module oai222s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	or _i0 (_n1,DIN1,DIN2);
	or _i1 (_n2,DIN3,DIN4);
	or _i2 (_n3,DIN5,DIN6);
	nand _i3 (Q,_n1,_n2,_n3);
	not _wi0 (_wn2,DIN3);
	not _wi1 (_wn5,DIN5);
	and _wi2 (_wn4,_wn5,DIN6);
	not _wi3 (_wn7,DIN6);
	and _wi4 (_wn6,DIN5,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,DIN4,_wn3);
	not _wi7 (_wn11,DIN4);
	or _wi10 (_wn12,_wn4,DIN5);
	and _wi11 (_wn10,_wn11,_wn12);
	and _wi13 (_wn15,_wn7,DIN4,DIN5);
	or _wi14 (_wn9,_wn10,_wn15);
	and _wi15 (_wn8,DIN3,_wn9);
	or _wi16 (DIN1Qstate0,_wn1,_wn8);
	not _wi17 (_wn19,DIN1);
	and _wi18 (_wn18,DIN6,DIN5,_wn19,DIN2);
	and _wi19 (_wn20,DIN6,DIN1,DIN2);
	or _wi20 (DIN4Qstate1,_wn18,_wn20);
	or _wi24 (DIN3Qstate1,_wn18,_wn20);
	and _wi26 (_wn26,DIN6,DIN5,_wn2,DIN4);
	and _wi27 (_wn28,DIN6,DIN3,DIN4);
	or _wi28 (DIN2Qstate1,_wn26,_wn28);
	or _wi32 (DIN1Qstate1,_wn26,_wn28);
	and _wi35 (_wn37,_wn2,DIN4);
	or _wi36 (_wn36,_wn37,DIN3);
	and _wi37 (_wn34,_wn19,DIN2,_wn36);
	not _wi38 (_wn42,DIN2);
	and _wi42 (_wn41,_wn42,_wn36);
	and _wi46 (_wn50,DIN3,_wn11);
	or _wi47 (_wn47,_wn37,_wn50);
	and _wi48 (_wn46,DIN2,_wn47);
	or _wi49 (_wn40,_wn41,_wn46);
	and _wi50 (_wn39,DIN1,_wn40);
	or _wi51 (DIN6Qstate0,_wn34,_wn39);
	and _wi58 (_wn53,_wn19,DIN2,_wn47);
	or _wi72 (DIN5Qstate0,_wn53,_wn39);
	and _wi79 (_wn74,_wn19,DIN2,_wn3);
	and _wi84 (_wn83,_wn42,_wn12);
	and _wi86 (_wn88,_wn7,DIN2,DIN5);
	or _wi87 (_wn82,_wn83,_wn88);
	and _wi88 (_wn81,DIN1,_wn82);
	or _wi89 (DIN4Qstate0,_wn74,_wn81);
	or _wi106 (DIN3Qstate0,_wn74,_wn81);
	or _wi123 (DIN2Qstate0,_wn1,_wn8);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2/2 OR-AND-Invert Gate, 2x
// Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6))
module oai222s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	or _i0 (_n1,DIN1,DIN2);
	or _i1 (_n2,DIN3,DIN4);
	or _i2 (_n3,DIN5,DIN6);
	nand _i3 (Q,_n1,_n2,_n3);
	not _wi0 (_wn2,DIN3);
	not _wi1 (_wn5,DIN5);
	and _wi2 (_wn4,_wn5,DIN6);
	or _wi3 (_wn3,_wn4,DIN5);
	and _wi4 (_wn1,_wn2,DIN4,_wn3);
	not _wi5 (_wn9,DIN4);
	and _wi9 (_wn8,_wn9,_wn3);
	not _wi12 (_wn18,DIN6);
	and _wi13 (_wn17,DIN5,_wn18);
	or _wi14 (_wn14,_wn4,_wn17);
	and _wi15 (_wn13,DIN4,_wn14);
	or _wi16 (_wn7,_wn8,_wn13);
	and _wi17 (_wn6,DIN3,_wn7);
	or _wi18 (DIN1Qstate0,_wn1,_wn6);
	not _wi19 (_wn21,DIN1);
	and _wi21 (_wn23,_wn2,DIN4);
	or _wi22 (_wn22,_wn23,DIN3);
	and _wi23 (_wn20,_wn21,DIN2,_wn22);
	not _wi24 (_wn28,DIN2);
	and _wi28 (_wn27,_wn28,_wn22);
	and _wi32 (_wn36,DIN3,_wn9);
	or _wi33 (_wn33,_wn23,_wn36);
	and _wi34 (_wn32,DIN2,_wn33);
	or _wi35 (_wn26,_wn27,_wn32);
	and _wi36 (_wn25,DIN1,_wn26);
	or _wi37 (DIN5Qstate0,_wn20,_wn25);
	and _wi42 (_wn39,_wn21,DIN2,_wn3);
	and _wi47 (_wn46,_wn28,_wn3);
	and _wi53 (_wn51,DIN2,_wn14);
	or _wi54 (_wn45,_wn46,_wn51);
	and _wi55 (_wn44,DIN1,_wn45);
	or _wi56 (DIN4Qstate0,_wn39,_wn44);
	or _wi75 (DIN3Qstate0,_wn39,_wn44);
	or _wi94 (DIN2Qstate0,_wn1,_wn6);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2/2 OR-AND-Invert Gate, 3x
// Q = !((DIN1 | DIN2) & (DIN3 | DIN4) & (DIN5 | DIN6))
module oai222s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	or _i0 (_n1,DIN1,DIN2);
	or _i1 (_n2,DIN3,DIN4);
	or _i2 (_n3,DIN5,DIN6);
	nand _i3 (Q,_n1,_n2,_n3);
	not _wi0 (_wn2,DIN3);
	not _wi1 (_wn5,DIN5);
	and _wi2 (_wn4,_wn5,DIN6);
	or _wi3 (_wn3,_wn4,DIN5);
	and _wi4 (_wn1,_wn2,DIN4,_wn3);
	not _wi5 (_wn9,DIN4);
	and _wi9 (_wn8,_wn9,_wn3);
	not _wi12 (_wn18,DIN6);
	and _wi13 (_wn17,DIN5,_wn18);
	or _wi14 (_wn14,_wn4,_wn17);
	and _wi15 (_wn13,DIN4,_wn14);
	or _wi16 (_wn7,_wn8,_wn13);
	and _wi17 (_wn6,DIN3,_wn7);
	or _wi18 (DIN1Qstate0,_wn1,_wn6);
	not _wi19 (_wn21,DIN1);
	and _wi21 (_wn23,_wn2,DIN4);
	or _wi22 (_wn22,_wn23,DIN3);
	and _wi23 (_wn20,_wn21,DIN2,_wn22);
	not _wi24 (_wn28,DIN2);
	and _wi28 (_wn27,_wn28,_wn22);
	and _wi32 (_wn36,DIN3,_wn9);
	or _wi33 (_wn33,_wn23,_wn36);
	and _wi34 (_wn32,DIN2,_wn33);
	or _wi35 (_wn26,_wn27,_wn32);
	and _wi36 (_wn25,DIN1,_wn26);
	or _wi37 (DIN5Qstate0,_wn20,_wn25);
	and _wi42 (_wn39,_wn21,DIN2,_wn3);
	and _wi47 (_wn46,_wn28,_wn3);
	and _wi53 (_wn51,DIN2,_wn14);
	or _wi54 (_wn45,_wn46,_wn51);
	and _wi55 (_wn44,DIN1,_wn45);
	or _wi56 (DIN4Qstate0,_wn39,_wn44);
	or _wi75 (DIN3Qstate0,_wn39,_wn44);
	or _wi94 (DIN2Qstate0,_wn1,_wn6);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2 or-and-invert gate, 1x
// Q = !((DIN1 | DIN2) & (DIN3 | DIN4))
module oai22s1 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	or _i0 (_n1,DIN1,DIN2);
	or _i1 (_n2,DIN3,DIN4);
	nand _i2 (Q,_n1,_n2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2 or-and-invert gate, 2x
// Q = !((DIN1 | DIN2) & (DIN3 | DIN4))
module oai22s2 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	or _i0 (_n1,DIN1,DIN2);
	or _i1 (_n2,DIN3,DIN4);
	nand _i2 (Q,_n1,_n2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/2 or-and-invert gate, 3x
// Q = !((DIN1 | DIN2) & (DIN3 | DIN4))
module oai22s3 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	or _i0 (_n1,DIN1,DIN2);
	or _i1 (_n2,DIN3,DIN4);
	nand _i2 (Q,_n1,_n2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/4 or-and-invert gate, 1x
// Q = !((DIN1 | DIN2) & (DIN3 | DIN4 | DIN5 | DIN6))
module oai24s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	or _i0 (_n1,DIN1,DIN2);
	or _i1 (_n2,DIN6,DIN5,DIN3,DIN4);
	nand _i2 (Q,_n1,_n2);
	not _wi0 (_wn2,DIN6);
	not _wi1 (_wn3,DIN5);
	not _wi2 (_wn4,DIN3);
	and _wi3 (_wn1,_wn2,_wn3,_wn4,DIN4);
	not _wi6 (_wn8,DIN4);
	and _wi7 (_wn5,_wn2,_wn3,DIN3,_wn8);
	or _wi8 (DIN1Qstate0,_wn1,_wn5);
	and _wi12 (_wn13,_wn3,DIN6);
	and _wi14 (_wn15,DIN5,_wn2);
	or _wi15 (_wn12,_wn13,_wn15);
	and _wi16 (DIN2Qstate1,_wn4,_wn8,_wn12);
	and _wi24 (DIN1Qstate1,_wn4,_wn8,_wn12);
	and _wi27 (_wn26,_wn2,DIN5,_wn4,DIN4);
	and _wi30 (_wn31,_wn2,_wn8,DIN5);
	and _wi33 (_wn34,_wn2,DIN4,_wn3);
	or _wi34 (_wn30,_wn31,_wn34);
	and _wi35 (_wn29,DIN3,_wn30);
	or _wi36 (DIN2Qstate2,_wn26,_wn29);
	or _wi48 (DIN1Qstate2,_wn26,_wn29);
	and _wi51 (_wn53,DIN6,_wn8,DIN5);
	and _wi52 (_wn55,DIN4,DIN6);
	or _wi53 (_wn52,_wn53,_wn55);
	and _wi54 (_wn50,_wn4,_wn52);
	and _wi56 (_wn58,_wn8,DIN6);
	or _wi59 (_wn61,_wn13,DIN5);
	and _wi60 (_wn60,DIN4,_wn61);
	or _wi61 (_wn57,_wn58,_wn60);
	and _wi62 (_wn56,DIN3,_wn57);
	or _wi63 (DIN2Qstate3,_wn50,_wn56);
	or _wi78 (DIN1Qstate3,_wn50,_wn56);
	or _wi87 (DIN2Qstate0,_wn1,_wn5);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/4 or-and-invert gate, 2x
// Q = !((DIN1 | DIN2) & (DIN3 | DIN4 | DIN5 | DIN6))
module oai24s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	or _i0 (_n1,DIN1,DIN2);
	or _i1 (_n2,DIN6,DIN5,DIN3,DIN4);
	nand _i2 (Q,_n1,_n2);
	not _wi0 (_wn2,DIN6);
	not _wi1 (_wn3,DIN5);
	not _wi2 (_wn4,DIN3);
	and _wi3 (_wn1,_wn2,_wn3,_wn4,DIN4);
	not _wi6 (_wn8,DIN4);
	and _wi7 (_wn5,_wn2,_wn3,DIN3,_wn8);
	or _wi8 (DIN1Qstate0,_wn1,_wn5);
	and _wi12 (_wn13,_wn3,DIN6);
	and _wi14 (_wn15,DIN5,_wn2);
	or _wi15 (_wn12,_wn13,_wn15);
	and _wi16 (DIN2Qstate1,_wn4,_wn8,_wn12);
	and _wi24 (DIN1Qstate1,_wn4,_wn8,_wn12);
	and _wi27 (_wn26,_wn2,DIN5,_wn4,DIN4);
	and _wi30 (_wn31,_wn2,_wn8,DIN5);
	and _wi33 (_wn34,_wn2,DIN4,_wn3);
	or _wi34 (_wn30,_wn31,_wn34);
	and _wi35 (_wn29,DIN3,_wn30);
	or _wi36 (DIN2Qstate2,_wn26,_wn29);
	or _wi48 (DIN1Qstate2,_wn26,_wn29);
	and _wi51 (_wn53,DIN6,_wn8,DIN5);
	and _wi52 (_wn55,DIN4,DIN6);
	or _wi53 (_wn52,_wn53,_wn55);
	and _wi54 (_wn50,_wn4,_wn52);
	and _wi56 (_wn58,_wn8,DIN6);
	or _wi59 (_wn61,_wn13,DIN5);
	and _wi60 (_wn60,DIN4,_wn61);
	or _wi61 (_wn57,_wn58,_wn60);
	and _wi62 (_wn56,DIN3,_wn57);
	or _wi63 (DIN2Qstate3,_wn50,_wn56);
	or _wi78 (DIN1Qstate3,_wn50,_wn56);
	or _wi87 (DIN2Qstate0,_wn1,_wn5);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2/4 or-and-invert gate, 3x
// Q = !((DIN1 | DIN2) & (DIN3 | DIN4 | DIN5 | DIN6))
module oai24s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	or _i0 (_n1,DIN1,DIN2);
	or _i1 (_n2,DIN6,DIN5,DIN3,DIN4);
	nand _i2 (Q,_n1,_n2);
	not _wi0 (_wn2,DIN3);
	not _wi1 (_wn5,DIN6);
	not _wi2 (_wn6,DIN4);
	and _wi3 (_wn4,_wn5,_wn6,DIN5);
	not _wi5 (_wn9,DIN5);
	and _wi6 (_wn7,_wn5,DIN4,_wn9);
	or _wi7 (_wn3,_wn4,_wn7);
	and _wi8 (_wn1,_wn2,_wn3);
	and _wi12 (_wn10,_wn5,_wn9,DIN3,_wn6);
	or _wi13 (DIN1Qstate0,_wn1,_wn10);
	and _wi17 (_wn18,DIN6,_wn6,_wn9);
	and _wi19 (_wn21,_wn5,DIN4,DIN5);
	or _wi20 (_wn17,_wn18,_wn21);
	and _wi21 (_wn15,_wn2,_wn17);
	and _wi29 (_wn23,DIN3,_wn3);
	or _wi30 (DIN2Qstate1,_wn15,_wn23);
	or _wi47 (DIN1Qstate1,_wn15,_wn23);
	and _wi50 (_wn52,DIN6,_wn6,DIN5);
	and _wi51 (_wn54,DIN4,DIN6);
	or _wi52 (_wn51,_wn52,_wn54);
	and _wi53 (_wn49,_wn2,_wn51);
	and _wi55 (_wn57,_wn6,DIN6);
	and _wi57 (_wn61,_wn9,DIN6);
	or _wi58 (_wn60,_wn61,DIN5);
	and _wi59 (_wn59,DIN4,_wn60);
	or _wi60 (_wn56,_wn57,_wn59);
	and _wi61 (_wn55,DIN3,_wn56);
	or _wi62 (DIN2Qstate2,_wn49,_wn55);
	or _wi77 (DIN1Qstate2,_wn49,_wn55);
	or _wi91 (DIN2Qstate0,_wn1,_wn10);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3/2/1 OR-AND-Invert Gate, 1x
// Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & DIN6)
module oai321s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	or _i0 (_n1,DIN3,DIN1,DIN2);
	or _i1 (_n2,DIN4,DIN5);
	nand _i2 (Q,DIN6,_n1,_n2);
	not _wi0 (_wn2,DIN1);
	and _wi1 (_wn1,DIN5,DIN4,DIN3,_wn2,DIN2);
	and _wi2 (_wn3,DIN5,DIN4,DIN1,DIN3);
	or _wi3 (DIN6Qstate1,_wn1,_wn3);
	not _wi5 (_wn8,DIN5);
	not _wi6 (_wn9,DIN2);
	and _wi7 (_wn7,_wn8,DIN4,_wn9,DIN3);
	not _wi8 (_wn11,DIN4);
	not _wi9 (_wn12,DIN3);
	and _wi10 (_wn10,DIN5,_wn11,DIN2,_wn12);
	or _wi11 (_wn6,_wn7,_wn10);
	and _wi12 (DIN6Qstate8,_wn2,_wn6);
	and _wi15 (_wn17,DIN5,DIN4,_wn9,DIN3);
	and _wi17 (_wn19,DIN5,_wn11,DIN2,DIN3);
	or _wi18 (_wn16,_wn17,_wn19);
	and _wi19 (_wn14,_wn2,_wn16);
	and _wi21 (_wn21,DIN5,_wn11,DIN1,DIN3);
	or _wi22 (DIN6Qstate0,_wn14,_wn21);
	and _wi25 (_wn27,DIN5,_wn12,DIN4);
	and _wi27 (_wn29,_wn8,DIN3,DIN4);
	or _wi28 (_wn26,_wn27,_wn29);
	and _wi29 (_wn24,_wn2,DIN2,_wn26);
	and _wi35 (_wn38,DIN5,_wn12,_wn11);
	or _wi38 (_wn37,_wn38,_wn29);
	and _wi39 (_wn36,DIN2,_wn37);
	or _wi40 (_wn32,_wn7,_wn36);
	and _wi41 (_wn31,DIN1,_wn32);
	or _wi42 (DIN6Qstate5,_wn24,_wn31);
	and _wi45 (_wn44,_wn12,_wn2,DIN2);
	and _wi48 (_wn47,_wn12,DIN1,_wn9);
	or _wi49 (DIN4Qstate0,_wn44,_wn47);
	and _wi53 (_wn51,_wn8,DIN4,_wn12,_wn2,DIN2);
	and _wi57 (_wn59,_wn11,DIN5);
	and _wi59 (_wn61,DIN4,_wn8);
	or _wi60 (_wn58,_wn59,_wn61);
	and _wi61 (_wn55,_wn12,DIN1,_wn9,_wn58);
	or _wi62 (DIN6Qstate7,_wn51,_wn55);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3/2/1 OR-AND-Invert Gate, 2x
// Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & DIN6)
module oai321s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	or _i0 (_n1,DIN3,DIN1,DIN2);
	or _i1 (_n2,DIN4,DIN5);
	nand _i2 (Q,DIN6,_n1,_n2);
	not _wi0 (_wn2,DIN5);
	not _wi1 (_wn3,DIN3);
	not _wi2 (_wn4,DIN1);
	and _wi3 (_wn1,_wn2,DIN4,_wn3,_wn4,DIN2);
	not _wi4 (_wn8,DIN2);
	not _wi6 (_wn12,DIN4);
	and _wi7 (_wn11,_wn12,DIN5);
	or _wi8 (_wn10,_wn11,DIN4);
	and _wi9 (_wn7,_wn8,_wn3,_wn10);
	and _wi12 (_wn13,_wn2,DIN4,DIN2,_wn3);
	or _wi13 (_wn6,_wn7,_wn13);
	and _wi14 (_wn5,DIN1,_wn6);
	or _wi15 (DIN6Qstate0,_wn1,_wn5);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3/2/1 OR-AND-Invert Gate, 3x
// Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & DIN6)
module oai321s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	or _i0 (_n1,DIN3,DIN1,DIN2);
	or _i1 (_n2,DIN4,DIN5);
	nand _i2 (Q,DIN6,_n1,_n2);
	not _wi0 (_wn2,DIN5);
	not _wi1 (_wn3,DIN1);
	and _wi2 (_wn1,_wn2,DIN4,DIN3,_wn3,DIN2);
	not _wi4 (_wn8,DIN2);
	and _wi5 (_wn6,_wn2,DIN4,_wn8,DIN3);
	not _wi6 (_wn12,DIN3);
	and _wi7 (_wn11,DIN5,_wn12,DIN4);
	and _wi9 (_wn13,_wn2,DIN3,DIN4);
	or _wi10 (_wn10,_wn11,_wn13);
	and _wi11 (_wn9,DIN2,_wn10);
	or _wi12 (_wn5,_wn6,_wn9);
	and _wi13 (_wn4,DIN1,_wn5);
	or _wi14 (DIN6Qstate1,_wn1,_wn4);
	not _wi20 (_wn26,DIN4);
	and _wi21 (_wn25,_wn26,DIN5);
	or _wi22 (_wn24,_wn25,DIN4);
	and _wi23 (_wn22,DIN2,_wn12,_wn24);
	or _wi24 (_wn18,_wn6,_wn22);
	and _wi25 (_wn16,_wn3,_wn18);
	and _wi31 (_wn29,_wn8,_wn12,_wn24);
	and _wi36 (_wn40,DIN4,_wn2);
	or _wi37 (_wn37,_wn25,_wn40);
	and _wi38 (_wn35,DIN2,_wn12,_wn37);
	or _wi39 (_wn28,_wn29,_wn35);
	and _wi40 (_wn27,DIN1,_wn28);
	or _wi41 (DIN6Qstate0,_wn16,_wn27);
	and _wi44 (_wn46,_wn8,DIN3);
	and _wi46 (_wn48,DIN2,_wn12);
	or _wi47 (_wn45,_wn46,_wn48);
	and _wi48 (_wn43,_wn3,_wn45);
	and _wi50 (_wn50,DIN1,_wn12);
	or _wi51 (DIN5Qstate0,_wn43,_wn50);
	or _wi61 (DIN4Qstate0,_wn43,_wn50);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3/2/2 OR-AND-Invert Gate, 1x
// Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & (DIN6 | DIN7))
module oai322s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	input  DIN7;
	or _i0 (_n1,DIN3,DIN1,DIN2);
	or _i1 (_n2,DIN4,DIN5);
	or _i2 (_n3,DIN6,DIN7);
	nand _i3 (Q,_n1,_n2,_n3);
	not _wi0 (_wn3,DIN4);
	and _wi1 (_wn2,_wn3,DIN5);
	not _wi2 (_wn5,DIN5);
	and _wi3 (_wn4,DIN4,_wn5);
	or _wi4 (_wn1,_wn2,_wn4);
	not _wi5 (_wn8,DIN6);
	and _wi6 (_wn7,_wn8,DIN7);
	not _wi7 (_wn10,DIN7);
	and _wi8 (_wn9,DIN6,_wn10);
	or _wi9 (_wn6,_wn7,_wn9);
	and _wi10 (DIN1Qstate0,_wn1,_wn6);
	not _wi11 (_wn13,DIN1);
	not _wi12 (_wn16,DIN2);
	and _wi13 (_wn15,DIN5,DIN4,_wn16,DIN3);
	not _wi14 (_wn20,DIN3);
	and _wi15 (_wn19,DIN5,_wn20,DIN4);
	and _wi21 (_wn21,DIN3,_wn1);
	or _wi22 (_wn18,_wn19,_wn21);
	and _wi23 (_wn17,DIN2,_wn18);
	or _wi24 (_wn14,_wn15,_wn17);
	and _wi25 (_wn12,_wn13,_wn14);
	and _wi36 (_wn29,_wn16,_wn18);
	and _wi38 (_wn42,_wn20,DIN5);
	or _wi45 (_wn41,_wn42,_wn21);
	and _wi46 (_wn40,DIN2,_wn41);
	or _wi47 (_wn28,_wn29,_wn40);
	and _wi48 (_wn27,DIN1,_wn28);
	or _wi49 (DIN6Qstate1,_wn12,_wn27);
	and _wi52 (_wn54,DIN7,DIN6,_wn16,DIN3);
	and _wi54 (_wn58,DIN7,_wn20,DIN6);
	and _wi60 (_wn60,DIN3,_wn6);
	or _wi61 (_wn57,_wn58,_wn60);
	and _wi62 (_wn56,DIN2,_wn57);
	or _wi63 (_wn53,_wn54,_wn56);
	and _wi64 (_wn51,_wn13,_wn53);
	and _wi75 (_wn68,_wn16,_wn57);
	and _wi81 (_wn79,DIN2,_wn6);
	or _wi82 (_wn67,_wn68,_wn79);
	and _wi83 (_wn66,DIN1,_wn67);
	or _wi84 (DIN4Qstate1,_wn51,_wn66);
	and _wi86 (_wn86,DIN7,DIN6,_wn3,DIN5);
	and _wi88 (_wn90,DIN7,_wn5,DIN6);
	and _wi94 (_wn92,DIN5,_wn6);
	or _wi95 (_wn89,_wn90,_wn92);
	and _wi96 (_wn88,DIN4,_wn89);
	or _wi97 (DIN2Qstate1,_wn86,_wn88);
	and _wi99 (_wn99,DIN5,DIN4,DIN3,_wn13,DIN2);
	and _wi100 (_wn101,DIN5,DIN4,DIN1,DIN3);
	or _wi101 (DIN7Qstate2,_wn99,_wn101);
	and _wi103 (_wn103,DIN7,DIN6,DIN3,_wn13,DIN2);
	and _wi106 (_wn109,DIN7,DIN2,DIN6);
	or _wi107 (_wn106,_wn54,_wn109);
	and _wi108 (_wn105,DIN1,_wn106);
	or _wi109 (DIN5Qstate2,_wn103,_wn105);
	and _wi112 (_wn114,_wn16,DIN3);
	and _wi114 (_wn116,DIN2,_wn20);
	or _wi115 (_wn113,_wn114,_wn116);
	and _wi121 (_wn111,_wn13,_wn113,_wn1);
	and _wi129 (_wn125,_wn16,_wn20,_wn1);
	and _wi132 (_wn133,_wn5,DIN4,DIN2,_wn20);
	or _wi133 (_wn124,_wn125,_wn133);
	and _wi134 (_wn123,DIN1,_wn124);
	or _wi135 (DIN6Qstate0,_wn111,_wn123);
	and _wi138 (_wn138,DIN3,_wn13,_wn16);
	and _wi143 (_wn143,_wn20,DIN1,_wn16);
	or _wi144 (_wn137,_wn138,_wn116,_wn143);
	and _wi150 (DIN4Qstate0,_wn137,_wn6);
	and _wi161 (DIN2Qstate0,_wn1,_wn6);
	or _wi200 (DIN7Qstate1,_wn12,_wn27);
	or _wi235 (DIN5Qstate1,_wn51,_wn66);
	and _wi241 (_wn243,DIN7,DIN5,_wn8);
	or _wi242 (_wn240,_wn90,_wn243);
	and _wi243 (_wn239,DIN4,_wn240);
	or _wi244 (DIN3Qstate1,_wn86,_wn239);
	or _wi257 (DIN1Qstate1,_wn86,_wn88);
	or _wi261 (DIN6Qstate2,_wn99,_wn101);
	or _wi269 (DIN4Qstate2,_wn103,_wn105);
	or _wi295 (DIN7Qstate0,_wn111,_wn123);
	and _wi310 (DIN5Qstate0,_wn137,_wn6);
	and _wi317 (_wn312,_wn3,DIN5,_wn6);
	and _wi324 (_wn321,_wn5,_wn6);
	and _wi326 (_wn328,_wn10,DIN5,DIN6);
	or _wi327 (_wn320,_wn321,_wn328);
	and _wi328 (_wn319,DIN4,_wn320);
	or _wi329 (DIN3Qstate0,_wn312,_wn319);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3/2/2 OR-AND-Invert Gate, 2x
// Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & (DIN6 | DIN7))
module oai322s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	input  DIN7;
	or _i0 (_n1,DIN3,DIN1,DIN2);
	or _i1 (_n2,DIN4,DIN5);
	or _i2 (_n3,DIN6,DIN7);
	nand _i3 (Q,_n1,_n2,_n3);
	not _wi0 (_wn2,DIN4);
	not _wi1 (_wn5,DIN6);
	and _wi2 (_wn4,_wn5,DIN7);
	or _wi3 (_wn3,_wn4,DIN6);
	and _wi4 (_wn1,_wn2,DIN5,_wn3);
	not _wi5 (_wn9,DIN5);
	and _wi9 (_wn8,_wn9,_wn3);
	not _wi12 (_wn18,DIN7);
	and _wi13 (_wn17,DIN6,_wn18);
	or _wi14 (_wn14,_wn4,_wn17);
	and _wi15 (_wn13,DIN5,_wn14);
	or _wi16 (_wn7,_wn8,_wn13);
	and _wi17 (_wn6,DIN4,_wn7);
	or _wi18 (DIN1Qstate0,_wn1,_wn6);
	not _wi19 (_wn21,DIN1);
	and _wi20 (_wn20,DIN5,DIN4,DIN3,_wn21,DIN2);
	and _wi21 (_wn22,DIN5,DIN4,DIN1,DIN3);
	or _wi22 (DIN6Qstate1,_wn20,_wn22);
	and _wi24 (_wn24,DIN7,DIN6,DIN3,_wn21,DIN2);
	not _wi25 (_wn29,DIN2);
	and _wi26 (_wn28,DIN7,DIN6,_wn29,DIN3);
	and _wi27 (_wn30,DIN7,DIN2,DIN3);
	or _wi28 (_wn27,_wn28,_wn30);
	and _wi29 (_wn26,DIN1,_wn27);
	or _wi30 (DIN5Qstate1,_wn24,_wn26);
	and _wi36 (_wn32,_wn21,_wn27);
	and _wi38 (_wn40,DIN7,_wn29,DIN3);
	not _wi39 (_wn45,DIN3);
	and _wi40 (_wn44,DIN7,_wn45,DIN6);
	and _wi41 (_wn46,DIN3,DIN7);
	or _wi42 (_wn43,_wn44,_wn46);
	and _wi43 (_wn42,DIN2,_wn43);
	or _wi44 (_wn39,_wn40,_wn42);
	and _wi45 (_wn38,DIN1,_wn39);
	or _wi46 (DIN4Qstate1,_wn32,_wn38);
	and _wi50 (_wn54,_wn2,DIN5);
	or _wi51 (_wn53,_wn54,DIN4);
	and _wi52 (_wn51,_wn29,DIN3,_wn53);
	and _wi57 (_wn58,_wn45,_wn53);
	and _wi61 (_wn67,DIN4,_wn9);
	or _wi62 (_wn64,_wn54,_wn67);
	and _wi63 (_wn63,DIN3,_wn64);
	or _wi64 (_wn57,_wn58,_wn63);
	and _wi65 (_wn56,DIN2,_wn57);
	or _wi66 (_wn50,_wn51,_wn56);
	and _wi67 (_wn48,_wn21,_wn50);
	and _wi80 (_wn69,DIN1,_wn57);
	or _wi81 (DIN7Qstate0,_wn48,_wn69);
	or _wi116 (DIN6Qstate0,_wn48,_wn69);
	and _wi122 (_wn121,_wn29,DIN3,_wn3);
	and _wi127 (_wn128,_wn45,_wn3);
	and _wi133 (_wn133,DIN3,_wn14);
	or _wi134 (_wn127,_wn128,_wn133);
	and _wi135 (_wn126,DIN2,_wn127);
	or _wi136 (_wn120,_wn121,_wn126);
	and _wi137 (_wn118,_wn21,_wn120);
	and _wi151 (_wn141,_wn29,_wn127);
	and _wi158 (_wn162,_wn18,DIN3,DIN6);
	or _wi159 (_wn156,_wn128,_wn162);
	and _wi160 (_wn155,DIN2,_wn156);
	or _wi161 (_wn140,_wn141,_wn155);
	and _wi162 (_wn139,DIN1,_wn140);
	or _wi163 (DIN5Qstate0,_wn118,_wn139);
	and _wi171 (_wn168,_wn29,DIN3,_wn14);
	or _wi181 (_wn167,_wn168,_wn155);
	and _wi182 (_wn165,_wn21,_wn167);
	and _wi192 (_wn186,_wn29,_wn156);
	and _wi199 (_wn198,_wn45,_wn14);
	or _wi202 (_wn197,_wn198,_wn162);
	and _wi203 (_wn196,DIN2,_wn197);
	or _wi204 (_wn185,_wn186,_wn196);
	and _wi205 (_wn184,DIN1,_wn185);
	or _wi206 (DIN4Qstate0,_wn165,_wn184);
	or _wi210 (DIN7Qstate1,_wn20,_wn22);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3/2/2 OR-AND-Invert Gate, 3x
// Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5) & (DIN6 | DIN7))
module oai322s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	input  DIN7;
	or _i0 (_n1,DIN3,DIN1,DIN2);
	or _i1 (_n2,DIN4,DIN5);
	or _i2 (_n3,DIN6,DIN7);
	nand _i3 (Q,_n1,_n2,_n3);
	not _wi0 (_wn2,DIN4);
	not _wi1 (_wn5,DIN6);
	and _wi2 (_wn4,_wn5,DIN7);
	or _wi3 (_wn3,_wn4,DIN6);
	and _wi4 (_wn1,_wn2,DIN5,_wn3);
	not _wi5 (_wn9,DIN5);
	and _wi9 (_wn8,_wn9,_wn3);
	not _wi12 (_wn18,DIN7);
	and _wi13 (_wn17,DIN6,_wn18);
	or _wi14 (_wn14,_wn4,_wn17);
	and _wi15 (_wn13,DIN5,_wn14);
	or _wi16 (_wn7,_wn8,_wn13);
	and _wi17 (_wn6,DIN4,_wn7);
	or _wi18 (DIN1Qstate0,_wn1,_wn6);
	not _wi19 (_wn21,DIN1);
	and _wi20 (_wn20,DIN5,DIN4,DIN3,_wn21,DIN2);
	not _wi21 (_wn25,DIN2);
	and _wi22 (_wn24,DIN5,DIN4,_wn25,DIN3);
	and _wi23 (_wn26,DIN5,DIN2,DIN3);
	or _wi24 (_wn23,_wn24,_wn26);
	and _wi25 (_wn22,DIN1,_wn23);
	or _wi26 (DIN6Qstate1,_wn20,_wn22);
	and _wi29 (_wn31,DIN7,DIN6,_wn25,DIN3);
	and _wi30 (_wn33,DIN7,DIN2,DIN3);
	or _wi31 (_wn30,_wn31,_wn33);
	and _wi32 (_wn28,_wn21,_wn30);
	and _wi33 (_wn34,DIN7,DIN1,DIN3);
	or _wi34 (DIN5Qstate1,_wn28,_wn34);
	and _wi42 (_wn44,DIN7,_wn25,DIN3);
	not _wi43 (_wn49,DIN3);
	and _wi44 (_wn48,DIN7,_wn49,DIN6);
	and _wi45 (_wn50,DIN3,DIN7);
	or _wi46 (_wn47,_wn48,_wn50);
	and _wi47 (_wn46,DIN2,_wn47);
	or _wi48 (_wn43,_wn44,_wn46);
	and _wi49 (_wn42,DIN1,_wn43);
	or _wi50 (DIN4Qstate1,_wn28,_wn42);
	and _wi54 (_wn58,_wn2,DIN5);
	or _wi55 (_wn57,_wn58,DIN4);
	and _wi56 (_wn55,_wn25,DIN3,_wn57);
	and _wi61 (_wn62,_wn49,_wn57);
	and _wi65 (_wn71,DIN4,_wn9);
	or _wi66 (_wn68,_wn58,_wn71);
	and _wi67 (_wn67,DIN3,_wn68);
	or _wi68 (_wn61,_wn62,_wn67);
	and _wi69 (_wn60,DIN2,_wn61);
	or _wi70 (_wn54,_wn55,_wn60);
	and _wi71 (_wn52,_wn21,_wn54);
	and _wi84 (_wn73,DIN1,_wn61);
	or _wi85 (DIN7Qstate0,_wn52,_wn73);
	and _wi120 (_wn110,_wn25,_wn61);
	and _wi127 (_wn131,_wn9,DIN3,DIN4);
	or _wi128 (_wn125,_wn62,_wn131);
	and _wi129 (_wn124,DIN2,_wn125);
	or _wi130 (_wn109,_wn110,_wn124);
	and _wi131 (_wn108,DIN1,_wn109);
	or _wi132 (DIN6Qstate0,_wn52,_wn108);
	and _wi140 (_wn137,_wn25,DIN3,_wn14);
	and _wi145 (_wn146,_wn49,_wn3);
	and _wi147 (_wn151,_wn18,DIN3,DIN6);
	or _wi148 (_wn145,_wn146,_wn151);
	and _wi149 (_wn144,DIN2,_wn145);
	or _wi150 (_wn136,_wn137,_wn144);
	and _wi151 (_wn134,_wn21,_wn136);
	and _wi160 (_wn153,DIN1,_wn145);
	or _wi161 (DIN5Qstate0,_wn134,_wn153);
	and _wi190 (_wn184,_wn25,_wn145);
	and _wi197 (_wn196,_wn49,_wn14);
	or _wi200 (_wn195,_wn196,_wn151);
	and _wi201 (_wn194,DIN2,_wn195);
	or _wi202 (_wn183,_wn184,_wn194);
	and _wi203 (_wn182,DIN1,_wn183);
	or _wi204 (DIN4Qstate0,_wn134,_wn182);
	and _wi207 (_wn208,DIN5,DIN4,DIN1,DIN3);
	or _wi208 (DIN7Qstate1,_wn20,_wn208);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3/2 OR-AND-Invert Gate, 1x
// Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5))
module oai32s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	or _i0 (_n1,DIN3,DIN1,DIN2);
	or _i1 (_n2,DIN4,DIN5);
	nand _i2 (Q,_n1,_n2);
	not _wi0 (_wn2,DIN1);
	and _wi1 (_wn1,DIN3,_wn2,DIN2);
	and _wi2 (_wn3,DIN1,DIN3);
	or _wi3 (DIN5Qstate1,_wn1,_wn3);
	or _wi7 (DIN4Qstate1,_wn1,_wn3);
	not _wi9 (_wn13,DIN2);
	and _wi10 (_wn12,_wn13,DIN3);
	not _wi11 (_wn15,DIN3);
	and _wi12 (_wn14,DIN2,_wn15);
	or _wi13 (_wn11,_wn12,_wn14);
	and _wi14 (_wn9,_wn2,_wn11);
	and _wi16 (_wn16,DIN1,_wn15);
	or _wi17 (DIN5Qstate0,_wn9,_wn16);
	or _wi27 (DIN4Qstate0,_wn9,_wn16);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3/2 OR-AND-Invert Gate, 2x
// Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5))
module oai32s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	or _i0 (_n1,DIN3,DIN1,DIN2);
	or _i1 (_n2,DIN4,DIN5);
	nand _i2 (Q,_n1,_n2);
	not _wi0 (_wn2,DIN3);
	not _wi1 (_wn3,DIN1);
	and _wi2 (_wn1,_wn2,_wn3,DIN2);
	not _wi4 (_wn6,DIN2);
	and _wi5 (_wn4,_wn2,DIN1,_wn6);
	or _wi6 (DIN5Qstate0,_wn1,_wn4);
	or _wi13 (DIN4Qstate0,_wn1,_wn4);
	and _wi15 (_wn15,DIN3,_wn3,DIN2);
	and _wi17 (_wn19,_wn6,DIN3);
	and _wi19 (_wn21,DIN2,_wn2);
	or _wi20 (_wn18,_wn19,_wn21);
	and _wi21 (_wn17,DIN1,_wn18);
	or _wi22 (DIN5Qstate2,_wn15,_wn17);
	or _wi31 (DIN4Qstate2,_wn15,_wn17);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3/2 OR-AND-Invert Gate, 3x
// Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5))
module oai32s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	or _i0 (_n1,DIN3,DIN1,DIN2);
	or _i1 (_n2,DIN4,DIN5);
	nand _i2 (Q,_n1,_n2);
	not _wi0 (_wn2,DIN1);
	and _wi1 (_wn1,_wn2,DIN3);
	not _wi2 (_wn6,DIN2);
	and _wi3 (_wn5,_wn6,DIN3);
	or _wi4 (_wn4,_wn5,DIN2);
	and _wi5 (_wn3,DIN1,_wn4);
	or _wi6 (DIN5Qstate1,_wn1,_wn3);
	or _wi13 (DIN4Qstate1,_wn1,_wn3);
	not _wi14 (_wn16,DIN3);
	and _wi16 (_wn15,_wn16,_wn2,DIN2);
	and _wi19 (_wn18,_wn16,DIN1,_wn6);
	or _wi20 (DIN5Qstate0,_wn15,_wn18);
	or _wi27 (DIN4Qstate0,_wn15,_wn18);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3/3 or-and-invert gate, 1x
// Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5 | DIN6))
module oai33s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	or _i0 (_n1,DIN3,DIN1,DIN2);
	or _i1 (_n2,DIN6,DIN4,DIN5);
	nand _i2 (Q,_n1,_n2);
	not _wi0 (_wn2,DIN6);
	not _wi1 (_wn3,DIN4);
	and _wi2 (_wn1,_wn2,_wn3,DIN5);
	not _wi4 (_wn6,DIN5);
	and _wi5 (_wn4,_wn2,DIN4,_wn6);
	or _wi6 (DIN1Qstate0,_wn1,_wn4);
	not _wi7 (_wn9,DIN3);
	not _wi8 (_wn10,DIN1);
	and _wi9 (_wn8,_wn9,_wn10,DIN2);
	not _wi11 (_wn13,DIN2);
	and _wi12 (_wn11,_wn9,DIN1,_wn13);
	or _wi13 (DIN5Qstate0,_wn8,_wn11);
	or _wi20 (DIN4Qstate0,_wn8,_wn11);
	or _wi27 (DIN2Qstate0,_wn1,_wn4);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3/3 or-and-invert gate, 2x
// Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5 | DIN6))
module oai33s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	or _i0 (_n1,DIN3,DIN1,DIN2);
	or _i1 (_n2,DIN6,DIN4,DIN5);
	nand _i2 (Q,_n1,_n2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3/3 or-and-invert gate, 3x
// Q = !((DIN1 | DIN2 | DIN3) & (DIN4 | DIN5 | DIN6))
module oai33s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	input  DIN6;
	or _i0 (_n1,DIN3,DIN1,DIN2);
	or _i1 (_n2,DIN6,DIN4,DIN5);
	nand _i2 (Q,_n1,_n2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-input or, 1x
// Q = DIN1 | DIN2
module or2s1 (Q, DIN1, DIN2);
	output Q;
	input  DIN1;
	input  DIN2;
	or _i0 (Q,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-input or, 2x
// Q = DIN1 | DIN2
module or2s2 (Q, DIN1, DIN2);
	output Q;
	input  DIN1;
	input  DIN2;
	or _i0 (Q,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-input or, 3x
// Q = DIN1 | DIN2
module or2s3 (Q, DIN1, DIN2);
	output Q;
	input  DIN1;
	input  DIN2;
	or _i0 (Q,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3-input OR, 1x
// Q = DIN1 | DIN2 | DIN3
module or3s1 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	or _i0 (Q,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3-input OR, 2x
// Q = DIN1 | DIN2 | DIN3
module or3s2 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	or _i0 (Q,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3-input OR, 3x
// Q = DIN1 | DIN2 | DIN3
module or3s3 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	or _i0 (Q,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4-input OR, 1x
// Q = DIN1 | DIN2 | DIN3 | DIN4
module or4s1 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	or _i0 (Q,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4-input OR, 2x
// Q = DIN1 | DIN2 | DIN3 | DIN4
module or4s2 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	or _i0 (Q,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 4-input OR, 3x
// Q = DIN1 | DIN2 | DIN3 | DIN4
module or4s3 (Q, DIN1, DIN2, DIN3, DIN4);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	or _i0 (Q,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 5-input OR, 1x
// Q = DIN1 | DIN2 | DIN3 | DIN4 | DIN5
module or5s1 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	or _i0 (Q,DIN5,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 5-input or, 2x
// Q = DIN1 | DIN2 | DIN3 | DIN4 | DIN5
module or5s2 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	or _i0 (Q,DIN5,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 5-input OR, 3x
// Q = DIN1 | DIN2 | DIN3 | DIN4 | DIN5
module or5s3 (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	input  DIN4;
	input  DIN5;
	or _i0 (Q,DIN5,DIN4,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// PMOS pass transistor, 1x
// OUTD = DIN ? 'z' : OUTS
module ppt1s1 (OUTD, DIN, OUTS);
	output OUTD;
	input  DIN;
	input  OUTS;
	bufif0 _i0 (OUTD, OUTS, DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// PMOS pass transistor, 2x
// OUTD = DIN ? 'z' : OUTS
module ppt1s2 (OUTD, DIN, OUTS);
	output OUTD;
	input  DIN;
	input  OUTS;
	bufif0 _i0 (OUTD, OUTS, DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// PMOS pass transistor, 3x
// OUTD = DIN ? 'z' : OUTS
module ppt1s3 (OUTD, DIN, OUTS);
	output OUTD;
	input  DIN;
	input  OUTS;
	bufif0 _i0 (OUTD, OUTS, DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// PMOS pass transistor, 4x
// OUTD = DIN ? 'z' : OUTS
module ppt1s4 (OUTD, DIN, OUTS);
	output OUTD;
	input  DIN;
	input  OUTS;
	bufif0 _i0 (OUTD, OUTS, DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// PMOS pass transistor, 5x
// OUTD = DIN ? 'z' : OUTS
module ppt1s5 (OUTD, DIN, OUTS);
	output OUTD;
	input  DIN;
	input  OUTS;
	bufif0 _i0 (OUTD, OUTS, DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// PMOS pass transistor, 6x
// OUTD = DIN ? 'z' : OUTS
module ppt1s6 (OUTD, DIN, OUTS);
	output OUTD;
	input  DIN;
	input  OUTS;
	bufif0 _i0 (OUTD, OUTS, DIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// PMOSFET Pull-up, 1x
// OUTD = (!GIN) ? 1 : 'z'
module ppu1s1 (OUTD, GIN);
	output OUTD;
	input  GIN;
	pmos _i0 (OUTD, 1'b1, GIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// PMOSFET Pull-up, 2x
// OUTD = (!GIN) ? 1 : 'z'
module ppu1s2 (OUTD, GIN);
	output OUTD;
	input  GIN;
	pmos _i0 (OUTD, 1'b1, GIN);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Repeater (Bus Holder) Cell, 1x
// DUMMY = DIN;DIN = DUMMY
module rpc1s1 (DIN);
	input  DIN;
	trireg DIN;
	buf _i0 (DUMMY,DIN);
	buf _i1 (DIN,DUMMY);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Scan D Flip-Flop w/Async. Clear, 1x
// Q  = !CLRB ? 0 : rising(CLK) ? (SSEL ? SDIN : DIN) : 'p';QN = !Q
module sdffacs1 (Q, QN, CLK, CLRB, DIN, SDIN, SSEL);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	input  SDIN;
	input  SSEL;
	reg notifier;
	p_mux21 _i0 (_n1, SDIN, DIN, SSEL);
	not _i1 (_n2,CLRB);
	p_ffr _i2 (Q, _n1, CLK, _n2, notifier);
	not _i3 (QN,Q);
	not _wi0 (_wn2,DIN);
	and _wi1 (_wn1,SSEL,_wn2,SDIN);
	not _wi2 (_wn6,SDIN);
	not _wi3 (_wn7,SSEL);
	and _wi4 (_wn5,_wn6,_wn7);
	or _wi5 (_wn4,_wn5,SDIN);
	and _wi6 (_wn3,DIN,_wn4);
	or _wi7 (shcheckCLKCLRBlh,_wn1,_wn3);
	and _wi8 (shcheckCLKSDINlh,CLRB,SSEL);
	and _wi10 (shcheckCLKDINlh,CLRB,_wn7);
	and _wi12 (_wn13,_wn2,SDIN);
	and _wi14 (_wn15,DIN,_wn6);
	or _wi15 (_wn12,_wn13,_wn15);
	and _wi16 (shcheckCLKSSELlh,CLRB,_wn12);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Scan D Flip-Flop w/Async. Clear, 2x
// Q  = !CLRB ? 0 : rising(CLK) ? (SSEL ? SDIN : DIN) : 'p';QN = !Q
module sdffacs2 (Q, QN, CLK, CLRB, DIN, SDIN, SSEL);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	input  SDIN;
	input  SSEL;
	reg notifier;
	p_mux21 _i0 (_n1, SDIN, DIN, SSEL);
	not _i1 (_n2,CLRB);
	p_ffr _i2 (Q, _n1, CLK, _n2, notifier);
	not _i3 (QN,Q);
	not _wi0 (_wn2,DIN);
	and _wi1 (_wn1,SSEL,_wn2,SDIN);
	not _wi2 (_wn6,SDIN);
	not _wi3 (_wn7,SSEL);
	and _wi4 (_wn5,_wn6,_wn7);
	or _wi5 (_wn4,_wn5,SDIN);
	and _wi6 (_wn3,DIN,_wn4);
	or _wi7 (shcheckCLKCLRBlh,_wn1,_wn3);
	and _wi8 (shcheckCLKSDINlh,CLRB,SSEL);
	and _wi10 (shcheckCLKDINlh,CLRB,_wn7);
	and _wi12 (_wn13,_wn2,SDIN);
	and _wi14 (_wn15,DIN,_wn6);
	or _wi15 (_wn12,_wn13,_wn15);
	and _wi16 (shcheckCLKSSELlh,CLRB,_wn12);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Scan D Flip-Flop w/Async. Set and Clear, 1x
// Q  = !CLRB ? 0 : !SETB ? 1 : rising(CLK) ? (SSEL ? SDIN : DIN) : 'p';QN = !Q
module sdffascs1 (Q, QN, CLK, CLRB, DIN, SDIN, SETB, SSEL);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	input  SDIN;
	input  SETB;
	input  SSEL;
	reg notifier;
	p_mux21 _i0 (_n1, SDIN, DIN, SSEL);
	not _i1 (_n2,SETB);
	not _i2 (_n3,CLRB);
	p_ffrs _i3 (Q, _n1, CLK, _n3, _n2, notifier);
	not _i4 (QN,Q);
	not _wi0 (_wn2,DIN);
	and _wi1 (_wn1,SSEL,SETB,_wn2,SDIN);
	not _wi2 (_wn6,SSEL);
	not _wi3 (_wn7,SDIN);
	and _wi4 (_wn5,_wn6,_wn7,SETB);
	and _wi5 (_wn8,SDIN,SETB);
	or _wi6 (_wn4,_wn5,_wn8);
	and _wi7 (_wn3,DIN,_wn4);
	or _wi8 (shcheckCLKCLRBlh,_wn1,_wn3);
	and _wi9 (shcheckCLKSDINlh,SSEL,CLRB,SETB);
	and _wi11 (shcheckCLKDINlh,_wn6,CLRB,SETB);
	and _wi13 (_wn14,SETB,_wn2,SDIN);
	and _wi15 (_wn16,SETB,DIN,_wn7);
	or _wi16 (_wn13,_wn14,_wn16);
	and _wi17 (shcheckCLKSSELlh,CLRB,_wn13);
	and _wi20 (_wn23,SDIN,_wn6);
	or _wi22 (_wn22,_wn23,_wn7);
	and _wi23 (_wn20,_wn2,_wn22);
	and _wi25 (_wn26,SSEL,DIN,_wn7);
	or _wi26 (_wn19,_wn20,_wn26);
	and _wi27 (shcheckCLKSETBlh,CLRB,_wn19);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Scan D Flip-Flop w/Async. Set and Clear, 2x
// Q  = !CLRB ? 0 : !SETB ? 1 : rising(CLK) ? (SSEL ? SDIN : DIN) : 'p';QN = !Q
module sdffascs2 (Q, QN, CLK, CLRB, DIN, SDIN, SETB, SSEL);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	input  SDIN;
	input  SETB;
	input  SSEL;
	reg notifier;
	p_mux21 _i0 (_n1, SDIN, DIN, SSEL);
	not _i1 (_n2,SETB);
	not _i2 (_n3,CLRB);
	p_ffrs _i3 (Q, _n1, CLK, _n3, _n2, notifier);
	not _i4 (QN,Q);
	not _wi0 (_wn2,DIN);
	and _wi1 (_wn1,SSEL,SETB,_wn2,SDIN);
	not _wi2 (_wn6,SSEL);
	not _wi3 (_wn7,SDIN);
	and _wi4 (_wn5,_wn6,_wn7,SETB);
	and _wi5 (_wn8,SDIN,SETB);
	or _wi6 (_wn4,_wn5,_wn8);
	and _wi7 (_wn3,DIN,_wn4);
	or _wi8 (shcheckCLKCLRBlh,_wn1,_wn3);
	and _wi9 (shcheckCLKSDINlh,SSEL,CLRB,SETB);
	and _wi11 (shcheckCLKDINlh,_wn6,CLRB,SETB);
	and _wi13 (_wn14,SETB,_wn2,SDIN);
	and _wi15 (_wn16,SETB,DIN,_wn7);
	or _wi16 (_wn13,_wn14,_wn16);
	and _wi17 (shcheckCLKSSELlh,CLRB,_wn13);
	and _wi20 (_wn23,SDIN,_wn6);
	or _wi22 (_wn22,_wn23,_wn7);
	and _wi23 (_wn20,_wn2,_wn22);
	and _wi25 (_wn26,SSEL,DIN,_wn7);
	or _wi26 (_wn19,_wn20,_wn26);
	and _wi27 (shcheckCLKSETBlh,CLRB,_wn19);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Scan D Flip-Flop w/Async. Set, 1x
// QN = !SETB ? 0 : rising(CLK) ? (SSEL ? !SDIN : !DIN) : 'p';Q  = !QN
module sdffass1 (Q, QN, CLK, DIN, SDIN, SETB, SSEL);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	input  SDIN;
	input  SETB;
	input  SSEL;
	reg notifier;
	not _i0 (_n2,SDIN);
	not _i1 (_n3,DIN);
	p_mux21 _i2 (_n1, _n2, _n3, SSEL);
	not _i3 (_n4,SETB);
	p_ffr _i4 (QN, _n1, CLK, _n4, notifier);
	not _i5 (Q,QN);
	and _wi0 (shcheckCLKSDINlh,SETB,SSEL);
	not _wi1 (_wn2,SSEL);
	and _wi2 (shcheckCLKDINlh,SETB,_wn2);
	not _wi3 (_wn5,DIN);
	and _wi4 (_wn4,SETB,_wn5,SDIN);
	not _wi5 (_wn7,SDIN);
	and _wi6 (_wn6,SETB,DIN,_wn7);
	or _wi7 (shcheckCLKSSELlh,_wn4,_wn6);
	and _wi10 (_wn12,SDIN,_wn2);
	or _wi12 (_wn11,_wn12,_wn7);
	and _wi13 (_wn9,_wn5,_wn11);
	and _wi15 (_wn15,SSEL,DIN,_wn7);
	or _wi16 (shcheckCLKSETBlh,_wn9,_wn15);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Scan D Flip-Flop w/Async. Set, 2x
// QN = !SETB ? 0 : rising(CLK) ? (SSEL ? !SDIN : !DIN) : 'p';Q  = !QN
module sdffass2 (Q, QN, CLK, DIN, SDIN, SETB, SSEL);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	input  SDIN;
	input  SETB;
	input  SSEL;
	reg notifier;
	not _i0 (_n2,SDIN);
	not _i1 (_n3,DIN);
	p_mux21 _i2 (_n1, _n2, _n3, SSEL);
	not _i3 (_n4,SETB);
	p_ffr _i4 (QN, _n1, CLK, _n4, notifier);
	not _i5 (Q,QN);
	and _wi0 (shcheckCLKSDINlh,SETB,SSEL);
	not _wi1 (_wn2,SSEL);
	and _wi2 (shcheckCLKDINlh,SETB,_wn2);
	not _wi3 (_wn5,DIN);
	and _wi4 (_wn4,SETB,_wn5,SDIN);
	not _wi5 (_wn7,SDIN);
	and _wi6 (_wn6,SETB,DIN,_wn7);
	or _wi7 (shcheckCLKSSELlh,_wn4,_wn6);
	and _wi10 (_wn12,SDIN,_wn2);
	or _wi12 (_wn11,_wn12,_wn7);
	and _wi13 (_wn9,_wn5,_wn11);
	and _wi15 (_wn15,SSEL,DIN,_wn7);
	or _wi16 (shcheckCLKSETBlh,_wn9,_wn15);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Scan D Flip-Flop w/sync. Clear, 1x
// QN = rising(CLK) ?  (!CLRB ? 1 : (SSEL ? !SDIN : !DIN)) : 'p';Q  = !QN
module sdffcs1 (Q, QN, CLK, CLRB, DIN, SDIN, SSEL);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	input  SDIN;
	input  SSEL;
	reg notifier;
	not _i0 (_n2,CLRB);
	not _i1 (_n4,SDIN);
	not _i2 (_n5,DIN);
	p_mux21 _i3 (_n3, _n4, _n5, SSEL);
	p_mux21 _i4 (_n1, 1'b1, _n3, _n2);
	p_ff _i5 (QN, _n1, CLK, notifier);
	not _i6 (Q,QN);
	not _wi0 (_wn2,DIN);
	and _wi1 (_wn1,SSEL,_wn2,SDIN);
	not _wi2 (_wn6,SDIN);
	not _wi3 (_wn7,SSEL);
	and _wi4 (_wn5,_wn6,_wn7);
	or _wi5 (_wn4,_wn5,SDIN);
	and _wi6 (_wn3,DIN,_wn4);
	or _wi7 (shcheckCLKCLRBlh,_wn1,_wn3);
	and _wi8 (shcheckCLKSDINlh,CLRB,SSEL);
	and _wi10 (shcheckCLKDINlh,CLRB,_wn7);
	and _wi12 (_wn13,_wn2,SDIN);
	and _wi14 (_wn15,DIN,_wn6);
	or _wi15 (_wn12,_wn13,_wn15);
	and _wi16 (shcheckCLKSSELlh,CLRB,_wn12);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Scan D Flip-Flop w/sync. Clear, 2x
// QN = rising(CLK) ?  (!CLRB ? 1 : (SSEL ? !SDIN : !DIN)) : 'p';Q  = !QN
module sdffcs2 (Q, QN, CLK, CLRB, DIN, SDIN, SSEL);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	input  SDIN;
	input  SSEL;
	reg notifier;
	not _i0 (_n2,CLRB);
	not _i1 (_n4,SDIN);
	not _i2 (_n5,DIN);
	p_mux21 _i3 (_n3, _n4, _n5, SSEL);
	p_mux21 _i4 (_n1, 1'b1, _n3, _n2);
	p_ff _i5 (QN, _n1, CLK, notifier);
	not _i6 (Q,QN);
	not _wi0 (_wn2,DIN);
	and _wi1 (_wn1,SSEL,_wn2,SDIN);
	not _wi2 (_wn6,SDIN);
	not _wi3 (_wn7,SSEL);
	and _wi4 (_wn5,_wn6,_wn7);
	or _wi5 (_wn4,_wn5,SDIN);
	and _wi6 (_wn3,DIN,_wn4);
	or _wi7 (shcheckCLKCLRBlh,_wn1,_wn3);
	and _wi8 (shcheckCLKSDINlh,CLRB,SSEL);
	and _wi10 (shcheckCLKDINlh,CLRB,_wn7);
	and _wi12 (_wn13,_wn2,SDIN);
	and _wi14 (_wn15,DIN,_wn6);
	or _wi15 (_wn12,_wn13,_wn15);
	and _wi16 (shcheckCLKSSELlh,CLRB,_wn12);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Scan D Flip-Flop w/Active Low Enable, 1x
// Q  = rising(CLK) ? (SSEL ? SDIN : (!SSEL & !EB) ? DIN : 's') : 'p';QN = !Q
module sdffles1 (Q, QN, CLK, DIN, EB, SDIN, SSEL);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	input  EB;
	input  SDIN;
	input  SSEL;
	reg notifier;
	not _i0 (_n4,SSEL);
	not _i1 (_n5,EB);
	and _i2 (_n3,_n4,_n5);
	p_mux21 _i3 (_n2, DIN, buf_Q, _n3);
	p_mux21 _i4 (_n1, SDIN, _n2, SSEL);
	p_ff _i5 (buf_Q, _n1, CLK, notifier);
	not _i6 (QN,buf_Q);
	buf _iQ(Q, buf_Q);
	buf _wi0 (shcheckCLKSDINlh,SSEL);
	not _wi1 (shcheckCLKEBlh,SSEL);
	not _wi2 (_wn2,EB);
	and _wi4 (shcheckCLKDINlh,_wn2,shcheckCLKEBlh);
	not _wi5 (_wn6,DIN);
	and _wi7 (_wn8,_wn2,SDIN);
	or _wi8 (_wn7,_wn8,EB);
	and _wi9 (_wn5,_wn6,_wn7);
	not _wi11 (_wn14,SDIN);
	and _wi12 (_wn12,_wn2,_wn14);
	or _wi13 (_wn11,_wn12,EB);
	and _wi14 (_wn10,DIN,_wn11);
	or _wi15 (shcheckCLKSSELlh,_wn5,_wn10);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Scan D Flip-Flop w/Active Low Enable, 2x
// Q  = rising(CLK) ? (SSEL ? SDIN : (!SSEL & !EB) ? DIN : 's') : 'p';QN = !Q
module sdffles2 (Q, QN, CLK, DIN, EB, SDIN, SSEL);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	input  EB;
	input  SDIN;
	input  SSEL;
	reg notifier;
	not _i0 (_n4,SSEL);
	not _i1 (_n5,EB);
	and _i2 (_n3,_n4,_n5);
	p_mux21 _i3 (_n2, DIN, buf_Q, _n3);
	p_mux21 _i4 (_n1, SDIN, _n2, SSEL);
	p_ff _i5 (buf_Q, _n1, CLK, notifier);
	not _i6 (QN,buf_Q);
	buf _iQ(Q, buf_Q);
	buf _wi0 (shcheckCLKSDINlh,SSEL);
	not _wi1 (shcheckCLKEBlh,SSEL);
	not _wi2 (_wn2,EB);
	and _wi4 (shcheckCLKDINlh,_wn2,shcheckCLKEBlh);
	not _wi5 (_wn6,DIN);
	and _wi7 (_wn8,_wn2,SDIN);
	or _wi8 (_wn7,_wn8,EB);
	and _wi9 (_wn5,_wn6,_wn7);
	not _wi11 (_wn14,SDIN);
	and _wi12 (_wn12,_wn2,_wn14);
	or _wi13 (_wn11,_wn12,EB);
	and _wi14 (_wn10,DIN,_wn11);
	or _wi15 (shcheckCLKSSELlh,_wn5,_wn10);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Scan D Flip-Flop 1x
// Q = rising(CLK) ? (SSEL ? SDIN : DIN) : 'p';QN  = !Q
module sdffs1 (Q, QN, CLK, DIN, SDIN, SSEL);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	input  SDIN;
	input  SSEL;
	reg notifier;
	p_mux21 _i0 (_n1, SDIN, DIN, SSEL);
	p_ff _i1 (Q, _n1, CLK, notifier);
	not _i2 (QN,Q);
	buf _wi0 (shcheckCLKSDINlh,SSEL);
	not _wi1 (shcheckCLKDINlh,SSEL);
	not _wi2 (_wn3,DIN);
	and _wi3 (_wn2,_wn3,SDIN);
	not _wi4 (_wn5,SDIN);
	and _wi5 (_wn4,DIN,_wn5);
	or _wi6 (shcheckCLKSSELlh,_wn2,_wn4);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Scan D Flip-Flop 2x
// Q = rising(CLK) ? (SSEL ? SDIN : DIN) : 'p';QN  = !Q
module sdffs2 (Q, QN, CLK, DIN, SDIN, SSEL);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	input  SDIN;
	input  SSEL;
	reg notifier;
	p_mux21 _i0 (_n1, SDIN, DIN, SSEL);
	p_ff _i1 (Q, _n1, CLK, notifier);
	not _i2 (QN,Q);
	buf _wi0 (shcheckCLKSDINlh,SSEL);
	not _wi1 (shcheckCLKDINlh,SSEL);
	not _wi2 (_wn3,DIN);
	and _wi3 (_wn2,_wn3,SDIN);
	not _wi4 (_wn5,SDIN);
	and _wi5 (_wn4,DIN,_wn5);
	or _wi6 (shcheckCLKSSELlh,_wn2,_wn4);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Scan D Flip-Flop w/sync. Set and Clear, 1x
// QN = rising(CLK) ? (SSEL ? !( CLRB &  (SDIN | !SETB)) : !( CLRB & (DIN | !SETB))) : 'p';Q  = !QN
module sdffscs1 (Q, QN, CLK, CLRB, DIN, SDIN, SETB, SSEL);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	input  SDIN;
	input  SETB;
	input  SSEL;
	reg notifier;
	not _i0 (_n4,SETB);
	or _i1 (_n3,SDIN,_n4);
	nand _i2 (_n2,CLRB,_n3);
	or _i4 (_n6,DIN,_n4);
	nand _i5 (_n5,CLRB,_n6);
	p_mux21 _i6 (_n1,_n2,_n5,SSEL);
	p_ff _i7 (QN,_n1,CLK,notifier);
	not _i8 (Q,QN);
	not _wi0 (_wn2,DIN);
	not _wi1 (_wn5,SDIN);
	not _wi2 (_wn6,SETB);
	and _wi3 (_wn4,_wn5,_wn6);
	and _wi4 (_wn9,SETB,SSEL);
	or _wi6 (_wn8,_wn9,_wn6);
	and _wi7 (_wn7,SDIN,_wn8);
	or _wi8 (_wn3,_wn4,_wn7);
	and _wi9 (_wn1,_wn2,_wn3);
	not _wi11 (_wn17,SSEL);
	and _wi12 (_wn16,SETB,_wn17);
	or _wi14 (_wn15,_wn16,_wn6);
	and _wi15 (_wn13,_wn5,_wn15);
	or _wi16 (_wn12,_wn13,SDIN);
	and _wi17 (_wn11,DIN,_wn12);
	or _wi18 (shcheckCLKCLRBlh,_wn1,_wn11);
	and _wi19 (shcheckCLKSDINlh,SSEL,CLRB,SETB);
	and _wi21 (shcheckCLKDINlh,_wn17,CLRB,SETB);
	and _wi23 (_wn24,SETB,_wn2,SDIN);
	and _wi25 (_wn26,SETB,DIN,_wn5);
	or _wi26 (_wn23,_wn24,_wn26);
	and _wi27 (shcheckCLKSSELlh,CLRB,_wn23);
	and _wi30 (_wn33,SDIN,_wn17);
	or _wi32 (_wn32,_wn33,_wn5);
	and _wi33 (_wn30,_wn2,_wn32);
	and _wi35 (_wn36,SSEL,DIN,_wn5);
	or _wi36 (_wn29,_wn30,_wn36);
	and _wi37 (shcheckCLKSETBlh,CLRB,_wn29);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Scan D Flip-Flop w/sync. Set and Clear, 2x
// QN = rising(CLK) ? (SSEL ? !( CLRB &  (SDIN | !SETB)) : !( CLRB & (DIN | !SETB))) : 'p';Q  = !QN
module sdffscs2 (Q, QN, CLK, CLRB, DIN, SDIN, SETB, SSEL);
	output Q;
	output QN;
	input  CLK;
	input  CLRB;
	input  DIN;
	input  SDIN;
	input  SETB;
	input  SSEL;
	reg notifier;
	not _i0 (_n4,SETB);
	or _i1 (_n3,SDIN,_n4);
	nand _i2 (_n2,CLRB,_n3);
	or _i4 (_n6,DIN,_n4);
	nand _i5 (_n5,CLRB,_n6);
	p_mux21 _i6 (_n1,_n2,_n5,SSEL);
	p_ff _i7 (QN,_n1,CLK,notifier);
	not _i8 (Q,QN);
	not _wi0 (_wn2,DIN);
	not _wi1 (_wn5,SDIN);
	not _wi2 (_wn6,SETB);
	and _wi3 (_wn4,_wn5,_wn6);
	and _wi4 (_wn9,SETB,SSEL);
	or _wi6 (_wn8,_wn9,_wn6);
	and _wi7 (_wn7,SDIN,_wn8);
	or _wi8 (_wn3,_wn4,_wn7);
	and _wi9 (_wn1,_wn2,_wn3);
	not _wi11 (_wn17,SSEL);
	and _wi12 (_wn16,SETB,_wn17);
	or _wi14 (_wn15,_wn16,_wn6);
	and _wi15 (_wn13,_wn5,_wn15);
	or _wi16 (_wn12,_wn13,SDIN);
	and _wi17 (_wn11,DIN,_wn12);
	or _wi18 (shcheckCLKCLRBlh,_wn1,_wn11);
	and _wi19 (shcheckCLKSDINlh,SSEL,CLRB,SETB);
	and _wi21 (shcheckCLKDINlh,_wn17,CLRB,SETB);
	and _wi23 (_wn24,SETB,_wn2,SDIN);
	and _wi25 (_wn26,SETB,DIN,_wn5);
	or _wi26 (_wn23,_wn24,_wn26);
	and _wi27 (shcheckCLKSSELlh,CLRB,_wn23);
	and _wi30 (_wn33,SDIN,_wn17);
	or _wi32 (_wn32,_wn33,_wn5);
	and _wi33 (_wn30,_wn2,_wn32);
	and _wi35 (_wn36,SSEL,DIN,_wn5);
	or _wi36 (_wn29,_wn30,_wn36);
	and _wi37 (shcheckCLKSETBlh,CLRB,_wn29);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Scan D Flip-Flop w/sync. Set, 1x
// QN = rising(CLK) ?  (!SETB ? 0 : (SSEL ?  !SDIN : !DIN)) : 'p';Q  = !QN
module sdffss1 (Q, QN, CLK, DIN, SDIN, SETB, SSEL);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	input  SDIN;
	input  SETB;
	input  SSEL;
	reg notifier;
	not _i0 (_n3,SDIN);
	not _i1 (_n4,DIN);
	p_mux21 _i2 (_n2, _n3, _n4, SSEL);
	and _i3 (_n1,SETB,_n2);
	p_ff _i4 (QN, _n1, CLK, notifier);
	not _i5 (Q,QN);
	and _wi0 (shcheckCLKSDINlh,SETB,SSEL);
	not _wi1 (_wn2,SSEL);
	and _wi2 (shcheckCLKDINlh,SETB,_wn2);
	not _wi3 (_wn5,DIN);
	and _wi4 (_wn4,SETB,_wn5,SDIN);
	not _wi5 (_wn7,SDIN);
	and _wi6 (_wn6,SETB,DIN,_wn7);
	or _wi7 (shcheckCLKSSELlh,_wn4,_wn6);
	and _wi10 (_wn12,SDIN,_wn2);
	or _wi12 (_wn11,_wn12,_wn7);
	and _wi13 (_wn9,_wn5,_wn11);
	and _wi15 (_wn15,SSEL,DIN,_wn7);
	or _wi16 (shcheckCLKSETBlh,_wn9,_wn15);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// Scan D Flip-Flop w/sync. Set, 2x
// QN = rising(CLK) ?  (!SETB ? 0 : (SSEL ?  !SDIN : !DIN)) : 'p';Q  = !QN
module sdffss2 (Q, QN, CLK, DIN, SDIN, SETB, SSEL);
	output Q;
	output QN;
	input  CLK;
	input  DIN;
	input  SDIN;
	input  SETB;
	input  SSEL;
	reg notifier;
	not _i0 (_n3,SDIN);
	not _i1 (_n4,DIN);
	p_mux21 _i2 (_n2, _n3, _n4, SSEL);
	and _i3 (_n1,SETB,_n2);
	p_ff _i4 (QN, _n1, CLK, notifier);
	not _i5 (Q,QN);
	and _wi0 (shcheckCLKSDINlh,SETB,SSEL);
	not _wi1 (_wn2,SSEL);
	and _wi2 (shcheckCLKDINlh,SETB,_wn2);
	not _wi3 (_wn5,DIN);
	and _wi4 (_wn4,SETB,_wn5,SDIN);
	not _wi5 (_wn7,SDIN);
	and _wi6 (_wn6,SETB,DIN,_wn7);
	or _wi7 (shcheckCLKSSELlh,_wn4,_wn6);
	and _wi10 (_wn12,SDIN,_wn2);
	or _wi12 (_wn11,_wn12,_wn7);
	and _wi13 (_wn9,_wn5,_wn11);
	and _wi15 (_wn15,SSEL,DIN,_wn7);
	or _wi16 (shcheckCLKSETBlh,_wn9,_wn15);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1-Bit Subtractor, 1x
// OUTD = (AIN ^ !BIN) ^ CIN;OUTC0 = (AIN & !BIN) | (CIN & (AIN ^ !BIN))
module sub1s1 (OUTC0, OUTD, AIN, BIN, CIN);
	output OUTC0;
	output OUTD;
	input  AIN;
	input  BIN;
	input  CIN;
	not _i0 (_n1,BIN);
	xor _i1 (OUTD,CIN,AIN,_n1);
	and _i3 (_n3,AIN,_n1);
	xor _i5 (_n6,AIN,_n1);
	and _i6 (_n5,CIN,_n6);
	or _i7 (OUTC0,_n3,_n5);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1-Bit Subtractor, 2x
// OUTD = (AIN ^ !BIN) ^ CIN;OUTC0 = (AIN & !BIN) | (CIN & (AIN ^ !BIN))
module sub1s2 (OUTC0, OUTD, AIN, BIN, CIN);
	output OUTC0;
	output OUTD;
	input  AIN;
	input  BIN;
	input  CIN;
	not _i0 (_n1,BIN);
	xor _i1 (OUTD,CIN,AIN,_n1);
	and _i3 (_n3,AIN,_n1);
	xor _i5 (_n6,AIN,_n1);
	and _i6 (_n5,CIN,_n6);
	or _i7 (OUTC0,_n3,_n5);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 1-Bit Subtractor, 3x
// OUTD = (AIN ^ !BIN) ^ CIN;OUTC0 = (AIN & !BIN) | (CIN & (AIN ^ !BIN))
module sub1s3 (OUTC0, OUTD, AIN, BIN, CIN);
	output OUTC0;
	output OUTD;
	input  AIN;
	input  BIN;
	input  CIN;
	not _i0 (_n1,BIN);
	xor _i1 (OUTD,CIN,AIN,_n1);
	and _i3 (_n3,AIN,_n1);
	xor _i5 (_n6,AIN,_n1);
	and _i6 (_n5,CIN,_n6);
	or _i7 (OUTC0,_n3,_n5);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state inverting buffer w/active high enable, 1x
// Q = E ? !DIN : 'z'
module tibh1s1 (Q, DIN, E);
	output Q;
	input  DIN;
	input  E;
	notif1 _i0 (Q, DIN, E);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state inverting buffer w/active high enable, 2x
// Q = E ? !DIN : 'z'
module tibh1s2 (Q, DIN, E);
	output Q;
	input  DIN;
	input  E;
	notif1 _i0 (Q, DIN, E);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state inverting buffer w/active high enable, 3x
// Q = E ? !DIN : 'z'
module tibh1s3 (Q, DIN, E);
	output Q;
	input  DIN;
	input  E;
	notif1 _i0 (Q, DIN, E);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state inverting buffer w/active high enable, 4x
// Q = E ? !DIN : 'z'
module tibh1s4 (Q, DIN, E);
	output Q;
	input  DIN;
	input  E;
	notif1 _i0 (Q, DIN, E);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state inverting buffer w/active high enable, 5x
// q = e ? !din : 'z'
module tibh1s5 (q, din, e);
	output q;
	input  din;
	input  e;
	notif1 _i0 (q, din, e);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state inverting buffer w/active high enable, 6x
// Q = E ? !DIN : 'z'
module tibh1s6 (Q, DIN, E);
	output Q;
	input  DIN;
	input  E;
	notif1 _i0 (Q, DIN, E);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state inverting buffer w/active low enable, 1x
// Q = !EB ? !DIN : 'z'
module tibl1s1 (Q, DIN, EB);
	output Q;
	input  DIN;
	input  EB;
	notif0 _i0 (Q, DIN, EB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state inverting buffer w/active low enable, 2x
// Q = !EB ? !DIN : 'z'
module tibl1s2 (Q, DIN, EB);
	output Q;
	input  DIN;
	input  EB;
	notif0 _i0 (Q, DIN, EB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state inverting buffer w/active low enable, 3x
// Q = !EB ? !DIN : 'z'
module tibl1s3 (Q, DIN, EB);
	output Q;
	input  DIN;
	input  EB;
	notif0 _i0 (Q, DIN, EB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state inverting buffer w/active low enable, 4x
// Q = !EB ? !DIN : 'z'
module tibl1s4 (Q, DIN, EB);
	output Q;
	input  DIN;
	input  EB;
	notif0 _i0 (Q, DIN, EB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state inverting buffer w/active low enable, 5x
// Q = !EB ? !DIN : 'z'
module tibl1s5 (Q, DIN, EB);
	output Q;
	input  DIN;
	input  EB;
	notif0 _i0 (Q, DIN, EB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state inverting buffer w/active low enable, 6x
// Q = !EB ? !DIN : 'z'
module tibl1s6 (Q, DIN, EB);
	output Q;
	input  DIN;
	input  EB;
	notif0 _i0 (Q, DIN, EB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state non-inverting buffer w/active high enable, 1x
// Q = E ? DIN : 'z'
module tnbh1s1 (Q, DIN, E);
	output Q;
	input  DIN;
	input  E;
	bufif1 _i0 (Q, DIN, E);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state non-inverting buffer w/active high enable, 2x
// Q = E ? DIN : 'z'
module tnbh1s2 (Q, DIN, E);
	output Q;
	input  DIN;
	input  E;
	bufif1 _i0 (Q, DIN, E);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state non-inverting buffer w/active high enable, 3x
// Q = E ? DIN : 'z'
module tnbh1s3 (Q, DIN, E);
	output Q;
	input  DIN;
	input  E;
	bufif1 _i0 (Q, DIN, E);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state non-inverting buffer w/active high enable, 4x
// Q = E ? DIN : 'z'
module tnbh1s4 (Q, DIN, E);
	output Q;
	input  DIN;
	input  E;
	bufif1 _i0 (Q, DIN, E);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state non-inverting buffer w/active high enable, 5x
// Q = E ? DIN : 'z'
module tnbh1s5 (Q, DIN, E);
	output Q;
	input  DIN;
	input  E;
	bufif1 _i0 (Q, DIN, E);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state non-inverting buffer w/active high enable, 6x
// Q = E ? DIN : 'z'
module tnbh1s6 (Q, DIN, E);
	output Q;
	input  DIN;
	input  E;
	bufif1 _i0 (Q, DIN, E);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state non-inverting buffer w/active low enable, 1x
// Q = !EB ? DIN : 'z'
module tnbl1s1 (Q, DIN, EB);
	output Q;
	input  DIN;
	input  EB;
	bufif0 _i0 (Q, DIN, EB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state non-inverting buffer w/active low enable, 2x
// Q = !EB ? DIN : 'z'
module tnbl1s2 (Q, DIN, EB);
	output Q;
	input  DIN;
	input  EB;
	bufif0 _i0 (Q, DIN, EB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state non-inverting buffer w/active low enable, 3x
// Q = !EB ? DIN : 'z'
module tnbl1s3 (Q, DIN, EB);
	output Q;
	input  DIN;
	input  EB;
	bufif0 _i0 (Q, DIN, EB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state non-inverting buffer w/active low enable, 4x
// Q = !EB ? DIN : 'z'
module tnbl1s4 (Q, DIN, EB);
	output Q;
	input  DIN;
	input  EB;
	bufif0 _i0 (Q, DIN, EB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state non-inverting buffer w/active low enable, 5x
// Q = !EB ? DIN : 'z'
module tnbl1s5 (Q, DIN, EB);
	output Q;
	input  DIN;
	input  EB;
	bufif0 _i0 (Q, DIN, EB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// tri-state non-inverting buffer w/active low enable, 6x
// Q = !EB ? DIN : 'z'
module tnbl1s6 (Q, DIN, EB);
	output Q;
	input  DIN;
	input  EB;
	bufif0 _i0 (Q, DIN, EB);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-input xnor, 1x
// Q = !(DIN1 ^ DIN2)
module xnr2s1 (Q, DIN1, DIN2);
	output Q;
	input  DIN1;
	input  DIN2;
	xnor _i0 (Q,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-input xnor, 2x
// Q = !(DIN1 ^ DIN2)
module xnr2s2 (Q, DIN1, DIN2);
	output Q;
	input  DIN1;
	input  DIN2;
	xnor _i0 (Q,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-input xnor, 3x
// Q = !(DIN1 ^ DIN2)
module xnr2s3 (Q, DIN1, DIN2);
	output Q;
	input  DIN1;
	input  DIN2;
	xnor _i0 (Q,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3-input XNOR, 1x
// Q = !((DIN1 ^ DIN2) ^ DIN3)
module xnr3s1 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	xnor _i0 (Q,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3 input XNOR, 2x
// Q = !((DIN1 ^ DIN2 ) ^ DIN3 )
module xnr3s2 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	xnor _i0 (Q,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3 input XNOR, 3x
// Q = !((DIN1 ^ DIN2 ) ^ DIN3 )
module xnr3s3 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	xnor _i0 (Q,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-input xor, 1x
// Q = DIN1 ^ DIN2
module xor2s1 (Q, DIN1, DIN2);
	output Q;
	input  DIN1;
	input  DIN2;
	xor _i0 (Q,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-input xor, 2x
// Q = DIN1 ^ DIN2
module xor2s2 (Q, DIN1, DIN2);
	output Q;
	input  DIN1;
	input  DIN2;
	xor _i0 (Q,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 2-input xor, 3x
// Q = DIN1 ^ DIN2
module xor2s3 (Q, DIN1, DIN2);
	output Q;
	input  DIN1;
	input  DIN2;
	xor _i0 (Q,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3 input XOR, 1x
// Q = ((DIN1 ^ DIN2 ) ^ DIN3 )
module xor3s1 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	xor _i0 (Q,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3 input XOR, 2x
// Q = ((DIN1 ^ DIN2 ) ^ DIN3 )
module xor3s2 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	xor _i0 (Q,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
// Copyright 1998-1999 LEDA Systems, Inc.
`celldefine
// 3 input XOR, 3x
// Q = ((DIN1 ^ DIN2 ) ^ DIN3 )
module xor3s3 (Q, DIN1, DIN2, DIN3);
	output Q;
	input  DIN1;
	input  DIN2;
	input  DIN3;
	xor _i0 (Q,DIN3,DIN1,DIN2);
endmodule
`endcelldefine
`ifdef libtechudps
`else
`define libtechudps 1
primitive p_mux21 (q, data1, data0, dselect);
    output q;
    input data1, data0, dselect;

// FUNCTION :  TWO TO ONE MULTIPLEXER
table
//data1 data0 dselect :   q
	0     0       ?   :   0 ;
	1     1       ?   :   1 ;

	0     ?       1   :   0 ;
	1     ?       1   :   1 ;

	?     0       0   :   0 ;
	?     1       0   :   1 ;
endtable
endprimitive

primitive p_sr(Q,S,R,notifier);
output Q; reg Q;
input S,R, notifier;
// set-reset latch, set dominant
table
// S    R notifier : Qt : Qt+1
   0    0 ?        : ?  : - ;
   0    1 ?        : ?  : 0 ;
   1    0 ?        : ?  : 1 ;
   1    1 ?        : ?  : 1 ;
   1    x ?        : ?  : 1 ;
   x    0 ?        : 1  : 1 ;
   0    x ?        : 0  : 0 ;
   ?    ? *        : ?  : x ;
endtable
endprimitive

primitive p_rs(Q,S,R,notifier);
output Q; reg Q;
input S,R, notifier;
// set-reset latch, reset dominant
table
// S    R notifier : Qt : Qt+1
   0    0 ?        : ?  : - ;
   0    1 ?        : ?  : 0 ;
   1    0 ?        : ?  : 1 ;
   1    1 ?        : ?  : 0 ;
   1    x ?        : ?  : 1 ;
   x    0 ?        : 1  : 1 ;
   0    x ?        : 0  : 0 ;
   ?    ? *        : ?  : x ;
endtable
endprimitive

primitive p_latch(Q,D,G,notifier);
output Q; reg Q;
input D,G,notifier;
table
	// D  G No   : Qt  : Qt+1
	   ?  0 ?   : ?   : - ;  // clock disabled
	   0  1 ?   : ?   : 0 ;  // clock enabled
	   1  1 ?   : ?   : 1 ;  // transparent data
	   1  x ?   : 1   : 1 ;  // reducing pessimism
	   0  x ?   : 0   : 0 ;
	   ?  n ?   : ?   : - ;
	   ?  ? *   : ?   : x ;
endtable
endprimitive

primitive p_latchr(Q,D,G,R,notifier);
output Q; reg Q;
input D,G,R,notifier;
table
	// D  G R No   : Qt  : Qt+1
	   ?  0 0 ?   : ?   : - ;  // clock disabled
	   0  1 0 ?   : ?   : 0 ;  // clock enabled
	   1  1 0 ?   : ?   : 1 ;  // transparent data
	   1  x 0 ?   : 1   : 1 ;  // reducing pessimism
	   0  x 0 ?   : 0   : 0 ;
	   ?  n 0 ?   : ?   : - ;
	   ?  ? 1 ?   : ?   : 0 ;  // clear
	   0  1 x ?   : ?   : 0 ;  // red pessimism
	   0  ? x ?   : 0   : 0 ;
	   ?  0 x ?   : 0   : 0 ;
	   ?  ? ? *   : ?   : x ;
endtable
endprimitive

primitive p_latchs(Q,D,G,S,notifier);
output Q; reg Q;
input D,G,S,notifier;
table
	// D  G S No   : Qt  : Qt+1
	   ?  0 0 ?   : ?   : - ;  // clock disabled
	   0  1 0 ?   : ?   : 0 ;  // clock enabled
	   1  1 0 ?   : ?   : 1 ;  // transparent data
	   1  x 0 ?   : 1   : 1 ;  // reducing pessimism
	   0  x 0 ?   : 0   : 0 ;
	   ?  n 0 ?   : ?   : - ;
	   ?  ? 1 ?   : ?   : 1 ;  // set
	   0  1 x ?   : ?   : 0 ;  // red pessimism
	   0  ? x ?   : 0   : 0 ;
	   ?  0 x ?   : 0   : 0 ;
	   ?  ? ? *   : ?   : x ;
endtable
endprimitive

primitive p_latchsr(Q,D,G,S,R,notifier);
output Q; reg Q;
input D,G,S,R,notifier; // set dominant
table
	// D  G S R No  : Qt  : Qt+1
	   ?  0 0 0 ?   : ?   : - ;  // clock disabled
	   0  1 0 0 ?   : ?   : 0 ;  // clock enabled
	   1  1 0 0 ?   : ?   : 1 ;  // transparent data
	   ?  ? 0 1 ?   : ?   : 0 ;  // clear
	   ?  ? 1 ? ?   : ?   : 1 ;  // set overrides
	   1  x 0 0 ?   : 1   : 1 ;  // reducing pessimism
	   0  x 0 0 ?   : 0   : 0 ;
	   0  1 0 x ?   : ?   : 0 ;  // red pessimism
	   0  ? 0 x ?   : 0   : 0 ;
	   1  1 x 0 ?   : ?   : 1 ;
	   1  ? x 0 ?   : 1   : 1 ;

	   ?  n 0 0 ?   : ?   : - ;
	   ?  ? ? ? *   : ?   : x ;
endtable
endprimitive

primitive p_latchrs(Q,D,G,S,R,notifier);
	output Q; reg Q;
	input D,G,S,R,notifier; // reset dominant
table
	// D  G S R No  : Qt  : Qt+1
	   ?  0 0 0 ?   : ?   : - ;  // clock disabled
	   0  1 0 0 ?   : ?   : 0 ;  // clock enabled
	   1  1 0 0 ?   : ?   : 1 ;  // transparent data
	   ?  ? 1 0 ?   : ?   : 1 ;  // set
	   ?  ? ? 1 ?   : ?   : 0 ;  // reset overrides
	   1  x 0 0 ?   : 1   : 1 ;  // reducing pessimism
	   0  x 0 0 ?   : 0   : 0 ;
	   0  1 0 x ?   : ?   : 0 ;
	   0  ? 0 x ?   : 0   : 0 ;
	   1  1 x 0 ?   : ?   : 1 ;
	   1  ? x 0 ?   : 1   : 1 ;

	   ?  n 0 0 ?   : ?   : - ;
	   ?  ? ? ? *   : ?   : x ;
endtable
endprimitive

// POSITIVE EDGE TRIGGERED D FLIP-FLOP
/*primitive p_ff  (Q, D, CP,notifier);
    output Q;  reg    Q;
    input  D, CP,notifier;

    table
    //  D   CP     No :   Qt  :   Qt+1
        1   (01)   ?  :   ?   :   1;  // clocked data
        0   (01)   ?  :   ?   :   0;
        1   (x1)   ?  :   1   :   1;  // reducing pessimism
        0   (x1)   ?  :   0   :   0;
        1   (0x)   ?  :   1   :   1;
        0   (0x)   ?  :   0   :   0;
        ?   (1x)   ?  :   ?   :   -;  // no change on falling edge
        ?   (?0)   ?  :   ?   :   -;

        *    ?     ?  :   ?   :   -;  // ignore edges on data
		?    ?     *  :   ?   :   x;
    endtable
endprimitive*/

primitive p_ff  (Q, D, CP,notifier);
    output Q;  reg    Q;
    input  D, CP,notifier;

    table
    //  D   CP     No :   Qt  :   Qt+1
        1   (01)   ?  :   ?   :   1;  // clocked data
        0   (01)   ?  :   ?   :   0;
        1   (x1)   ?  :   1   :   1;  // reducing pessimism
        0   (x1)   ?  :   0   :   0;
        1   (0x)   ?  :   1   :   1;
        0   (0x)   ?  :   0   :   0;
        ?   (1x)   ?  :   ?   :   -;  // no change on falling edge
        ?   (?0)   ?  :   ?   :   -;

        *    ?     ?  :   ?   :   -;  // ignore edges on data
		?    ?     x  :   x   :   0;
		?    ?     *  :   ?   :   x;
    endtable
endprimitive

primitive p_ffr  (Q, D, CP, R, notifier);
    output Q;  reg    Q;
    input  D, CP, R, notifier;

    table
    //  D   CP      R No :   Qt  :   Qt+1

        1   (01)    0  ? :   ?   :   1;  // clocked data
        0   (01)    0  ? :   ?   :   0;

        0   (01)    x  ? :   ?   :   0;  // pessimism
        0    ?      x  ? :   0   :   0;  // pessimism

        1    0      x  ? :   0   :   0;  // pessimism
        1    x    (?x) ? :   0   :   0;  // pessimism
        1    1    (?x) ? :   0   :   0;  // pessimism

        x    0      x  ? :   0   :   0;  // pessimism
        x    x    (?x) ? :   0   :   0;  // pessimism
        x    1    (?x) ? :   0   :   0;  // pessimism

        1   (x1)    0  ? :   1   :   1;  // reducing pessimism
        0   (x1)    0  ? :   0   :   0;
        1   (0x)    0  ? :   1   :   1;
        0   (0x)    0  ? :   0   :   0;

        ?   ?       1  ? :   ?   :   0;  // asynchronous clear

        ?   (?0)    ?  ? :   ?   :   -;  // ignore falling clock
        ?   (1x)    ?  ? :   ?   :   -;  // ignore falling clock
        *    ?      ?  ? :   ?   :   -;  // ignore the edges on data

        ?    ?    (?0) ? :   ?   :   -;  // ignore the edges on clear

		?    ?      ?  * :   ?   :   x;
    endtable
endprimitive


primitive p_ffrs (Q, D, CP, R, S, notifier);
    output Q;  reg    Q;
    input  D, CP, R, S,notifier;
    table
    //  D   CP      R   S    No  :   Qt  :   Qt+1
        1   (01)    0   0    ?   :   ?   :   1;  // clocked data
        1   (01)    0   x    ?   :   ?   :   1;  // pessimism

        1    ?      0   x    ?   :   1   :   1;  // pessimism

        0    0      0   x    ?   :   1   :   1;  // pessimism
        0    x      0 (?x)   ?   :   1   :   1;  // pessimism
        0    1      0 (?x)   ?   :   1   :   1;  // pessimism

        x    0      0   x    ?   :   1   :   1;  // pessimism
        x    x      0 (?x)   ?   :   1   :   1;  // pessimism
        x    1      0 (?x)   ?   :   1   :   1;  // pessimism

        0   (01)    0   0    ?   :   ?   :   0;  // clocked data
        0   (01)    x   0    ?   :   ?   :   0;  // pessimism

        0    ?      x   0    ?   :   0   :   0;  // pessimism

        1    0      x   0    ?   :   0   :   0;  // pessimism
        1    x    (?x)  0    ?   :   0   :   0;  // pessimism
        1    1    (?x)  0    ?   :   0   :   0;  // pessimism

        x    0      x   0    ?   :   0   :   0;  // pessimism
        x    x    (?x)  0    ?   :   0   :   0;  // pessimism
        x    1    (?x)  0    ?   :   0   :   0;  // pessimism

        1   (x1)    0   0    ?   :   1   :   1;  // reducing pessimism
        0   (x1)    0   0    ?   :   0   :   0;
        1   (0x)    0   0    ?   :   1   :   1;
        0   (0x)    0   0    ?   :   0   :   0;

        ?   ?       1   ?    ?   :   ?   :   0;  // asynchronous clear
        ?   ?       0   1    ?   :   ?   :   1;  // asynchronous set

        ?   (?0)    ?   ?    ?   :   ?   :   -;  // ignore falling clock
        ?   (1x)    ?   ?    ?   :   ?   :   -;  // ignore falling clock
        *    ?      ?   ?    ?   :   ?   :   -;  // ignore data edges

        ?   ?     (?0)  0    ?   :   ?   :   -;  // ignore the edges on
        ?   ?       ?  (?0)  ?   :   ?   :   -;  // set and clear

        ?   ?       ?   ?    *   :   ?   :   x;
    endtable
endprimitive


primitive p_ffsr (Q, D, CP, R, S, notifier);
    output Q;  reg    Q;
    input D, CP, R, S,notifier;
    table
    //  D   CP      R   S      No  :   Qt  :   Qt+1
        1   (01)    0   0      ?   :   ?   :   1;  // clocked data
        1   (01)    0   x      ?   :   ?   :   1;  // pessimism

        1    ?      0   x      ?   :   1   :   1;  // pessimism

        0    0      0   x      ?   :   1   :   1;  // pessimism
        0    x      0 (?x)     ?   :   1   :   1;  // pessimism
        0    1      0 (?x)     ?   :   1   :   1;  // pessimism

        x    0      0   x      ?   :   1   :   1;  // pessimism
        x    x      0 (?x)     ?   :   1   :   1;  // pessimism
        x    1      0 (?x)     ?   :   1   :   1;  // pessimism

        0   (01)    0   0      ?   :   ?   :   0;  // clocked data
        0   (01)    x   0      ?   :   ?   :   0;  // pessimism

        0    ?      x   0      ?   :   0   :   0;  // pessimism

        1    0      x   0      ?   :   0   :   0;  // pessimism
        1    x    (?x)  0      ?   :   0   :   0;  // pessimism
        1    1    (?x)  0      ?   :   0   :   0;  // pessimism

        x    0      x   0      ?   :   0   :   0;  // pessimism
        x    x    (?x)  0      ?   :   0   :   0;  // pessimism
        x    1    (?x)  0      ?   :   0   :   0;  // pessimism

        1   (x1)    0   0      ?   :   1   :   1;  // reducing pessimism
        0   (x1)    0   0      ?   :   0   :   0;
        1   (0x)    0   0      ?   :   1   :   1;
        0   (0x)    0   0      ?   :   0   :   0;

        ?   ?       1   0      ?   :   ?   :   0;  // asynchronous clear
        ?   ?       ?   1      ?   :   ?   :   1;  // asynchronous set

        ?   (?0)    ?   ?      ?   :   ?   :   -;  //ignore falling clock
        ?   (1x)    ?   ?      ?   :   ?   :   -;  //ignore falling clock
        *    ?      ?   ?      ?   :   ?   :   -;  // ignore data edges

        ?   ?     (?0)  0      ?   :   ?   :   -;  // ignore the edges on
        ?   ?       ?  (?0)    ?   :   ?   :   -;  // set and clear

        ?   ?       ?   ?      *   :   ?   :   x;
    endtable
endprimitive

primitive p_ffs (Q, D, CP, S, notifier);
    output Q;  reg    Q;
    input  D, CP, S, notifier;
    table
    //  D   CP      S     No   :   Qt  :   Qt+1

        1   (01)    0     ?    :   ?   :   1;  // clocked data
        0   (01)    0     ?    :   ?   :   0;
        1   (01)    x     ?    :   ?   :   1;  // reducing pessimism
        1    ?      x     ?    :   1   :   1;  // pessimism

        0    0      x     ?    :   1   :   1;  // pessimism
        0    x    (?x)    ?    :   1   :   1;  // pessimism
        0    1    (?x)    ?    :   1   :   1;  // pessimism

        x    0      x     ?    :   1   :   1;  // pessimism
        x    x    (?x)    ?    :   1   :   1;  // pessimism
        x    1    (?x)    ?    :   1   :   1;  // pessimism

        1   (x1)    0     ?    :   1   :   1;  // reducing pessimism
        0   (x1)    0     ?    :   0   :   0;
        1   (0x)    0     ?    :   1   :   1;
        0   (0x)    0     ?    :   0   :   0;

        ?    ?      1     ?    :   ?   :   1;  // asynchronous clear

        ?   (?0)    ?     ?    :   ?   :   -;  // ignore falling clock
        ?   (1x)    ?     ?    :   ?   :   -;  // ignore falling clock
        *    ?      ?     ?    :   ?   :   -;  // ignore the data edges

        ?   ?     (?0)    ?    :   ?   :   -;  // ignore the edges on set

        ?   ?       ?     *    :   ?   :   x;

    endtable
endprimitive

primitive ip_sr(Q,SB,RB,notifier);
output Q; reg Q;
input SB,RB, notifier;
// set-reset latch, set dominant
table
// SB    RB notifier : Qt : Qt+1
   1 1 ? : ? : -;
   1 0 ? : ? : 0;
   0 1 ? : ? : 1;
   0 0 ? : ? : 1;
   0 x ? : ? : 1;
   x 1 ? : 1 : 1;
   1 x ? : 0 : 0;
   ? ? * : ? : x;
endtable
endprimitive

primitive ip_rs(Q,SB,RB,notifier);
output Q; reg Q;
input SB,RB, notifier;
// set-reset latch, reset dominant
table
// SB    RB notifier : Qt : Qt+1
   1 1 ? : ? : -;
   1 0 ? : ? : 0;
   0 1 ? : ? : 1;
   0 0 ? : ? : 0;
   0 x ? : ? : 1;
   x 1 ? : 1 : 1;
   1 x ? : 0 : 0;
   ? ? * : ? : x;
endtable
endprimitive

primitive ip_latchr(Q,D,G,RB,notifier);
output Q; reg Q;
input D,G,RB,notifier;
table
	// D  G RB No   : Qt  : Qt+1
	   ? 0 1 ? : ? : -;  // clock disabled
	   0 1 1 ? : ? : 0;  // clock enabled
	   1 1 1 ? : ? : 1;  // transparent data
	   1 x 1 ? : 1 : 1;  // reducing pessimism
	   0 x 1 ? : 0 : 0;
	   ? n 1 ? : ? : -;
	   ? ? 0 ? : ? : 0;  // clear
	   0 1 x ? : ? : 0;  // red pessimism
	   0 ? x ? : 0 : 0;
	   ? 0 x ? : 0 : 0;
	   ? ? ? * : ? : x;
endtable
endprimitive

primitive ip_latchs(Q,D,G,SB,notifier);
output Q; reg Q;
input D,G,SB,notifier;
table
	// D  G SB No   : Qt  : Qt+1
	   ? 0 1 ? : ? : -;  // clock disabled
	   0 1 1 ? : ? : 0;  // clock enabled
	   1 1 1 ? : ? : 1;  // transparent data
	   1 x 1 ? : 1 : 1;  // reducing pessimism
	   0 x 1 ? : 0 : 0;
	   ? n 1 ? : ? : -;
	   ? ? 0 ? : ? : 1;  // set
	   0 1 x ? : ? : 0;  // red pessimism
	   0 ? x ? : 0 : 0;
	   ? 0 x ? : 0 : 0;
	   ? ? ? * : ? : x;
endtable
endprimitive

primitive ip_latchsr(Q,D,G,SB,RB,notifier);
output Q; reg Q;
input D,G,SB,RB,notifier; // set dominant
table
	// D  G SB RB No  : Qt  : Qt+1
	   ? 0 1 1 ? : ? : -;  // clock disabled
	   0 1 1 1 ? : ? : 0;  // clock enabled
	   1 1 1 1 ? : ? : 1;  // transparent data
	   ? ? 1 0 ? : ? : 0;  // clear
	   ? ? 0 ? ? : ? : 1;  // set overrides
	   1 x 1 1 ? : 1 : 1;  // reducing pessimism
	   0 x 1 1 ? : 0 : 0;
	   0 1 1 x ? : ? : 0;  // red pessimism
	   0 ? 1 x ? : 0 : 0;
	   1 1 x 1 ? : ? : 1;
	   1 ? x 1 ? : 1 : 1;

	   ? n 1 1 ? : ? : -;
	   ? ? ? ? * : ? : x;
endtable
endprimitive

primitive ip_latchrs(Q,D,G,SB,RB,notifier);
	output Q; reg Q;
	input D,G,SB,RB,notifier; // reset dominant
table
	// D  G SB RB No  : Qt  : Qt+1
	   ? 0 0 1 ? : ? : -;  // clock disabled
	   0 1 0 1 ? : ? : 0;  // clock enabled
	   1 1 0 1 ? : ? : 1;  // transparent data
	   ? ? 1 1 ? : ? : 1;  // set
	   ? ? ? 0 ? : ? : 0;  // reset overrides
	   1 x 0 1 ? : 1 : 1;  // reducing pessimism
	   0 x 0 1 ? : 0 : 0;
	   0 1 0 x ? : ? : 0;
	   0 ? 0 x ? : 0 : 0;
	   1 1 x 1 ? : ? : 1;
	   1 ? x 1 ? : 1 : 1;

	   ? n 0 1 ? : ? : -;
	   ? ? ? ? * : ? : x;
endtable
endprimitive

primitive ip_ffr  (Q, D, CP, RB, notifier);
    output Q;  reg    Q;
    input  D, CP, RB, notifier;

    table
    //  D   CP      RB No :   Qt  :   Qt+1

        1 (01) 0 ? : ? : 1;  // clocked data
        0 (01) 0 ? : ? : 0;

        0 (01) x ? : ? : 0;  // pessimism
        0 ? x ? : 0 : 0;  // pessimism

        1 0 x ? : 0 : 0;  // pessimism
        1 x (?x) ? : 0 : 0;  // pessimism
        1 1 (?x) ? : 0 : 0;  // pessimism

        x 0 x ? : 0 : 0;  // pessimism
        x x (?x) ? : 0 : 0;  // pessimism
        x 1 (?x) ? : 0 : 0;  // pessimism

        1 (x1) 0 ? : 1 : 1;  // reducing pessimism
        0 (x1) 0 ? : 0 : 0;
        1 (0x) 0 ? : 1 : 1;
        0 (0x) 0 ? : 0 : 0;

        ? ? 1 ? : ? : 0;  // asynchronous clear

        ? (?0) ? ? : ? : -;  // ignore falling clock
        ? (1x) ? ? : ? : -;  // ignore falling clock
        * ? ? ? : ? : -;  // ignore the edges on data

        ? ? (?0) ? : ? : -;  // ignore the edges on clear

		? ? ? * : ? : x;
    endtable
endprimitive


primitive ip_ffrs (Q, D, CP, RB, SB, notifier);
    output Q;  reg    Q;
    input  D, CP, RB, SB,notifier;
    table
    //  D   CP      RB   SB    No  :   Qt  :   Qt+1
        1 (01) 0 1 ? : ? : 1;  // clocked data
        1 (01) 0 x ? : ? : 1;  // pessimism

        1 ? 0 x ? : 1 : 1;  // pessimism

        0 0 0 x ? : 1 : 1;  // pessimism
        0 x 0 (?x) ? : 1 : 1;  // pessimism
        0 1 0 (?x) ? : 1 : 1;  // pessimism

        x 0 0 x ? : 1 : 1;  // pessimism
        x x 0 (?x) ? : 1 : 1;  // pessimism
        x 1 0 (?x) ? : 1 : 1;  // pessimism

        0 (01) 0 1 ? : ? : 0;  // clocked data
        0 (01) x 1 ? : ? : 0;  // pessimism

        0 ? x 1 ? : 0 : 0;  // pessimism

        1 0 x 1 ? : 0 : 0;  // pessimism
        1 x (?x) 1 ? : 0 : 0;  // pessimism
        1 1 (?x) 1 ? : 0 : 0;  // pessimism

        x 0 x 1 ? : 0 : 0;  // pessimism
        x x (?x) 1 ? : 0 : 0;  // pessimism
        x 1 (?x) 1 ? : 0 : 0;  // pessimism

        1 (x1) 0 1 ? : 1 : 1;  // reducing pessimism
        0 (x1) 0 1 ? : 0 : 0;
        1 (0x) 0 1 ? : 1 : 1;
        0 (0x) 0 1 ? : 0 : 0;

        ? ? 1 ? ? : ? : 0;  // asynchronous clear
        ? ? 0 0 ? : ? : 1;  // asynchronous set

        ? (?0) ? ? ? : ? : -;  // ignore falling clock
        ? (1x) ? ? ? : ? : -;  // ignore falling clock
        * ? ? ? ? : ? : -;  // ignore data edges

        ? ? (?0) 1 ? : ? : -;  // ignore the edges on
        ? ? ? (?1) ? : ? : -;  // set and clear

        ? ? ? ? * : ? : x;
    endtable
endprimitive


primitive ip_ffsr (Q, D, CP, RB, SB, notifier);
    output Q;  reg    Q;
    input D, CP, RB, SB,notifier;
    table
    //  D   CP      RB   SB      No  :   Qt  :   Qt+1
        1 (01) 0 1 ? : ? : 1;  // clocked data
        1 (01) 0 x ? : ? : 1;  // pessimism

        1 ? 0 x ? : 1 : 1;  // pessimism

        0 0 0 x ? : 1 : 1;  // pessimism
        0 x 0 (?x) ? : 1 : 1;  // pessimism
        0 1 0 (?x) ? : 1 : 1;  // pessimism

        x 0 0 x ? : 1 : 1;  // pessimism
        x x 0 (?x) ? : 1 : 1;  // pessimism
        x 1 0 (?x) ? : 1 : 1;  // pessimism

        0 (01) 0 1 ? : ? : 0;  // clocked data
        0 (01) x 1 ? : ? : 0;  // pessimism

        0 ? x 1 ? : 0 : 0;  // pessimism

        1 0 x 1 ? : 0 : 0;  // pessimism
        1 x (?x) 1 ? : 0 : 0;  // pessimism
        1 1 (?x) 1 ? : 0 : 0;  // pessimism

        x 0 x 1 ? : 0 : 0;  // pessimism
        x x (?x) 1 ? : 0 : 0;  // pessimism
        x 1 (?x) 1 ? : 0 : 0;  // pessimism

        1 (x1) 0 1 ? : 1 : 1;  // reducing pessimism
        0 (x1) 0 1 ? : 0 : 0;
        1 (0x) 0 1 ? : 1 : 1;
        0 (0x) 0 1 ? : 0 : 0;

        ? ? 1 1 ? : ? : 0;  // asynchronous clear
        ? ? ? 0 ? : ? : 1;  // asynchronous set

        ? (?0) ? ? ? : ? : -;  //ignore falling clock
        ? (1x) ? ? ? : ? : -;  //ignore falling clock
        * ? ? ? ? : ? : -;  // ignore data edges

        ? ? (?0) 1 ? : ? : -;  // ignore the edges on
        ? ? ? (?1) ? : ? : -;  // set and clear

        ? ? ? ? * : ? : x;
    endtable
endprimitive

primitive ip_ffs (Q, D, CP, SB, notifier);
    output Q;  reg    Q;
    input  D, CP, SB, notifier;
    table
    //  D   CP      SB     No   :   Qt  :   Qt+1

        1 (01) 0 ? : ? : 1;  // clocked data
        0 (01) 0 ? : ? : 0;
        1 (01) x ? : ? : 1;  // reducing pessimism
        1 ? x ? : 1 : 1;  // pessimism

        0 0 x ? : 1 : 1;  // pessimism
        0 x (?x) ? : 1 : 1;  // pessimism
        0 1 (?x) ? : 1 : 1;  // pessimism

        x 0 x ? : 1 : 1;  // pessimism
        x x (?x) ? : 1 : 1;  // pessimism
        x 1 (?x) ? : 1 : 1;  // pessimism

        1 (x1) 0 ? : 1 : 1;  // reducing pessimism
        0 (x1) 0 ? : 0 : 0;
        1 (0x) 0 ? : 1 : 1;
        0 (0x) 0 ? : 0 : 0;

        ? ? 1 ? : ? : 1;  // asynchronous clear

        ? (?0) ? ? : ? : -;  // ignore falling clock
        ? (1x) ? ? : ? : -;  // ignore falling clock
        * ? ? ? : ? : -;  // ignore the data edges

        ? ? (?0) ? : ? : -;  // ignore the edges on set

        ? ? ? * : ? : x;

    endtable
endprimitive
`endif

