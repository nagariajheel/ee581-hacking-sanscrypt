module mux21_ao22_mx0 
(
  com_counter_out_2_, 
  n306, 
  n353, 
  n354, 
  n387, 
  n388, 
  com_n48,
  com_n58
);
  input com_counter_out_2_;
  input n306;
  input n353;
  input n354;
  input n387;
  input n388;
  output com_n48;
  output com_n58;
  wire n355;
  wire n356;
  wire n389;
  wire n392;

  // moduleNum: x0
  // type: mux21_ao22
  // conflicting modules: 
  // number of bit inputs: 6
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 6
  // number of non-inferred gates: 0
  // ILP vars: 15/17
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:4 com_n58 com_n48 
  // group: sel; nodes: [ com_counter_out[2] n306 ]

  NAND2_X0P5A_A12TR U490 (.A(n306), .B(n353), .Y(n356));
  NAND2_X0P5A_A12TR U506 (.A(n356), .B(n355), .Y(com_n48));
  NAND2_X0P5A_A12TR U507 (.A(n354), .B(com_counter_out_2_), .Y(n355));
  NAND2_X0P5A_A12TR U576 (.A(n306), .B(n387), .Y(n392));
  NAND2_X0P5A_A12TR U612 (.A(n392), .B(n389), .Y(com_n58));
  NAND2_X0P5A_A12TR U613 (.A(n388), .B(com_counter_out_2_), .Y(n389));
endmodule
module mux21_ao22_mx1 
(
  n106, 
  n111, 
  n297, 
  n298, 
  n299, 
  n315, 
  n50, 
  n73, 
  main_DFF_0_n4,
  main_DFF_1_n4,
  main_DFF_2_n4
);
  input n106;
  input n111;
  input n297;
  input n298;
  input n299;
  input n315;
  input n50;
  input n73;
  output main_DFF_0_n4;
  output main_DFF_1_n4;
  output main_DFF_2_n4;
  wire n103;
  wire n104;
  wire n107;
  wire n108;
  wire n109;
  wire n110;

  // moduleNum: x1
  // type: mux21_ao22
  // conflicting modules: 
  // number of bit inputs: 8
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 9
  // number of non-inferred gates: 0
  // ILP vars: 28/31
  // type: INFERRED
  // marked bad? no
  // output word of size 3 : index:8 main_DFF_2_n4 main_DFF_1_n4 main_DFF_0_n4 
  // group: sel; nodes: [ n73 n106 ]

  NAND2_X0P5A_A12TR U384 (.A(n103), .B(n104), .Y(main_DFF_2_n4));
  NAND2_X0P5A_A12TR U385 (.A(n106), .B(n297), .Y(n103));
  NAND2_X0P5A_A12TR U386 (.A(n50), .B(n73), .Y(n104));
  NAND2_X0P5A_A12TR U391 (.A(n109), .B(n110), .Y(main_DFF_0_n4));
  NAND2_X0P5A_A12TR U392 (.A(n106), .B(n298), .Y(n109));
  NAND2_X0P5A_A12TR U393 (.A(n111), .B(n73), .Y(n110));
  NAND2_X0P5A_A12TR U395 (.A(n107), .B(n108), .Y(main_DFF_1_n4));
  NAND2_X0P5A_A12TR U396 (.A(n106), .B(n299), .Y(n108));
  NAND2_X0P5A_A12TR U397 (.A(n73), .B(n315), .Y(n107));
endmodule
module mux31_ao222_mx2 
(
  n102, 
  n227, 
  n284, 
  n292, 
  n314, 
  n334, 
  n41, 
  n42, 
  n27,
  n80
);
  input n102;
  input n227;
  input n284;
  input n292;
  input n314;
  input n334;
  input n41;
  input n42;
  output n27;
  output n80;
  wire n101;
  wire n17;
  wire n233;
  wire n234;
  wire n313;
  wire n40;

  // moduleNum: x2
  // type: mux31_ao222
  // conflicting modules: 
  // number of bit inputs: 8
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 8
  // number of non-inferred gates: 0
  // ILP vars: 44/46
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:-1 n27 n80 
  // group: sel; nodes: [ n292 n284 n227 ]

  INV_X0P5B_A12TR U281 (.A(n17), .Y(n313));
  NAND2_X0P5A_A12TR U289 (.A(n233), .B(n234), .Y(n17));
  NAND2_X0P5A_A12TR U290 (.A(n227), .B(n314), .Y(n234));
  NAND2_X0P5A_A12TR U291 (.A(n284), .B(n292), .Y(n233));
  NAND2_X0P5A_A12TR U328 (.A(n313), .B(n101), .Y(n80));
  NAND2_X0P5A_A12TR U329 (.A(n102), .B(n334), .Y(n101));
  NAND2_X0P5A_A12TR U446 (.A(n313), .B(n40), .Y(n27));
  NAND2_X0P5A_A12TR U447 (.A(n41), .B(n42), .Y(n40));
endmodule
module mux21i_aoi221_mx3 
(
  n123, 
  n147, 
  n158, 
  n170, 
  n182, 
  n185, 
  n320, 
  n331, 
  n156,
  n181
);
  input n123;
  input n147;
  input n158;
  input n170;
  input n182;
  input n185;
  input n320;
  input n331;
  output n156;
  output n181;
  wire n157;
  wire n168;
  wire n169;
  wire n183;
  wire n184;

  // moduleNum: x3
  // type: mux21i_aoi221
  // conflicting modules: 
  // number of bit inputs: 8
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 7
  // number of non-inferred gates: 0
  // ILP vars: 133/135
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:18 n156 n181 
  // group: sel; nodes: [ n185 n147 ]

  NAND2_X0P5A_A12TR U318 (.A(n185), .B(n147), .Y(n169));
  NOR2_X0P5A_A12TR U400 (.A(n157), .B(n158), .Y(n156));
  NAND2_X0P5A_A12TR U511 (.A(n168), .B(n169), .Y(n157));
  NAND2_X0P5A_A12TR U512 (.A(n170), .B(n123), .Y(n168));
  NOR2_X0P5A_A12TR U545 (.A(n182), .B(n183), .Y(n181));
  NAND2_X0P5A_A12TR U546 (.A(n184), .B(n169), .Y(n183));
  NAND2_X0P5A_A12TR U547 (.A(n320), .B(n331), .Y(n184));
endmodule
module mux21i_aoi221_mx4 
(
  n148, 
  n154, 
  n182, 
  n200, 
  n219, 
  n320, 
  n326, 
  n330, 
  n189,
  n198
);
  input n148;
  input n154;
  input n182;
  input n200;
  input n219;
  input n320;
  input n326;
  input n330;
  output n189;
  output n198;
  wire n140;
  wire n194;
  wire n195;
  wire n199;
  wire n218;

  // moduleNum: x4
  // type: mux21i_aoi221
  // conflicting modules: 
  // number of bit inputs: 8
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 7
  // number of non-inferred gates: 0
  // ILP vars: 148/151
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:123 n198 n189 
  // group: sel; nodes: [ n330 n219 ]

  NAND2_X0P5A_A12TR U284 (.A(n320), .B(n148), .Y(n218));
  NAND2_X0P5A_A12TR U299 (.A(n194), .B(n195), .Y(n140));
  NAND2_X0P5A_A12TR U300 (.A(n154), .B(n326), .Y(n195));
  NAND2_X0P5A_A12TR U509 (.A(n219), .B(n330), .Y(n194));
  NOR2_X0P5A_A12TR U543 (.A(n140), .B(n182), .Y(n189));
  NOR2_X0P5A_A12TR U549 (.A(n199), .B(n200), .Y(n198));
  NAND2_X0P5A_A12TR U550 (.A(n218), .B(n194), .Y(n199));
endmodule
module reg_mx5 
(
  clk, 
  n46, 
  n47, 
  n51, 
  n55, 
  n66, 
  n297,
  n298,
  n299
);
  input clk;
  input n46;
  input n47;
  input n51;
  input n55;
  input n66;
  output n297;
  output n298;
  output n299;
  wire n280;
  wire n281;
  wire n282;
  wire n44;
  wire n45;
  wire n53;
  wire n54;
  wire n64;
  wire n65;

  // moduleNum: x5
  // type: reg
  // conflicting modules: 
  // number of bit inputs: 6
  // number of bit outputs: 3
  // number of word inputs: 0
  // number of word outputs: 0
  // number of internal gates: 15
  // number of non-inferred gates: 0
  // ILP vars: 170/173
  // type: INFERRED
  // marked bad? no
  // group: aux; nodes: [ clk ]
  // group: sel; nodes: [ n51 n46 ]

  DFFQ_X1M_A12TR main_DFF_1_restored_bit_reg (.CK(clk), .Q(n299), .D(n282));
  DFFQ_X1M_A12TR main_DFF_0_restored_bit_reg (.CK(clk), .Q(n298), .D(n281));
  DFFQ_X1M_A12TR main_DFF_2_restored_bit_reg (.CK(clk), .Q(n297), .D(n280));
  NAND2_X0P5A_A12TR U357 (.A(n53), .B(n54), .Y(n281));
  NAND2_X0P5A_A12TR U358 (.A(n51), .B(n298), .Y(n53));
  NAND2_X0P5A_A12TR U359 (.A(n46), .B(n55), .Y(n54));
  NAND2_X0P5A_A12TR U361 (.A(n64), .B(n65), .Y(n282));
  NAND2_X0P5A_A12TR U362 (.A(n51), .B(n299), .Y(n64));
  NAND2_X0P5A_A12TR U363 (.A(n46), .B(n66), .Y(n65));
  NAND2_X0P5A_A12TR U380 (.A(n44), .B(n45), .Y(n280));
  NAND2_X0P5A_A12TR U381 (.A(n51), .B(n297), .Y(n44));
  NAND2_X0P5A_A12TR U382 (.A(n46), .B(n47), .Y(n45));
endmodule
module reg_mx6 
(
  clk, 
  com_n61, 
  com_n62, 
  n79, 
  n80, 
  com_buffer_lfsr_5_,
  com_buffer_lfsr_6_
);
  input clk;
  input com_n61;
  input com_n62;
  input n79;
  input n80;
  output com_buffer_lfsr_5_;
  output com_buffer_lfsr_6_;
  wire n283;
  wire n286;
  wire n77;
  wire n78;
  wire n97;
  wire n98;

  // moduleNum: x6
  // type: reg
  // conflicting modules: 
  // number of bit inputs: 5
  // number of bit outputs: 2
  // number of word inputs: 0
  // number of word outputs: 0
  // number of internal gates: 10
  // number of non-inferred gates: 0
  // ILP vars: 174/176
  // type: INFERRED
  // marked bad? no
  // group: aux; nodes: [ clk ]
  // group: sel; nodes: [ n80 n79 ]

  DFFQ_X1M_A12TR com_buffer_lfsr_reg_6_ (.CK(clk), .Q(com_buffer_lfsr_6_), .D(n286));
  DFFQ_X1M_A12TR com_buffer_lfsr_reg_5_ (.CK(clk), .Q(com_buffer_lfsr_5_), .D(n283));
  NAND2_X0P5A_A12TR U533 (.A(n97), .B(n98), .Y(n286));
  NAND2_X0P5A_A12TR U534 (.A(n79), .B(com_n62), .Y(n98));
  NAND2_X0P5A_A12TR U535 (.A(n80), .B(com_buffer_lfsr_6_), .Y(n97));
  NAND2_X0P5A_A12TR U555 (.A(n77), .B(n78), .Y(n283));
  NAND2_X0P5A_A12TR U556 (.A(n79), .B(com_n61), .Y(n78));
  NAND2_X0P5A_A12TR U557 (.A(n80), .B(com_buffer_lfsr_5_), .Y(n77));
endmodule
module decoder24_mx7 
(
  com_n52, 
  n301, 
  n382,
  n385
);
  input com_n52;
  input n301;
  output n382;
  output n385;

  // moduleNum: x7
  // type: decoder24
  // conflicting modules: 
  // number of bit inputs: 2
  // number of bit outputs: 2
  // number of word inputs: 0
  // number of word outputs: 0
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 198/198
  // type: INFERRED
  // marked bad? no
  // group: sel; nodes: [ n301 com_n52 ]

  OR2_X0P5M_A12TR U371 (.A(n301), .B(com_n52), .Y(n382));
  NAND2_X0P5A_A12TR U461 (.A(com_n52), .B(n301), .Y(n385));
endmodule
module decoder24_mx8 
(
  n292, 
  n296, 
  n100,
  n19,
  n227,
  n333,
  n41
);
  input n292;
  input n296;
  output n100;
  output n19;
  output n227;
  output n333;
  output n41;
  wire n274;
  wire n275;

  // moduleNum: x8
  // type: decoder24
  // conflicting modules: 
  // number of bit inputs: 2
  // number of bit outputs: 5
  // number of word inputs: 0
  // number of word outputs: 0
  // number of internal gates: 7
  // number of non-inferred gates: 0
  // ILP vars: 224/230
  // type: INFERRED
  // marked bad? no
  // group: sel; nodes: [ n292 n296 ]

  INV_X0P5B_A12TR U281 (.A(n292), .Y(n274));
  INV_X0P5B_A12TR U281 (.A(n296), .Y(n275));
  NOR2_X0P5A_A12TR U421 (.A(n292), .B(n333), .Y(n19));
  INV_X0P5B_A12TR U424 (.A(n41), .Y(n333));
  NAND2_X0P5A_A12TR U575 (.A(n274), .B(n296), .Y(n100));
  NAND2_X0P5A_A12TR U583 (.A(n274), .B(n275), .Y(n41));
  NOR2_X0P5A_A12TR U584 (.A(n296), .B(n274), .Y(n227));
endmodule
module decoder24_mx9 
(
  n123, 
  n137, 
  n127,
  n191
);
  input n123;
  input n137;
  output n127;
  output n191;
  wire n329;

  // moduleNum: x9
  // type: decoder24
  // conflicting modules: 
  // number of bit inputs: 2
  // number of bit outputs: 2
  // number of word inputs: 0
  // number of word outputs: 0
  // number of internal gates: 3
  // number of non-inferred gates: 0
  // ILP vars: 256/258
  // type: INFERRED
  // marked bad? no
  // group: sel; nodes: [ n123 n137 ]

  INV_X0P5B_A12TR U286 (.A(n123), .Y(n329));
  NAND2_X0P5A_A12TR U298 (.A(n123), .B(n137), .Y(n191));
  NOR2_X0P5A_A12TR U405 (.A(n137), .B(n329), .Y(n127));
endmodule
module decoder24_mx10 
(
  n100, 
  n96, 
  n16,
  n317,
  n94
);
  input n100;
  input n96;
  output n16;
  output n317;
  output n94;
  wire n334;

  // moduleNum: x10
  // type: decoder24
  // conflicting modules: 
  // number of bit inputs: 2
  // number of bit outputs: 3
  // number of word inputs: 0
  // number of word outputs: 0
  // number of internal gates: 4
  // number of non-inferred gates: 0
  // ILP vars: 259/262
  // type: INFERRED
  // marked bad? no
  // group: sel; nodes: [ n96 n100 ]

  NOR2_X0P5A_A12TR U288 (.A(n100), .B(n96), .Y(n16));
  NAND2_X0P5A_A12TR U296 (.A(n334), .B(n96), .Y(n94));
  INV_X0P5B_A12TR U427 (.A(n100), .Y(n334));
  INV_X0P5B_A12TR U518 (.A(n16), .Y(n317));
endmodule
module decoder38_mx11 
(
  n252, 
  n289, 
  n294, 
  n119,
  n123,
  n133,
  n134,
  n147,
  n150,
  n176,
  n188,
  n326,
  n327,
  n328,
  n330,
  n331
);
  input n252;
  input n289;
  input n294;
  output n119;
  output n123;
  output n133;
  output n134;
  output n147;
  output n150;
  output n176;
  output n188;
  output n326;
  output n327;
  output n328;
  output n330;
  output n331;
  wire n120;
  wire n122;
  wire n148;
  wire n180;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire n212;
  wire n220;
  wire n222;
  wire n223;
  wire n253;
  wire n254;
  wire n325;

  // moduleNum: x11
  // type: decoder38
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 13
  // number of word inputs: 0
  // number of word outputs: 0
  // number of internal gates: 28
  // number of non-inferred gates: 0
  // ILP vars: 287/302
  // type: INFERRED
  // marked bad? no
  // group: sel; nodes: [ n294 n252 n289 ]

  INV_X0P5B_A12TR U281 (.A(n294), .Y(n253));
  INV_X0P5B_A12TR U281 (.A(n289), .Y(n254));
  INV_X0P5B_A12TR U287 (.A(n122), .Y(n325));
  NAND2_X0P5A_A12TR U355 (.A(n120), .B(n325), .Y(n119));
  NOR2_X0P5A_A12TR U356 (.A(n123), .B(n328), .Y(n120));
  NOR2_X0P5A_A12TR U419 (.A(n289), .B(n180), .Y(n123));
  NAND2_X0P5A_A12TR U420 (.A(n133), .B(n188), .Y(n148));
  INV_X0P5B_A12TR U422 (.A(n150), .Y(n326));
  INV_X0P5B_A12TR U423 (.A(n134), .Y(n330));
  INV_X0P5B_A12TR U426 (.A(n176), .Y(n328));
  NAND2_X0P5A_A12TR U429 (.A(n205), .B(n206), .Y(n122));
  NOR2_X0P5A_A12TR U430 (.A(n330), .B(n147), .Y(n206));
  NOR2_X0P5A_A12TR U431 (.A(n326), .B(n148), .Y(n205));
  INV_X0P5B_A12TR U432 (.A(n188), .Y(n331));
  INV_X0P5B_A12TR U434 (.A(n133), .Y(n327));
  NAND2_X0P5A_A12TR U579 (.A(n208), .B(n252), .Y(n150));
  NOR2_X0P5A_A12TR U580 (.A(n254), .B(n294), .Y(n208));
  NAND2_X0P5A_A12TR U581 (.A(n223), .B(n252), .Y(n133));
  NOR2_X0P5A_A12TR U582 (.A(n289), .B(n294), .Y(n223));
  NAND2_X0P5A_A12TR U587 (.A(n212), .B(n253), .Y(n176));
  NOR2_X0P5A_A12TR U588 (.A(n252), .B(n254), .Y(n212));
  NAND2_X0P5A_A12TR U592 (.A(n222), .B(n252), .Y(n188));
  NOR2_X0P5A_A12TR U593 (.A(n253), .B(n289), .Y(n222));
  NAND2_X0P5A_A12TR U594 (.A(n220), .B(n253), .Y(n134));
  NOR2_X0P5A_A12TR U595 (.A(n252), .B(n289), .Y(n220));
  OR2_X0P5M_A12TR U596 (.A(n253), .B(n252), .Y(n180));
  AND2_X0P5M_A12TR U597 (.A(n207), .B(n252), .Y(n147));
  NOR2_X0P5A_A12TR U598 (.A(n253), .B(n254), .Y(n207));
endmodule
module decoder416_mx12 
(
  G0, 
  G1, 
  G2, 
  G3, 
  n154,
  n167,
  n185,
  n192,
  n213,
  n219,
  n320
);
  input G0;
  input G1;
  input G2;
  input G3;
  output n154;
  output n167;
  output n185;
  output n192;
  output n213;
  output n219;
  output n320;
  wire n164;
  wire n171;
  wire n193;
  wire n196;
  wire n197;
  wire n214;
  wire n215;
  wire n221;
  wire n224;
  wire n316;
  wire n321;
  wire n322;
  wire n323;

  // moduleNum: x12
  // type: decoder416
  // conflicting modules: 
  // number of bit inputs: 4
  // number of bit outputs: 7
  // number of word inputs: 0
  // number of word outputs: 0
  // number of internal gates: 20
  // number of non-inferred gates: 0
  // ILP vars: 379/387
  // type: INFERRED
  // marked bad? no
  // group: sel; nodes: [ G0 G1 G2 G3 ]

  NOR2_X0P5A_A12TR U315 (.A(n321), .B(n322), .Y(n196));
  NOR2_X0P5A_A12TR U319 (.A(n322), .B(n171), .Y(n185));
  INV_X0P5B_A12TR U350 (.A(n167), .Y(n320));
  INV_X0P5B_A12TR U435 (.A(G0), .Y(n316));
  INV_X0P5B_A12TR U438 (.A(G1), .Y(n321));
  NAND2_X0P5A_A12TR U455 (.A(n193), .B(n316), .Y(n171));
  NOR2_X0P5A_A12TR U456 (.A(G3), .B(G1), .Y(n193));
  INV_X0P5B_A12TR U474 (.A(G2), .Y(n322));
  INV_X0P5B_A12TR U475 (.A(G3), .Y(n323));
  OR2_X0P5M_A12TR U477 (.A(n171), .B(G2), .Y(n192));
  NAND2_X0P5A_A12TR U481 (.A(n221), .B(G1), .Y(n164));
  NOR2_X0P5A_A12TR U482 (.A(G3), .B(G2), .Y(n221));
  NOR2_X0P5A_A12TR U510 (.A(G0), .B(n164), .Y(n219));
  NAND2_X0P5A_A12TR U514 (.A(n196), .B(n224), .Y(n167));
  NOR2_X0P5A_A12TR U515 (.A(G0), .B(n323), .Y(n224));
  NAND2_X0P5A_A12TR U520 (.A(n214), .B(n215), .Y(n213));
  NOR2_X0P5A_A12TR U521 (.A(G2), .B(G0), .Y(n215));
  NOR2_X0P5A_A12TR U522 (.A(n323), .B(n321), .Y(n214));
  AND2_X0P5M_A12TR U531 (.A(n196), .B(n197), .Y(n154));
  NOR2_X0P5A_A12TR U532 (.A(G3), .B(G0), .Y(n197));
endmodule
module eqCmp2_mx13 
(
  com_buffer_lfsr_4_, 
  com_buffer_lfsr_5_, 
  com_counter_out_4_, 
  com_counter_out_5_, 
  n350
);
  input com_buffer_lfsr_4_;
  input com_buffer_lfsr_5_;
  input com_counter_out_4_;
  input com_counter_out_5_;
  output n350;
  wire n347;
  wire n348;

  // moduleNum: x13
  // type: eqCmp2
  // conflicting modules: 
  // number of bit inputs: 4
  // number of bit outputs: 1
  // number of word inputs: 0
  // number of word outputs: 0
  // number of internal gates: 3
  // number of non-inferred gates: 0
  // ILP vars: 462/462
  // type: INFERRED
  // marked bad? no

  NOR2_X0P5A_A12TR U604 (.A(n348), .B(n347), .Y(n350));
  XOR2_X0P5M_A12TR U605 (.A(com_buffer_lfsr_4_), .B(com_counter_out_4_), .Y(n348));
  XOR2_X0P5M_A12TR U606 (.A(com_buffer_lfsr_5_), .B(com_counter_out_5_), .Y(n347));
endmodule
module and2gate_mx14 
(
  G0, 
  n59, 
  n93, 
  n319,
  n58
);
  input G0;
  input n59;
  input n93;
  output n319;
  output n58;
  wire n132;

  // moduleNum: x14
  // type: and2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 3
  // number of non-inferred gates: 0
  // ILP vars: 464/468
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:124 n319 n58 
  // group: sel; nodes: [ G0 ]

  INV_X0P5B_A12TR U302 (.A(n132), .Y(n319));
  NAND2_X0P5A_A12TR U451 (.A(G0), .B(n93), .Y(n132));
  AND2_X0P5M_A12TR U505 (.A(n59), .B(G0), .Y(n58));
endmodule
module and2gate_mx15 
(
  com_count_n5, 
  com_count_n7, 
  com_count_n9, 
  n251, 
  com_count_n12,
  com_count_n14,
  com_count_n16
);
  input com_count_n5;
  input com_count_n7;
  input com_count_n9;
  input n251;
  output com_count_n12;
  output com_count_n14;
  output com_count_n16;

  // moduleNum: x15
  // type: and2gate
  // conflicting modules: 
  // number of bit inputs: 4
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 3
  // number of non-inferred gates: 0
  // ILP vars: 483/487
  // type: INFERRED
  // marked bad? no
  // output word of size 3 : index:125 com_count_n12 com_count_n14 com_count_n16 
  // group: sel; nodes: [ n251 ]

  AND2_X0P5M_A12TR U619 (.A(n251), .B(com_count_n9), .Y(com_count_n16));
  AND2_X0P5M_A12TR U622 (.A(com_count_n5), .B(n251), .Y(com_count_n12));
  AND2_X0P5M_A12TR U625 (.A(com_count_n7), .B(n251), .Y(com_count_n14));
endmodule
module and2gate_mx16 
(
  com_buffer_lfsr_0_, 
  n16, 
  n290, 
  n340,
  n84
);
  input com_buffer_lfsr_0_;
  input n16;
  input n290;
  output n340;
  output n84;

  // moduleNum: x16
  // type: and2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 491/494
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:126 n340 n84 
  // group: sel; nodes: [ n290 ]

  AND2_X0P5M_A12TR U344 (.A(n290), .B(n16), .Y(n84));
  AND2_X0P5M_A12TR U516 (.A(com_buffer_lfsr_0_), .B(n290), .Y(n340));
endmodule
module and2gate_mx17 
(
  com_counter_out_0_, 
  com_counter_out_1_, 
  n354,
  n388
);
  input com_counter_out_0_;
  input com_counter_out_1_;
  output n354;
  output n388;

  // moduleNum: x17
  // type: and2gate
  // conflicting modules: 
  // number of bit inputs: 2
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 495/497
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:-1 n388 n354 
  // group: sel; nodes: [ com_counter_out[1] ]

  AND2_X0P5M_A12TR U508 (.A(com_counter_out_0_), .B(com_counter_out_1_), .Y(n354));
  AND2_X0P5M_A12TR U614 (.A(com_counter_out_0_), .B(com_counter_out_1_), .Y(n388));
endmodule
module and2gate_mx18 
(
  com_n57, 
  com_n58, 
  com_n59, 
  com_n60, 
  n16, 
  n15,
  n26,
  n33,
  n38
);
  input com_n57;
  input com_n58;
  input com_n59;
  input com_n60;
  input n16;
  output n15;
  output n26;
  output n33;
  output n38;

  // moduleNum: x18
  // type: and2gate
  // conflicting modules: 
  // number of bit inputs: 5
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 4
  // number of non-inferred gates: 0
  // ILP vars: 498/503
  // type: INFERRED
  // marked bad? no
  // output word of size 4 : index:127 n33 n38 n15 n26 
  // group: sel; nodes: [ n16 ]

  AND2_X0P5M_A12TR U340 (.A(com_n58), .B(n16), .Y(n15));
  AND2_X0P5M_A12TR U409 (.A(com_n57), .B(n16), .Y(n26));
  AND2_X0P5M_A12TR U413 (.A(com_n59), .B(n16), .Y(n33));
  AND2_X0P5M_A12TR U417 (.A(com_n60), .B(n16), .Y(n38));
endmodule
module and2gate_mx19 
(
  G0, 
  n117, 
  n332, 
  n106,
  n318
);
  input G0;
  input n117;
  input n332;
  output n106;
  output n318;
  wire n153;

  // moduleNum: x19
  // type: and2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 3
  // number of non-inferred gates: 0
  // ILP vars: 507/509
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:32 n106 n318 
  // group: sel; nodes: [ n332 ]

  NAND2_X0P5A_A12TR U479 (.A(n332), .B(G0), .Y(n153));
  INV_X0P5B_A12TR U500 (.A(n153), .Y(n318));
  AND2_X0P5M_A12TR U523 (.A(n117), .B(n332), .Y(n106));
endmodule
module and2gate_mx20 
(
  n112, 
  n178, 
  n314, 
  n91, 
  n96, 
  n102,
  n311,
  n312,
  n73
);
  input n112;
  input n178;
  input n314;
  input n91;
  input n96;
  output n102;
  output n311;
  output n312;
  output n73;
  wire n139;
  wire n29;

  // moduleNum: x20
  // type: and2gate
  // conflicting modules: 
  // number of bit inputs: 5
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 6
  // number of non-inferred gates: 0
  // ILP vars: 510/514
  // type: INFERRED
  // marked bad? no
  // output word of size 4 : index:33 n73 n311 n312 n102 
  // group: sel; nodes: [ n314 ]

  NAND2_X0P5A_A12TR U292 (.A(n314), .B(n91), .Y(n29));
  AND2_X0P5M_A12TR U330 (.A(n314), .B(n96), .Y(n102));
  AND2_X0P5M_A12TR U331 (.A(n314), .B(n112), .Y(n73));
  INV_X0P5B_A12TR U388 (.A(n139), .Y(n312));
  NAND2_X0P5A_A12TR U452 (.A(n314), .B(n178), .Y(n139));
  INV_X0P5B_A12TR U464 (.A(n29), .Y(n311));
endmodule
module or2gate_mx21 
(
  n255, 
  n257, 
  n259, 
  n261, 
  reset, 
  n243,
  n245,
  n247,
  n249
);
  input n255;
  input n257;
  input n259;
  input n261;
  input reset;
  output n243;
  output n245;
  output n247;
  output n249;

  // moduleNum: x21
  // type: or2gate
  // conflicting modules: 
  // number of bit inputs: 5
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 4
  // number of non-inferred gates: 0
  // ILP vars: 515/519
  // type: INFERRED
  // marked bad? no
  // output word of size 4 : index:34 n245 n247 n249 n243 
  // group: sel; nodes: [ reset ]

  OR2_X0P5M_A12TR U565 (.A(n257), .B(reset), .Y(n249));
  OR2_X0P5M_A12TR U568 (.A(n255), .B(reset), .Y(n247));
  OR2_X0P5M_A12TR U571 (.A(n259), .B(reset), .Y(n245));
  OR2_X0P5M_A12TR U574 (.A(n261), .B(reset), .Y(n243));
endmodule
module or2gate_mx22 
(
  n19, 
  n255, 
  n270, 
  n18,
  n85
);
  input n19;
  input n255;
  input n270;
  output n18;
  output n85;

  // moduleNum: x22
  // type: or2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 523/525
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:36 n85 n18 
  // group: sel; nodes: [ n19 ]

  OR2_X0P5M_A12TR U484 (.A(n19), .B(n255), .Y(n18));
  OR2_X0P5M_A12TR U486 (.A(n19), .B(n270), .Y(n85));
endmodule
module nand2gate_mx23 
(
  lfsr_seed_0_, 
  lfsr_seed_1_, 
  lfsr_seed_2_, 
  lfsr_seed_3_, 
  lfsr_seed_4_, 
  reset, 
  n240,
  n244,
  n246,
  n248,
  n250
);
  input lfsr_seed_0_;
  input lfsr_seed_1_;
  input lfsr_seed_2_;
  input lfsr_seed_3_;
  input lfsr_seed_4_;
  input reset;
  output n240;
  output n244;
  output n246;
  output n248;
  output n250;

  // moduleNum: x23
  // type: nand2gate
  // conflicting modules: 
  // number of bit inputs: 6
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 5
  // number of non-inferred gates: 0
  // ILP vars: 526/526
  // type: INFERRED
  // marked bad? no
  // output word of size 5 : index:37 n244 n246 n248 n250 n240 
  // group: sel; nodes: [ reset ]

  NAND2_X0P5A_A12TR U528 (.A(reset), .B(lfsr_seed_4_), .Y(n240));
  NAND2_X0P5A_A12TR U564 (.A(lfsr_seed_0_), .B(reset), .Y(n250));
  NAND2_X0P5A_A12TR U567 (.A(lfsr_seed_1_), .B(reset), .Y(n248));
  NAND2_X0P5A_A12TR U570 (.A(lfsr_seed_2_), .B(reset), .Y(n246));
  NAND2_X0P5A_A12TR U573 (.A(lfsr_seed_3_), .B(reset), .Y(n244));
endmodule
module nand2gate_mx24 
(
  com_counter_out_5_, 
  com_counter_out_6_, 
  n357, 
  n358,
  n361
);
  input com_counter_out_5_;
  input com_counter_out_6_;
  input n357;
  output n358;
  output n361;

  // moduleNum: x24
  // type: nand2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 531/534
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:128 n361 n358 
  // group: sel; nodes: [ com_counter_out[5] ]

  NAND2_X0P5A_A12TR U450 (.A(n357), .B(com_counter_out_5_), .Y(n358));
  NAND2_X0P5A_A12TR U616 (.A(com_counter_out_6_), .B(com_counter_out_5_), .Y(n361));
endmodule
module nand2gate_mx25 
(
  n288, 
  n293, 
  n332, 
  n112,
  n67
);
  input n288;
  input n293;
  input n332;
  output n112;
  output n67;

  // moduleNum: x25
  // type: nand2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 538/540
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:41 n67 n112 
  // group: sel; nodes: [ n293 ]

  NAND2_X0P5A_A12TR U332 (.A(n332), .B(n293), .Y(n112));
  NAND2_X0P5A_A12TR U433 (.A(n293), .B(n288), .Y(n67));
endmodule
module nand2gate_mx26 
(
  n268, 
  n315, 
  n50, 
  n58, 
  n49,
  n57,
  n68
);
  input n268;
  input n315;
  input n50;
  input n58;
  output n49;
  output n57;
  output n68;

  // moduleNum: x26
  // type: nand2gate
  // conflicting modules: 
  // number of bit inputs: 4
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 3
  // number of non-inferred gates: 0
  // ILP vars: 541/544
  // type: INFERRED
  // marked bad? no
  // output word of size 3 : index:42 n49 n57 n68 
  // group: sel; nodes: [ n268 ]

  NAND2_X0P5A_A12TR U473 (.A(n268), .B(n315), .Y(n68));
  NAND2_X0P5A_A12TR U503 (.A(n50), .B(n268), .Y(n49));
  NAND2_X0P5A_A12TR U504 (.A(n58), .B(n268), .Y(n57));
endmodule
module nand2gate_mx27 
(
  com_counter_out_4_, 
  n392, 
  n399, 
  n394,
  n400
);
  input com_counter_out_4_;
  input n392;
  input n399;
  output n394;
  output n400;

  // moduleNum: x27
  // type: nand2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 564/566
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:49 n394 n400 
  // group: sel; nodes: [ com_counter_out[4] ]

  NAND2_X0P5A_A12TR U585 (.A(n399), .B(com_counter_out_4_), .Y(n400));
  NAND2_X0P5A_A12TR U601 (.A(com_counter_out_4_), .B(n392), .Y(n394));
endmodule
module nand2gate_mx28 
(
  com_counter_out_3_, 
  com_counter_out_5_, 
  n356, 
  n392, 
  n398, 
  n359,
  n390,
  n393,
  n397
);
  input com_counter_out_3_;
  input com_counter_out_5_;
  input n356;
  input n392;
  input n398;
  output n359;
  output n390;
  output n393;
  output n397;

  // moduleNum: x28
  // type: nand2gate
  // conflicting modules: 
  // number of bit inputs: 5
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 4
  // number of non-inferred gates: 0
  // ILP vars: 573/577
  // type: INFERRED
  // marked bad? no
  // output word of size 4 : index:52 n393 n359 n390 n397 
  // group: sel; nodes: [ com_counter_out[3] ]

  NAND2_X0P5A_A12TR U458 (.A(com_counter_out_3_), .B(n356), .Y(n359));
  NAND2_X0P5A_A12TR U590 (.A(com_counter_out_3_), .B(n392), .Y(n390));
  NAND2_X0P5A_A12TR U600 (.A(com_counter_out_3_), .B(com_counter_out_5_), .Y(n393));
  NAND2_X0P5A_A12TR U627 (.A(com_counter_out_3_), .B(n398), .Y(n397));
endmodule
module nand2gate_mx29 
(
  com_counter_out_0_, 
  com_counter_out_1_, 
  n305,
  n353,
  n387,
  n396
);
  input com_counter_out_0_;
  input com_counter_out_1_;
  output n305;
  output n353;
  output n387;
  output n396;

  // moduleNum: x29
  // type: nand2gate
  // conflicting modules: 
  // number of bit inputs: 2
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 4
  // number of non-inferred gates: 0
  // ILP vars: 583/587
  // type: INFERRED
  // marked bad? no
  // output word of size 4 : index:-1 n396 n387 n305 n353 
  // group: sel; nodes: [ com_counter_out[1] ]

  NAND2_X0P5A_A12TR U491 (.A(com_counter_out_1_), .B(com_counter_out_0_), .Y(n353));
  NAND2_X0P5A_A12TR U577 (.A(com_counter_out_1_), .B(com_counter_out_0_), .Y(n387));
  NAND2_X0P5A_A12TR U611 (.A(com_counter_out_0_), .B(com_counter_out_1_), .Y(n305));
  NAND2_X0P5A_A12TR U624 (.A(com_counter_out_1_), .B(com_counter_out_0_), .Y(n396));
endmodule
module nand2gate_mx30 
(
  n122, 
  n123, 
  n319, 
  n201,
  n204
);
  input n122;
  input n123;
  input n319;
  output n201;
  output n204;

  // moduleNum: x30
  // type: nand2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 599/601
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:57 n201 n204 
  // group: sel; nodes: [ n319 ]

  NAND2_X0P5A_A12TR U285 (.A(n319), .B(n123), .Y(n201));
  NAND2_X0P5A_A12TR U375 (.A(n319), .B(n122), .Y(n204));
endmodule
module nand2gate_mx31 
(
  n136, 
  n327, 
  n331, 
  n129,
  n159
);
  input n136;
  input n327;
  input n331;
  output n129;
  output n159;

  // moduleNum: x31
  // type: nand2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 602/604
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:58 n159 n129 
  // group: sel; nodes: [ n136 ]

  NAND2_X0P5A_A12TR U322 (.A(n327), .B(n136), .Y(n159));
  NAND2_X0P5A_A12TR U326 (.A(n331), .B(n136), .Y(n129));
endmodule
module nand2gate_mx32 
(
  n289, 
  n324, 
  n332, 
  n217,
  n74
);
  input n289;
  input n324;
  input n332;
  output n217;
  output n74;

  // moduleNum: x32
  // type: nand2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 615/617
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:61 n74 n217 
  // group: sel; nodes: [ n324 ]

  NAND2_X0P5A_A12TR U283 (.A(n332), .B(n324), .Y(n74));
  NAND2_X0P5A_A12TR U304 (.A(n324), .B(n289), .Y(n217));
endmodule
module nand2gate_mx33 
(
  n190, 
  n191, 
  n201, 
  n182,
  n200
);
  input n190;
  input n191;
  input n201;
  output n182;
  output n200;

  // moduleNum: x33
  // type: nand2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 621/621
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:63 n182 n200 
  // group: sel; nodes: [ n190 ]

  NAND2_X0P5A_A12TR U297 (.A(n190), .B(n191), .Y(n182));
  NAND2_X0P5A_A12TR U551 (.A(n190), .B(n201), .Y(n200));
endmodule
module nand2gate_mx34 
(
  n164, 
  n167, 
  n288, 
  n316, 
  n114,
  n163,
  n166
);
  input n164;
  input n167;
  input n288;
  input n316;
  output n114;
  output n163;
  output n166;

  // moduleNum: x34
  // type: nand2gate
  // conflicting modules: 
  // number of bit inputs: 4
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 3
  // number of non-inferred gates: 0
  // ILP vars: 642/646
  // type: INFERRED
  // marked bad? no
  // output word of size 3 : index:129 n114 n163 n166 
  // group: sel; nodes: [ n316 ]

  NAND2_X0P5A_A12TR U317 (.A(n167), .B(n316), .Y(n166));
  NAND2_X0P5A_A12TR U352 (.A(n164), .B(n316), .Y(n163));
  NAND2_X0P5A_A12TR U442 (.A(n288), .B(n316), .Y(n114));
endmodule
module nand2gate_mx35 
(
  n131, 
  n132, 
  n192, 
  n326, 
  n130,
  n137,
  n173
);
  input n131;
  input n132;
  input n192;
  input n326;
  output n130;
  output n137;
  output n173;

  // moduleNum: x35
  // type: nand2gate
  // conflicting modules: 
  // number of bit inputs: 4
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 3
  // number of non-inferred gates: 0
  // ILP vars: 653/656
  // type: INFERRED
  // marked bad? no
  // output word of size 3 : index:72 n137 n130 n173 
  // group: sel; nodes: [ n132 ]

  NAND2_X0P5A_A12TR U325 (.A(n131), .B(n132), .Y(n130));
  NAND2_X0P5A_A12TR U351 (.A(n326), .B(n132), .Y(n173));
  NAND2_X0P5A_A12TR U476 (.A(n132), .B(n192), .Y(n137));
endmodule
module nand2gate_mx36 
(
  n153, 
  n163, 
  n166, 
  n136,
  n162
);
  input n153;
  input n163;
  input n166;
  output n136;
  output n162;

  // moduleNum: x36
  // type: nand2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 661/663
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:-1 n136 n162 
  // group: sel; nodes: [ n153 ]

  NAND2_X0P5A_A12TR U316 (.A(n153), .B(n166), .Y(n136));
  NAND2_X0P5A_A12TR U323 (.A(n153), .B(n163), .Y(n162));
endmodule
module nand2gate_mx37 
(
  n100, 
  n333, 
  n93, 
  n237,
  n91
);
  input n100;
  input n333;
  input n93;
  output n237;
  output n91;

  // moduleNum: x37
  // type: nand2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 690/693
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:130 n237 n91 
  // group: sel; nodes: [ n93 ]

  NAND2_X0P5A_A12TR U293 (.A(n333), .B(n93), .Y(n91));
  NAND2_X0P5A_A12TR U541 (.A(n100), .B(n93), .Y(n237));
endmodule
module nor2gate_mx38 
(
  n181, 
  n189, 
  n198, 
  n227, 
  n236, 
  n268, 
  n317, 
  n51, 
  reset, 
  com_n17,
  fsm0_n18,
  fsm0_n19,
  fsm0_n20,
  n117,
  n226,
  n46,
  n79
);
  input n181;
  input n189;
  input n198;
  input n227;
  input n236;
  input n268;
  input n317;
  input n51;
  input reset;
  output com_n17;
  output fsm0_n18;
  output fsm0_n19;
  output fsm0_n20;
  output n117;
  output n226;
  output n46;
  output n79;

  // moduleNum: x38
  // type: nor2gate
  // conflicting modules: 
  // number of bit inputs: 9
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 8
  // number of non-inferred gates: 0
  // ILP vars: 694/703
  // type: INFERRED
  // marked bad? no
  // output word of size 8 : index:131 n117 n226 com_n17 n46 fsm0_n19 fsm0_n18 fsm0_n20 n79 
  // group: sel; nodes: [ reset ]

  NOR2_X0P5A_A12TR U472 (.A(n51), .B(reset), .Y(n46));
  NOR2_X0P5A_A12TR U517 (.A(reset), .B(n317), .Y(n79));
  NOR2_X0P5A_A12TR U524 (.A(reset), .B(n268), .Y(n117));
  NOR2_X0P5A_A12TR U539 (.A(reset), .B(n236), .Y(com_n17));
  NOR2_X0P5A_A12TR U542 (.A(reset), .B(n189), .Y(fsm0_n19));
  NOR2_X0P5A_A12TR U544 (.A(reset), .B(n181), .Y(fsm0_n20));
  NOR2_X0P5A_A12TR U548 (.A(reset), .B(n198), .Y(fsm0_n18));
  NOR2_X0P5A_A12TR U560 (.A(reset), .B(n227), .Y(n226));
endmodule
module nor2gate_mx39 
(
  G2, 
  n105, 
  n171, 
  n170,
  n50
);
  input G2;
  input n105;
  input n171;
  output n170;
  output n50;

  // moduleNum: x39
  // type: nor2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 712/716
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:132 n170 n50 
  // group: sel; nodes: [ G2 ]

  NOR2_X0P5A_A12TR U502 (.A(G2), .B(n105), .Y(n50));
  NOR2_X0P5A_A12TR U513 (.A(G2), .B(n171), .Y(n170));
endmodule
module nor2gate_mx40 
(
  com_buffer_lfsr_0_, 
  com_counter_out_0_, 
  n290, 
  n337,
  n363
);
  input com_buffer_lfsr_0_;
  input com_counter_out_0_;
  input n290;
  output n337;
  output n363;

  // moduleNum: x40
  // type: nor2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 721/723
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:85 n363 n337 
  // group: sel; nodes: [ com_buffer_lfsr[0] ]

  NOR2_X0P5A_A12TR U457 (.A(n290), .B(com_buffer_lfsr_0_), .Y(n337));
  NOR2_X0P5A_A12TR U467 (.A(com_counter_out_0_), .B(com_buffer_lfsr_0_), .Y(n363));
endmodule
module nor2gate_mx41 
(
  com_counter_out_0_, 
  n307, 
  n308, 
  n309, 
  n310, 
  com_count_n10,
  com_count_n11,
  com_count_n13,
  com_count_n15
);
  input com_counter_out_0_;
  input n307;
  input n308;
  input n309;
  input n310;
  output com_count_n10;
  output com_count_n11;
  output com_count_n13;
  output com_count_n15;
  wire n251;
  wire n290;

  // moduleNum: x41
  // type: nor2gate
  // conflicting modules: 
  // number of bit inputs: 5
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 6
  // number of non-inferred gates: 0
  // ILP vars: 761/765
  // type: INFERRED
  // marked bad? no
  // output word of size 4 : index:96 com_count_n10 com_count_n11 com_count_n13 com_count_n15 
  // group: sel; nodes: [ n310 ]

  INV_X0P5B_A12TR U281 (.A(n310), .Y(n251));
  INV_X0P5B_A12TR U281 (.A(com_counter_out_0_), .Y(n290));
  NOR2_X0P5A_A12TR U628 (.A(n307), .B(n310), .Y(com_count_n15));
  AND2_X0P5M_A12TR U630 (.A(n290), .B(n251), .Y(com_count_n10));
  NOR2_X0P5A_A12TR U631 (.A(n308), .B(n310), .Y(com_count_n11));
  NOR2_X0P5A_A12TR U633 (.A(n309), .B(n310), .Y(com_count_n13));
endmodule
module nor2gate_mx42 
(
  n291, 
  n359, 
  n390, 
  n357,
  n391
);
  input n291;
  input n359;
  input n390;
  output n357;
  output n391;

  // moduleNum: x42
  // type: nor2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 766/766
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:97 n357 n391 
  // group: sel; nodes: [ n291 ]

  NOR2_X0P5A_A12TR U303 (.A(n291), .B(n359), .Y(n357));
  NOR2_X0P5A_A12TR U428 (.A(n291), .B(n390), .Y(n391));
endmodule
module nor2gate_mx43 
(
  n17, 
  n18, 
  n274, 
  n85, 
  n14,
  n83,
  n89
);
  input n17;
  input n18;
  input n274;
  input n85;
  output n14;
  output n83;
  output n89;

  // moduleNum: x43
  // type: nor2gate
  // conflicting modules: 
  // number of bit inputs: 4
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 3
  // number of non-inferred gates: 0
  // ILP vars: 770/773
  // type: INFERRED
  // marked bad? no
  // output word of size 3 : index:-1 n89 n14 n83 
  // group: sel; nodes: [ n17 ]

  NOR2_X0P5A_A12TR U466 (.A(n274), .B(n17), .Y(n89));
  NOR2_X0P5A_A12TR U483 (.A(n17), .B(n18), .Y(n14));
  NOR2_X0P5A_A12TR U485 (.A(n17), .B(n85), .Y(n83));
endmodule
module nor2gate_mx44 
(
  n28, 
  n29, 
  n34, 
  n43, 
  n23,
  n30,
  n35
);
  input n28;
  input n29;
  input n34;
  input n43;
  output n23;
  output n30;
  output n35;

  // moduleNum: x44
  // type: nor2gate
  // conflicting modules: 
  // number of bit inputs: 4
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 3
  // number of non-inferred gates: 0
  // ILP vars: 774/774
  // type: INFERRED
  // marked bad? no
  // output word of size 3 : index:99 n30 n23 n35 
  // group: sel; nodes: [ n29 ]

  NOR2_X0P5A_A12TR U408 (.A(n28), .B(n29), .Y(n23));
  NOR2_X0P5A_A12TR U412 (.A(n34), .B(n29), .Y(n30));
  NOR2_X0P5A_A12TR U416 (.A(n43), .B(n29), .Y(n35));
endmodule
module nor2gate_mx45 
(
  n22, 
  n256, 
  n258, 
  n260, 
  n262, 
  n271, 
  n20,
  n28,
  n34,
  n43,
  n86
);
  input n22;
  input n256;
  input n258;
  input n260;
  input n262;
  input n271;
  output n20;
  output n28;
  output n34;
  output n43;
  output n86;

  // moduleNum: x45
  // type: nor2gate
  // conflicting modules: 
  // number of bit inputs: 6
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 5
  // number of non-inferred gates: 0
  // ILP vars: 775/780
  // type: INFERRED
  // marked bad? no
  // output word of size 5 : index:100 n43 n34 n28 n86 n20 
  // group: sel; nodes: [ n22 ]

  NOR2_X0P5A_A12TR U492 (.A(n256), .B(n22), .Y(n20));
  NOR2_X0P5A_A12TR U493 (.A(n258), .B(n22), .Y(n28));
  NOR2_X0P5A_A12TR U494 (.A(n260), .B(n22), .Y(n34));
  NOR2_X0P5A_A12TR U495 (.A(n262), .B(n22), .Y(n43));
  NOR2_X0P5A_A12TR U496 (.A(n271), .B(n22), .Y(n86));
endmodule
module nor2gate_mx46 
(
  n19, 
  n332, 
  reset, 
  n229,
  n284
);
  input n19;
  input n332;
  input reset;
  output n229;
  output n284;

  // moduleNum: x46
  // type: nor2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 787/789
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:102 n284 n229 
  // group: sel; nodes: [ n332 ]

  NOR2_X0P5A_A12TR U480 (.A(n332), .B(reset), .Y(n284));
  NOR2_X0P5A_A12TR U562 (.A(n332), .B(n19), .Y(n229));
endmodule
module nor2gate_mx47 
(
  n118, 
  n315, 
  n316, 
  fsm0_n24,
  n111
);
  input n118;
  input n315;
  input n316;
  output fsm0_n24;
  output n111;

  // moduleNum: x47
  // type: nor2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 793/795
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:104 n111 fsm0_n24 
  // group: sel; nodes: [ n316 ]

  NOR2_X0P5A_A12TR U353 (.A(n316), .B(n118), .Y(fsm0_n24));
  NOR2_X0P5A_A12TR U394 (.A(n315), .B(n316), .Y(n111));
endmodule
module nor2gate_mx48 
(
  n257, 
  n259, 
  n261, 
  n27, 
  n25,
  n32,
  n37
);
  input n257;
  input n259;
  input n261;
  input n27;
  output n25;
  output n32;
  output n37;

  // moduleNum: x48
  // type: nor2gate
  // conflicting modules: 
  // number of bit inputs: 4
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 3
  // number of non-inferred gates: 0
  // ILP vars: 799/799
  // type: INFERRED
  // marked bad? no
  // output word of size 3 : index:105 n37 n32 n25 
  // group: sel; nodes: [ n27 ]

  NOR2_X0P5A_A12TR U487 (.A(n257), .B(n27), .Y(n25));
  NOR2_X0P5A_A12TR U488 (.A(n259), .B(n27), .Y(n32));
  NOR2_X0P5A_A12TR U489 (.A(n261), .B(n27), .Y(n37));
endmodule
module nor2gate_mx49 
(
  n139, 
  n140, 
  n172, 
  n125,
  n155
);
  input n139;
  input n140;
  input n172;
  output n125;
  output n155;

  // moduleNum: x49
  // type: nor2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 800/802
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:-1 n155 n125 
  // group: sel; nodes: [ n139 ]

  NOR2_X0P5A_A12TR U399 (.A(n139), .B(n172), .Y(n155));
  NOR2_X0P5A_A12TR U403 (.A(n139), .B(n140), .Y(n125));
endmodule
module nor2gate_mx50 
(
  com_counter_out_1_, 
  n258, 
  n337, 
  n338,
  n339
);
  input com_counter_out_1_;
  input n258;
  input n337;
  output n338;
  output n339;

  // moduleNum: x50
  // type: nor2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 806/808
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:107 n339 n338 
  // group: sel; nodes: [ n337 ]

  NOR2_X0P5A_A12TR U306 (.A(n337), .B(n258), .Y(n339));
  NOR2_X0P5A_A12TR U478 (.A(com_counter_out_1_), .B(n337), .Y(n338));
endmodule
module nor2gate_mx51 
(
  n20, 
  n21, 
  n86, 
  n12,
  n81
);
  input n20;
  input n21;
  input n86;
  output n12;
  output n81;

  // moduleNum: x51
  // type: nor2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 809/809
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:108 n81 n12 
  // group: sel; nodes: [ n21 ]

  NOR2_X0P5A_A12TR U339 (.A(n20), .B(n21), .Y(n12));
  NOR2_X0P5A_A12TR U343 (.A(n86), .B(n21), .Y(n81));
endmodule
module nor2gate_mx52 
(
  com_buffer_lfsr_1_, 
  n295, 
  n340, 
  n341,
  n342
);
  input com_buffer_lfsr_1_;
  input n295;
  input n340;
  output n341;
  output n342;

  // moduleNum: x52
  // type: nor2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 816/816
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:111 n342 n341 
  // group: sel; nodes: [ n340 ]

  NOR2_X0P5A_A12TR U336 (.A(n340), .B(n295), .Y(n341));
  NOR2_X0P5A_A12TR U497 (.A(com_buffer_lfsr_1_), .B(n340), .Y(n342));
endmodule
module nor2gate_mx53 
(
  n180, 
  n217, 
  n254, 
  n179,
  n210
);
  input n180;
  input n217;
  input n254;
  output n179;
  output n210;

  // moduleNum: x53
  // type: nor2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 820/823
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:133 n179 n210 
  // group: sel; nodes: [ n180 ]

  NOR2_X0P5A_A12TR U377 (.A(n180), .B(n217), .Y(n210));
  NOR2_X0P5A_A12TR U454 (.A(n254), .B(n180), .Y(n179));
endmodule
module xor2gate_mx54 
(
  com_counter_out_6_, 
  n395, 
  n401, 
  com_count_n9,
  com_n62
);
  input com_counter_out_6_;
  input n395;
  input n401;
  output com_count_n9;
  output com_n62;

  // moduleNum: x54
  // type: xor2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 827/827
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:115 com_n62 com_count_n9 
  // group: sel; nodes: [ com_counter_out[6] ]

  XOR2_X0P5M_A12TR U536 (.A(com_counter_out_6_), .B(n395), .Y(com_n62));
  XOR2_X0P5M_A12TR U620 (.A(com_counter_out_6_), .B(n401), .Y(com_count_n9));
endmodule
module xor2gate_mx55 
(
  com_counter_out_5_, 
  n357, 
  n391, 
  n400, 
  com_n51,
  com_n61,
  n307
);
  input com_counter_out_5_;
  input n357;
  input n391;
  input n400;
  output com_n51;
  output com_n61;
  output n307;

  // moduleNum: x55
  // type: xor2gate
  // conflicting modules: 
  // number of bit inputs: 4
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 3
  // number of non-inferred gates: 0
  // ILP vars: 828/832
  // type: INFERRED
  // marked bad? no
  // output word of size 3 : index:134 n307 com_n61 com_n51 
  // group: sel; nodes: [ com_counter_out[5] ]

  XOR2_X0P5M_A12TR U444 (.A(com_counter_out_5_), .B(n357), .Y(com_n51));
  XOR2_X0P5M_A12TR U558 (.A(com_counter_out_5_), .B(n391), .Y(com_n61));
  XOR2_X0P5M_A12TR U629 (.A(com_counter_out_5_), .B(n400), .Y(n307));
endmodule
module xor2gate_mx56 
(
  com_buffer_lfsr_3_, 
  com_counter_out_3_, 
  n356, 
  n392, 
  com_n49,
  com_n59,
  n335
);
  input com_buffer_lfsr_3_;
  input com_counter_out_3_;
  input n356;
  input n392;
  output com_n49;
  output com_n59;
  output n335;

  // moduleNum: x56
  // type: xor2gate
  // conflicting modules: 
  // number of bit inputs: 4
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 3
  // number of non-inferred gates: 0
  // ILP vars: 833/836
  // type: INFERRED
  // marked bad? no
  // output word of size 3 : index:117 n335 com_n59 com_n49 
  // group: sel; nodes: [ com_counter_out[3] ]

  XOR2_X0P5M_A12TR U443 (.A(n356), .B(com_counter_out_3_), .Y(com_n49));
  XOR2_X0P5M_A12TR U578 (.A(n392), .B(com_counter_out_3_), .Y(com_n59));
  XOR2_X0P5M_A12TR U609 (.A(com_buffer_lfsr_3_), .B(com_counter_out_3_), .Y(n335));
endmodule
module xor2gate_mx57 
(
  com_counter_out_0_, 
  com_counter_out_1_, 
  n290, 
  com_n47,
  com_n57,
  n308
);
  input com_counter_out_0_;
  input com_counter_out_1_;
  input n290;
  output com_n47;
  output com_n57;
  output n308;

  // moduleNum: x57
  // type: xor2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 3
  // number of non-inferred gates: 0
  // ILP vars: 840/843
  // type: INFERRED
  // marked bad? no
  // output word of size 3 : index:119 com_n47 n308 com_n57 
  // group: sel; nodes: [ com_counter_out[1] ]

  XOR2_X0P5M_A12TR U553 (.A(com_counter_out_1_), .B(com_counter_out_0_), .Y(com_n47));
  XNOR2_X0P5A_A12TR U591 (.A(com_counter_out_1_), .B(n290), .Y(com_n57));
  XOR2_X0P5M_A12TR U632 (.A(com_counter_out_1_), .B(n290), .Y(n308));
endmodule
module xnor2gate_mx58 
(
  com_buffer_lfsr_6_, 
  com_counter_out_6_, 
  n358, 
  com_n52,
  n349
);
  input com_buffer_lfsr_6_;
  input com_counter_out_6_;
  input n358;
  output com_n52;
  output n349;

  // moduleNum: x58
  // type: xnor2gate
  // conflicting modules: 
  // number of bit inputs: 3
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 2
  // number of non-inferred gates: 0
  // ILP vars: 844/844
  // type: INFERRED
  // marked bad? no
  // output word of size 2 : index:120 n349 com_n52 
  // group: sel; nodes: [ com_counter_out[6] ]

  XNOR2_X0P5A_A12TR U449 (.A(com_counter_out_6_), .B(n358), .Y(com_n52));
  XNOR2_X0P5A_A12TR U471 (.A(com_buffer_lfsr_6_), .B(com_counter_out_6_), .Y(n349));
endmodule
module xnor2gate_mx59 
(
  com_counter_out_4_, 
  n359, 
  n390, 
  n397, 
  com_count_n7,
  com_n50,
  com_n60
);
  input com_counter_out_4_;
  input n359;
  input n390;
  input n397;
  output com_count_n7;
  output com_n50;
  output com_n60;
  wire n291;

  // moduleNum: x59
  // type: xnor2gate
  // conflicting modules: 
  // number of bit inputs: 4
  // number of bit outputs: 0
  // number of word inputs: 0
  // number of word outputs: 1
  // number of internal gates: 4
  // number of non-inferred gates: 0
  // ILP vars: 845/845
  // type: INFERRED
  // marked bad? no
  // output word of size 3 : index:121 com_n60 com_n50 com_count_n7 
  // group: sel; nodes: [ com_counter_out[4] ]

  INV_X0P5B_A12TR U281 (.A(com_counter_out_4_), .Y(n291));
  XOR2_X0P5M_A12TR U294 (.A(n291), .B(n359), .Y(com_n50));
  XNOR2_X0P5A_A12TR U589 (.A(com_counter_out_4_), .B(n390), .Y(com_n60));
  XNOR2_X0P5A_A12TR U626 (.A(com_counter_out_4_), .B(n397), .Y(com_count_n7));
endmodule
module ortree_mx60 
(
  G0, 
  n100, 
  n335, 
  n336, 
  n343, 
  n344, 
  n351, 
  reset, 
  n231
);
  input G0;
  input n100;
  input n335;
  input n336;
  input n343;
  input n344;
  input n351;
  input reset;
  output n231;
  wire com_n14;
  wire n228;
  wire n232;
  wire n314;
  wire n345;
  wire n346;
  wire n352;

  // moduleNum: x60
  // type: ortree
  // conflicting modules: 
  // number of bit inputs: 8
  // number of bit outputs: 1
  // number of word inputs: 0
  // number of word outputs: 0
  // number of internal gates: 8
  // number of non-inferred gates: 0
  // ILP vars: 849/849
  // type: INFERRED
  // marked bad? no

  NOR2_X0P5A_A12TR U333 (.A(n344), .B(n343), .Y(n345));
  NAND2_X0P5A_A12TR U379 (.A(n228), .B(n314), .Y(n231));
  INV_X0P5B_A12TR U445 (.A(reset), .Y(n314));
  NOR2_X0P5A_A12TR U468 (.A(n352), .B(n351), .Y(com_n14));
  NAND2_X0P5A_A12TR U470 (.A(n346), .B(n345), .Y(n352));
  AND2_X0P5M_A12TR U525 (.A(n232), .B(com_n14), .Y(n228));
  NOR2_X0P5A_A12TR U526 (.A(G0), .B(n100), .Y(n232));
  NOR2_X0P5A_A12TR U607 (.A(n336), .B(n335), .Y(n346));
endmodule
module cgentree_mx61 
(
  com_n47, 
  com_n48, 
  com_n49, 
  com_n50, 
  com_n51, 
  n256, 
  n258, 
  n260, 
  n262, 
  n302, 
  n363, 
  n383
);
  input com_n47;
  input com_n48;
  input com_n49;
  input com_n50;
  input com_n51;
  input n256;
  input n258;
  input n260;
  input n262;
  input n302;
  input n363;
  output n383;
  wire n362;
  wire n364;
  wire n365;
  wire n366;
  wire n367;
  wire n368;
  wire n369;
  wire n370;
  wire n371;
  wire n372;
  wire n373;
  wire n374;
  wire n375;
  wire n376;
  wire n377;
  wire n378;
  wire n379;
  wire n380;
  wire n381;

  // moduleNum: x61
  // type: cgentree
  // conflicting modules: 
  // number of bit inputs: 11
  // number of bit outputs: 1
  // number of word inputs: 0
  // number of word outputs: 0
  // number of internal gates: 20
  // number of non-inferred gates: 0
  // ILP vars: 850/850
  // type: INFERRED
  // marked bad? no

  NOR2_X0P5A_A12TR U307 (.A(n379), .B(n378), .Y(n381));
  AND2_X0P5M_A12TR U308 (.A(n302), .B(com_n51), .Y(n379));
  NAND2_X0P5A_A12TR U309 (.A(n377), .B(n376), .Y(n378));
  NAND2_X0P5A_A12TR U310 (.A(com_n50), .B(n262), .Y(n376));
  NOR2_X0P5A_A12TR U311 (.A(n371), .B(n370), .Y(n373));
  AND2_X0P5M_A12TR U312 (.A(n260), .B(com_n49), .Y(n371));
  NAND2_X0P5A_A12TR U313 (.A(n369), .B(n368), .Y(n370));
  NAND2_X0P5A_A12TR U314 (.A(com_n48), .B(n256), .Y(n368));
  NAND2_X0P5A_A12TR U345 (.A(n375), .B(n374), .Y(n377));
  OR2_X0P5M_A12TR U346 (.A(n262), .B(com_n50), .Y(n374));
  NOR2_X0P5A_A12TR U347 (.A(n373), .B(n372), .Y(n375));
  NOR2_X0P5A_A12TR U348 (.A(com_n49), .B(n260), .Y(n372));
  NAND2_X0P5A_A12TR U366 (.A(n367), .B(n366), .Y(n369));
  OR2_X0P5M_A12TR U367 (.A(n256), .B(com_n48), .Y(n366));
  NOR2_X0P5A_A12TR U368 (.A(n365), .B(n364), .Y(n367));
  NOR2_X0P5A_A12TR U369 (.A(n363), .B(n258), .Y(n364));
  NOR2_X0P5A_A12TR U372 (.A(n381), .B(n380), .Y(n383));
  NOR2_X0P5A_A12TR U373 (.A(com_n51), .B(n302), .Y(n380));
  NOR2_X0P5A_A12TR U552 (.A(com_n47), .B(n362), .Y(n365));
  AND2_X0P5M_A12TR U554 (.A(n258), .B(n363), .Y(n362));
endmodule
module counter_mx62 
(
  clk, 
  com_count_n10, 
  com_count_n11, 
  com_count_n12, 
  com_count_n13, 
  com_count_n14, 
  com_count_n15, 
  com_count_n16, 
  com_counter_out_0_,
  com_counter_out_1_,
  com_counter_out_2_,
  com_counter_out_3_,
  com_counter_out_4_,
  com_counter_out_5_,
  com_counter_out_6_
);
  input clk;
  input com_count_n10;
  input com_count_n11;
  input com_count_n12;
  input com_count_n13;
  input com_count_n14;
  input com_count_n15;
  input com_count_n16;
  output com_counter_out_0_;
  output com_counter_out_1_;
  output com_counter_out_2_;
  output com_counter_out_3_;
  output com_counter_out_4_;
  output com_counter_out_5_;
  output com_counter_out_6_;

  // moduleNum: x62
  // type: counter
  // conflicting modules: 
  // number of bit inputs: 8
  // number of bit outputs: 7
  // number of word inputs: 0
  // number of word outputs: 0
  // number of internal gates: 14
  // number of non-inferred gates: 0
  // ILP vars: 851/851
  // type: INFERRED
  // marked bad? no

  DFFQ_X1M_A12TR com_count_cout_reg_6_ (.CK(clk), .Q(com_counter_out_6_), .D(com_count_n16));
  DFFQ_X1M_A12TR com_count_cout_reg_5_ (.CK(clk), .Q(com_counter_out_5_), .D(com_count_n15));
  DFFQ_X1M_A12TR com_count_cout_reg_4_ (.CK(clk), .Q(com_counter_out_4_), .D(com_count_n14));
  DFFQ_X1M_A12TR com_count_cout_reg_2_ (.CK(clk), .Q(com_counter_out_2_), .D(com_count_n12));
  DFFQ_X1M_A12TR com_count_cout_reg_3_ (.CK(clk), .Q(com_counter_out_3_), .D(com_count_n13));
  DFFQ_X1M_A12TR com_count_cout_reg_0_ (.CK(clk), .Q(com_counter_out_0_), .D(com_count_n10));
  DFFQ_X1M_A12TR com_count_cout_reg_1_ (.CK(clk), .Q(com_counter_out_1_), .D(com_count_n11));
endmodule
