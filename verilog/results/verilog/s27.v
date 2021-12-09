module s27 
(
  G0, 
  G1, 
  G2, 
  G3, 
  GND, 
  VDD, 
  clk, 
  lfsr_seed, 
  reset, 
  G17
);
  input G0;
  input G1;
  input G2;
  input G3;
  input GND;
  input VDD;
  input clk;
  input [4:0] lfsr_seed;
  input reset;
  output G17;
  wire [6:0] com_buffer_lfsr;
  wire com_count_n10;
  wire com_count_n11;
  wire com_count_n12;
  wire com_count_n13;
  wire com_count_n14;
  wire com_count_n15;
  wire com_count_n16;
  wire com_count_n5;
  wire com_count_n7;
  wire com_count_n9;
  wire [6:0] com_counter_out;
  wire com_lfsr_module_n3;
  wire com_lfsr_module_n4;
  wire com_lfsr_module_n5;
  wire com_lfsr_module_n6;
  wire com_lfsr_module_n7;
  wire com_n14;
  wire com_n17;
  wire com_n18;
  wire com_n26;
  wire com_n47;
  wire com_n48;
  wire com_n49;
  wire com_n50;
  wire com_n51;
  wire com_n52;
  wire com_n53;
  wire com_n54;
  wire com_n57;
  wire com_n58;
  wire com_n59;
  wire com_n60;
  wire com_n61;
  wire com_n62;
  wire fsm0_n18;
  wire fsm0_n19;
  wire fsm0_n20;
  wire fsm0_n21;
  wire fsm0_n22;
  wire fsm0_n23;
  wire fsm0_n24;
  wire fsm_flip_2_;
  wire main_DFF_0_n4;
  wire main_DFF_1_n4;
  wire main_DFF_2_n4;
  wire n100;
  wire n101;
  wire n102;
  wire n103;
  wire n104;
  wire n105;
  wire n106;
  wire n107;
  wire n108;
  wire n109;
  wire n110;
  wire n111;
  wire n112;
  wire n113;
  wire n114;
  wire n115;
  wire n117;
  wire n118;
  wire n119;
  wire n12;
  wire n120;
  wire n122;
  wire n123;
  wire n125;
  wire n126;
  wire n127;
  wire n128;
  wire n129;
  wire n13;
  wire n130;
  wire n131;
  wire n132;
  wire n133;
  wire n134;
  wire n136;
  wire n137;
  wire n139;
  wire n14;
  wire n140;
  wire n141;
  wire n143;
  wire n144;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n15;
  wire n150;
  wire n151;
  wire n153;
  wire n154;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n16;
  wire n160;
  wire n162;
  wire n163;
  wire n164;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n17;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n175;
  wire n176;
  wire n178;
  wire n179;
  wire n18;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire n188;
  wire n189;
  wire n19;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n20;
  wire n200;
  wire n201;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire n21;
  wire n210;
  wire n211;
  wire n212;
  wire n213;
  wire n214;
  wire n215;
  wire n217;
  wire n218;
  wire n219;
  wire n22;
  wire n220;
  wire n221;
  wire n222;
  wire n223;
  wire n224;
  wire n225;
  wire n226;
  wire n227;
  wire n228;
  wire n229;
  wire n23;
  wire n231;
  wire n232;
  wire n233;
  wire n234;
  wire n236;
  wire n237;
  wire n238;
  wire n24;
  wire n240;
  wire n241;
  wire n242;
  wire n243;
  wire n244;
  wire n245;
  wire n246;
  wire n247;
  wire n248;
  wire n249;
  wire n25;
  wire n250;
  wire n251;
  wire n252;
  wire n253;
  wire n254;
  wire n255;
  wire n256;
  wire n257;
  wire n258;
  wire n259;
  wire n26;
  wire n260;
  wire n261;
  wire n262;
  wire n263;
  wire n266;
  wire n268;
  wire n27;
  wire n270;
  wire n271;
  wire n272;
  wire n273;
  wire n274;
  wire n275;
  wire n276;
  wire n277;
  wire n278;
  wire n279;
  wire n28;
  wire n280;
  wire n281;
  wire n282;
  wire n283;
  wire n284;
  wire n285;
  wire n286;
  wire n288;
  wire n289;
  wire n29;
  wire n290;
  wire n291;
  wire n292;
  wire n293;
  wire n294;
  wire n295;
  wire n296;
  wire n297;
  wire n298;
  wire n299;
  wire n30;
  wire n300;
  wire n301;
  wire n302;
  wire n303;
  wire n304;
  wire n305;
  wire n306;
  wire n307;
  wire n308;
  wire n309;
  wire n31;
  wire n310;
  wire n311;
  wire n312;
  wire n313;
  wire n314;
  wire n315;
  wire n316;
  wire n317;
  wire n318;
  wire n319;
  wire n32;
  wire n320;
  wire n321;
  wire n322;
  wire n323;
  wire n324;
  wire n325;
  wire n326;
  wire n327;
  wire n328;
  wire n329;
  wire n33;
  wire n330;
  wire n331;
  wire n332;
  wire n333;
  wire n334;
  wire n335;
  wire n336;
  wire n337;
  wire n338;
  wire n339;
  wire n34;
  wire n340;
  wire n341;
  wire n342;
  wire n343;
  wire n344;
  wire n345;
  wire n346;
  wire n347;
  wire n348;
  wire n349;
  wire n35;
  wire n350;
  wire n351;
  wire n352;
  wire n353;
  wire n354;
  wire n355;
  wire n356;
  wire n357;
  wire n358;
  wire n359;
  wire n36;
  wire n360;
  wire n361;
  wire n362;
  wire n363;
  wire n364;
  wire n365;
  wire n366;
  wire n367;
  wire n368;
  wire n369;
  wire n37;
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
  wire n38;
  wire n380;
  wire n381;
  wire n382;
  wire n383;
  wire n384;
  wire n385;
  wire n386;
  wire n387;
  wire n388;
  wire n389;
  wire n390;
  wire n391;
  wire n392;
  wire n393;
  wire n394;
  wire n395;
  wire n396;
  wire n397;
  wire n398;
  wire n399;
  wire n40;
  wire n400;
  wire n401;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n50;
  wire n51;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n64;
  wire n65;
  wire n66;
  wire n67;
  wire n68;
  wire n73;
  wire n74;
  wire n77;
  wire n78;
  wire n79;
  wire n80;
  wire n81;
  wire n82;
  wire n83;
  wire n84;
  wire n85;
  wire n86;
  wire n88;
  wire n89;
  wire n91;
  wire n93;
  wire n94;
  wire n96;
  wire n97;
  wire n98;
  wire priority_flag;
  // sz:3: index:0 n167 n164 n154 
  // sz:3: index:1 n332 n332 n93 
  // sz:3: index:2 n136 n162 n149 
  // sz:2: index:3 n136 n162 
  // sz:2: index:4 com_n58 com_n48 
  // sz:3: index:5 n282 n281 n280 
  // sz:2: index:6 n157 n183 
  // sz:2: index:7 n283 n286 
  // sz:3: index:8 main_DFF_2_n4 main_DFF_1_n4 main_DFF_0_n4 
  // sz:2: index:9 n199 n140 
  // sz:2: index:10 n27 n80 
  // sz:6: index:11 n45 n45 n54 n54 n65 n65 
  // sz:3: index:12 n45 n54 n65 
  // sz:2: index:13 n65 n65 
  // sz:2: index:14 n45 n45 
  // sz:2: index:15 n54 n54 
  // sz:2: index:16 n236 n89 
  // sz:3: index:17 n89 n14 n83 
  // sz:2: index:18 n156 n181 
  // sz:2: index:19 n125 n189 
  // sz:2: index:20 n155 n125 
  // sz:3: index:21 n125 n198 n189 
  // sz:4: index:22 n319 n318 n58 n111 
  // sz:2: index:23 n214 n196 
  // sz:2: index:24 n330 n328 
  // sz:4: index:25 n147 n327 n326 n331 
  // sz:2: index:26 n334 n333 
  // sz:4: index:27 com_count_n10 com_count_n12 com_count_n14 com_count_n16 
  // sz:2: index:28 n388 n354 
  // sz:3: index:29 n340 com_count_n10 n84 
  // sz:5: index:30 n33 n38 n15 n26 n84 
  // sz:2: index:31 n154 n320 
  // sz:2: index:32 n106 n318 
  // sz:4: index:33 n73 n311 n312 n102 
  // sz:4: index:34 n245 n247 n249 n243 
  // sz:2: index:35 n247 n18 
  // sz:2: index:36 n85 n18 
  // sz:5: index:37 n244 n246 n248 n250 n240 
  // sz:3: index:38 n132 n153 n96 
  // sz:3: index:39 n393 n361 n358 
  // sz:2: index:40 n134 n176 
  // sz:2: index:41 n67 n112 
  // sz:3: index:42 n49 n57 n68 
  // sz:3: index:43 n133 n150 n188 
  // sz:2: index:44 n100 n41 
  // sz:2: index:45 n108 n64 
  // sz:2: index:46 n67 n114 
  // sz:2: index:47 n109 n53 
  // sz:2: index:48 n103 n44 
  // sz:2: index:49 n394 n400 
  // sz:2: index:50 n355 n389 
  // sz:2: index:51 n356 n392 
  // sz:4: index:52 n393 n359 n390 n397 
  // sz:4: index:53 n396 n387 n305 n353 
  // sz:3: index:54 n27 com_n18 n80 
  // sz:3: index:55 n53 n44 n64 
  // sz:2: index:56 n68 n107 
  // sz:2: index:57 n201 n204 
  // sz:2: index:58 n159 n129 
  // sz:2: index:59 n77 n97 
  // sz:3: index:60 n104 n107 n110 
  // sz:2: index:61 n74 n217 
  // sz:2: index:62 n218 n184 
  // sz:2: index:63 n182 n200 
  // sz:3: index:64 n153 n112 n74 
  // sz:3: index:65 n168 n191 n201 
  // sz:2: index:66 n173 n195 
  // sz:2: index:67 n194 n160 
  // sz:2: index:68 n94 n101 
  // sz:2: index:69 n184 n129 
  // sz:4: index:70 n114 n171 n163 n166 
  // sz:5: index:71 n241 n234 n29 n139 n231 
  // sz:3: index:72 n137 n130 n173 
  // sz:2: index:73 n233 n118 
  // sz:2: index:74 n359 com_n48 
  // sz:2: index:75 n49 n104 
  // sz:2: index:76 n78 n98 
  // sz:3: index:77 n109 n108 n103 
  // sz:3: index:78 n390 n394 com_n58 
  // sz:2: index:79 n131 n148 
  // sz:3: index:80 n237 n132 n91 
  // sz:9: index:81 n117 n226 n284 com_n17 n46 fsm0_n19 fsm0_n18 fsm0_n20 n79 
  // sz:7: index:82 n197 n215 n304 n224 n219 n232 n151 
  // sz:4: index:83 n221 n215 n170 n50 
  // sz:3: index:84 n193 n197 n221 
  // sz:2: index:85 n363 n337 
  // sz:2: index:86 n223 n208 
  // sz:2: index:87 n207 n222 
  // sz:2: index:88 n220 n212 
  // sz:4: index:89 n223 n220 n222 n123 
  // sz:4: index:90 n208 n212 n207 n179 
  // sz:4: index:91 n333 n236 n19 n19 
  // sz:2: index:92 n227 n89 
  // sz:2: index:93 n227 n333 
  // sz:2: index:94 n372 n34 
  // sz:3: index:95 n364 n339 n28 
  // sz:4: index:96 com_count_n10 com_count_n11 com_count_n13 com_count_n15 
  // sz:2: index:97 n357 n391 
  // sz:2: index:98 n363 com_count_n10 
  // sz:3: index:99 n30 n23 n35 
  // sz:5: index:100 n43 n34 n28 n86 n20 
  // sz:2: index:101 n181 n189 
  // sz:2: index:102 n284 n229 
  // sz:2: index:103 n146 n205 
  // sz:2: index:104 n111 fsm0_n24 
  // sz:3: index:105 n37 n32 n25 
  // sz:2: index:106 n185 n170 
  // sz:2: index:107 n339 n338 
  // sz:2: index:108 n81 n12 
  // sz:2: index:109 n196 n185 
  // sz:2: index:110 n214 n224 
  // sz:2: index:111 n342 n341 
  // sz:2: index:112 n232 n16 
  // sz:3: index:113 n123 n179 n210 
  // sz:2: index:114 n206 n146 
  // sz:2: index:115 com_n62 com_count_n9 
  // sz:4: index:116 n347 n307 com_n61 com_n51 
  // sz:3: index:117 n335 com_n59 com_n49 
  // sz:2: index:118 com_n47 com_n57 
  // sz:3: index:119 com_n47 n308 com_n57 
  // sz:2: index:120 n349 com_n52 
  // sz:3: index:121 com_n60 com_n50 com_count_n7 
  // sz:2: index:122 n308 com_n57 
  // sz:2: index:123 n198 n189 
  // sz:2: index:124 n319 n58 
  // sz:3: index:125 com_count_n12 com_count_n14 com_count_n16 
  // sz:2: index:126 n340 n84 
  // sz:4: index:127 n33 n38 n15 n26 
  // sz:2: index:128 n361 n358 
  // sz:3: index:129 n114 n163 n166 
  // sz:2: index:130 n237 n91 
  // sz:8: index:131 n117 n226 com_n17 n46 fsm0_n19 fsm0_n18 fsm0_n20 n79 
  // sz:2: index:132 n170 n50 
  // sz:2: index:133 n179 n210 
  // sz:3: index:134 n307 com_n61 com_n51 
  // BSIM@ modules: mx247 
  // BSIM@ covered_modules=1 :   // BSIM@ modules: mx247 
  // BSIM@ covered_modules=1 :   // BSIM@ modules: mx247 
  // BSIM@ covered_modules=1 :   // BSIM@ modules: mx247 
  // BSIM@ covered_modules=1 :   // BSIM@ modules: mx50 
  // BSIM@ covered_modules=1 :   // BSIM@ modules: mx50 
  // BSIM@ covered_modules=1 :   // BSIM@ modules: mx50 
  // BSIM@ covered_modules=1 :   // BSIM@ modules: mx51 
  // BSIM@ covered_modules=1 :   // BSIM@ modules: mx51 
  // BSIM@ covered_modules=1 :   // BSIM@ modules: mx247 
  // BSIM@ covered_modules=1 :   // BSIM@ modules: mx247 
  // BSIM@ covered_modules=1 :   // BSIM@ modules: mx247 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U440 (.A(n266), .B(n113), .Y(G17));
  DFFQ_X1M_A12TR com_buffer_lfsr_reg_0_ (.CK(clk), .Q(com_buffer_lfsr[0]), .D(n285));
  DFFQ_X1M_A12TR com_buffer_lfsr_reg_1_ (.CK(clk), .Q(com_buffer_lfsr[1]), .D(n277));
  DFFQ_X1M_A12TR com_buffer_lfsr_reg_2_ (.CK(clk), .Q(com_buffer_lfsr[2]), .D(n276));
  DFFQ_X1M_A12TR com_buffer_lfsr_reg_3_ (.CK(clk), .Q(com_buffer_lfsr[3]), .D(n278));
  DFFQ_X1M_A12TR com_buffer_lfsr_reg_4_ (.CK(clk), .Q(com_buffer_lfsr[4]), .D(n279));
  // BSIM@ modules: mx51 
  // BSIM@ covered_modules=1 :   DFFQ_X1M_A12TR com_buffer_lfsr_reg_5_ (.CK(clk), .Q(com_buffer_lfsr[5]), .D(n283));
  // BSIM@ modules: mx51 
  // BSIM@ covered_modules=1 :   DFFQ_X1M_A12TR com_buffer_lfsr_reg_6_ (.CK(clk), .Q(com_buffer_lfsr[6]), .D(n286));
  // BSIM@ modules: mx214 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U630 (.A(n290), .B(n251), .Y(com_count_n10));
  // BSIM@ modules: mx214 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U631 (.A(n308), .B(n310), .Y(com_count_n11));
  // BSIM@ modules: mx139 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U622 (.A(com_count_n5), .B(n251), .Y(com_count_n12));
  // BSIM@ modules: mx214 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U633 (.A(n309), .B(n310), .Y(com_count_n13));
  // BSIM@ modules: mx139 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U625 (.A(com_count_n7), .B(n251), .Y(com_count_n14));
  // BSIM@ modules: mx214 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U628 (.A(n307), .B(n310), .Y(com_count_n15));
  // BSIM@ modules: mx139 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U619 (.A(n251), .B(com_count_n9), .Y(com_count_n16));
  XNOR2_X0P5A_A12TR U623 (.A(com_counter_out[2]), .B(n396), .Y(com_count_n5));
  // BSIM@ modules: mx243 
  // BSIM@ covered_modules=1 :   XNOR2_X0P5A_A12TR U626 (.A(com_counter_out[4]), .B(n397), .Y(com_count_n7));
  // BSIM@ modules: mx237 
  // BSIM@ covered_modules=1 :   XOR2_X0P5M_A12TR U620 (.A(com_counter_out[6]), .B(n401), .Y(com_count_n9));
  // BSIM@ modules: mx247 
  // BSIM@ covered_modules=1 :   DFFQ_X1M_A12TR com_count_cout_reg_0_ (.CK(clk), .Q(com_counter_out[0]), .D(com_count_n10));
  // BSIM@ modules: mx247 
  // BSIM@ covered_modules=1 :   DFFQ_X1M_A12TR com_count_cout_reg_1_ (.CK(clk), .Q(com_counter_out[1]), .D(com_count_n11));
  // BSIM@ modules: mx247 
  // BSIM@ covered_modules=1 :   DFFQ_X1M_A12TR com_count_cout_reg_2_ (.CK(clk), .Q(com_counter_out[2]), .D(com_count_n12));
  // BSIM@ modules: mx247 
  // BSIM@ covered_modules=1 :   DFFQ_X1M_A12TR com_count_cout_reg_3_ (.CK(clk), .Q(com_counter_out[3]), .D(com_count_n13));
  // BSIM@ modules: mx247 
  // BSIM@ covered_modules=1 :   DFFQ_X1M_A12TR com_count_cout_reg_4_ (.CK(clk), .Q(com_counter_out[4]), .D(com_count_n14));
  // BSIM@ modules: mx247 
  // BSIM@ covered_modules=1 :   DFFQ_X1M_A12TR com_count_cout_reg_5_ (.CK(clk), .Q(com_counter_out[5]), .D(com_count_n15));
  // BSIM@ modules: mx247 
  // BSIM@ covered_modules=1 :   DFFQ_X1M_A12TR com_count_cout_reg_6_ (.CK(clk), .Q(com_counter_out[6]), .D(com_count_n16));
  NAND2_X0P5A_A12TR U563 (.A(n249), .B(n250), .Y(com_lfsr_module_n3));
  NAND2_X0P5A_A12TR U566 (.A(n247), .B(n248), .Y(com_lfsr_module_n4));
  NAND2_X0P5A_A12TR U569 (.A(n245), .B(n246), .Y(com_lfsr_module_n5));
  NAND2_X0P5A_A12TR U572 (.A(n243), .B(n244), .Y(com_lfsr_module_n6));
  NAND2_X0P5A_A12TR U527 (.A(n240), .B(n241), .Y(com_lfsr_module_n7));
  // BSIM@ modules: mx245 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U468 (.A(n352), .B(n351), .Y(com_n14));
  // BSIM@ modules: mx199 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U539 (.A(reset), .B(n236), .Y(com_n17));
  NAND2_X0P5A_A12TR U378 (.A(n313), .B(n231), .Y(com_n18));
  NAND2_X0P5A_A12TR U559 (.A(n225), .B(n226), .Y(com_n26));
  // BSIM@ modules: mx241 
  // BSIM@ covered_modules=1 :   XOR2_X0P5M_A12TR U553 (.A(com_counter_out[1]), .B(com_counter_out[0]), .Y(com_n47));
  // BSIM@ modules: mx4 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U506 (.A(n356), .B(n355), .Y(com_n48));
  // BSIM@ modules: mx239 
  // BSIM@ covered_modules=1 :   XOR2_X0P5M_A12TR U443 (.A(n356), .B(com_counter_out[3]), .Y(com_n49));
  // BSIM@ modules: mx243 
  // BSIM@ covered_modules=1 :   XOR2_X0P5M_A12TR U294 (.A(n291), .B(n359), .Y(com_n50));
  // BSIM@ modules: mx238 
  // BSIM@ covered_modules=1 :   XOR2_X0P5M_A12TR U444 (.A(com_counter_out[5]), .B(n357), .Y(com_n51));
  // BSIM@ modules: mx242 
  // BSIM@ covered_modules=1 :   XNOR2_X0P5A_A12TR U449 (.A(com_counter_out[6]), .B(n358), .Y(com_n52));
  NOR2_X0P5A_A12TR U615 (.A(n361), .B(n360), .Y(com_n53));
  NAND2_X0P5A_A12TR U460 (.A(n386), .B(n385), .Y(com_n54));
  // BSIM@ modules: mx241 
  // BSIM@ covered_modules=1 :   XNOR2_X0P5A_A12TR U591 (.A(com_counter_out[1]), .B(n290), .Y(com_n57));
  // BSIM@ modules: mx4 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U612 (.A(n392), .B(n389), .Y(com_n58));
  // BSIM@ modules: mx239 
  // BSIM@ covered_modules=1 :   XOR2_X0P5M_A12TR U578 (.A(n392), .B(com_counter_out[3]), .Y(com_n59));
  // BSIM@ modules: mx243 
  // BSIM@ covered_modules=1 :   XNOR2_X0P5A_A12TR U589 (.A(com_counter_out[4]), .B(n390), .Y(com_n60));
  // BSIM@ modules: mx238 
  // BSIM@ covered_modules=1 :   XOR2_X0P5M_A12TR U558 (.A(com_counter_out[5]), .B(n391), .Y(com_n61));
  // BSIM@ modules: mx237 
  // BSIM@ covered_modules=1 :   XOR2_X0P5M_A12TR U536 (.A(com_counter_out[6]), .B(n395), .Y(com_n62));
  // BSIM@ modules: mx199 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U548 (.A(reset), .B(n198), .Y(fsm0_n18));
  // BSIM@ modules: mx199 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U542 (.A(reset), .B(n189), .Y(fsm0_n19));
  // BSIM@ modules: mx199 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U544 (.A(reset), .B(n181), .Y(fsm0_n20));
  NAND2_X0P5A_A12TR U398 (.A(n155), .B(n156), .Y(fsm0_n21));
  NAND2_X0P5A_A12TR U387 (.A(n141), .B(n312), .Y(fsm0_n22));
  NAND2_X0P5A_A12TR U402 (.A(n125), .B(n126), .Y(fsm0_n23));
  // BSIM@ modules: mx224 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U353 (.A(n316), .B(n118), .Y(fsm0_n24));
  DFFQ_X1M_A12TR fsm0_obf_sig_reg_2_ (.CK(clk), .Q(fsm_flip_2_), .D(fsm0_n23));
  // BSIM@ modules: mx8 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U391 (.A(n109), .B(n110), .Y(main_DFF_0_n4));
  // BSIM@ modules: mx8 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U395 (.A(n107), .B(n108), .Y(main_DFF_1_n4));
  // BSIM@ modules: mx8 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U384 (.A(n103), .B(n104), .Y(main_DFF_2_n4));
  // BSIM@ modules: mx66 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U575 (.A(n274), .B(n296), .Y(n100));
  // BSIM@ modules: mx13 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U329 (.A(n102), .B(n334), .Y(n101));
  // BSIM@ modules: mx146 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U330 (.A(n314), .B(n96), .Y(n102));
  // BSIM@ modules: mx8 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U385 (.A(n106), .B(n297), .Y(n103));
  // BSIM@ modules: mx8 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U386 (.A(n50), .B(n73), .Y(n104));
  XOR2_X0P5M_A12TR U436 (.A(n115), .B(n273), .Y(n105));
  // BSIM@ modules: mx145 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U523 (.A(n117), .B(n332), .Y(n106));
  // BSIM@ modules: mx8 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U397 (.A(n73), .B(n315), .Y(n107));
  // BSIM@ modules: mx8 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U396 (.A(n106), .B(n299), .Y(n108));
  // BSIM@ modules: mx8 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U392 (.A(n106), .B(n298), .Y(n109));
  // BSIM@ modules: mx8 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U393 (.A(n111), .B(n73), .Y(n110));
  // BSIM@ modules: mx224 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U394 (.A(n315), .B(n316), .Y(n111));
  // BSIM@ modules: mx154 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U332 (.A(n332), .B(n293), .Y(n112));
  NAND2_X0P5A_A12TR U441 (.A(n59), .B(n114), .Y(n113));
  // BSIM@ modules: mx185 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U442 (.A(n288), .B(n316), .Y(n114));
  NAND2_X0P5A_A12TR U437 (.A(n263), .B(n321), .Y(n115));
  // BSIM@ modules: mx199 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U524 (.A(reset), .B(n268), .Y(n117));
  NAND2_X0P5A_A12TR U354 (.A(n284), .B(n119), .Y(n118));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U355 (.A(n120), .B(n325), .Y(n119));
  // BSIM@ modules: mx230 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U339 (.A(n20), .B(n21), .Y(n12));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U356 (.A(n123), .B(n328), .Y(n120));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U429 (.A(n205), .B(n206), .Y(n122));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U419 (.A(n289), .B(n180), .Y(n123));
  // BSIM@ modules: mx227 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U403 (.A(n139), .B(n140), .Y(n125));
  NOR2_X0P5A_A12TR U404 (.A(n127), .B(n128), .Y(n126));
  // BSIM@ modules: mx74 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U405 (.A(n137), .B(n329), .Y(n127));
  NAND2_X0P5A_A12TR U324 (.A(n129), .B(n130), .Y(n128));
  // BSIM@ modules: mx172 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U326 (.A(n331), .B(n136), .Y(n129));
  NOR2_X0P5A_A12TR U338 (.A(n14), .B(n15), .Y(n13));
  // BSIM@ modules: mx187 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U325 (.A(n131), .B(n132), .Y(n130));
  NAND2_X0P5A_A12TR U327 (.A(n133), .B(n134), .Y(n131));
  // BSIM@ modules: mx134 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U451 (.A(G0), .B(n93), .Y(n132));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U581 (.A(n223), .B(n252), .Y(n133));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U594 (.A(n220), .B(n253), .Y(n134));
  // BSIM@ modules: mx189 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U316 (.A(n153), .B(n166), .Y(n136));
  // BSIM@ modules: mx187 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U476 (.A(n132), .B(n192), .Y(n137));
  // BSIM@ modules: mx146 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U452 (.A(n314), .B(n178), .Y(n139));
  // BSIM@ modules: mx217 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U483 (.A(n17), .B(n18), .Y(n14));
  // BSIM@ modules: mx44 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U299 (.A(n194), .B(n195), .Y(n140));
  NOR2_X0P5A_A12TR U389 (.A(n143), .B(n144), .Y(n141));
  NOR2_X0P5A_A12TR U498 (.A(n149), .B(n150), .Y(n143));
  NOR2_X0P5A_A12TR U390 (.A(n319), .B(n146), .Y(n144));
  NOR2_X0P5A_A12TR U425 (.A(n147), .B(n148), .Y(n146));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U597 (.A(n207), .B(n252), .Y(n147));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U420 (.A(n133), .B(n188), .Y(n148));
  NOR2_X0P5A_A12TR U499 (.A(n151), .B(n318), .Y(n149));
  // BSIM@ modules: mx143 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U340 (.A(com_n58), .B(n16), .Y(n15));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U579 (.A(n208), .B(n252), .Y(n150));
  NOR2_X0P5A_A12TR U501 (.A(G0), .B(n154), .Y(n151));
  // BSIM@ modules: mx145 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U479 (.A(n332), .B(G0), .Y(n153));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U531 (.A(n196), .B(n197), .Y(n154));
  // BSIM@ modules: mx227 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U399 (.A(n139), .B(n172), .Y(n155));
  // BSIM@ modules: mx39 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U400 (.A(n157), .B(n158), .Y(n156));
  // BSIM@ modules: mx39 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U511 (.A(n168), .B(n169), .Y(n157));
  NAND2_X0P5A_A12TR U320 (.A(n159), .B(n160), .Y(n158));
  // BSIM@ modules: mx172 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U322 (.A(n327), .B(n136), .Y(n159));
  // BSIM@ modules: mx75 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U288 (.A(n100), .B(n96), .Y(n16));
  NAND2_X0P5A_A12TR U321 (.A(n330), .B(n162), .Y(n160));
  // BSIM@ modules: mx189 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U323 (.A(n153), .B(n163), .Y(n162));
  // BSIM@ modules: mx185 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U352 (.A(n164), .B(n316), .Y(n163));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U481 (.A(n221), .B(G1), .Y(n164));
  // BSIM@ modules: mx185 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U317 (.A(n167), .B(n316), .Y(n166));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U514 (.A(n196), .B(n224), .Y(n167));
  // BSIM@ modules: mx39 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U512 (.A(n170), .B(n123), .Y(n168));
  // BSIM@ modules: mx39 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U318 (.A(n185), .B(n147), .Y(n169));
  // BSIM@ modules: mx13 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U289 (.A(n233), .B(n234), .Y(n17));
  // BSIM@ modules: mx201 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U513 (.A(G2), .B(n171), .Y(n170));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U455 (.A(n193), .B(n316), .Y(n171));
  NAND2_X0P5A_A12TR U401 (.A(n173), .B(n174), .Y(n172));
  // BSIM@ modules: mx187 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U351 (.A(n326), .B(n132), .Y(n173));
  NAND2_X0P5A_A12TR U365 (.A(n328), .B(n175), .Y(n174));
  AND2_X0P5M_A12TR U519 (.A(n132), .B(n213), .Y(n175));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U587 (.A(n212), .B(n253), .Y(n176));
  NAND2_X0P5A_A12TR U453 (.A(n179), .B(com_n14), .Y(n178));
  // BSIM@ modules: mx235 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U454 (.A(n254), .B(n180), .Y(n179));
  // BSIM@ modules: mx149 
  // BSIM@ covered_modules=1 :   OR2_X0P5M_A12TR U484 (.A(n19), .B(n255), .Y(n18));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   OR2_X0P5M_A12TR U596 (.A(n253), .B(n252), .Y(n180));
  // BSIM@ modules: mx39 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U545 (.A(n182), .B(n183), .Y(n181));
  // BSIM@ modules: mx178 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U297 (.A(n190), .B(n191), .Y(n182));
  // BSIM@ modules: mx39 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U546 (.A(n184), .B(n169), .Y(n183));
  // BSIM@ modules: mx39 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U547 (.A(n320), .B(n331), .Y(n184));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U319 (.A(n322), .B(n171), .Y(n185));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U592 (.A(n222), .B(n252), .Y(n188));
  // BSIM@ modules: mx44 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U543 (.A(n140), .B(n182), .Y(n189));
  // BSIM@ modules: mx66 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U421 (.A(n292), .B(n333), .Y(n19));
  AND2_X0P5M_A12TR U374 (.A(n203), .B(n204), .Y(n190));
  // BSIM@ modules: mx74 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U298 (.A(n123), .B(n137), .Y(n191));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   OR2_X0P5M_A12TR U477 (.A(n171), .B(G2), .Y(n192));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U456 (.A(G3), .B(G1), .Y(n193));
  // BSIM@ modules: mx44 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U509 (.A(n219), .B(n330), .Y(n194));
  // BSIM@ modules: mx44 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U300 (.A(n154), .B(n326), .Y(n195));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U315 (.A(n321), .B(n322), .Y(n196));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U532 (.A(G3), .B(G0), .Y(n197));
  // BSIM@ modules: mx44 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U549 (.A(n199), .B(n200), .Y(n198));
  // BSIM@ modules: mx44 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U550 (.A(n218), .B(n194), .Y(n199));
  // BSIM@ modules: mx219 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U492 (.A(n256), .B(n22), .Y(n20));
  // BSIM@ modules: mx178 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U551 (.A(n190), .B(n201), .Y(n200));
  // BSIM@ modules: mx171 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U285 (.A(n319), .B(n123), .Y(n201));
  NOR2_X0P5A_A12TR U376 (.A(n210), .B(n211), .Y(n203));
  // BSIM@ modules: mx171 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U375 (.A(n319), .B(n122), .Y(n204));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U431 (.A(n326), .B(n148), .Y(n205));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U430 (.A(n330), .B(n147), .Y(n206));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U598 (.A(n253), .B(n254), .Y(n207));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U580 (.A(n254), .B(n294), .Y(n208));
  NAND2_X0P5A_A12TR U463 (.A(n311), .B(n88), .Y(n21));
  // BSIM@ modules: mx235 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U377 (.A(n180), .B(n217), .Y(n210));
  NOR2_X0P5A_A12TR U305 (.A(n175), .B(n176), .Y(n211));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U588 (.A(n252), .B(n254), .Y(n212));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U520 (.A(n214), .B(n215), .Y(n213));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U522 (.A(n323), .B(n321), .Y(n214));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U521 (.A(G2), .B(G0), .Y(n215));
  // BSIM@ modules: mx176 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U304 (.A(n324), .B(n289), .Y(n217));
  // BSIM@ modules: mx44 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U284 (.A(n320), .B(n148), .Y(n218));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U510 (.A(G0), .B(n164), .Y(n219));
  AND2_X0P5M_A12TR U295 (.A(n313), .B(n94), .Y(n22));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U595 (.A(n252), .B(n289), .Y(n220));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U482 (.A(G3), .B(G2), .Y(n221));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U593 (.A(n253), .B(n289), .Y(n222));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U582 (.A(n289), .B(n294), .Y(n223));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U515 (.A(G0), .B(n323), .Y(n224));
  NOR2_X0P5A_A12TR U561 (.A(n228), .B(n229), .Y(n225));
  // BSIM@ modules: mx199 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U560 (.A(reset), .B(n227), .Y(n226));
  // BSIM@ modules: mx66 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U584 (.A(n296), .B(n274), .Y(n227));
  // BSIM@ modules: mx245 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U525 (.A(n232), .B(com_n14), .Y(n228));
  // BSIM@ modules: mx222 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U562 (.A(n332), .B(n19), .Y(n229));
  // BSIM@ modules: mx218 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U408 (.A(n28), .B(n29), .Y(n23));
  // BSIM@ modules: mx245 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U379 (.A(n228), .B(n314), .Y(n231));
  // BSIM@ modules: mx245 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U526 (.A(G0), .B(n100), .Y(n232));
  // BSIM@ modules: mx13 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U291 (.A(n284), .B(n292), .Y(n233));
  // BSIM@ modules: mx13 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U290 (.A(n227), .B(n314), .Y(n234));
  NOR2_X0P5A_A12TR U540 (.A(n292), .B(n237), .Y(n236));
  // BSIM@ modules: mx198 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U541 (.A(n100), .B(n93), .Y(n237));
  NOR2_X0P5A_A12TR U603 (.A(n303), .B(fsm_flip_2_), .Y(n238));
  NOR2_X0P5A_A12TR U407 (.A(n25), .B(n26), .Y(n24));
  // BSIM@ modules: mx150 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U528 (.A(reset), .B(lfsr_seed[4]), .Y(n240));
  NAND2_X0P5A_A12TR U529 (.A(n242), .B(n314), .Y(n241));
  XOR2_X0P5M_A12TR U530 (.A(n255), .B(n270), .Y(n242));
  // BSIM@ modules: mx147 
  // BSIM@ covered_modules=1 :   OR2_X0P5M_A12TR U574 (.A(n261), .B(reset), .Y(n243));
  // BSIM@ modules: mx150 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U573 (.A(lfsr_seed[3]), .B(reset), .Y(n244));
  // BSIM@ modules: mx147 
  // BSIM@ covered_modules=1 :   OR2_X0P5M_A12TR U571 (.A(n259), .B(reset), .Y(n245));
  // BSIM@ modules: mx150 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U570 (.A(lfsr_seed[2]), .B(reset), .Y(n246));
  // BSIM@ modules: mx147 
  // BSIM@ covered_modules=1 :   OR2_X0P5M_A12TR U568 (.A(n255), .B(reset), .Y(n247));
  // BSIM@ modules: mx150 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U567 (.A(lfsr_seed[1]), .B(reset), .Y(n248));
  // BSIM@ modules: mx147 
  // BSIM@ covered_modules=1 :   OR2_X0P5M_A12TR U565 (.A(n257), .B(reset), .Y(n249));
  // BSIM@ modules: mx226 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U487 (.A(n257), .B(n27), .Y(n25));
  // BSIM@ modules: mx150 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U564 (.A(lfsr_seed[0]), .B(reset), .Y(n250));
  // BSIM@ modules: mx214 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U281 (.A(n310), .Y(n251));
  DFFQN_X1M_A12TR fsm0_state_reg_1_ (.CK(clk), .QN(n252), .D(fsm0_n19));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U281 (.A(n294), .Y(n253));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U281 (.A(n289), .Y(n254));
  DFFQN_X1M_A12TR com_lfsr_module_out_reg_2_ (.CK(clk), .QN(n255), .D(com_lfsr_module_n5));
  INV_X0P5B_A12TR U281 (.A(com_buffer_lfsr[2]), .Y(n256));
  DFFQN_X1M_A12TR com_lfsr_module_out_reg_1_ (.CK(clk), .QN(n257), .D(com_lfsr_module_n4));
  INV_X0P5B_A12TR U281 (.A(com_buffer_lfsr[1]), .Y(n258));
  DFFQN_X1M_A12TR com_lfsr_module_out_reg_3_ (.CK(clk), .QN(n259), .D(com_lfsr_module_n6));
  // BSIM@ modules: mx143 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U409 (.A(com_n57), .B(n16), .Y(n26));
  INV_X0P5B_A12TR U281 (.A(com_buffer_lfsr[3]), .Y(n260));
  DFFQN_X1M_A12TR com_lfsr_module_out_reg_4_ (.CK(clk), .QN(n261), .D(com_lfsr_module_n7));
  INV_X0P5B_A12TR U281 (.A(com_buffer_lfsr[4]), .Y(n262));
  DFFQN_X1M_A12TR main_DFF_2_Q_reg (.CK(clk), .QN(n263), .D(main_DFF_2_n4));
  DFFQN_X1M_A12TR main_DFF_0_Q_reg (.CK(clk), .QN(n266), .D(main_DFF_0_n4));
  INV_X0P5B_A12TR U281 (.A(n293), .Y(n268));
  // BSIM@ modules: mx13 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U446 (.A(n313), .B(n40), .Y(n27));
  DFFQN_X1M_A12TR com_lfsr_module_out_reg_0_ (.CK(clk), .QN(n270), .D(com_lfsr_module_n3));
  INV_X0P5B_A12TR U281 (.A(com_buffer_lfsr[0]), .Y(n271));
  DFFQN_X1M_A12TR fsm0_obf_sig_reg_1_ (.CK(clk), .QN(n272), .D(fsm0_n22));
  INV_X0P5B_A12TR U281 (.A(n303), .Y(n273));
  // BSIM@ modules: mx66 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U281 (.A(n292), .Y(n274));
  // BSIM@ modules: mx66 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U281 (.A(n296), .Y(n275));
  NAND2_X0P5A_A12TR U337 (.A(n12), .B(n13), .Y(n276));
  NAND2_X0P5A_A12TR U406 (.A(n23), .B(n24), .Y(n277));
  NAND2_X0P5A_A12TR U410 (.A(n30), .B(n31), .Y(n278));
  NAND2_X0P5A_A12TR U414 (.A(n35), .B(n36), .Y(n279));
  // BSIM@ modules: mx219 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U493 (.A(n258), .B(n22), .Y(n28));
  // BSIM@ modules: mx50 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U380 (.A(n44), .B(n45), .Y(n280));
  // BSIM@ modules: mx50 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U357 (.A(n53), .B(n54), .Y(n281));
  // BSIM@ modules: mx50 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U361 (.A(n64), .B(n65), .Y(n282));
  // BSIM@ modules: mx51 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U555 (.A(n77), .B(n78), .Y(n283));
  // BSIM@ modules: mx222 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U480 (.A(n332), .B(reset), .Y(n284));
  NAND2_X0P5A_A12TR U341 (.A(n81), .B(n82), .Y(n285));
  // BSIM@ modules: mx51 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U533 (.A(n97), .B(n98), .Y(n286));
  DFFQ_X1M_A12TR main_DFF_1_Q_reg (.CK(clk), .Q(n288), .D(main_DFF_1_n4));
  DFFQ_X1M_A12TR fsm0_state_reg_2_ (.CK(clk), .Q(n289), .D(fsm0_n20));
  // BSIM@ modules: mx146 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U292 (.A(n314), .B(n91), .Y(n29));
  // BSIM@ modules: mx214 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U281 (.A(com_counter_out[0]), .Y(n290));
  // BSIM@ modules: mx243 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U281 (.A(com_counter_out[4]), .Y(n291));
  DFFQ_X1M_A12TR com_state_reg_1_ (.CK(clk), .Q(n292), .D(com_n18));
  DFFQ_X1M_A12TR main_restore_flag_reg (.CK(clk), .Q(n293), .D(n284));
  DFFQ_X1M_A12TR fsm0_state_reg_0_ (.CK(clk), .Q(n294), .D(fsm0_n18));
  INV_X0P5B_A12TR U281 (.A(com_counter_out[1]), .Y(n295));
  DFFQ_X1M_A12TR com_state_reg_0_ (.CK(clk), .Q(n296), .D(com_n17));
  // BSIM@ modules: mx50 
  // BSIM@ covered_modules=1 :   DFFQ_X1M_A12TR main_DFF_2_restored_bit_reg (.CK(clk), .Q(n297), .D(n280));
  // BSIM@ modules: mx50 
  // BSIM@ covered_modules=1 :   DFFQ_X1M_A12TR main_DFF_0_restored_bit_reg (.CK(clk), .Q(n298), .D(n281));
  // BSIM@ modules: mx50 
  // BSIM@ covered_modules=1 :   DFFQ_X1M_A12TR main_DFF_1_restored_bit_reg (.CK(clk), .Q(n299), .D(n282));
  // BSIM@ modules: mx218 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U412 (.A(n34), .B(n29), .Y(n30));
  INV_X0P5B_A12TR U281 (.A(com_counter_out[5]), .Y(n300));
  INV_X0P5B_A12TR U281 (.A(com_buffer_lfsr[6]), .Y(n301));
  INV_X0P5B_A12TR U281 (.A(com_buffer_lfsr[5]), .Y(n302));
  DFFQ_X1M_A12TR fsm0_obf_sig_reg_0_ (.CK(clk), .Q(n303), .D(fsm0_n21));
  AND2_X0P5M_A12TR U538 (.A(n268), .B(n316), .Y(n304));
  // BSIM@ modules: mx167 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U611 (.A(com_counter_out[0]), .B(com_counter_out[1]), .Y(n305));
  INV_X0P5B_A12TR U281 (.A(com_counter_out[2]), .Y(n306));
  // BSIM@ modules: mx238 
  // BSIM@ covered_modules=1 :   XOR2_X0P5M_A12TR U629 (.A(com_counter_out[5]), .B(n400), .Y(n307));
  // BSIM@ modules: mx241 
  // BSIM@ covered_modules=1 :   XOR2_X0P5M_A12TR U632 (.A(com_counter_out[1]), .B(n290), .Y(n308));
  XNOR2_X0P5A_A12TR U634 (.A(com_counter_out[3]), .B(n398), .Y(n309));
  NOR2_X0P5A_A12TR U411 (.A(n32), .B(n33), .Y(n31));
  DFFQ_X1M_A12TR com_counter_reset_reg (.CK(clk), .Q(n310), .D(com_n26));
  // BSIM@ modules: mx146 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U464 (.A(n29), .Y(n311));
  // BSIM@ modules: mx146 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U388 (.A(n139), .Y(n312));
  // BSIM@ modules: mx13 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U281 (.A(n17), .Y(n313));
  // BSIM@ modules: mx245 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U445 (.A(reset), .Y(n314));
  INV_X0P5B_A12TR U301 (.A(G17), .Y(n315));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U435 (.A(G0), .Y(n316));
  // BSIM@ modules: mx75 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U518 (.A(n16), .Y(n317));
  // BSIM@ modules: mx145 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U500 (.A(n153), .Y(n318));
  // BSIM@ modules: mx134 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U302 (.A(n132), .Y(n319));
  // BSIM@ modules: mx226 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U488 (.A(n259), .B(n27), .Y(n32));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U350 (.A(n167), .Y(n320));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U438 (.A(G1), .Y(n321));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U474 (.A(G2), .Y(n322));
  // BSIM@ modules: mx109 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U475 (.A(G3), .Y(n323));
  INV_X0P5B_A12TR U349 (.A(com_n14), .Y(n324));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U287 (.A(n122), .Y(n325));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U422 (.A(n150), .Y(n326));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U434 (.A(n133), .Y(n327));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U426 (.A(n176), .Y(n328));
  // BSIM@ modules: mx74 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U286 (.A(n123), .Y(n329));
  // BSIM@ modules: mx143 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U413 (.A(com_n59), .B(n16), .Y(n33));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U423 (.A(n134), .Y(n330));
  // BSIM@ modules: mx86 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U432 (.A(n188), .Y(n331));
  INV_X0P5B_A12TR U418 (.A(n93), .Y(n332));
  // BSIM@ modules: mx66 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U424 (.A(n41), .Y(n333));
  // BSIM@ modules: mx75 
  // BSIM@ covered_modules=1 :   INV_X0P5B_A12TR U427 (.A(n100), .Y(n334));
  // BSIM@ modules: mx239 
  // BSIM@ covered_modules=1 :   XOR2_X0P5M_A12TR U609 (.A(com_buffer_lfsr[3]), .B(com_counter_out[3]), .Y(n335));
  XOR2_X0P5M_A12TR U608 (.A(com_buffer_lfsr[2]), .B(com_counter_out[2]), .Y(n336));
  // BSIM@ modules: mx203 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U457 (.A(n290), .B(com_buffer_lfsr[0]), .Y(n337));
  // BSIM@ modules: mx229 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U478 (.A(com_counter_out[1]), .B(n337), .Y(n338));
  // BSIM@ modules: mx229 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U306 (.A(n337), .B(n258), .Y(n339));
  // BSIM@ modules: mx219 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U494 (.A(n260), .B(n22), .Y(n34));
  // BSIM@ modules: mx141 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U516 (.A(com_buffer_lfsr[0]), .B(n290), .Y(n340));
  // BSIM@ modules: mx233 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U336 (.A(n340), .B(n295), .Y(n341));
  // BSIM@ modules: mx233 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U497 (.A(com_buffer_lfsr[1]), .B(n340), .Y(n342));
  NOR2_X0P5A_A12TR U334 (.A(n342), .B(n341), .Y(n343));
  NOR2_X0P5A_A12TR U335 (.A(n339), .B(n338), .Y(n344));
  // BSIM@ modules: mx245 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U333 (.A(n344), .B(n343), .Y(n345));
  // BSIM@ modules: mx245 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U607 (.A(n336), .B(n335), .Y(n346));
  // BSIM@ modules: mx132 
  // BSIM@ covered_modules=1 :   XOR2_X0P5M_A12TR U606 (.A(com_buffer_lfsr[5]), .B(com_counter_out[5]), .Y(n347));
  // BSIM@ modules: mx132 
  // BSIM@ covered_modules=1 :   XOR2_X0P5M_A12TR U605 (.A(com_buffer_lfsr[4]), .B(com_counter_out[4]), .Y(n348));
  // BSIM@ modules: mx242 
  // BSIM@ covered_modules=1 :   XNOR2_X0P5A_A12TR U471 (.A(com_buffer_lfsr[6]), .B(com_counter_out[6]), .Y(n349));
  // BSIM@ modules: mx218 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U416 (.A(n43), .B(n29), .Y(n35));
  // BSIM@ modules: mx132 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U604 (.A(n348), .B(n347), .Y(n350));
  NAND2_X0P5A_A12TR U469 (.A(n350), .B(n349), .Y(n351));
  // BSIM@ modules: mx245 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U470 (.A(n346), .B(n345), .Y(n352));
  // BSIM@ modules: mx167 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U491 (.A(com_counter_out[1]), .B(com_counter_out[0]), .Y(n353));
  // BSIM@ modules: mx142 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U508 (.A(com_counter_out[0]), .B(com_counter_out[1]), .Y(n354));
  // BSIM@ modules: mx4 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U507 (.A(n354), .B(com_counter_out[2]), .Y(n355));
  // BSIM@ modules: mx4 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U490 (.A(n306), .B(n353), .Y(n356));
  // BSIM@ modules: mx215 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U303 (.A(n291), .B(n359), .Y(n357));
  // BSIM@ modules: mx152 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U450 (.A(n357), .B(com_counter_out[5]), .Y(n358));
  // BSIM@ modules: mx165 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U458 (.A(com_counter_out[3]), .B(n356), .Y(n359));
  NOR2_X0P5A_A12TR U415 (.A(n37), .B(n38), .Y(n36));
  OR2_X0P5M_A12TR U617 (.A(n291), .B(n359), .Y(n360));
  // BSIM@ modules: mx152 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U616 (.A(com_counter_out[6]), .B(com_counter_out[5]), .Y(n361));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U554 (.A(n258), .B(n363), .Y(n362));
  // BSIM@ modules: mx203 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U467 (.A(com_counter_out[0]), .B(com_buffer_lfsr[0]), .Y(n363));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U369 (.A(n363), .B(n258), .Y(n364));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U552 (.A(com_n47), .B(n362), .Y(n365));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   OR2_X0P5M_A12TR U367 (.A(n256), .B(com_n48), .Y(n366));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U368 (.A(n365), .B(n364), .Y(n367));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U314 (.A(com_n48), .B(n256), .Y(n368));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U366 (.A(n367), .B(n366), .Y(n369));
  // BSIM@ modules: mx226 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U489 (.A(n261), .B(n27), .Y(n37));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U313 (.A(n369), .B(n368), .Y(n370));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U312 (.A(n260), .B(com_n49), .Y(n371));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U348 (.A(com_n49), .B(n260), .Y(n372));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U311 (.A(n371), .B(n370), .Y(n373));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   OR2_X0P5M_A12TR U346 (.A(n262), .B(com_n50), .Y(n374));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U347 (.A(n373), .B(n372), .Y(n375));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U310 (.A(com_n50), .B(n262), .Y(n376));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U345 (.A(n375), .B(n374), .Y(n377));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U309 (.A(n377), .B(n376), .Y(n378));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U308 (.A(n302), .B(com_n51), .Y(n379));
  // BSIM@ modules: mx143 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U417 (.A(com_n60), .B(n16), .Y(n38));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U373 (.A(com_n51), .B(n302), .Y(n380));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U307 (.A(n379), .B(n378), .Y(n381));
  // BSIM@ modules: mx58 
  // BSIM@ covered_modules=1 :   OR2_X0P5M_A12TR U371 (.A(n301), .B(com_n52), .Y(n382));
  // BSIM@ modules: mx246 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U372 (.A(n381), .B(n380), .Y(n383));
  AND2_X0P5M_A12TR U370 (.A(n383), .B(n382), .Y(n384));
  // BSIM@ modules: mx58 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U461 (.A(com_n52), .B(n301), .Y(n385));
  NOR2_X0P5A_A12TR U462 (.A(com_n53), .B(n384), .Y(n386));
  // BSIM@ modules: mx167 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U577 (.A(com_counter_out[1]), .B(com_counter_out[0]), .Y(n387));
  // BSIM@ modules: mx142 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U614 (.A(com_counter_out[0]), .B(com_counter_out[1]), .Y(n388));
  // BSIM@ modules: mx4 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U613 (.A(n388), .B(com_counter_out[2]), .Y(n389));
  // BSIM@ modules: mx165 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U590 (.A(com_counter_out[3]), .B(n392), .Y(n390));
  // BSIM@ modules: mx215 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U428 (.A(n291), .B(n390), .Y(n391));
  // BSIM@ modules: mx4 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U576 (.A(n306), .B(n387), .Y(n392));
  // BSIM@ modules: mx165 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U600 (.A(com_counter_out[3]), .B(com_counter_out[5]), .Y(n393));
  // BSIM@ modules: mx162 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U601 (.A(com_counter_out[4]), .B(n392), .Y(n394));
  NOR2_X0P5A_A12TR U599 (.A(n394), .B(n393), .Y(n395));
  // BSIM@ modules: mx167 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U624 (.A(com_counter_out[1]), .B(com_counter_out[0]), .Y(n396));
  // BSIM@ modules: mx165 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U627 (.A(com_counter_out[3]), .B(n398), .Y(n397));
  NOR2_X0P5A_A12TR U610 (.A(n305), .B(n306), .Y(n398));
  AND2_X0P5M_A12TR U586 (.A(n398), .B(com_counter_out[3]), .Y(n399));
  // BSIM@ modules: mx13 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U447 (.A(n41), .B(n42), .Y(n40));
  // BSIM@ modules: mx162 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U585 (.A(n399), .B(com_counter_out[4]), .Y(n400));
  NOR2_X0P5A_A12TR U621 (.A(n400), .B(n300), .Y(n401));
  // BSIM@ modules: mx66 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U583 (.A(n274), .B(n275), .Y(n41));
  OR2_X0P5M_A12TR U448 (.A(n274), .B(priority_flag), .Y(n42));
  // BSIM@ modules: mx219 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U495 (.A(n262), .B(n22), .Y(n43));
  // BSIM@ modules: mx50 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U381 (.A(n51), .B(n297), .Y(n44));
  // BSIM@ modules: mx50 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U382 (.A(n46), .B(n47), .Y(n45));
  // BSIM@ modules: mx199 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U472 (.A(n51), .B(reset), .Y(n46));
  NAND2_X0P5A_A12TR U383 (.A(n48), .B(n49), .Y(n47));
  OR2_X0P5M_A12TR U618 (.A(n268), .B(n263), .Y(n48));
  // BSIM@ modules: mx155 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U503 (.A(n50), .B(n268), .Y(n49));
  // BSIM@ modules: mx201 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U502 (.A(G2), .B(n105), .Y(n50));
  AND2_X0P5M_A12TR U282 (.A(n73), .B(n74), .Y(n51));
  // BSIM@ modules: mx50 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U358 (.A(n51), .B(n298), .Y(n53));
  // BSIM@ modules: mx50 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U359 (.A(n46), .B(n55), .Y(n54));
  NAND2_X0P5A_A12TR U360 (.A(n56), .B(n57), .Y(n55));
  OR2_X0P5M_A12TR U537 (.A(n304), .B(n266), .Y(n56));
  // BSIM@ modules: mx155 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U504 (.A(n58), .B(n268), .Y(n57));
  // BSIM@ modules: mx134 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U505 (.A(n59), .B(G0), .Y(n58));
  NAND2_X0P5A_A12TR U439 (.A(G3), .B(n105), .Y(n59));
  // BSIM@ modules: mx50 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U362 (.A(n51), .B(n299), .Y(n64));
  // BSIM@ modules: mx50 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U363 (.A(n46), .B(n66), .Y(n65));
  NAND2_X0P5A_A12TR U364 (.A(n67), .B(n68), .Y(n66));
  // BSIM@ modules: mx154 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U433 (.A(n293), .B(n288), .Y(n67));
  // BSIM@ modules: mx155 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U473 (.A(n268), .B(n315), .Y(n68));
  // BSIM@ modules: mx146 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U331 (.A(n314), .B(n112), .Y(n73));
  // BSIM@ modules: mx176 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U283 (.A(n332), .B(n324), .Y(n74));
  // BSIM@ modules: mx51 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U557 (.A(n80), .B(com_buffer_lfsr[5]), .Y(n77));
  // BSIM@ modules: mx51 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U556 (.A(n79), .B(com_n61), .Y(n78));
  // BSIM@ modules: mx199 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U517 (.A(reset), .B(n317), .Y(n79));
  // BSIM@ modules: mx13 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U328 (.A(n313), .B(n101), .Y(n80));
  // BSIM@ modules: mx230 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U343 (.A(n86), .B(n21), .Y(n81));
  NOR2_X0P5A_A12TR U342 (.A(n83), .B(n84), .Y(n82));
  // BSIM@ modules: mx217 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U485 (.A(n17), .B(n85), .Y(n83));
  // BSIM@ modules: mx141 
  // BSIM@ covered_modules=1 :   AND2_X0P5M_A12TR U344 (.A(n290), .B(n16), .Y(n84));
  // BSIM@ modules: mx149 
  // BSIM@ covered_modules=1 :   OR2_X0P5M_A12TR U486 (.A(n19), .B(n270), .Y(n85));
  // BSIM@ modules: mx219 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U496 (.A(n271), .B(n22), .Y(n86));
  NAND2_X0P5A_A12TR U465 (.A(n89), .B(priority_flag), .Y(n88));
  // BSIM@ modules: mx217 
  // BSIM@ covered_modules=1 :   NOR2_X0P5A_A12TR U466 (.A(n274), .B(n17), .Y(n89));
  // BSIM@ modules: mx198 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U293 (.A(n333), .B(n93), .Y(n91));
  NAND2_X0P5A_A12TR U602 (.A(n238), .B(n272), .Y(n93));
  // BSIM@ modules: mx75 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U296 (.A(n334), .B(n96), .Y(n94));
  NAND2_X0P5A_A12TR U459 (.A(com_n54), .B(G0), .Y(n96));
  // BSIM@ modules: mx51 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U535 (.A(n80), .B(com_buffer_lfsr[6]), .Y(n97));
  // BSIM@ modules: mx51 
  // BSIM@ covered_modules=1 :   NAND2_X0P5A_A12TR U534 (.A(n79), .B(com_n62), .Y(n98));
  DFFQ_X1M_A12TR fsm0_priority_flag_reg (.CK(clk), .Q(priority_flag), .D(fsm0_n24));
  /*CASIO@<instance>
     <id>mx4</id>
     <module>mux21_ao22_mx0</module>
     <compmap>F1:U490, F2:U506, F3:U507, F4:U576, F5:U612, F6:U613</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  mux21_ao22_mx0 mx4(.com_counter_out_2_(com_counter_out[2]), .n306(n306), .n353(n353), .n354(n354), .n387(n387), .n388(n388), .com_n48(com_n48), .com_n58(com_n58));
  /*CASIO@<instance>
     <id>mx8</id>
     <module>mux21_ao22_mx1</module>
     <compmap>F1:U384, F2:U385, F3:U386, F4:U391, F5:U392, F6:U393, F7:U395, F8:U396, F9:U397</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  mux21_ao22_mx1 mx8(.n106(n106), .n111(n111), .n297(n297), .n298(n298), .n299(n299), .n315(n315), .n50(n50), .n73(n73), .main_DFF_0_n4(main_DFF_0_n4), .main_DFF_1_n4(main_DFF_1_n4), .main_DFF_2_n4(main_DFF_2_n4));
  /*CASIO@<instance>
     <id>mx13</id>
     <module>mux31_ao222_mx2</module>
     <compmap>F1:U281, F2:U289, F3:U290, F4:U291, F5:U328, F6:U329, F7:U446, F8:U447</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  mux31_ao222_mx2 mx13(.n102(n102), .n227(n227), .n284(n284), .n292(n292), .n314(n314), .n334(n334), .n41(n41), .n42(n42), .n27(n27), .n80(n80));
  /*CASIO@<instance>
     <id>mx39</id>
     <module>mux21i_aoi221_mx3</module>
     <compmap>F1:U318, F2:U400, F3:U511, F4:U512, F5:U545, F6:U546, F7:U547</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  mux21i_aoi221_mx3 mx39(.n123(n123), .n147(n147), .n158(n158), .n170(n170), .n182(n182), .n185(n185), .n320(n320), .n331(n331), .n156(n156), .n181(n181));
  /*CASIO@<instance>
     <id>mx44</id>
     <module>mux21i_aoi221_mx4</module>
     <compmap>F1:U284, F2:U299, F3:U300, F4:U509, F5:U543, F6:U549, F7:U550</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  mux21i_aoi221_mx4 mx44(.n148(n148), .n154(n154), .n182(n182), .n200(n200), .n219(n219), .n320(n320), .n326(n326), .n330(n330), .n189(n189), .n198(n198));
  /*CASIO@<instance>
     <id>mx50</id>
     <module>reg_mx5</module>
     <compmap>F1:main_DFF_1_restored_bit_reg, F2:main_DFF_0_restored_bit_reg, F3:main_DFF_2_restored_bit_reg, F4:U357, F5:U358, F6:U359, F7:U361, F8:U362, F9:U363, F10:U380, F11:U381, F12:U382, </compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  reg_mx5 mx50(.clk(clk), .n46(n46), .n47(n47), .n51(n51), .n55(n55), .n66(n66), .n297(n297), .n298(n298), .n299(n299));
  /*CASIO@<instance>
     <id>mx51</id>
     <module>reg_mx6</module>
     <compmap>F1:com_buffer_lfsr_reg_6_, F2:com_buffer_lfsr_reg_5_, F3:U533, F4:U534, F5:U535, F6:U555, F7:U556, F8:U557, </compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  reg_mx6 mx51(.clk(clk), .com_n61(com_n61), .com_n62(com_n62), .n79(n79), .n80(n80), .com_buffer_lfsr_5_(com_buffer_lfsr[5]), .com_buffer_lfsr_6_(com_buffer_lfsr[6]));
  /*CASIO@<instance>
     <id>mx58</id>
     <module>decoder24_mx7</module>
     <compmap>F1:U371, F2:U461</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  decoder24_mx7 mx58(.com_n52(com_n52), .n301(n301), .n382(n382), .n385(n385));
  /*CASIO@<instance>
     <id>mx66</id>
     <module>decoder24_mx8</module>
     <compmap>F1:U281, F2:U281, F3:U421, F4:U424, F5:U575, F6:U583, F7:U584</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  decoder24_mx8 mx66(.n292(n292), .n296(n296), .n100(n100), .n19(n19), .n227(n227), .n333(n333), .n41(n41));
  /*CASIO@<instance>
     <id>mx74</id>
     <module>decoder24_mx9</module>
     <compmap>F1:U286, F2:U298, F3:U405</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  decoder24_mx9 mx74(.n123(n123), .n137(n137), .n127(n127), .n191(n191));
  /*CASIO@<instance>
     <id>mx75</id>
     <module>decoder24_mx10</module>
     <compmap>F1:U288, F2:U296, F3:U427, F4:U518</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  decoder24_mx10 mx75(.n100(n100), .n96(n96), .n16(n16), .n317(n317), .n94(n94));
  /*CASIO@<instance>
     <id>mx86</id>
     <module>decoder38_mx11</module>
     <compmap>F1:U281, F2:U281, F3:U287, F4:U355, F5:U356, F6:U419, F7:U420, F8:U422, F9:U423, F10:U426, F11:U429, F12:U430, F13:U431, F14:U432, F15:U434, F16:U579, F17:U580, F18:U581, F19:U582, F20:U587, F21:U588, F22:U592, F23:U593, F24:U594, F25:U595, F26:U596, F27:U597, F28:U598</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  decoder38_mx11 mx86(.n252(n252), .n289(n289), .n294(n294), .n119(n119), .n123(n123), .n133(n133), .n134(n134), .n147(n147), .n150(n150), .n176(n176), .n188(n188), .n326(n326), .n327(n327), .n328(n328), .n330(n330), .n331(n331));
  /*CASIO@<instance>
     <id>mx109</id>
     <module>decoder416_mx12</module>
     <compmap>F1:U315, F2:U319, F3:U350, F4:U435, F5:U438, F6:U455, F7:U456, F8:U474, F9:U475, F10:U477, F11:U481, F12:U482, F13:U510, F14:U514, F15:U515, F16:U520, F17:U521, F18:U522, F19:U531, F20:U532</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  decoder416_mx12 mx109(.G0(G0), .G1(G1), .G2(G2), .G3(G3), .n154(n154), .n167(n167), .n185(n185), .n192(n192), .n213(n213), .n219(n219), .n320(n320));
  /*CASIO@<instance>
     <id>mx132</id>
     <module>eqCmp2_mx13</module>
     <compmap>F1:U604, F2:U605, F3:U606</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  eqCmp2_mx13 mx132(.com_buffer_lfsr_4_(com_buffer_lfsr[4]), .com_buffer_lfsr_5_(com_buffer_lfsr[5]), .com_counter_out_4_(com_counter_out[4]), .com_counter_out_5_(com_counter_out[5]), .n350(n350));
  /*CASIO@<instance>
     <id>mx134</id>
     <module>and2gate_mx14</module>
     <compmap>F1:U302, F2:U451, F3:U505</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  and2gate_mx14 mx134(.G0(G0), .n59(n59), .n93(n93), .n319(n319), .n58(n58));
  /*CASIO@<instance>
     <id>mx139</id>
     <module>and2gate_mx15</module>
     <compmap>F1:U619, F2:U622, F3:U625</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  and2gate_mx15 mx139(.com_count_n5(com_count_n5), .com_count_n7(com_count_n7), .com_count_n9(com_count_n9), .n251(n251), .com_count_n12(com_count_n12), .com_count_n14(com_count_n14), .com_count_n16(com_count_n16));
  /*CASIO@<instance>
     <id>mx141</id>
     <module>and2gate_mx16</module>
     <compmap>F1:U344, F2:U516</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  and2gate_mx16 mx141(.com_buffer_lfsr_0_(com_buffer_lfsr[0]), .n16(n16), .n290(n290), .n340(n340), .n84(n84));
  /*CASIO@<instance>
     <id>mx142</id>
     <module>and2gate_mx17</module>
     <compmap>F1:U508, F2:U614</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  and2gate_mx17 mx142(.com_counter_out_0_(com_counter_out[0]), .com_counter_out_1_(com_counter_out[1]), .n354(n354), .n388(n388));
  /*CASIO@<instance>
     <id>mx143</id>
     <module>and2gate_mx18</module>
     <compmap>F1:U340, F2:U409, F3:U413, F4:U417</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  and2gate_mx18 mx143(.com_n57(com_n57), .com_n58(com_n58), .com_n59(com_n59), .com_n60(com_n60), .n16(n16), .n15(n15), .n26(n26), .n33(n33), .n38(n38));
  /*CASIO@<instance>
     <id>mx145</id>
     <module>and2gate_mx19</module>
     <compmap>F1:U479, F2:U500, F3:U523</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  and2gate_mx19 mx145(.G0(G0), .n117(n117), .n332(n332), .n106(n106), .n318(n318));
  /*CASIO@<instance>
     <id>mx146</id>
     <module>and2gate_mx20</module>
     <compmap>F1:U292, F2:U330, F3:U331, F4:U388, F5:U452, F6:U464</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  and2gate_mx20 mx146(.n112(n112), .n178(n178), .n314(n314), .n91(n91), .n96(n96), .n102(n102), .n311(n311), .n312(n312), .n73(n73));
  /*CASIO@<instance>
     <id>mx147</id>
     <module>or2gate_mx21</module>
     <compmap>F1:U565, F2:U568, F3:U571, F4:U574</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  or2gate_mx21 mx147(.n255(n255), .n257(n257), .n259(n259), .n261(n261), .reset(reset), .n243(n243), .n245(n245), .n247(n247), .n249(n249));
  /*CASIO@<instance>
     <id>mx149</id>
     <module>or2gate_mx22</module>
     <compmap>F1:U484, F2:U486</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  or2gate_mx22 mx149(.n19(n19), .n255(n255), .n270(n270), .n18(n18), .n85(n85));
  /*CASIO@<instance>
     <id>mx150</id>
     <module>nand2gate_mx23</module>
     <compmap>F1:U528, F2:U564, F3:U567, F4:U570, F5:U573</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nand2gate_mx23 mx150(.lfsr_seed_0_(lfsr_seed[0]), .lfsr_seed_1_(lfsr_seed[1]), .lfsr_seed_2_(lfsr_seed[2]), .lfsr_seed_3_(lfsr_seed[3]), .lfsr_seed_4_(lfsr_seed[4]), .reset(reset), .n240(n240), .n244(n244), .n246(n246), .n248(n248), .n250(n250));
  /*CASIO@<instance>
     <id>mx152</id>
     <module>nand2gate_mx24</module>
     <compmap>F1:U450, F2:U616</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nand2gate_mx24 mx152(.com_counter_out_5_(com_counter_out[5]), .com_counter_out_6_(com_counter_out[6]), .n357(n357), .n358(n358), .n361(n361));
  /*CASIO@<instance>
     <id>mx154</id>
     <module>nand2gate_mx25</module>
     <compmap>F1:U332, F2:U433</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nand2gate_mx25 mx154(.n288(n288), .n293(n293), .n332(n332), .n112(n112), .n67(n67));
  /*CASIO@<instance>
     <id>mx155</id>
     <module>nand2gate_mx26</module>
     <compmap>F1:U473, F2:U503, F3:U504</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nand2gate_mx26 mx155(.n268(n268), .n315(n315), .n50(n50), .n58(n58), .n49(n49), .n57(n57), .n68(n68));
  /*CASIO@<instance>
     <id>mx162</id>
     <module>nand2gate_mx27</module>
     <compmap>F1:U585, F2:U601</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nand2gate_mx27 mx162(.com_counter_out_4_(com_counter_out[4]), .n392(n392), .n399(n399), .n394(n394), .n400(n400));
  /*CASIO@<instance>
     <id>mx165</id>
     <module>nand2gate_mx28</module>
     <compmap>F1:U458, F2:U590, F3:U600, F4:U627</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nand2gate_mx28 mx165(.com_counter_out_3_(com_counter_out[3]), .com_counter_out_5_(com_counter_out[5]), .n356(n356), .n392(n392), .n398(n398), .n359(n359), .n390(n390), .n393(n393), .n397(n397));
  /*CASIO@<instance>
     <id>mx167</id>
     <module>nand2gate_mx29</module>
     <compmap>F1:U491, F2:U577, F3:U611, F4:U624</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nand2gate_mx29 mx167(.com_counter_out_0_(com_counter_out[0]), .com_counter_out_1_(com_counter_out[1]), .n305(n305), .n353(n353), .n387(n387), .n396(n396));
  /*CASIO@<instance>
     <id>mx171</id>
     <module>nand2gate_mx30</module>
     <compmap>F1:U285, F2:U375</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nand2gate_mx30 mx171(.n122(n122), .n123(n123), .n319(n319), .n201(n201), .n204(n204));
  /*CASIO@<instance>
     <id>mx172</id>
     <module>nand2gate_mx31</module>
     <compmap>F1:U322, F2:U326</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nand2gate_mx31 mx172(.n136(n136), .n327(n327), .n331(n331), .n129(n129), .n159(n159));
  /*CASIO@<instance>
     <id>mx176</id>
     <module>nand2gate_mx32</module>
     <compmap>F1:U283, F2:U304</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nand2gate_mx32 mx176(.n289(n289), .n324(n324), .n332(n332), .n217(n217), .n74(n74));
  /*CASIO@<instance>
     <id>mx178</id>
     <module>nand2gate_mx33</module>
     <compmap>F1:U297, F2:U551</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nand2gate_mx33 mx178(.n190(n190), .n191(n191), .n201(n201), .n182(n182), .n200(n200));
  /*CASIO@<instance>
     <id>mx185</id>
     <module>nand2gate_mx34</module>
     <compmap>F1:U317, F2:U352, F3:U442</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nand2gate_mx34 mx185(.n164(n164), .n167(n167), .n288(n288), .n316(n316), .n114(n114), .n163(n163), .n166(n166));
  /*CASIO@<instance>
     <id>mx187</id>
     <module>nand2gate_mx35</module>
     <compmap>F1:U325, F2:U351, F3:U476</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nand2gate_mx35 mx187(.n131(n131), .n132(n132), .n192(n192), .n326(n326), .n130(n130), .n137(n137), .n173(n173));
  /*CASIO@<instance>
     <id>mx189</id>
     <module>nand2gate_mx36</module>
     <compmap>F1:U316, F2:U323</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nand2gate_mx36 mx189(.n153(n153), .n163(n163), .n166(n166), .n136(n136), .n162(n162));
  /*CASIO@<instance>
     <id>mx198</id>
     <module>nand2gate_mx37</module>
     <compmap>F1:U293, F2:U541</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nand2gate_mx37 mx198(.n100(n100), .n333(n333), .n93(n93), .n237(n237), .n91(n91));
  /*CASIO@<instance>
     <id>mx199</id>
     <module>nor2gate_mx38</module>
     <compmap>F1:U472, F2:U517, F3:U524, F4:U539, F5:U542, F6:U544, F7:U548, F8:U560</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nor2gate_mx38 mx199(.n181(n181), .n189(n189), .n198(n198), .n227(n227), .n236(n236), .n268(n268), .n317(n317), .n51(n51), .reset(reset), .com_n17(com_n17), .fsm0_n18(fsm0_n18), .fsm0_n19(fsm0_n19), .fsm0_n20(fsm0_n20), .n117(n117), .n226(n226), .n46(n46), .n79(n79));
  /*CASIO@<instance>
     <id>mx201</id>
     <module>nor2gate_mx39</module>
     <compmap>F1:U502, F2:U513</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nor2gate_mx39 mx201(.G2(G2), .n105(n105), .n171(n171), .n170(n170), .n50(n50));
  /*CASIO@<instance>
     <id>mx203</id>
     <module>nor2gate_mx40</module>
     <compmap>F1:U457, F2:U467</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nor2gate_mx40 mx203(.com_buffer_lfsr_0_(com_buffer_lfsr[0]), .com_counter_out_0_(com_counter_out[0]), .n290(n290), .n337(n337), .n363(n363));
  /*CASIO@<instance>
     <id>mx214</id>
     <module>nor2gate_mx41</module>
     <compmap>F1:U281, F2:U281, F3:U628, F4:U630, F5:U631, F6:U633</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nor2gate_mx41 mx214(.com_counter_out_0_(com_counter_out[0]), .n307(n307), .n308(n308), .n309(n309), .n310(n310), .com_count_n10(com_count_n10), .com_count_n11(com_count_n11), .com_count_n13(com_count_n13), .com_count_n15(com_count_n15));
  /*CASIO@<instance>
     <id>mx215</id>
     <module>nor2gate_mx42</module>
     <compmap>F1:U303, F2:U428</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nor2gate_mx42 mx215(.n291(n291), .n359(n359), .n390(n390), .n357(n357), .n391(n391));
  /*CASIO@<instance>
     <id>mx217</id>
     <module>nor2gate_mx43</module>
     <compmap>F1:U466, F2:U483, F3:U485</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nor2gate_mx43 mx217(.n17(n17), .n18(n18), .n274(n274), .n85(n85), .n14(n14), .n83(n83), .n89(n89));
  /*CASIO@<instance>
     <id>mx218</id>
     <module>nor2gate_mx44</module>
     <compmap>F1:U408, F2:U412, F3:U416</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nor2gate_mx44 mx218(.n28(n28), .n29(n29), .n34(n34), .n43(n43), .n23(n23), .n30(n30), .n35(n35));
  /*CASIO@<instance>
     <id>mx219</id>
     <module>nor2gate_mx45</module>
     <compmap>F1:U492, F2:U493, F3:U494, F4:U495, F5:U496</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nor2gate_mx45 mx219(.n22(n22), .n256(n256), .n258(n258), .n260(n260), .n262(n262), .n271(n271), .n20(n20), .n28(n28), .n34(n34), .n43(n43), .n86(n86));
  /*CASIO@<instance>
     <id>mx222</id>
     <module>nor2gate_mx46</module>
     <compmap>F1:U480, F2:U562</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nor2gate_mx46 mx222(.n19(n19), .n332(n332), .reset(reset), .n229(n229), .n284(n284));
  /*CASIO@<instance>
     <id>mx224</id>
     <module>nor2gate_mx47</module>
     <compmap>F1:U353, F2:U394</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nor2gate_mx47 mx224(.n118(n118), .n315(n315), .n316(n316), .fsm0_n24(fsm0_n24), .n111(n111));
  /*CASIO@<instance>
     <id>mx226</id>
     <module>nor2gate_mx48</module>
     <compmap>F1:U487, F2:U488, F3:U489</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nor2gate_mx48 mx226(.n257(n257), .n259(n259), .n261(n261), .n27(n27), .n25(n25), .n32(n32), .n37(n37));
  /*CASIO@<instance>
     <id>mx227</id>
     <module>nor2gate_mx49</module>
     <compmap>F1:U399, F2:U403</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nor2gate_mx49 mx227(.n139(n139), .n140(n140), .n172(n172), .n125(n125), .n155(n155));
  /*CASIO@<instance>
     <id>mx229</id>
     <module>nor2gate_mx50</module>
     <compmap>F1:U306, F2:U478</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nor2gate_mx50 mx229(.com_counter_out_1_(com_counter_out[1]), .n258(n258), .n337(n337), .n338(n338), .n339(n339));
  /*CASIO@<instance>
     <id>mx230</id>
     <module>nor2gate_mx51</module>
     <compmap>F1:U339, F2:U343</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nor2gate_mx51 mx230(.n20(n20), .n21(n21), .n86(n86), .n12(n12), .n81(n81));
  /*CASIO@<instance>
     <id>mx233</id>
     <module>nor2gate_mx52</module>
     <compmap>F1:U336, F2:U497</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nor2gate_mx52 mx233(.com_buffer_lfsr_1_(com_buffer_lfsr[1]), .n295(n295), .n340(n340), .n341(n341), .n342(n342));
  /*CASIO@<instance>
     <id>mx235</id>
     <module>nor2gate_mx53</module>
     <compmap>F1:U377, F2:U454</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  nor2gate_mx53 mx235(.n180(n180), .n217(n217), .n254(n254), .n179(n179), .n210(n210));
  /*CASIO@<instance>
     <id>mx237</id>
     <module>xor2gate_mx54</module>
     <compmap>F1:U536, F2:U620</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  xor2gate_mx54 mx237(.com_counter_out_6_(com_counter_out[6]), .n395(n395), .n401(n401), .com_count_n9(com_count_n9), .com_n62(com_n62));
  /*CASIO@<instance>
     <id>mx238</id>
     <module>xor2gate_mx55</module>
     <compmap>F1:U444, F2:U558, F3:U629</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  xor2gate_mx55 mx238(.com_counter_out_5_(com_counter_out[5]), .n357(n357), .n391(n391), .n400(n400), .com_n51(com_n51), .com_n61(com_n61), .n307(n307));
  /*CASIO@<instance>
     <id>mx239</id>
     <module>xor2gate_mx56</module>
     <compmap>F1:U443, F2:U578, F3:U609</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  xor2gate_mx56 mx239(.com_buffer_lfsr_3_(com_buffer_lfsr[3]), .com_counter_out_3_(com_counter_out[3]), .n356(n356), .n392(n392), .com_n49(com_n49), .com_n59(com_n59), .n335(n335));
  /*CASIO@<instance>
     <id>mx241</id>
     <module>xor2gate_mx57</module>
     <compmap>F1:U553, F2:U591, F3:U632</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  xor2gate_mx57 mx241(.com_counter_out_0_(com_counter_out[0]), .com_counter_out_1_(com_counter_out[1]), .n290(n290), .com_n47(com_n47), .com_n57(com_n57), .n308(n308));
  /*CASIO@<instance>
     <id>mx242</id>
     <module>xnor2gate_mx58</module>
     <compmap>F1:U449, F2:U471</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  xnor2gate_mx58 mx242(.com_buffer_lfsr_6_(com_buffer_lfsr[6]), .com_counter_out_6_(com_counter_out[6]), .n358(n358), .com_n52(com_n52), .n349(n349));
  /*CASIO@<instance>
     <id>mx243</id>
     <module>xnor2gate_mx59</module>
     <compmap>F1:U281, F2:U294, F3:U589, F4:U626</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  xnor2gate_mx59 mx243(.com_counter_out_4_(com_counter_out[4]), .n359(n359), .n390(n390), .n397(n397), .com_count_n7(com_count_n7), .com_n50(com_n50), .com_n60(com_n60));
  /*CASIO@<instance>
     <id>mx245</id>
     <module>ortree_mx60</module>
     <compmap>F1:U333, F2:U379, F3:U445, F4:U468, F5:U470, F6:U525, F7:U526, F8:U607</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  ortree_mx60 mx245(.G0(G0), .n100(n100), .n335(n335), .n336(n336), .n343(n343), .n344(n344), .n351(n351), .reset(reset), .n231(n231));
  /*CASIO@<instance>
     <id>mx246</id>
     <module>cgentree_mx61</module>
     <compmap>F1:U307, F2:U308, F3:U309, F4:U310, F5:U311, F6:U312, F7:U313, F8:U314, F9:U345, F10:U346, F11:U347, F12:U348, F13:U366, F14:U367, F15:U368, F16:U369, F17:U372, F18:U373, F19:U552, F20:U554</compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  cgentree_mx61 mx246(.com_n47(com_n47), .com_n48(com_n48), .com_n49(com_n49), .com_n50(com_n50), .com_n51(com_n51), .n256(n256), .n258(n258), .n260(n260), .n262(n262), .n302(n302), .n363(n363), .n383(n383));
  /*CASIO@<instance>
     <id>mx247</id>
     <module>counter_mx62</module>
     <compmap>F1:com_count_cout_reg_6_, F2:com_count_cout_reg_5_, F3:com_count_cout_reg_4_, F4:com_count_cout_reg_2_, F5:com_count_cout_reg_3_, F6:com_count_cout_reg_0_, F7:com_count_cout_reg_1_, </compmap>
     <creationtool>bsim</creationtool>
     <confidence>0.60</confidence>
     <flag></flag>
     <wiremap></wiremap>
     </instance>
   */
  counter_mx62 mx247(.clk(clk), .com_count_n10(com_count_n10), .com_count_n11(com_count_n11), .com_count_n12(com_count_n12), .com_count_n13(com_count_n13), .com_count_n14(com_count_n14), .com_count_n15(com_count_n15), .com_count_n16(com_count_n16), .com_counter_out_0_(com_counter_out[0]), .com_counter_out_1_(com_counter_out[1]), .com_counter_out_2_(com_counter_out[2]), .com_counter_out_3_(com_counter_out[3]), .com_counter_out_4_(com_counter_out[4]), .com_counter_out_5_(com_counter_out[5]), .com_counter_out_6_(com_counter_out[6]));
endmodule
