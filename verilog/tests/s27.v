module s27 ( GND, VDD, clk, reset, G0, G1, G17, G2, G3, lfsr_seed );
  input [4:0] lfsr_seed;
  input GND, VDD, clk, reset, G0, G1, G2, G3;
  output G17;
  wire   fsm_flip_2_, priority_flag, main_DFF_0_n4, main_DFF_1_n4,
         main_DFF_2_n4, fsm0_n24, fsm0_n23, fsm0_n22, fsm0_n21, fsm0_n20,
         fsm0_n19, fsm0_n18, com_n62, com_n61, com_n60, com_n59, com_n58,
         com_n57, com_n54, com_n53, com_n52, com_n51, com_n50, com_n49,
         com_n48, com_n47, com_n26, com_n18, com_n17, com_n14,
         com_lfsr_module_n7, com_lfsr_module_n6, com_lfsr_module_n5,
         com_lfsr_module_n4, com_lfsr_module_n3, com_count_n16, com_count_n15,
         com_count_n14, com_count_n13, com_count_n12, com_count_n11,
         com_count_n10, com_count_n9, com_count_n7, com_count_n5, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n53, n54, n55, n56, n57,
         n58, n59, n64, n65, n66, n67, n68, n73, n74, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n88, n89, n91, n93, n94, n96, n97, n98, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n117, n118, n119, n120, n122, n123, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n136, n137,
         n139, n140, n141, n143, n144, n146, n147, n148, n149, n150, n151,
         n153, n154, n155, n156, n157, n158, n159, n160, n162, n163, n164,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n178, n179, n180, n181, n182, n183, n184, n185, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n203, n204, n205, n206, n207, n208, n210, n211, n212, n213, n214,
         n215, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n231, n232, n233, n234, n236, n237, n238, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n266, n268, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401;
  wire   [6:0] com_buffer_lfsr;
  wire   [6:0] com_counter_out;

  DFFQN_X1M_A12TR com_lfsr_module_out_reg_4_ ( .D(com_lfsr_module_n7), .CK(clk),  
        .QN(n261) );
  DFFQN_X1M_A12TR com_lfsr_module_out_reg_3_ ( .D(com_lfsr_module_n6), .CK(clk),  
        .QN(n259) );
  DFFQN_X1M_A12TR com_lfsr_module_out_reg_2_ ( .D(com_lfsr_module_n5), .CK(clk),  
        .QN(n255) );
  DFFQN_X1M_A12TR com_lfsr_module_out_reg_1_ ( .D(com_lfsr_module_n4), .CK(clk),  
        .QN(n257) );
  DFFQN_X1M_A12TR com_lfsr_module_out_reg_0_ ( .D(com_lfsr_module_n3), .CK(clk),  
        .QN(n270) );
  DFFQ_X1M_A12TR com_count_cout_reg_6_ ( .D(com_count_n16), .CK(clk), .Q(com_counter_out[6]) );
  DFFQ_X1M_A12TR com_count_cout_reg_5_ ( .D(com_count_n15), .CK(clk), .Q(com_counter_out[5]) );
  INV_X0P5B_A12TR U281 ( .A(com_counter_out[5]), .Y(n300) ); 
  DFFQ_X1M_A12TR com_buffer_lfsr_reg_6_ ( .D(n286), .CK(clk), .Q(com_buffer_lfsr[6]));
  INV_X0P5B_A12TR U281 ( .A(com_buffer_lfsr[6]), .Y(n301) );

        
  DFFQ_X1M_A12TR com_buffer_lfsr_reg_0_ ( .D(n285), .CK(clk), .Q(com_buffer_lfsr[0]));
  INV_X0P5B_A12TR U281 ( .A(com_buffer_lfsr[0]), .Y(n271) );
        
  DFFQ_X1M_A12TR fsm0_state_reg_0_ ( .D(fsm0_n18), .CK(clk), .Q(n294));
  INV_X0P5B_A12TR U281 ( .A(n294), .Y(n253) );
  
  DFFQN_X1M_A12TR fsm0_obf_sig_reg_1_ ( .D(fsm0_n22), .CK(clk),  .QN(n272) );
  DFFQ_X1M_A12TR main_restore_flag_reg ( .D(n284), .CK(clk), .Q(n293));
  INV_X0P5B_A12TR U281 ( .A(n293), .Y(n268) );
  
  DFFQN_X1M_A12TR fsm0_state_reg_1_ ( .D(fsm0_n19), .CK(clk),  .QN(n252) );
  DFFQ_X1M_A12TR fsm0_state_reg_2_ ( .D(fsm0_n20), .CK(clk), .Q(n289));
  INV_X0P5B_A12TR U281 ( .A(n289), .Y(n254) );
  
  DFFQ_X1M_A12TR com_state_reg_1_ ( .D(com_n18), .CK(clk), .Q(n292));
  INV_X0P5B_A12TR U281 ( .A(n292), .Y(n274) );
  
  DFFQ_X1M_A12TR com_state_reg_0_ ( .D(com_n17), .CK(clk), .Q(n296));
  INV_X0P5B_A12TR U281 ( .A(n296), .Y(n275) );
  
  DFFQ_X1M_A12TR com_buffer_lfsr_reg_5_ ( .D(n283), .CK(clk), .Q(com_buffer_lfsr[5]));
  INV_X0P5B_A12TR U281 ( .A(com_buffer_lfsr[5]), .Y(n302) );
  
  DFFQ_X1M_A12TR fsm0_obf_sig_reg_2_ ( .D(fsm0_n23), .CK(clk), .Q(fsm_flip_2_) 
         );
  DFFQ_X1M_A12TR fsm0_obf_sig_reg_0_ ( .D(fsm0_n21), .CK(clk), .Q(n303));
  INV_X0P5B_A12TR U281 ( .A(n303), .Y(n273) );
  
  DFFQ_X1M_A12TR main_DFF_1_restored_bit_reg ( .D(n282), .CK(clk), .Q(n299)  );
  DFFQ_X1M_A12TR main_DFF_1_Q_reg ( .D(main_DFF_1_n4), .CK(clk), .Q(n288)  );
  DFFQN_X1M_A12TR main_DFF_0_Q_reg ( .D(main_DFF_0_n4), .CK(clk),  .QN(n266) );
  DFFQ_X1M_A12TR main_DFF_0_restored_bit_reg ( .D(n281), .CK(clk), .Q(n298)  );
  DFFQN_X1M_A12TR main_DFF_2_Q_reg ( .D(main_DFF_2_n4), .CK(clk),  .QN(n263) );
  DFFQ_X1M_A12TR main_DFF_2_restored_bit_reg ( .D(n280), .CK(clk), .Q(n297)  );
  DFFQ_X1M_A12TR fsm0_priority_flag_reg ( .D(fsm0_n24), .CK(clk), .Q(priority_flag) );
  DFFQ_X1M_A12TR com_buffer_lfsr_reg_4_ ( .D(n279), .CK(clk), .Q(com_buffer_lfsr[4]) );
  INV_X0P5B_A12TR U281 ( .A(com_buffer_lfsr[4]), .Y(n262) );     
       
  DFFQ_X1M_A12TR com_buffer_lfsr_reg_3_ ( .D(n278), .CK(clk), .Q(com_buffer_lfsr[3]) );
  INV_X0P5B_A12TR U281 ( .A(com_buffer_lfsr[3]), .Y(n260) );     
       
       
  DFFQ_X1M_A12TR com_buffer_lfsr_reg_1_ ( .D(n277), .CK(clk), .Q(com_buffer_lfsr[1]) );
  INV_X0P5B_A12TR U281 ( .A(com_buffer_lfsr[1]), .Y(n258) );
        
  DFFQ_X1M_A12TR com_buffer_lfsr_reg_2_ ( .D(n276), .CK(clk), .Q(com_buffer_lfsr[2]));
  INV_X0P5B_A12TR U281 ( .A(com_buffer_lfsr[2]), .Y(n256) );     
       
  DFFQ_X1M_A12TR com_counter_reset_reg ( .D(com_n26), .CK(clk), .Q(n310) );
  INV_X0P5B_A12TR U281 ( .A(n310), .Y(n251) );
  
  DFFQ_X1M_A12TR com_count_cout_reg_4_ ( .D(com_count_n14), .CK(clk), .Q(
        com_counter_out[4]));
  INV_X0P5B_A12TR U281 ( .A(com_counter_out[4]), .Y(n291) );      
        
  DFFQ_X1M_A12TR com_count_cout_reg_2_ ( .D(com_count_n12), .CK(clk), .Q(
        com_counter_out[2]) );
  INV_X0P5B_A12TR U281 ( .A(com_counter_out[2]), .Y(n306) );      
        
  DFFQ_X1M_A12TR com_count_cout_reg_3_ ( .D(com_count_n13), .CK(clk), .Q(
        com_counter_out[3])  );
  DFFQ_X1M_A12TR com_count_cout_reg_0_ ( .D(com_count_n10), .CK(clk), .Q(
        com_counter_out[0]));
  INV_X0P5B_A12TR U281 ( .A(com_counter_out[0]), .Y(n290) );      

        
  DFFQ_X1M_A12TR com_count_cout_reg_1_ ( .D(com_count_n11), .CK(clk), .Q(
        com_counter_out[1]));
  INV_X0P5B_A12TR U281 ( .A(com_counter_out[1]), .Y(n295) );      
        
  INV_X0P5B_A12TR U281 ( .A(n17), .Y(n313) );
  AND2_X0P5M_A12TR U282 ( .A(n73), .B(n74), .Y(n51) );
  NAND2_X0P5A_A12TR U283 ( .A(n332), .B(n324), .Y(n74) );
  NAND2_X0P5A_A12TR U284 ( .A(n320), .B(n148), .Y(n218) );
  NAND2_X0P5A_A12TR U285 ( .A(n319), .B(n123), .Y(n201) );
  INV_X0P5B_A12TR U286 ( .A(n123), .Y(n329) );
  INV_X0P5B_A12TR U287 ( .A(n122), .Y(n325) );
  NOR2_X0P5A_A12TR U288 ( .A(n100), .B(n96), .Y(n16) );
  NAND2_X0P5A_A12TR U289 ( .A(n233), .B(n234), .Y(n17) );
  NAND2_X0P5A_A12TR U290 ( .A(n227), .B(n314), .Y(n234) );
  NAND2_X0P5A_A12TR U291 ( .A(n284), .B(n292), .Y(n233) );
  NAND2_X0P5A_A12TR U292 ( .A(n314), .B(n91), .Y(n29) );
  NAND2_X0P5A_A12TR U293 ( .A(n333), .B(n93), .Y(n91) );
  XOR2_X0P5M_A12TR U294 ( .A(n291), .B(n359), .Y(com_n50) );
  AND2_X0P5M_A12TR U295 ( .A(n313), .B(n94), .Y(n22) );
  NAND2_X0P5A_A12TR U296 ( .A(n334), .B(n96), .Y(n94) );
  NAND2_X0P5A_A12TR U297 ( .A(n190), .B(n191), .Y(n182) );
  NAND2_X0P5A_A12TR U298 ( .A(n123), .B(n137), .Y(n191) );
  NAND2_X0P5A_A12TR U299 ( .A(n194), .B(n195), .Y(n140) );
  NAND2_X0P5A_A12TR U300 ( .A(n154), .B(n326), .Y(n195) );
  INV_X0P5B_A12TR U301 ( .A(G17), .Y(n315) );
  INV_X0P5B_A12TR U302 ( .A(n132), .Y(n319) );
  NOR2_X0P5A_A12TR U303 ( .A(n291), .B(n359), .Y(n357) );
  NAND2_X0P5A_A12TR U304 ( .A(n324), .B(n289), .Y(n217) );
  NOR2_X0P5A_A12TR U305 ( .A(n175), .B(n176), .Y(n211) );
  NOR2_X0P5A_A12TR U306 ( .A(n337), .B(n258), .Y(n339) );
  NOR2_X0P5A_A12TR U307 ( .A(n379), .B(n378), .Y(n381) );
  AND2_X0P5M_A12TR U308 ( .A(n302), .B(com_n51), .Y(n379) );
  NAND2_X0P5A_A12TR U309 ( .A(n377), .B(n376), .Y(n378) );
  NAND2_X0P5A_A12TR U310 ( .A(com_n50), .B(n262), .Y(n376) );
  NOR2_X0P5A_A12TR U311 ( .A(n371), .B(n370), .Y(n373) );
  AND2_X0P5M_A12TR U312 ( .A(n260), .B(com_n49), .Y(n371) );
  NAND2_X0P5A_A12TR U313 ( .A(n369), .B(n368), .Y(n370) );
  NAND2_X0P5A_A12TR U314 ( .A(com_n48), .B(n256), .Y(n368) );
  NOR2_X0P5A_A12TR U315 ( .A(n321), .B(n322), .Y(n196) );
  NAND2_X0P5A_A12TR U316 ( .A(n153), .B(n166), .Y(n136) );
  NAND2_X0P5A_A12TR U317 ( .A(n167), .B(n316), .Y(n166) );
  NAND2_X0P5A_A12TR U318 ( .A(n185), .B(n147), .Y(n169) );
  NOR2_X0P5A_A12TR U319 ( .A(n322), .B(n171), .Y(n185) );
  NAND2_X0P5A_A12TR U320 ( .A(n159), .B(n160), .Y(n158) );
  NAND2_X0P5A_A12TR U321 ( .A(n330), .B(n162), .Y(n160) );
  NAND2_X0P5A_A12TR U322 ( .A(n327), .B(n136), .Y(n159) );
  NAND2_X0P5A_A12TR U323 ( .A(n153), .B(n163), .Y(n162) );
  NAND2_X0P5A_A12TR U324 ( .A(n129), .B(n130), .Y(n128) );
  NAND2_X0P5A_A12TR U325 ( .A(n131), .B(n132), .Y(n130) );
  NAND2_X0P5A_A12TR U326 ( .A(n331), .B(n136), .Y(n129) );
  NAND2_X0P5A_A12TR U327 ( .A(n133), .B(n134), .Y(n131) );
  NAND2_X0P5A_A12TR U328 ( .A(n313), .B(n101), .Y(n80) );
  NAND2_X0P5A_A12TR U329 ( .A(n102), .B(n334), .Y(n101) );
  AND2_X0P5M_A12TR U330 ( .A(n314), .B(n96), .Y(n102) );
  AND2_X0P5M_A12TR U331 ( .A(n314), .B(n112), .Y(n73) );
  NAND2_X0P5A_A12TR U332 ( .A(n332), .B(n293), .Y(n112) );
  NOR2_X0P5A_A12TR U333 ( .A(n344), .B(n343), .Y(n345) );
  NOR2_X0P5A_A12TR U334 ( .A(n342), .B(n341), .Y(n343) );
  NOR2_X0P5A_A12TR U335 ( .A(n339), .B(n338), .Y(n344) );
  NOR2_X0P5A_A12TR U336 ( .A(n340), .B(n295), .Y(n341) );
  NAND2_X0P5A_A12TR U337 ( .A(n12), .B(n13), .Y(n276) );
  NOR2_X0P5A_A12TR U338 ( .A(n14), .B(n15), .Y(n13) );
  NOR2_X0P5A_A12TR U339 ( .A(n20), .B(n21), .Y(n12) );
  AND2_X0P5M_A12TR U340 ( .A(com_n58), .B(n16), .Y(n15) );
  NAND2_X0P5A_A12TR U341 ( .A(n81), .B(n82), .Y(n285) );
  NOR2_X0P5A_A12TR U342 ( .A(n83), .B(n84), .Y(n82) );
  NOR2_X0P5A_A12TR U343 ( .A(n86), .B(n21), .Y(n81) );
  AND2_X0P5M_A12TR U344 ( .A(n290), .B(n16), .Y(n84) );
  NAND2_X0P5A_A12TR U345 ( .A(n375), .B(n374), .Y(n377) );
  OR2_X0P5M_A12TR U346 ( .A(n262), .B(com_n50), .Y(n374) );
  NOR2_X0P5A_A12TR U347 ( .A(n373), .B(n372), .Y(n375) );
  NOR2_X0P5A_A12TR U348 ( .A(com_n49), .B(n260), .Y(n372) );
  INV_X0P5B_A12TR U349 ( .A(com_n14), .Y(n324) );
  INV_X0P5B_A12TR U350 ( .A(n167), .Y(n320) );
  NAND2_X0P5A_A12TR U351 ( .A(n326), .B(n132), .Y(n173) );
  NAND2_X0P5A_A12TR U352 ( .A(n164), .B(n316), .Y(n163) );
  NOR2_X0P5A_A12TR U353 ( .A(n316), .B(n118), .Y(fsm0_n24) );
  NAND2_X0P5A_A12TR U354 ( .A(n284), .B(n119), .Y(n118) );
  NAND2_X0P5A_A12TR U355 ( .A(n120), .B(n325), .Y(n119) );
  NOR2_X0P5A_A12TR U356 ( .A(n123), .B(n328), .Y(n120) );
  NAND2_X0P5A_A12TR U357 ( .A(n53), .B(n54), .Y(n281) );
  NAND2_X0P5A_A12TR U358 ( .A(n51), .B(n298), .Y(n53) );
  NAND2_X0P5A_A12TR U359 ( .A(n46), .B(n55), .Y(n54) );
  NAND2_X0P5A_A12TR U360 ( .A(n56), .B(n57), .Y(n55) );
  NAND2_X0P5A_A12TR U361 ( .A(n64), .B(n65), .Y(n282) );
  NAND2_X0P5A_A12TR U362 ( .A(n51), .B(n299), .Y(n64) );
  NAND2_X0P5A_A12TR U363 ( .A(n46), .B(n66), .Y(n65) );
  NAND2_X0P5A_A12TR U364 ( .A(n67), .B(n68), .Y(n66) );
  NAND2_X0P5A_A12TR U365 ( .A(n328), .B(n175), .Y(n174) );
  NAND2_X0P5A_A12TR U366 ( .A(n367), .B(n366), .Y(n369) );
  OR2_X0P5M_A12TR U367 ( .A(n256), .B(com_n48), .Y(n366) );
  NOR2_X0P5A_A12TR U368 ( .A(n365), .B(n364), .Y(n367) );
  NOR2_X0P5A_A12TR U369 ( .A(n363), .B(n258), .Y(n364) );
  AND2_X0P5M_A12TR U370 ( .A(n383), .B(n382), .Y(n384) );
  OR2_X0P5M_A12TR U371 ( .A(n301), .B(com_n52), .Y(n382) );
  NOR2_X0P5A_A12TR U372 ( .A(n381), .B(n380), .Y(n383) );
  NOR2_X0P5A_A12TR U373 ( .A(com_n51), .B(n302), .Y(n380) );
  AND2_X0P5M_A12TR U374 ( .A(n203), .B(n204), .Y(n190) );
  NAND2_X0P5A_A12TR U375 ( .A(n319), .B(n122), .Y(n204) );
  NOR2_X0P5A_A12TR U376 ( .A(n210), .B(n211), .Y(n203) );
  NOR2_X0P5A_A12TR U377 ( .A(n180), .B(n217), .Y(n210) );
  NAND2_X0P5A_A12TR U378 ( .A(n313), .B(n231), .Y(com_n18) );
  NAND2_X0P5A_A12TR U379 ( .A(n228), .B(n314), .Y(n231) );
  NAND2_X0P5A_A12TR U380 ( .A(n44), .B(n45), .Y(n280) );
  NAND2_X0P5A_A12TR U381 ( .A(n51), .B(n297), .Y(n44) );
  NAND2_X0P5A_A12TR U382 ( .A(n46), .B(n47), .Y(n45) );
  NAND2_X0P5A_A12TR U383 ( .A(n48), .B(n49), .Y(n47) );
  NAND2_X0P5A_A12TR U384 ( .A(n103), .B(n104), .Y(main_DFF_2_n4) );
  NAND2_X0P5A_A12TR U385 ( .A(n106), .B(n297), .Y(n103) );
  NAND2_X0P5A_A12TR U386 ( .A(n50), .B(n73), .Y(n104) );
  NAND2_X0P5A_A12TR U387 ( .A(n141), .B(n312), .Y(fsm0_n22) );
  INV_X0P5B_A12TR U388 ( .A(n139), .Y(n312) );
  NOR2_X0P5A_A12TR U389 ( .A(n143), .B(n144), .Y(n141) );
  NOR2_X0P5A_A12TR U390 ( .A(n319), .B(n146), .Y(n144) );
  NAND2_X0P5A_A12TR U391 ( .A(n109), .B(n110), .Y(main_DFF_0_n4) );
  NAND2_X0P5A_A12TR U392 ( .A(n106), .B(n298), .Y(n109) );
  NAND2_X0P5A_A12TR U393 ( .A(n111), .B(n73), .Y(n110) );
  NOR2_X0P5A_A12TR U394 ( .A(n315), .B(n316), .Y(n111) );
  NAND2_X0P5A_A12TR U395 ( .A(n107), .B(n108), .Y(main_DFF_1_n4) );
  NAND2_X0P5A_A12TR U396 ( .A(n106), .B(n299), .Y(n108) );
  NAND2_X0P5A_A12TR U397 ( .A(n73), .B(n315), .Y(n107) );
  NAND2_X0P5A_A12TR U398 ( .A(n155), .B(n156), .Y(fsm0_n21) );
  NOR2_X0P5A_A12TR U399 ( .A(n139), .B(n172), .Y(n155) );
  NOR2_X0P5A_A12TR U400 ( .A(n157), .B(n158), .Y(n156) );
  NAND2_X0P5A_A12TR U401 ( .A(n173), .B(n174), .Y(n172) );
  NAND2_X0P5A_A12TR U402 ( .A(n125), .B(n126), .Y(fsm0_n23) );
  NOR2_X0P5A_A12TR U403 ( .A(n139), .B(n140), .Y(n125) );
  NOR2_X0P5A_A12TR U404 ( .A(n127), .B(n128), .Y(n126) );
  NOR2_X0P5A_A12TR U405 ( .A(n137), .B(n329), .Y(n127) );
  NAND2_X0P5A_A12TR U406 ( .A(n23), .B(n24), .Y(n277) );
  NOR2_X0P5A_A12TR U407 ( .A(n25), .B(n26), .Y(n24) );
  NOR2_X0P5A_A12TR U408 ( .A(n28), .B(n29), .Y(n23) );
  AND2_X0P5M_A12TR U409 ( .A(com_n57), .B(n16), .Y(n26) );
  NAND2_X0P5A_A12TR U410 ( .A(n30), .B(n31), .Y(n278) );
  NOR2_X0P5A_A12TR U411 ( .A(n32), .B(n33), .Y(n31) );
  NOR2_X0P5A_A12TR U412 ( .A(n34), .B(n29), .Y(n30) );
  AND2_X0P5M_A12TR U413 ( .A(com_n59), .B(n16), .Y(n33) );
  NAND2_X0P5A_A12TR U414 ( .A(n35), .B(n36), .Y(n279) );
  NOR2_X0P5A_A12TR U415 ( .A(n37), .B(n38), .Y(n36) );
  NOR2_X0P5A_A12TR U416 ( .A(n43), .B(n29), .Y(n35) );
  AND2_X0P5M_A12TR U417 ( .A(com_n60), .B(n16), .Y(n38) );
  INV_X0P5B_A12TR U418 ( .A(n93), .Y(n332) );
  NOR2_X0P5A_A12TR U419 ( .A(n289), .B(n180), .Y(n123) );
  NAND2_X0P5A_A12TR U420 ( .A(n133), .B(n188), .Y(n148) );
  NOR2_X0P5A_A12TR U421 ( .A(n292), .B(n333), .Y(n19) );
  INV_X0P5B_A12TR U422 ( .A(n150), .Y(n326) );
  INV_X0P5B_A12TR U423 ( .A(n134), .Y(n330) );
  INV_X0P5B_A12TR U424 ( .A(n41), .Y(n333) );
  NOR2_X0P5A_A12TR U425 ( .A(n147), .B(n148), .Y(n146) );
  INV_X0P5B_A12TR U426 ( .A(n176), .Y(n328) );
  INV_X0P5B_A12TR U427 ( .A(n100), .Y(n334) );
  NOR2_X0P5A_A12TR U428 ( .A(n291), .B(n390), .Y(n391) );
  NAND2_X0P5A_A12TR U429 ( .A(n205), .B(n206), .Y(n122) );
  NOR2_X0P5A_A12TR U430 ( .A(n330), .B(n147), .Y(n206) );
  NOR2_X0P5A_A12TR U431 ( .A(n326), .B(n148), .Y(n205) );
  INV_X0P5B_A12TR U432 ( .A(n188), .Y(n331) );
  NAND2_X0P5A_A12TR U433 ( .A(n293), .B(n288), .Y(n67) );
  INV_X0P5B_A12TR U434 ( .A(n133), .Y(n327) );
  INV_X0P5B_A12TR U435 ( .A(G0), .Y(n316) );
  XOR2_X0P5M_A12TR U436 ( .A(n115), .B(n273), .Y(n105) );
  NAND2_X0P5A_A12TR U437 ( .A(n263), .B(n321), .Y(n115) );
  INV_X0P5B_A12TR U438 ( .A(G1), .Y(n321) );
  NAND2_X0P5A_A12TR U439 ( .A(G3), .B(n105), .Y(n59) );
  NAND2_X0P5A_A12TR U440 ( .A(n266), .B(n113), .Y(G17) );
  NAND2_X0P5A_A12TR U441 ( .A(n59), .B(n114), .Y(n113) );
  NAND2_X0P5A_A12TR U442 ( .A(n288), .B(n316), .Y(n114) );
  XOR2_X0P5M_A12TR U443 ( .A(n356), .B(com_counter_out[3]), .Y(com_n49) );
  XOR2_X0P5M_A12TR U444 ( .A(com_counter_out[5]), .B(n357), .Y(com_n51) );
  INV_X0P5B_A12TR U445 ( .A(reset), .Y(n314) );
  NAND2_X0P5A_A12TR U446 ( .A(n313), .B(n40), .Y(n27) );
  NAND2_X0P5A_A12TR U447 ( .A(n41), .B(n42), .Y(n40) );
  OR2_X0P5M_A12TR U448 ( .A(n274), .B(priority_flag), .Y(n42) );
  XNOR2_X0P5A_A12TR U449 ( .A(com_counter_out[6]), .B(n358), .Y(com_n52) );
  NAND2_X0P5A_A12TR U450 ( .A(n357), .B(com_counter_out[5]), .Y(n358) );
  NAND2_X0P5A_A12TR U451 ( .A(G0), .B(n93), .Y(n132) );
  NAND2_X0P5A_A12TR U452 ( .A(n314), .B(n178), .Y(n139) );
  NAND2_X0P5A_A12TR U453 ( .A(n179), .B(com_n14), .Y(n178) );
  NOR2_X0P5A_A12TR U454 ( .A(n254), .B(n180), .Y(n179) );
  NAND2_X0P5A_A12TR U455 ( .A(n193), .B(n316), .Y(n171) );
  NOR2_X0P5A_A12TR U456 ( .A(G3), .B(G1), .Y(n193) );
  NOR2_X0P5A_A12TR U457 ( .A(n290), .B(com_buffer_lfsr[0]), .Y(n337) );
  NAND2_X0P5A_A12TR U458 ( .A(com_counter_out[3]), .B(n356), .Y(n359) );
  NAND2_X0P5A_A12TR U459 ( .A(com_n54), .B(G0), .Y(n96) );
  NAND2_X0P5A_A12TR U460 ( .A(n386), .B(n385), .Y(com_n54) );
  NAND2_X0P5A_A12TR U461 ( .A(com_n52), .B(n301), .Y(n385) );
  NOR2_X0P5A_A12TR U462 ( .A(com_n53), .B(n384), .Y(n386) );
  NAND2_X0P5A_A12TR U463 ( .A(n311), .B(n88), .Y(n21) );
  INV_X0P5B_A12TR U464 ( .A(n29), .Y(n311) );
  NAND2_X0P5A_A12TR U465 ( .A(n89), .B(priority_flag), .Y(n88) );
  NOR2_X0P5A_A12TR U466 ( .A(n274), .B(n17), .Y(n89) );
  NOR2_X0P5A_A12TR U467 ( .A(com_counter_out[0]), .B(com_buffer_lfsr[0]), .Y(n363)
         );
  NOR2_X0P5A_A12TR U468 ( .A(n352), .B(n351), .Y(com_n14) );
  NAND2_X0P5A_A12TR U469 ( .A(n350), .B(n349), .Y(n351) );
  NAND2_X0P5A_A12TR U470 ( .A(n346), .B(n345), .Y(n352) );
  XNOR2_X0P5A_A12TR U471 ( .A(com_buffer_lfsr[6]), .B(com_counter_out[6]), .Y(n349) );
  NOR2_X0P5A_A12TR U472 ( .A(n51), .B(reset), .Y(n46) );
  NAND2_X0P5A_A12TR U473 ( .A(n268), .B(n315), .Y(n68) );
  INV_X0P5B_A12TR U474 ( .A(G2), .Y(n322) );
  INV_X0P5B_A12TR U475 ( .A(G3), .Y(n323) );
  NAND2_X0P5A_A12TR U476 ( .A(n132), .B(n192), .Y(n137) );
  OR2_X0P5M_A12TR U477 ( .A(n171), .B(G2), .Y(n192) );
  NOR2_X0P5A_A12TR U478 ( .A(com_counter_out[1]), .B(n337), .Y(n338) );
  NAND2_X0P5A_A12TR U479 ( .A(n332), .B(G0), .Y(n153) );
  NOR2_X0P5A_A12TR U480 ( .A(n332), .B(reset), .Y(n284) );
  NAND2_X0P5A_A12TR U481 ( .A(n221), .B(G1), .Y(n164) );
  NOR2_X0P5A_A12TR U482 ( .A(G3), .B(G2), .Y(n221) );
  NOR2_X0P5A_A12TR U483 ( .A(n17), .B(n18), .Y(n14) );
  OR2_X0P5M_A12TR U484 ( .A(n19), .B(n255), .Y(n18) );
  NOR2_X0P5A_A12TR U485 ( .A(n17), .B(n85), .Y(n83) );
  OR2_X0P5M_A12TR U486 ( .A(n19), .B(n270), .Y(n85) );
  NOR2_X0P5A_A12TR U487 ( .A(n257), .B(n27), .Y(n25) );
  NOR2_X0P5A_A12TR U488 ( .A(n259), .B(n27), .Y(n32) );
  NOR2_X0P5A_A12TR U489 ( .A(n261), .B(n27), .Y(n37) );
  NAND2_X0P5A_A12TR U490 ( .A(n306), .B(n353), .Y(n356) );
  NAND2_X0P5A_A12TR U491 ( .A(com_counter_out[1]), .B(com_counter_out[0]), .Y(n353)
         );
  NOR2_X0P5A_A12TR U492 ( .A(n256), .B(n22), .Y(n20) );
  NOR2_X0P5A_A12TR U493 ( .A(n258), .B(n22), .Y(n28) );
  NOR2_X0P5A_A12TR U494 ( .A(n260), .B(n22), .Y(n34) );
  NOR2_X0P5A_A12TR U495 ( .A(n262), .B(n22), .Y(n43) );
  NOR2_X0P5A_A12TR U496 ( .A(n271), .B(n22), .Y(n86) );
  NOR2_X0P5A_A12TR U497 ( .A(com_buffer_lfsr[1]), .B(n340), .Y(n342) );
  NOR2_X0P5A_A12TR U498 ( .A(n149), .B(n150), .Y(n143) );
  NOR2_X0P5A_A12TR U499 ( .A(n151), .B(n318), .Y(n149) );
  INV_X0P5B_A12TR U500 ( .A(n153), .Y(n318) );
  NOR2_X0P5A_A12TR U501 ( .A(G0), .B(n154), .Y(n151) );
  NOR2_X0P5A_A12TR U502 ( .A(G2), .B(n105), .Y(n50) );
  NAND2_X0P5A_A12TR U503 ( .A(n50), .B(n268), .Y(n49) );
  NAND2_X0P5A_A12TR U504 ( .A(n58), .B(n268), .Y(n57) );
  AND2_X0P5M_A12TR U505 ( .A(n59), .B(G0), .Y(n58) );
  NAND2_X0P5A_A12TR U506 ( .A(n356), .B(n355), .Y(com_n48) );
  NAND2_X0P5A_A12TR U507 ( .A(n354), .B(com_counter_out[2]), .Y(n355) );
  AND2_X0P5M_A12TR U508 ( .A(com_counter_out[0]), .B(com_counter_out[1]), .Y(n354)
         );
  NAND2_X0P5A_A12TR U509 ( .A(n219), .B(n330), .Y(n194) );
  NOR2_X0P5A_A12TR U510 ( .A(G0), .B(n164), .Y(n219) );
  NAND2_X0P5A_A12TR U511 ( .A(n168), .B(n169), .Y(n157) );
  NAND2_X0P5A_A12TR U512 ( .A(n170), .B(n123), .Y(n168) );
  NOR2_X0P5A_A12TR U513 ( .A(G2), .B(n171), .Y(n170) );
  NAND2_X0P5A_A12TR U514 ( .A(n196), .B(n224), .Y(n167) );
  NOR2_X0P5A_A12TR U515 ( .A(G0), .B(n323), .Y(n224) );
  AND2_X0P5M_A12TR U516 ( .A(com_buffer_lfsr[0]), .B(n290), .Y(n340) );
  NOR2_X0P5A_A12TR U517 ( .A(reset), .B(n317), .Y(n79) );
  INV_X0P5B_A12TR U518 ( .A(n16), .Y(n317) );
  AND2_X0P5M_A12TR U519 ( .A(n132), .B(n213), .Y(n175) );
  NAND2_X0P5A_A12TR U520 ( .A(n214), .B(n215), .Y(n213) );
  NOR2_X0P5A_A12TR U521 ( .A(G2), .B(G0), .Y(n215) );
  NOR2_X0P5A_A12TR U522 ( .A(n323), .B(n321), .Y(n214) );
  AND2_X0P5M_A12TR U523 ( .A(n117), .B(n332), .Y(n106) );
  NOR2_X0P5A_A12TR U524 ( .A(reset), .B(n268), .Y(n117) );
  AND2_X0P5M_A12TR U525 ( .A(n232), .B(com_n14), .Y(n228) );
  NOR2_X0P5A_A12TR U526 ( .A(G0), .B(n100), .Y(n232) );
  NAND2_X0P5A_A12TR U527 ( .A(n240), .B(n241), .Y(com_lfsr_module_n7) );
  NAND2_X0P5A_A12TR U528 ( .A(reset), .B(lfsr_seed[4]), .Y(n240) );
  NAND2_X0P5A_A12TR U529 ( .A(n242), .B(n314), .Y(n241) );
  XOR2_X0P5M_A12TR U530 ( .A(n255), .B(n270), .Y(n242) );
  AND2_X0P5M_A12TR U531 ( .A(n196), .B(n197), .Y(n154) );
  NOR2_X0P5A_A12TR U532 ( .A(G3), .B(G0), .Y(n197) );
  NAND2_X0P5A_A12TR U533 ( .A(n97), .B(n98), .Y(n286) );
  NAND2_X0P5A_A12TR U534 ( .A(n79), .B(com_n62), .Y(n98) );
  NAND2_X0P5A_A12TR U535 ( .A(n80), .B(com_buffer_lfsr[6]), .Y(n97) );
  XOR2_X0P5M_A12TR U536 ( .A(com_counter_out[6]), .B(n395), .Y(com_n62) );
  OR2_X0P5M_A12TR U537 ( .A(n304), .B(n266), .Y(n56) );
  AND2_X0P5M_A12TR U538 ( .A(n268), .B(n316), .Y(n304) );
  NOR2_X0P5A_A12TR U539 ( .A(reset), .B(n236), .Y(com_n17) );
  NOR2_X0P5A_A12TR U540 ( .A(n292), .B(n237), .Y(n236) );
  NAND2_X0P5A_A12TR U541 ( .A(n100), .B(n93), .Y(n237) );
  NOR2_X0P5A_A12TR U542 ( .A(reset), .B(n189), .Y(fsm0_n19) );
  NOR2_X0P5A_A12TR U543 ( .A(n140), .B(n182), .Y(n189) );
  NOR2_X0P5A_A12TR U544 ( .A(reset), .B(n181), .Y(fsm0_n20) );
  NOR2_X0P5A_A12TR U545 ( .A(n182), .B(n183), .Y(n181) );
  NAND2_X0P5A_A12TR U546 ( .A(n184), .B(n169), .Y(n183) );
  NAND2_X0P5A_A12TR U547 ( .A(n320), .B(n331), .Y(n184) );
  NOR2_X0P5A_A12TR U548 ( .A(reset), .B(n198), .Y(fsm0_n18) );
  NOR2_X0P5A_A12TR U549 ( .A(n199), .B(n200), .Y(n198) );
  NAND2_X0P5A_A12TR U550 ( .A(n218), .B(n194), .Y(n199) );
  NAND2_X0P5A_A12TR U551 ( .A(n190), .B(n201), .Y(n200) );
  NOR2_X0P5A_A12TR U552 ( .A(com_n47), .B(n362), .Y(n365) );
  XOR2_X0P5M_A12TR U553 ( .A(com_counter_out[1]), .B(com_counter_out[0]), .Y(com_n47)
         );
  AND2_X0P5M_A12TR U554 ( .A(n258), .B(n363), .Y(n362) );
  NAND2_X0P5A_A12TR U555 ( .A(n77), .B(n78), .Y(n283) );
  NAND2_X0P5A_A12TR U556 ( .A(n79), .B(com_n61), .Y(n78) );
  NAND2_X0P5A_A12TR U557 ( .A(n80), .B(com_buffer_lfsr[5]), .Y(n77) );
  XOR2_X0P5M_A12TR U558 ( .A(com_counter_out[5]), .B(n391), .Y(com_n61) );
  NAND2_X0P5A_A12TR U559 ( .A(n225), .B(n226), .Y(com_n26) );
  NOR2_X0P5A_A12TR U560 ( .A(reset), .B(n227), .Y(n226) );
  NOR2_X0P5A_A12TR U561 ( .A(n228), .B(n229), .Y(n225) );
  NOR2_X0P5A_A12TR U562 ( .A(n332), .B(n19), .Y(n229) );
  NAND2_X0P5A_A12TR U563 ( .A(n249), .B(n250), .Y(com_lfsr_module_n3) );
  NAND2_X0P5A_A12TR U564 ( .A(lfsr_seed[0]), .B(reset), .Y(n250) );
  OR2_X0P5M_A12TR U565 ( .A(n257), .B(reset), .Y(n249) );
  NAND2_X0P5A_A12TR U566 ( .A(n247), .B(n248), .Y(com_lfsr_module_n4) );
  NAND2_X0P5A_A12TR U567 ( .A(lfsr_seed[1]), .B(reset), .Y(n248) );
  OR2_X0P5M_A12TR U568 ( .A(n255), .B(reset), .Y(n247) );
  NAND2_X0P5A_A12TR U569 ( .A(n245), .B(n246), .Y(com_lfsr_module_n5) );
  NAND2_X0P5A_A12TR U570 ( .A(lfsr_seed[2]), .B(reset), .Y(n246) );
  OR2_X0P5M_A12TR U571 ( .A(n259), .B(reset), .Y(n245) );
  NAND2_X0P5A_A12TR U572 ( .A(n243), .B(n244), .Y(com_lfsr_module_n6) );
  NAND2_X0P5A_A12TR U573 ( .A(lfsr_seed[3]), .B(reset), .Y(n244) );
  OR2_X0P5M_A12TR U574 ( .A(n261), .B(reset), .Y(n243) );
  NAND2_X0P5A_A12TR U575 ( .A(n274), .B(n296), .Y(n100) );
  NAND2_X0P5A_A12TR U576 ( .A(n306), .B(n387), .Y(n392) );
  NAND2_X0P5A_A12TR U577 ( .A(com_counter_out[1]), .B(com_counter_out[0]), .Y(n387)
         );
  XOR2_X0P5M_A12TR U578 ( .A(n392), .B(com_counter_out[3]), .Y(com_n59) );
  NAND2_X0P5A_A12TR U579 ( .A(n208), .B(n252), .Y(n150) );
  NOR2_X0P5A_A12TR U580 ( .A(n254), .B(n294), .Y(n208) );
  NAND2_X0P5A_A12TR U581 ( .A(n223), .B(n252), .Y(n133) );
  NOR2_X0P5A_A12TR U582 ( .A(n289), .B(n294), .Y(n223) );
  NAND2_X0P5A_A12TR U583 ( .A(n274), .B(n275), .Y(n41) );
  NOR2_X0P5A_A12TR U584 ( .A(n296), .B(n274), .Y(n227) );
  NAND2_X0P5A_A12TR U585 ( .A(n399), .B(com_counter_out[4]), .Y(n400) );
  AND2_X0P5M_A12TR U586 ( .A(n398), .B(com_counter_out[3]), .Y(n399) );
  NAND2_X0P5A_A12TR U587 ( .A(n212), .B(n253), .Y(n176) );
  NOR2_X0P5A_A12TR U588 ( .A(n252), .B(n254), .Y(n212) );
  XNOR2_X0P5A_A12TR U589 ( .A(com_counter_out[4]), .B(n390), .Y(com_n60) );
  NAND2_X0P5A_A12TR U590 ( .A(com_counter_out[3]), .B(n392), .Y(n390) );
  XNOR2_X0P5A_A12TR U591 ( .A(com_counter_out[1]), .B(n290), .Y(com_n57) );
  NAND2_X0P5A_A12TR U592 ( .A(n222), .B(n252), .Y(n188) );
  NOR2_X0P5A_A12TR U593 ( .A(n253), .B(n289), .Y(n222) );
  NAND2_X0P5A_A12TR U594 ( .A(n220), .B(n253), .Y(n134) );
  NOR2_X0P5A_A12TR U595 ( .A(n252), .B(n289), .Y(n220) );
  OR2_X0P5M_A12TR U596 ( .A(n253), .B(n252), .Y(n180) );
  AND2_X0P5M_A12TR U597 ( .A(n207), .B(n252), .Y(n147) );
  NOR2_X0P5A_A12TR U598 ( .A(n253), .B(n254), .Y(n207) );
  NOR2_X0P5A_A12TR U599 ( .A(n394), .B(n393), .Y(n395) );
  NAND2_X0P5A_A12TR U600 ( .A(com_counter_out[3]), .B(com_counter_out[5]), .Y(n393)
         );
  NAND2_X0P5A_A12TR U601 ( .A(com_counter_out[4]), .B(n392), .Y(n394) );
  NAND2_X0P5A_A12TR U602 ( .A(n238), .B(n272), .Y(n93) );
  NOR2_X0P5A_A12TR U603 ( .A(n303), .B(fsm_flip_2_), .Y(n238) );
  NOR2_X0P5A_A12TR U604 ( .A(n348), .B(n347), .Y(n350) );
  XOR2_X0P5M_A12TR U605 ( .A(com_buffer_lfsr[4]), .B(com_counter_out[4]), .Y(n348) );
  XOR2_X0P5M_A12TR U606 ( .A(com_buffer_lfsr[5]), .B(com_counter_out[5]), .Y(n347) );
  NOR2_X0P5A_A12TR U607 ( .A(n336), .B(n335), .Y(n346) );
  XOR2_X0P5M_A12TR U608 ( .A(com_buffer_lfsr[2]), .B(com_counter_out[2]), .Y(n336) );
  XOR2_X0P5M_A12TR U609 ( .A(com_buffer_lfsr[3]), .B(com_counter_out[3]), .Y(n335) );
  NOR2_X0P5A_A12TR U610 ( .A(n305), .B(n306), .Y(n398) );
  NAND2_X0P5A_A12TR U611 ( .A(com_counter_out[0]), .B(com_counter_out[1]), .Y(n305)
         );
  NAND2_X0P5A_A12TR U612 ( .A(n392), .B(n389), .Y(com_n58) );
  NAND2_X0P5A_A12TR U613 ( .A(n388), .B(com_counter_out[2]), .Y(n389) );
  AND2_X0P5M_A12TR U614 ( .A(com_counter_out[0]), .B(com_counter_out[1]), .Y(n388)
         );
  NOR2_X0P5A_A12TR U615 ( .A(n361), .B(n360), .Y(com_n53) );
  NAND2_X0P5A_A12TR U616 ( .A(com_counter_out[6]), .B(com_counter_out[5]), .Y(n361)
         );
  OR2_X0P5M_A12TR U617 ( .A(n291), .B(n359), .Y(n360) );
  OR2_X0P5M_A12TR U618 ( .A(n268), .B(n263), .Y(n48) );
  AND2_X0P5M_A12TR U619 ( .A(n251), .B(com_count_n9), .Y(com_count_n16) );
  XOR2_X0P5M_A12TR U620 ( .A(com_counter_out[6]), .B(n401), .Y(com_count_n9) );
  NOR2_X0P5A_A12TR U621 ( .A(n400), .B(n300), .Y(n401) );
  AND2_X0P5M_A12TR U622 ( .A(com_count_n5), .B(n251), .Y(com_count_n12) );
  XNOR2_X0P5A_A12TR U623 ( .A(com_counter_out[2]), .B(n396), .Y(com_count_n5) );
  NAND2_X0P5A_A12TR U624 ( .A(com_counter_out[1]), .B(com_counter_out[0]), .Y(n396)
         );
  AND2_X0P5M_A12TR U625 ( .A(com_count_n7), .B(n251), .Y(com_count_n14) );
  XNOR2_X0P5A_A12TR U626 ( .A(com_counter_out[4]), .B(n397), .Y(com_count_n7) );
  NAND2_X0P5A_A12TR U627 ( .A(com_counter_out[3]), .B(n398), .Y(n397) );
  NOR2_X0P5A_A12TR U628 ( .A(n307), .B(n310), .Y(com_count_n15) );
  XOR2_X0P5M_A12TR U629 ( .A(com_counter_out[5]), .B(n400), .Y(n307) );
  AND2_X0P5M_A12TR U630 ( .A(n290), .B(n251), .Y(com_count_n10) );
  NOR2_X0P5A_A12TR U631 ( .A(n308), .B(n310), .Y(com_count_n11) );
  XOR2_X0P5M_A12TR U632 ( .A(com_counter_out[1]), .B(n290), .Y(n308) );
  NOR2_X0P5A_A12TR U633 ( .A(n309), .B(n310), .Y(com_count_n13) );
  XNOR2_X0P5A_A12TR U634 ( .A(com_counter_out[3]), .B(n398), .Y(n309) );
endmodule

