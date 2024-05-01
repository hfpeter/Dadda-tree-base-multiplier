/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Thu Dec 14 10:48:23 2023
/////////////////////////////////////////////////////////////


module fpnew_classifier_2_3 ( operands_i, is_boxed_i, info_o_2__is_normal_, 
        info_o_2__is_subnormal_, info_o_2__is_zero_, info_o_2__is_inf_, 
        info_o_2__is_nan__BAR, info_o_2__is_signalling_, info_o_2__is_quiet_, 
        info_o_2__is_boxed_, info_o_1__is_normal_, info_o_1__is_subnormal_, 
        info_o_1__is_zero_, info_o_1__is_inf_, info_o_1__is_signalling_, 
        info_o_1__is_quiet_, info_o_1__is_boxed_, info_o_0__is_normal_, 
        info_o_0__is_subnormal_, info_o_0__is_zero_, info_o_0__is_inf_, 
        info_o_0__is_signalling_, info_o_0__is_quiet_, info_o_0__is_boxed_, 
        info_o_1__is_nan__BAR, info_o_0__is_nan__BAR );
  input [47:0] operands_i;
  input [2:0] is_boxed_i;
  output info_o_2__is_normal_, info_o_2__is_subnormal_, info_o_2__is_zero_,
         info_o_2__is_inf_, info_o_2__is_nan__BAR, info_o_2__is_signalling_,
         info_o_2__is_quiet_, info_o_2__is_boxed_, info_o_1__is_normal_,
         info_o_1__is_subnormal_, info_o_1__is_zero_, info_o_1__is_inf_,
         info_o_1__is_signalling_, info_o_1__is_quiet_, info_o_1__is_boxed_,
         info_o_0__is_normal_, info_o_0__is_subnormal_, info_o_0__is_zero_,
         info_o_0__is_inf_, info_o_0__is_signalling_, info_o_0__is_quiet_,
         info_o_0__is_boxed_, info_o_1__is_nan__BAR, info_o_0__is_nan__BAR;
  wire   n21, n22, n23, n24, n30, n35, n40, n45, n1, n2, n3, n4, n5, n6, n7,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n25, n26, n27,
         n28, n29, n31, n32, n33, n34, n37, n38, n39, n41, n42, n44, n47, n50,
         n53, n56;

  AND4_X1 U1 ( .A1(n21), .A2(n22), .A3(n23), .A4(n24), .ZN(n1) );
  INV_X1 U2 ( .A(n40), .ZN(n50) );
  INV_X1 U3 ( .A(n30), .ZN(n53) );
  AND4_X1 U4 ( .A1(n19), .A2(n18), .A3(n17), .A4(n16), .ZN(n2) );
  AND4_X1 U5 ( .A1(n7), .A2(n6), .A3(n5), .A4(n4), .ZN(n3) );
  NAND4_X1 U6 ( .A1(operands_i[11]), .A2(operands_i[10]), .A3(operands_i[12]), 
        .A4(n45), .ZN(n40) );
  AND2_X1 U7 ( .A1(operands_i[13]), .A2(operands_i[14]), .ZN(n45) );
  NAND4_X1 U8 ( .A1(operands_i[27]), .A2(operands_i[26]), .A3(operands_i[28]), 
        .A4(n35), .ZN(n30) );
  AND2_X1 U9 ( .A1(operands_i[29]), .A2(operands_i[30]), .ZN(n35) );
  NOR3_X1 U10 ( .A1(operands_i[39]), .A2(operands_i[41]), .A3(operands_i[40]), 
        .ZN(n24) );
  NOR2_X1 U11 ( .A1(operands_i[33]), .A2(operands_i[32]), .ZN(n21) );
  NOR3_X1 U12 ( .A1(operands_i[34]), .A2(operands_i[36]), .A3(operands_i[35]), 
        .ZN(n22) );
  NOR2_X1 U13 ( .A1(operands_i[38]), .A2(operands_i[37]), .ZN(n23) );
  INV_X1 U17 ( .A(is_boxed_i[0]), .ZN(n14) );
  NOR3_X1 U18 ( .A1(operands_i[7]), .A2(operands_i[8]), .A3(operands_i[9]), 
        .ZN(n7) );
  NOR2_X1 U19 ( .A1(operands_i[5]), .A2(operands_i[6]), .ZN(n6) );
  NOR3_X1 U20 ( .A1(operands_i[2]), .A2(operands_i[3]), .A3(operands_i[4]), 
        .ZN(n5) );
  NOR2_X1 U21 ( .A1(operands_i[0]), .A2(operands_i[1]), .ZN(n4) );
  NAND2_X1 U22 ( .A1(n3), .A2(is_boxed_i[0]), .ZN(n12) );
  OAI21_X1 U23 ( .B1(n50), .B2(n14), .A(n12), .ZN(info_o_0__is_nan__BAR) );
  NOR3_X1 U25 ( .A1(operands_i[9]), .A2(n14), .A3(info_o_0__is_nan__BAR), .ZN(
        info_o_0__is_signalling_) );
  NOR2_X1 U27 ( .A1(n40), .A2(n12), .ZN(info_o_0__is_inf_) );
  INV_X1 U28 ( .A(operands_i[13]), .ZN(n11) );
  INV_X1 U29 ( .A(operands_i[14]), .ZN(n10) );
  NOR3_X1 U30 ( .A1(operands_i[12]), .A2(operands_i[11]), .A3(operands_i[10]), 
        .ZN(n9) );
  NAND3_X1 U31 ( .A1(n11), .A2(n10), .A3(n9), .ZN(n13) );
  NOR2_X1 U32 ( .A1(n13), .A2(n12), .ZN(info_o_0__is_zero_) );
  NOR3_X1 U33 ( .A1(n3), .A2(n14), .A3(n13), .ZN(info_o_0__is_subnormal_) );
  INV_X1 U34 ( .A(n13), .ZN(n15) );
  NOR3_X1 U35 ( .A1(n50), .A2(n15), .A3(n14), .ZN(info_o_0__is_normal_) );
  INV_X1 U36 ( .A(is_boxed_i[1]), .ZN(n31) );
  NOR3_X1 U37 ( .A1(operands_i[23]), .A2(operands_i[24]), .A3(operands_i[25]), 
        .ZN(n19) );
  NOR2_X1 U38 ( .A1(operands_i[21]), .A2(operands_i[22]), .ZN(n18) );
  NOR3_X1 U39 ( .A1(operands_i[18]), .A2(operands_i[19]), .A3(operands_i[20]), 
        .ZN(n17) );
  NOR2_X1 U40 ( .A1(operands_i[16]), .A2(operands_i[17]), .ZN(n16) );
  NAND2_X1 U41 ( .A1(n2), .A2(is_boxed_i[1]), .ZN(n28) );
  OAI21_X1 U42 ( .B1(n53), .B2(n31), .A(n28), .ZN(info_o_1__is_nan__BAR) );
  NOR3_X1 U44 ( .A1(operands_i[25]), .A2(n31), .A3(info_o_1__is_nan__BAR), 
        .ZN(info_o_1__is_signalling_) );
  NOR2_X1 U46 ( .A1(n30), .A2(n28), .ZN(info_o_1__is_inf_) );
  INV_X1 U47 ( .A(operands_i[29]), .ZN(n27) );
  INV_X1 U48 ( .A(operands_i[30]), .ZN(n26) );
  NOR3_X1 U49 ( .A1(operands_i[28]), .A2(operands_i[27]), .A3(operands_i[26]), 
        .ZN(n25) );
  NAND3_X1 U50 ( .A1(n27), .A2(n26), .A3(n25), .ZN(n29) );
  NOR2_X1 U51 ( .A1(n29), .A2(n28), .ZN(info_o_1__is_zero_) );
  NOR3_X1 U52 ( .A1(n2), .A2(n31), .A3(n29), .ZN(info_o_1__is_subnormal_) );
  INV_X1 U53 ( .A(n29), .ZN(n32) );
  NOR3_X1 U54 ( .A1(n53), .A2(n32), .A3(n31), .ZN(info_o_1__is_normal_) );
  INV_X1 U55 ( .A(operands_i[44]), .ZN(n33) );
  INV_X1 U56 ( .A(operands_i[46]), .ZN(n41) );
  INV_X1 U57 ( .A(operands_i[45]), .ZN(n39) );
  NOR3_X1 U58 ( .A1(n33), .A2(n41), .A3(n39), .ZN(n34) );
  NAND3_X1 U59 ( .A1(operands_i[42]), .A2(operands_i[43]), .A3(n34), .ZN(n37)
         );
  INV_X1 U60 ( .A(n37), .ZN(n47) );
  INV_X1 U61 ( .A(is_boxed_i[2]), .ZN(n44) );
  NAND2_X1 U62 ( .A1(is_boxed_i[2]), .A2(n1), .ZN(n42) );
  OAI21_X1 U63 ( .B1(n47), .B2(n44), .A(n42), .ZN(info_o_2__is_nan__BAR) );
  NOR3_X1 U65 ( .A1(operands_i[41]), .A2(n44), .A3(info_o_2__is_nan__BAR), 
        .ZN(info_o_2__is_signalling_) );
  NOR2_X1 U67 ( .A1(n42), .A2(n37), .ZN(info_o_2__is_inf_) );
  NOR3_X1 U68 ( .A1(operands_i[44]), .A2(operands_i[42]), .A3(operands_i[43]), 
        .ZN(n38) );
  NOR3_X1 U73 ( .A1(n47), .A2(n56), .A3(n44), .ZN(info_o_2__is_normal_) );
  AND3_X1 U14 ( .A1(n41), .A2(n39), .A3(n38), .ZN(n56) );
endmodule


module lzc_00000019_1 ( in_i, cnt_o, empty_o );
  input [24:0] in_i;
  output [4:0] cnt_o;
  output empty_o;
  wire   n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n31, n32, n34,
         n35, n36, n37, n38, n39, n40, n41, n43, n44, n45, n46, n47, n48, n49,
         n50, n52, n53, n55, n56, n57, n58, n60, n61, n62, n63, n64, n65, n66,
         n67, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n97, n98, n99, n100, n101, n102;

  NAND3_X1 U5 ( .A1(n100), .A2(n9), .A3(n94), .ZN(n2) );
  NAND2_X1 U8 ( .A1(n98), .A2(n5), .ZN(n92) );
  AND2_X1 U9 ( .A1(n32), .A2(n8), .ZN(n5) );
  BUF_X1 U10 ( .A(n47), .Z(n16) );
  OR2_X1 U11 ( .A1(n95), .A2(in_i[20]), .ZN(n6) );
  AND3_X1 U12 ( .A1(n73), .A2(n71), .A3(n72), .ZN(n7) );
  NOR2_X1 U13 ( .A1(in_i[4]), .A2(n14), .ZN(n8) );
  OR2_X1 U14 ( .A1(n50), .A2(n79), .ZN(n34) );
  AND4_X1 U16 ( .A1(n9), .A2(n10), .A3(n11), .A4(n12), .ZN(n31) );
  INV_X1 U17 ( .A(in_i[16]), .ZN(n9) );
  INV_X1 U18 ( .A(in_i[15]), .ZN(n10) );
  INV_X1 U19 ( .A(in_i[14]), .ZN(n11) );
  INV_X1 U20 ( .A(in_i[13]), .ZN(n12) );
  AND2_X1 U22 ( .A1(n98), .A2(n32), .ZN(n13) );
  AND2_X2 U23 ( .A1(n56), .A2(n36), .ZN(n32) );
  OR2_X1 U24 ( .A1(n41), .A2(n45), .ZN(n102) );
  AOI211_X1 U26 ( .C1(in_i[22]), .C2(n74), .A(n25), .B(n15), .ZN(n75) );
  INV_X1 U27 ( .A(n95), .ZN(n15) );
  NOR2_X1 U29 ( .A1(n41), .A2(n45), .ZN(n47) );
  INV_X1 U32 ( .A(in_i[21]), .ZN(n18) );
  OR2_X1 U33 ( .A1(n14), .A2(n19), .ZN(n22) );
  OR2_X1 U34 ( .A1(n50), .A2(in_i[4]), .ZN(n19) );
  OR2_X1 U35 ( .A1(n78), .A2(n75), .ZN(n20) );
  OR2_X1 U36 ( .A1(in_i[4]), .A2(n50), .ZN(n21) );
  OAI21_X1 U38 ( .B1(n102), .B2(n101), .A(n49), .ZN(cnt_o[4]) );
  OR2_X1 U39 ( .A1(n50), .A2(n101), .ZN(n23) );
  AND2_X1 U40 ( .A1(in_i[10]), .A2(n66), .ZN(n24) );
  NOR2_X1 U41 ( .A1(n87), .A2(n24), .ZN(n78) );
  INV_X1 U42 ( .A(n67), .ZN(n25) );
  AND2_X1 U43 ( .A1(n55), .A2(n7), .ZN(n26) );
  OR2_X1 U44 ( .A1(n14), .A2(n21), .ZN(n98) );
  OR2_X1 U45 ( .A1(n14), .A2(in_i[4]), .ZN(n79) );
  AND2_X1 U46 ( .A1(n73), .A2(n67), .ZN(n27) );
  AND2_X1 U47 ( .A1(n64), .A2(n27), .ZN(n56) );
  NAND2_X1 U48 ( .A1(n28), .A2(n29), .ZN(n40) );
  NAND2_X1 U49 ( .A1(n90), .A2(n89), .ZN(n28) );
  NAND2_X1 U50 ( .A1(n48), .A2(n95), .ZN(n29) );
  NAND2_X1 U51 ( .A1(n55), .A2(n7), .ZN(n89) );
  AND2_X1 U52 ( .A1(n31), .A2(n60), .ZN(n65) );
  NOR3_X1 U53 ( .A1(n20), .A2(n77), .A3(n76), .ZN(n85) );
  AND2_X1 U54 ( .A1(n32), .A2(n22), .ZN(n35) );
  AND2_X1 U55 ( .A1(n65), .A2(n37), .ZN(n36) );
  INV_X1 U56 ( .A(n45), .ZN(n37) );
  INV_X1 U57 ( .A(n74), .ZN(n38) );
  NOR2_X1 U58 ( .A1(n94), .A2(n61), .ZN(n39) );
  NAND2_X1 U59 ( .A1(n56), .A2(n39), .ZN(n41) );
  BUF_X1 U61 ( .A(n26), .Z(n43) );
  AND2_X1 U62 ( .A1(n53), .A2(n8), .ZN(n44) );
  OR3_X1 U63 ( .A1(in_i[11]), .A2(in_i[10]), .A3(in_i[9]), .ZN(n45) );
  AND2_X1 U64 ( .A1(n52), .A2(n57), .ZN(n46) );
  NOR2_X1 U65 ( .A1(n95), .A2(in_i[20]), .ZN(n55) );
  NOR2_X1 U66 ( .A1(n25), .A2(n38), .ZN(n48) );
  NAND2_X1 U67 ( .A1(n32), .A2(n34), .ZN(n49) );
  OR2_X1 U69 ( .A1(in_i[7]), .A2(n82), .ZN(n52) );
  NAND2_X1 U70 ( .A1(n35), .A2(n46), .ZN(n83) );
  OR2_X1 U71 ( .A1(in_i[3]), .A2(n80), .ZN(n53) );
  NAND2_X1 U72 ( .A1(n13), .A2(n44), .ZN(n84) );
  NOR2_X1 U73 ( .A1(in_i[23]), .A2(in_i[24]), .ZN(n62) );
  OAI222_X1 U74 ( .A1(n93), .A2(in_i[7]), .B1(n92), .B2(in_i[3]), .C1(n91), 
        .C2(n47), .ZN(cnt_o[1]) );
  NOR2_X1 U75 ( .A1(n88), .A2(n40), .ZN(n91) );
  AND2_X1 U76 ( .A1(n14), .A2(n81), .ZN(n57) );
  AND2_X1 U77 ( .A1(in_i[14]), .A2(n10), .ZN(n58) );
  NOR2_X1 U78 ( .A1(n2), .A2(n58), .ZN(n77) );
  NAND2_X1 U80 ( .A1(n56), .A2(n65), .ZN(n87) );
  NOR2_X1 U81 ( .A1(in_i[18]), .A2(in_i[22]), .ZN(n60) );
  INV_X1 U82 ( .A(n60), .ZN(n61) );
  OAI211_X1 U83 ( .C1(n85), .C2(n16), .A(n84), .B(n83), .ZN(cnt_o[0]) );
  INV_X1 U84 ( .A(in_i[19]), .ZN(n73) );
  INV_X1 U85 ( .A(in_i[24]), .ZN(n67) );
  INV_X1 U87 ( .A(in_i[20]), .ZN(n70) );
  NAND2_X1 U88 ( .A1(n18), .A2(n70), .ZN(n63) );
  NOR4_X1 U89 ( .A1(n63), .A2(in_i[17]), .A3(in_i[12]), .A4(in_i[23]), .ZN(n64) );
  NOR3_X1 U90 ( .A1(n4), .A2(in_i[0]), .A3(n34), .ZN(empty_o) );
  INV_X1 U91 ( .A(in_i[11]), .ZN(n66) );
  INV_X1 U92 ( .A(in_i[22]), .ZN(n69) );
  INV_X1 U93 ( .A(in_i[23]), .ZN(n74) );
  NAND3_X1 U94 ( .A1(n62), .A2(n18), .A3(n69), .ZN(n95) );
  INV_X1 U95 ( .A(in_i[17]), .ZN(n72) );
  INV_X1 U96 ( .A(in_i[18]), .ZN(n71) );
  INV_X1 U97 ( .A(n89), .ZN(n100) );
  NAND3_X1 U98 ( .A1(n26), .A2(n9), .A3(n94), .ZN(n86) );
  AOI211_X1 U99 ( .C1(in_i[18]), .C2(n73), .A(n100), .B(n6), .ZN(n76) );
  INV_X1 U100 ( .A(in_i[2]), .ZN(n80) );
  INV_X1 U101 ( .A(in_i[6]), .ZN(n82) );
  INV_X1 U102 ( .A(in_i[8]), .ZN(n81) );
  NAND3_X1 U103 ( .A1(n35), .A2(n81), .A3(n14), .ZN(n93) );
  NOR2_X1 U104 ( .A1(in_i[19]), .A2(n6), .ZN(n90) );
  OAI22_X1 U105 ( .A1(in_i[11]), .A2(n87), .B1(n86), .B2(in_i[15]), .ZN(n88)
         );
  MUX2_X1 U106 ( .A(n95), .B(n94), .S(n100), .Z(n97) );
  OAI22_X1 U107 ( .A1(n16), .A2(n97), .B1(n14), .B2(n49), .ZN(cnt_o[2]) );
  INV_X1 U108 ( .A(in_i[0]), .ZN(n101) );
  NOR2_X1 U109 ( .A1(n79), .A2(n23), .ZN(n99) );
  MUX2_X1 U110 ( .A(n43), .B(n99), .S(n47), .Z(cnt_o[3]) );
  OR4_X1 U3 ( .A1(in_i[6]), .A2(in_i[5]), .A3(in_i[8]), .A4(in_i[7]), .ZN(n14)
         );
  OR4_X1 U4 ( .A1(in_i[14]), .A2(in_i[15]), .A3(in_i[16]), .A4(in_i[13]), .ZN(
        n94) );
  OR3_X1 U6 ( .A1(in_i[3]), .A2(in_i[2]), .A3(in_i[1]), .ZN(n50) );
  CLKBUF_X1 U7 ( .A(n102), .Z(n4) );
endmodule


module fpnew_rounding_0000000f ( abs_value_i, sign_i, round_sticky_bits_i, 
        rnd_mode_i, effective_subtraction_i, abs_rounded_o, sign_o, 
        exact_zero_o );
  input [14:0] abs_value_i;
  input [1:0] round_sticky_bits_i;
  input [2:0] rnd_mode_i;
  output [14:0] abs_rounded_o;
  input sign_i, effective_subtraction_i;
  output sign_o, exact_zero_o;
  wire   n8, n10, n11, n12, n13, n14, n19, n22, n23, n24, n25, n26, n27, n29,
         n79, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78;

  AND3_X1 U13 ( .A1(abs_value_i[3]), .A2(abs_value_i[2]), .A3(n13), .ZN(n8) );
  AND3_X1 U15 ( .A1(n62), .A2(n22), .A3(n26), .ZN(n10) );
  AND2_X1 U16 ( .A1(n63), .A2(n10), .ZN(n29) );
  AND2_X1 U17 ( .A1(n75), .A2(abs_value_i[12]), .ZN(n11) );
  AND2_X1 U18 ( .A1(n39), .A2(n40), .ZN(n12) );
  AND3_X1 U20 ( .A1(abs_value_i[1]), .A2(abs_value_i[0]), .A3(n19), .ZN(n13)
         );
  OAI211_X1 U21 ( .C1(n48), .C2(n49), .A(n47), .B(n46), .ZN(n19) );
  AND4_X1 U22 ( .A1(n23), .A2(n62), .A3(n27), .A4(n22), .ZN(n14) );
  AND3_X1 U23 ( .A1(n14), .A2(abs_value_i[12]), .A3(n25), .ZN(n69) );
  OR2_X1 U28 ( .A1(abs_value_i[0]), .A2(round_sticky_bits_i[0]), .ZN(n41) );
  AND2_X1 U29 ( .A1(n23), .A2(n27), .ZN(n63) );
  AND2_X1 U30 ( .A1(abs_value_i[2]), .A2(abs_value_i[6]), .ZN(n22) );
  OAI211_X1 U31 ( .C1(n49), .C2(n48), .A(n46), .B(n47), .ZN(n23) );
  AND2_X1 U32 ( .A1(n26), .A2(abs_value_i[10]), .ZN(n24) );
  INV_X1 U33 ( .A(n14), .ZN(n64) );
  NAND2_X1 U35 ( .A1(n14), .A2(n25), .ZN(n68) );
  AND2_X1 U36 ( .A1(n26), .A2(n67), .ZN(n25) );
  AND2_X1 U37 ( .A1(abs_value_i[8]), .A2(abs_value_i[9]), .ZN(n26) );
  NOR2_X1 U38 ( .A1(n59), .A2(n61), .ZN(n27) );
  NAND3_X1 U39 ( .A1(round_sticky_bits_i[1]), .A2(n12), .A3(n41), .ZN(n47) );
  NAND2_X1 U40 ( .A1(n32), .A2(n11), .ZN(n76) );
  XNOR2_X1 U41 ( .A(n68), .B(abs_value_i[12]), .ZN(abs_rounded_o[12]) );
  AND4_X1 U42 ( .A1(n36), .A2(n35), .A3(n34), .A4(n33), .ZN(n79) );
  XNOR2_X1 U43 ( .A(n56), .B(abs_value_i[6]), .ZN(abs_rounded_o[6]) );
  MUX2_X1 U44 ( .A(n37), .B(sign_i), .S(n31), .Z(sign_o) );
  NAND2_X1 U45 ( .A1(effective_subtraction_i), .A2(n79), .ZN(n31) );
  INV_X1 U46 ( .A(abs_value_i[0]), .ZN(n61) );
  INV_X1 U47 ( .A(round_sticky_bits_i[0]), .ZN(n43) );
  NOR4_X1 U48 ( .A1(abs_value_i[2]), .A2(abs_value_i[1]), .A3(n41), .A4(
        round_sticky_bits_i[1]), .ZN(n36) );
  NOR4_X1 U49 ( .A1(abs_value_i[6]), .A2(abs_value_i[5]), .A3(abs_value_i[4]), 
        .A4(abs_value_i[3]), .ZN(n35) );
  NOR4_X1 U50 ( .A1(abs_value_i[10]), .A2(abs_value_i[9]), .A3(abs_value_i[8]), 
        .A4(abs_value_i[7]), .ZN(n34) );
  NOR4_X1 U51 ( .A1(abs_value_i[14]), .A2(abs_value_i[13]), .A3(
        abs_value_i[12]), .A4(abs_value_i[11]), .ZN(n33) );
  INV_X1 U52 ( .A(rnd_mode_i[1]), .ZN(n40) );
  NOR3_X1 U53 ( .A1(rnd_mode_i[0]), .A2(rnd_mode_i[2]), .A3(n40), .ZN(n37) );
  INV_X1 U54 ( .A(rnd_mode_i[0]), .ZN(n39) );
  XOR2_X1 U55 ( .A(n39), .B(sign_i), .Z(n44) );
  INV_X1 U56 ( .A(n44), .ZN(n38) );
  AOI21_X1 U57 ( .B1(rnd_mode_i[1]), .B2(n38), .A(rnd_mode_i[2]), .ZN(n49) );
  INV_X1 U58 ( .A(round_sticky_bits_i[1]), .ZN(n48) );
  INV_X1 U59 ( .A(rnd_mode_i[2]), .ZN(n42) );
  OAI21_X1 U60 ( .B1(n43), .B2(n44), .A(n42), .ZN(n45) );
  AOI22_X1 U61 ( .A1(n45), .A2(rnd_mode_i[1]), .B1(rnd_mode_i[0]), .B2(
        rnd_mode_i[2]), .ZN(n46) );
  XOR2_X1 U62 ( .A(n19), .B(abs_value_i[0]), .Z(abs_rounded_o[0]) );
  INV_X1 U63 ( .A(n19), .ZN(n60) );
  NOR2_X1 U64 ( .A1(n61), .A2(n60), .ZN(n50) );
  XOR2_X1 U65 ( .A(abs_value_i[1]), .B(n50), .Z(abs_rounded_o[1]) );
  NAND3_X1 U66 ( .A1(abs_value_i[1]), .A2(abs_value_i[0]), .A3(n19), .ZN(n51)
         );
  XOR2_X1 U67 ( .A(abs_value_i[2]), .B(n13), .Z(abs_rounded_o[2]) );
  INV_X1 U68 ( .A(abs_value_i[2]), .ZN(n52) );
  NOR2_X1 U69 ( .A1(n51), .A2(n52), .ZN(n53) );
  XOR2_X1 U70 ( .A(abs_value_i[3]), .B(n53), .Z(abs_rounded_o[3]) );
  NAND3_X1 U71 ( .A1(abs_value_i[3]), .A2(abs_value_i[2]), .A3(n13), .ZN(n54)
         );
  XOR2_X1 U72 ( .A(n8), .B(abs_value_i[4]), .Z(abs_rounded_o[4]) );
  INV_X1 U73 ( .A(abs_value_i[4]), .ZN(n59) );
  NOR2_X1 U74 ( .A1(n54), .A2(n59), .ZN(n55) );
  XOR2_X1 U75 ( .A(abs_value_i[5]), .B(n55), .Z(abs_rounded_o[5]) );
  NAND3_X1 U76 ( .A1(n8), .A2(abs_value_i[4]), .A3(abs_value_i[5]), .ZN(n56)
         );
  INV_X1 U77 ( .A(abs_value_i[6]), .ZN(n57) );
  NOR2_X1 U78 ( .A1(n56), .A2(n57), .ZN(n58) );
  XOR2_X1 U79 ( .A(n58), .B(abs_value_i[7]), .Z(abs_rounded_o[7]) );
  XOR2_X1 U80 ( .A(abs_value_i[8]), .B(n14), .Z(abs_rounded_o[8]) );
  INV_X1 U81 ( .A(abs_value_i[8]), .ZN(n65) );
  NOR2_X1 U82 ( .A1(n65), .A2(n64), .ZN(n66) );
  XOR2_X1 U83 ( .A(n66), .B(abs_value_i[9]), .Z(abs_rounded_o[9]) );
  XOR2_X1 U84 ( .A(n29), .B(abs_value_i[10]), .Z(abs_rounded_o[10]) );
  XOR2_X1 U85 ( .A(n32), .B(abs_value_i[11]), .Z(abs_rounded_o[11]) );
  NAND2_X1 U86 ( .A1(abs_value_i[11]), .A2(abs_value_i[10]), .ZN(n71) );
  INV_X1 U87 ( .A(n71), .ZN(n67) );
  INV_X1 U88 ( .A(abs_value_i[12]), .ZN(n70) );
  XOR2_X1 U89 ( .A(abs_value_i[13]), .B(n69), .Z(abs_rounded_o[13]) );
  INV_X1 U90 ( .A(abs_value_i[13]), .ZN(n73) );
  NOR3_X1 U91 ( .A1(n71), .A2(n70), .A3(n73), .ZN(n77) );
  INV_X1 U92 ( .A(abs_value_i[11]), .ZN(n74) );
  INV_X1 U93 ( .A(abs_value_i[14]), .ZN(n72) );
  NOR3_X1 U94 ( .A1(n74), .A2(n73), .A3(n72), .ZN(n75) );
  OAI221_X1 U95 ( .B1(abs_value_i[14]), .B2(n77), .C1(n29), .C2(
        abs_value_i[14]), .A(n76), .ZN(n78) );
  INV_X1 U96 ( .A(n78), .ZN(abs_rounded_o[14]) );
  AND4_X1 U10 ( .A1(n63), .A2(n62), .A3(n22), .A4(n24), .ZN(n32) );
  AND4_X1 U3 ( .A1(abs_value_i[5]), .A2(abs_value_i[1]), .A3(abs_value_i[3]), 
        .A4(abs_value_i[7]), .ZN(n62) );
endmodule


module fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_inc_0 ( A, SUM
 );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA_X1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INV_X1 U1 ( .A(A[0]), .ZN(SUM[0]) );
  XOR2_X1 U2 ( .A(carry[6]), .B(A[6]), .Z(SUM[6]) );
endmodule


module fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW_mult_uns_0 ( a, b, 
        product, rst_ni_INV, clk_i );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  input rst_ni_INV, clk_i;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n19,
         n20, n21, n22, n23, n25, n26, n27, n28, n29, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n143,
         n144, n145, n146, n147, n149, n150, n151, n152, n153, n154, n155,
         n156, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n392, n393, n394, n398, n399, n404,
         n406, n408, n409, n410, n411, n416, n417, n418, n419, n421, n422,
         n423, n424, n425, n426, n427, n428, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n505, n512,
         n513, n515, n516, n517, n518, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
         n660;

  FA_X1 U11 ( .A(n645), .B(n644), .CI(n11), .CO(n10), .S(product[14]) );
  FA_X1 U15 ( .A(n88), .B(n95), .CI(n15), .CO(n14), .S(product[10]) );
  FA_X1 U17 ( .A(n104), .B(n109), .CI(n17), .CO(n16), .S(product[8]) );
  FA_X1 U23 ( .A(n219), .B(n208), .CI(n393), .CO(n22), .S(product[2]) );
  HA_X1 U24 ( .A(n220), .B(n147), .CO(n23), .S(product[1]) );
  FA_X1 U26 ( .A(n149), .B(n29), .CI(n522), .CO(n25), .S(n26) );
  FA_X1 U27 ( .A(n523), .B(n158), .CI(n33), .CO(n27), .S(n28) );
  FA_X1 U29 ( .A(n37), .B(n520), .CI(n34), .CO(n31), .S(n32) );
  FA_X1 U30 ( .A(n150), .B(n39), .CI(n159), .CO(n33), .S(n34) );
  FA_X1 U31 ( .A(n38), .B(n45), .CI(n43), .CO(n35), .S(n36) );
  FA_X1 U32 ( .A(n160), .B(n171), .CI(n524), .CO(n37), .S(n38) );
  FA_X1 U34 ( .A(n49), .B(n46), .CI(n44), .CO(n41), .S(n42) );
  FA_X1 U35 ( .A(n518), .B(n161), .CI(n51), .CO(n43), .S(n44) );
  FA_X1 U36 ( .A(n151), .B(n53), .CI(n172), .CO(n45), .S(n46) );
  FA_X1 U37 ( .A(n57), .B(n52), .CI(n50), .CO(n47), .S(n48) );
  FA_X1 U38 ( .A(n61), .B(n184), .CI(n59), .CO(n49), .S(n50) );
  FA_X1 U39 ( .A(n173), .B(n162), .CI(n525), .CO(n51), .S(n52) );
  FA_X1 U41 ( .A(n65), .B(n60), .CI(n58), .CO(n55), .S(n56) );
  FA_X1 U42 ( .A(n67), .B(n69), .CI(n62), .CO(n57), .S(n58) );
  FA_X1 U43 ( .A(n515), .B(n174), .CI(n516), .CO(n59), .S(n60) );
  FA_X1 U44 ( .A(n163), .B(n152), .CI(n185), .CO(n61), .S(n62) );
  FA_X1 U45 ( .A(n73), .B(n68), .CI(n66), .CO(n63), .S(n64) );
  FA_X1 U46 ( .A(n75), .B(n77), .CI(n70), .CO(n65), .S(n66) );
  FA_X1 U47 ( .A(n164), .B(n186), .CI(n175), .CO(n67), .S(n68) );
  FA_X1 U48 ( .A(n153), .B(a[1]), .CI(n197), .CO(n69), .S(n70) );
  FA_X1 U49 ( .A(n81), .B(n76), .CI(n74), .CO(n71), .S(n72) );
  FA_X1 U50 ( .A(n83), .B(n85), .CI(n78), .CO(n73), .S(n74) );
  FA_X1 U51 ( .A(n165), .B(n187), .CI(n176), .CO(n75), .S(n76) );
  FA_X1 U52 ( .A(n154), .B(a[1]), .CI(n198), .CO(n77), .S(n78) );
  FA_X1 U53 ( .A(n89), .B(n84), .CI(n82), .CO(n79), .S(n80) );
  FA_X1 U54 ( .A(n91), .B(n93), .CI(n86), .CO(n81), .S(n82) );
  FA_X1 U55 ( .A(n166), .B(n199), .CI(n188), .CO(n83), .S(n84) );
  FA_X1 U56 ( .A(n177), .B(n155), .CI(n210), .CO(n85), .S(n86) );
  FA_X1 U57 ( .A(n97), .B(n92), .CI(n90), .CO(n87), .S(n88) );
  FA_X1 U58 ( .A(n99), .B(n101), .CI(n94), .CO(n89), .S(n90) );
  FA_X1 U59 ( .A(n167), .B(n200), .CI(n189), .CO(n91), .S(n92) );
  FA_X1 U60 ( .A(n178), .B(n156), .CI(n211), .CO(n93), .S(n94) );
  FA_X1 U61 ( .A(n100), .B(n105), .CI(n98), .CO(n95), .S(n96) );
  FA_X1 U62 ( .A(n102), .B(n212), .CI(n107), .CO(n97), .S(n98) );
  FA_X1 U63 ( .A(n179), .B(n190), .CI(n201), .CO(n99), .S(n100) );
  HA_X1 U64 ( .A(n143), .B(n168), .CO(n101), .S(n102) );
  FA_X1 U65 ( .A(n108), .B(n111), .CI(n106), .CO(n103), .S(n104) );
  FA_X1 U66 ( .A(n180), .B(n202), .CI(n113), .CO(n105), .S(n106) );
  FA_X1 U67 ( .A(n191), .B(n169), .CI(n213), .CO(n107), .S(n108) );
  FA_X1 U68 ( .A(n117), .B(n114), .CI(n112), .CO(n109), .S(n110) );
  FA_X1 U69 ( .A(n192), .B(n214), .CI(n203), .CO(n111), .S(n112) );
  HA_X1 U70 ( .A(n144), .B(n181), .CO(n113), .S(n114) );
  FA_X1 U71 ( .A(n121), .B(n193), .CI(n118), .CO(n115), .S(n116) );
  FA_X1 U72 ( .A(n215), .B(n182), .CI(n204), .CO(n117), .S(n118) );
  FA_X1 U73 ( .A(n205), .B(n216), .CI(n122), .CO(n119), .S(n120) );
  HA_X1 U74 ( .A(n194), .B(n145), .CO(n121), .S(n122) );
  FA_X1 U75 ( .A(n217), .B(n195), .CI(n206), .CO(n123), .S(n124) );
  HA_X1 U76 ( .A(n207), .B(n218), .CO(n125), .S(n126) );
  NAND2_X1 U300 ( .A1(n498), .A2(n552), .ZN(n554) );
  XOR2_X1 U301 ( .A(a[4]), .B(a[3]), .Z(n392) );
  AND2_X1 U302 ( .A1(n220), .A2(n147), .ZN(n393) );
  FA_X1 U304 ( .A(n219), .B(n208), .CI(n23), .CO(n394) );
  NAND2_X1 U308 ( .A1(n651), .A2(n447), .ZN(n398) );
  XNOR2_X1 U309 ( .A(b[1]), .B(a[1]), .ZN(n399) );
  NAND3_X1 U315 ( .A1(n423), .A2(n424), .A3(n425), .ZN(n404) );
  INV_X1 U317 ( .A(a[5]), .ZN(n406) );
  NAND3_X1 U320 ( .A1(n432), .A2(n433), .A3(n434), .ZN(n408) );
  OR3_X1 U321 ( .A1(n566), .A2(b[0]), .A3(n406), .ZN(n609) );
  OAI22_X1 U322 ( .A1(n399), .A2(n409), .B1(b[0]), .B2(n541), .ZN(n220) );
  INV_X1 U323 ( .A(a[0]), .ZN(n409) );
  XNOR2_X1 U325 ( .A(a[6]), .B(n512), .ZN(n410) );
  XNOR2_X1 U326 ( .A(a[6]), .B(n512), .ZN(n411) );
  XNOR2_X1 U327 ( .A(a[6]), .B(n512), .ZN(n580) );
  NAND2_X1 U330 ( .A1(a[1]), .A2(n409), .ZN(n541) );
  INV_X1 U334 ( .A(n566), .ZN(n416) );
  OR2_X1 U338 ( .A1(n392), .A2(n500), .ZN(n568) );
  XNOR2_X1 U340 ( .A(b[1]), .B(a[1]), .ZN(n542) );
  INV_X1 U341 ( .A(b[1]), .ZN(n528) );
  NAND3_X1 U342 ( .A1(n437), .A2(n436), .A3(n438), .ZN(n421) );
  XOR2_X1 U343 ( .A(n126), .B(n146), .Z(n422) );
  XOR2_X1 U344 ( .A(n394), .B(n422), .Z(product[3]) );
  NAND2_X1 U345 ( .A1(n394), .A2(n126), .ZN(n423) );
  NAND2_X1 U346 ( .A1(n22), .A2(n146), .ZN(n424) );
  NAND2_X1 U347 ( .A1(n126), .A2(n146), .ZN(n425) );
  NAND3_X1 U348 ( .A1(n423), .A2(n424), .A3(n425), .ZN(n21) );
  NAND3_X1 U349 ( .A1(n485), .A2(n484), .A3(n483), .ZN(n426) );
  NAND3_X1 U350 ( .A1(n455), .A2(n454), .A3(n453), .ZN(n427) );
  NAND3_X1 U351 ( .A1(n473), .A2(n474), .A3(n475), .ZN(n428) );
  XOR2_X1 U354 ( .A(n647), .B(n646), .Z(n431) );
  XOR2_X1 U355 ( .A(n10), .B(n431), .Z(product[15]) );
  NAND2_X1 U356 ( .A1(n10), .A2(n647), .ZN(n432) );
  NAND2_X1 U357 ( .A1(n10), .A2(n646), .ZN(n433) );
  NAND2_X1 U358 ( .A1(n647), .A2(n646), .ZN(n434) );
  NAND3_X1 U359 ( .A1(n432), .A2(n433), .A3(n434), .ZN(n9) );
  XOR2_X1 U360 ( .A(n124), .B(n125), .Z(n435) );
  XOR2_X1 U361 ( .A(n21), .B(n435), .Z(product[4]) );
  NAND2_X1 U362 ( .A1(n404), .A2(n124), .ZN(n436) );
  NAND2_X1 U363 ( .A1(n404), .A2(n125), .ZN(n437) );
  NAND2_X1 U364 ( .A1(n124), .A2(n125), .ZN(n438) );
  NAND3_X1 U365 ( .A1(n436), .A2(n437), .A3(n438), .ZN(n20) );
  NAND3_X1 U366 ( .A1(n442), .A2(n443), .A3(n444), .ZN(n439) );
  NAND3_X1 U367 ( .A1(n442), .A2(n443), .A3(n444), .ZN(n440) );
  XOR2_X1 U368 ( .A(n639), .B(n638), .Z(n441) );
  XOR2_X1 U369 ( .A(n659), .B(n441), .Z(product[11]) );
  NAND2_X1 U370 ( .A1(n659), .A2(n639), .ZN(n442) );
  NAND2_X1 U371 ( .A1(n659), .A2(n638), .ZN(n443) );
  NAND2_X1 U372 ( .A1(n639), .A2(n638), .ZN(n444) );
  NAND3_X1 U373 ( .A1(n442), .A2(n443), .A3(n444), .ZN(n13) );
  NAND3_X1 U374 ( .A1(n450), .A2(n449), .A3(n451), .ZN(n445) );
  NAND3_X1 U375 ( .A1(n454), .A2(n455), .A3(n453), .ZN(n446) );
  NAND3_X1 U376 ( .A1(n465), .A2(n464), .A3(n466), .ZN(n447) );
  XOR2_X1 U377 ( .A(n120), .B(n123), .Z(n448) );
  XOR2_X1 U378 ( .A(n20), .B(n448), .Z(product[5]) );
  NAND2_X1 U379 ( .A1(n120), .A2(n421), .ZN(n449) );
  NAND2_X1 U380 ( .A1(n20), .A2(n123), .ZN(n450) );
  NAND2_X1 U381 ( .A1(n120), .A2(n123), .ZN(n451) );
  NAND3_X1 U382 ( .A1(n449), .A2(n450), .A3(n451), .ZN(n19) );
  XOR2_X1 U383 ( .A(n641), .B(n640), .Z(n452) );
  XOR2_X1 U384 ( .A(n452), .B(n440), .Z(product[12]) );
  NAND2_X1 U385 ( .A1(n641), .A2(n640), .ZN(n453) );
  NAND2_X1 U386 ( .A1(n641), .A2(n13), .ZN(n454) );
  NAND2_X1 U387 ( .A1(n439), .A2(n640), .ZN(n455) );
  NAND3_X1 U388 ( .A1(n454), .A2(n455), .A3(n453), .ZN(n12) );
  XOR2_X1 U389 ( .A(n643), .B(n642), .Z(n456) );
  XOR2_X1 U390 ( .A(n456), .B(n427), .Z(product[13]) );
  NAND2_X1 U391 ( .A1(n643), .A2(n642), .ZN(n457) );
  NAND2_X1 U392 ( .A1(n446), .A2(n643), .ZN(n458) );
  NAND2_X1 U393 ( .A1(n12), .A2(n642), .ZN(n459) );
  NAND3_X1 U394 ( .A1(n457), .A2(n458), .A3(n459), .ZN(n11) );
  NAND3_X1 U395 ( .A1(n473), .A2(n474), .A3(n475), .ZN(n460) );
  NAND3_X1 U396 ( .A1(n492), .A2(n491), .A3(n493), .ZN(n461) );
  NAND3_X1 U397 ( .A1(n492), .A2(n491), .A3(n493), .ZN(n462) );
  XOR2_X1 U398 ( .A(n649), .B(n648), .Z(n463) );
  XOR2_X1 U399 ( .A(n9), .B(n463), .Z(product[16]) );
  NAND2_X1 U400 ( .A1(n408), .A2(n649), .ZN(n464) );
  NAND2_X1 U401 ( .A1(n408), .A2(n648), .ZN(n465) );
  NAND2_X1 U402 ( .A1(n649), .A2(n648), .ZN(n466) );
  NAND3_X1 U403 ( .A1(n464), .A2(n465), .A3(n466), .ZN(n8) );
  XOR2_X1 U405 ( .A(n96), .B(n103), .Z(n468) );
  XOR2_X1 U406 ( .A(n16), .B(n468), .Z(product[9]) );
  NAND2_X1 U407 ( .A1(n16), .A2(n96), .ZN(n469) );
  NAND2_X1 U408 ( .A1(n16), .A2(n103), .ZN(n470) );
  NAND2_X1 U409 ( .A1(n96), .A2(n103), .ZN(n471) );
  NAND3_X1 U410 ( .A1(n469), .A2(n470), .A3(n471), .ZN(n15) );
  XOR2_X1 U411 ( .A(n116), .B(n119), .Z(n472) );
  XOR2_X1 U412 ( .A(n445), .B(n472), .Z(product[6]) );
  NAND2_X1 U413 ( .A1(n445), .A2(n116), .ZN(n473) );
  NAND2_X1 U414 ( .A1(n19), .A2(n119), .ZN(n474) );
  NAND2_X1 U415 ( .A1(n116), .A2(n119), .ZN(n475) );
  NAND3_X1 U416 ( .A1(n481), .A2(n398), .A3(n479), .ZN(n476) );
  NAND3_X1 U417 ( .A1(n479), .A2(n398), .A3(n481), .ZN(n477) );
  XOR2_X1 U418 ( .A(n651), .B(n650), .Z(n478) );
  XOR2_X1 U419 ( .A(n478), .B(n8), .Z(product[17]) );
  NAND2_X1 U420 ( .A1(n651), .A2(n650), .ZN(n479) );
  NAND2_X1 U421 ( .A1(n651), .A2(n8), .ZN(n480) );
  NAND2_X1 U422 ( .A1(n650), .A2(n447), .ZN(n481) );
  NAND3_X1 U423 ( .A1(n481), .A2(n480), .A3(n479), .ZN(n7) );
  XOR2_X1 U424 ( .A(n653), .B(n652), .Z(n482) );
  XOR2_X1 U425 ( .A(n482), .B(n477), .Z(product[18]) );
  NAND2_X1 U426 ( .A1(n653), .A2(n652), .ZN(n483) );
  NAND2_X1 U427 ( .A1(n653), .A2(n7), .ZN(n484) );
  NAND2_X1 U428 ( .A1(n476), .A2(n652), .ZN(n485) );
  NAND3_X1 U429 ( .A1(n484), .A2(n485), .A3(n483), .ZN(n6) );
  XOR2_X1 U430 ( .A(n110), .B(n115), .Z(n486) );
  XOR2_X1 U431 ( .A(n428), .B(n486), .Z(product[7]) );
  NAND2_X1 U432 ( .A1(n428), .A2(n110), .ZN(n487) );
  NAND2_X1 U433 ( .A1(n460), .A2(n115), .ZN(n488) );
  NAND2_X1 U434 ( .A1(n110), .A2(n115), .ZN(n489) );
  NAND3_X1 U435 ( .A1(n487), .A2(n488), .A3(n489), .ZN(n17) );
  XOR2_X1 U436 ( .A(n655), .B(n654), .Z(n490) );
  XOR2_X1 U437 ( .A(n490), .B(n426), .Z(product[19]) );
  NAND2_X1 U438 ( .A1(n655), .A2(n654), .ZN(n491) );
  NAND2_X1 U439 ( .A1(n655), .A2(n6), .ZN(n492) );
  NAND2_X1 U440 ( .A1(n6), .A2(n654), .ZN(n493) );
  NAND3_X1 U441 ( .A1(n493), .A2(n492), .A3(n491), .ZN(n5) );
  XOR2_X1 U442 ( .A(n656), .B(n657), .Z(n494) );
  XOR2_X1 U443 ( .A(n494), .B(n462), .Z(product[20]) );
  NAND2_X1 U444 ( .A1(n656), .A2(n657), .ZN(n495) );
  NAND2_X1 U445 ( .A1(n5), .A2(n656), .ZN(n496) );
  NAND2_X1 U446 ( .A1(n657), .A2(n461), .ZN(n497) );
  NAND3_X1 U447 ( .A1(n497), .A2(n496), .A3(n495), .ZN(n4) );
  XNOR2_X2 U452 ( .A(a[8]), .B(a[7]), .ZN(n594) );
  XOR2_X1 U454 ( .A(a[2]), .B(a[3]), .Z(n498) );
  XNOR2_X1 U455 ( .A(n499), .B(n660), .ZN(product[21]) );
  XNOR2_X1 U456 ( .A(n4), .B(n658), .ZN(n499) );
  INV_X1 U458 ( .A(a[3]), .ZN(n517) );
  INV_X1 U459 ( .A(n505), .ZN(n521) );
  INV_X1 U460 ( .A(n53), .ZN(n525) );
  INV_X1 U461 ( .A(n579), .ZN(n518) );
  INV_X1 U462 ( .A(n565), .ZN(n515) );
  INV_X1 U463 ( .A(n39), .ZN(n524) );
  INV_X1 U464 ( .A(n593), .ZN(n520) );
  INV_X1 U465 ( .A(n29), .ZN(n523) );
  XNOR2_X1 U466 ( .A(a[5]), .B(a[4]), .ZN(n500) );
  INV_X1 U467 ( .A(a[9]), .ZN(n526) );
  INV_X1 U470 ( .A(n607), .ZN(n522) );
  INV_X1 U471 ( .A(b[4]), .ZN(n531) );
  INV_X1 U472 ( .A(b[8]), .ZN(n535) );
  INV_X1 U473 ( .A(b[9]), .ZN(n536) );
  XNOR2_X1 U476 ( .A(a[4]), .B(a[3]), .ZN(n566) );
  XNOR2_X1 U479 ( .A(a[2]), .B(a[1]), .ZN(n552) );
  INV_X1 U480 ( .A(a[1]), .ZN(n516) );
  XOR2_X2 U481 ( .A(a[10]), .B(n526), .Z(n540) );
  OR2_X1 U489 ( .A1(n537), .A2(n539), .ZN(n538) );
  NOR2_X1 U490 ( .A1(n409), .A2(n527), .ZN(product[0]) );
  OAI22_X1 U491 ( .A1(n539), .A2(n531), .B1(n540), .B2(n532), .ZN(n53) );
  OAI22_X1 U492 ( .A1(n539), .A2(n533), .B1(n540), .B2(n534), .ZN(n39) );
  OAI22_X1 U493 ( .A1(n539), .A2(n535), .B1(n540), .B2(n536), .ZN(n29) );
  OAI22_X1 U494 ( .A1(n542), .A2(n541), .B1(n543), .B2(n409), .ZN(n219) );
  OAI22_X1 U495 ( .A1(n543), .A2(n541), .B1(n544), .B2(n409), .ZN(n218) );
  XOR2_X1 U496 ( .A(n529), .B(a[1]), .Z(n543) );
  OAI22_X1 U497 ( .A1(n544), .A2(n541), .B1(n545), .B2(n409), .ZN(n217) );
  XOR2_X1 U498 ( .A(n530), .B(a[1]), .Z(n544) );
  OAI22_X1 U499 ( .A1(n545), .A2(n541), .B1(n546), .B2(n409), .ZN(n216) );
  XOR2_X1 U500 ( .A(n531), .B(a[1]), .Z(n545) );
  OAI22_X1 U501 ( .A1(n546), .A2(n541), .B1(n547), .B2(n409), .ZN(n215) );
  XOR2_X1 U502 ( .A(n532), .B(a[1]), .Z(n546) );
  OAI22_X1 U503 ( .A1(n547), .A2(n541), .B1(n548), .B2(n409), .ZN(n214) );
  XOR2_X1 U504 ( .A(n533), .B(a[1]), .Z(n547) );
  OAI22_X1 U505 ( .A1(n548), .A2(n541), .B1(n549), .B2(n409), .ZN(n213) );
  XOR2_X1 U506 ( .A(n534), .B(a[1]), .Z(n548) );
  OAI22_X1 U507 ( .A1(n549), .A2(n541), .B1(n550), .B2(n409), .ZN(n212) );
  XOR2_X1 U508 ( .A(n535), .B(a[1]), .Z(n549) );
  OAI22_X1 U509 ( .A1(n550), .A2(n541), .B1(n551), .B2(n409), .ZN(n211) );
  XOR2_X1 U510 ( .A(n536), .B(a[1]), .Z(n550) );
  OAI22_X1 U511 ( .A1(n551), .A2(n541), .B1(n516), .B2(n409), .ZN(n210) );
  XOR2_X1 U512 ( .A(n537), .B(a[1]), .Z(n551) );
  NOR2_X1 U513 ( .A1(n552), .A2(n527), .ZN(n208) );
  OAI22_X1 U514 ( .A1(n553), .A2(n554), .B1(n513), .B2(n555), .ZN(n207) );
  XOR2_X1 U515 ( .A(n527), .B(a[3]), .Z(n553) );
  OAI22_X1 U516 ( .A1(n555), .A2(n554), .B1(n513), .B2(n556), .ZN(n206) );
  XOR2_X1 U517 ( .A(n528), .B(a[3]), .Z(n555) );
  OAI22_X1 U518 ( .A1(n556), .A2(n554), .B1(n513), .B2(n557), .ZN(n205) );
  XOR2_X1 U519 ( .A(n529), .B(a[3]), .Z(n556) );
  OAI22_X1 U520 ( .A1(n557), .A2(n554), .B1(n513), .B2(n558), .ZN(n204) );
  XOR2_X1 U521 ( .A(n530), .B(a[3]), .Z(n557) );
  OAI22_X1 U522 ( .A1(n558), .A2(n554), .B1(n513), .B2(n559), .ZN(n203) );
  XOR2_X1 U523 ( .A(n531), .B(a[3]), .Z(n558) );
  OAI22_X1 U524 ( .A1(n559), .A2(n554), .B1(n513), .B2(n560), .ZN(n202) );
  XOR2_X1 U525 ( .A(n532), .B(a[3]), .Z(n559) );
  OAI22_X1 U526 ( .A1(n560), .A2(n554), .B1(n513), .B2(n561), .ZN(n201) );
  XOR2_X1 U527 ( .A(n533), .B(a[3]), .Z(n560) );
  OAI22_X1 U528 ( .A1(n561), .A2(n554), .B1(n513), .B2(n562), .ZN(n200) );
  XOR2_X1 U529 ( .A(n534), .B(a[3]), .Z(n561) );
  OAI22_X1 U530 ( .A1(n562), .A2(n554), .B1(n513), .B2(n563), .ZN(n199) );
  XOR2_X1 U531 ( .A(n535), .B(a[3]), .Z(n562) );
  OAI22_X1 U532 ( .A1(n563), .A2(n554), .B1(n513), .B2(n564), .ZN(n198) );
  XOR2_X1 U533 ( .A(n536), .B(a[3]), .Z(n563) );
  OAI22_X1 U534 ( .A1(n564), .A2(n554), .B1(n513), .B2(n517), .ZN(n197) );
  XOR2_X1 U535 ( .A(n537), .B(a[3]), .Z(n564) );
  OAI22_X1 U536 ( .A1(n517), .A2(n513), .B1(n554), .B2(n517), .ZN(n565) );
  NOR2_X1 U537 ( .A1(n566), .A2(n527), .ZN(n195) );
  OAI22_X1 U538 ( .A1(n567), .A2(n568), .B1(n566), .B2(n569), .ZN(n194) );
  XOR2_X1 U539 ( .A(n527), .B(n512), .Z(n567) );
  OAI22_X1 U540 ( .A1(n569), .A2(n418), .B1(n417), .B2(n570), .ZN(n193) );
  XOR2_X1 U541 ( .A(n528), .B(n512), .Z(n569) );
  OAI22_X1 U542 ( .A1(n570), .A2(n419), .B1(n566), .B2(n571), .ZN(n192) );
  XOR2_X1 U543 ( .A(n529), .B(n512), .Z(n570) );
  OAI22_X1 U544 ( .A1(n571), .A2(n419), .B1(n417), .B2(n572), .ZN(n191) );
  XOR2_X1 U545 ( .A(n530), .B(n512), .Z(n571) );
  OAI22_X1 U546 ( .A1(n572), .A2(n418), .B1(n417), .B2(n573), .ZN(n190) );
  XOR2_X1 U547 ( .A(n531), .B(n512), .Z(n572) );
  OAI22_X1 U548 ( .A1(n573), .A2(n419), .B1(n417), .B2(n574), .ZN(n189) );
  XOR2_X1 U549 ( .A(n532), .B(n512), .Z(n573) );
  OAI22_X1 U550 ( .A1(n574), .A2(n418), .B1(n417), .B2(n575), .ZN(n188) );
  XOR2_X1 U551 ( .A(n533), .B(a[5]), .Z(n574) );
  OAI22_X1 U552 ( .A1(n575), .A2(n419), .B1(n417), .B2(n576), .ZN(n187) );
  XOR2_X1 U553 ( .A(n534), .B(n512), .Z(n575) );
  OAI22_X1 U554 ( .A1(n576), .A2(n419), .B1(n417), .B2(n577), .ZN(n186) );
  XOR2_X1 U555 ( .A(n535), .B(a[5]), .Z(n576) );
  OAI22_X1 U556 ( .A1(n577), .A2(n418), .B1(n417), .B2(n578), .ZN(n185) );
  XOR2_X1 U557 ( .A(n536), .B(n512), .Z(n577) );
  OAI22_X1 U558 ( .A1(n578), .A2(n419), .B1(n417), .B2(n406), .ZN(n184) );
  XOR2_X1 U559 ( .A(n537), .B(n512), .Z(n578) );
  OAI22_X1 U560 ( .A1(n406), .A2(n417), .B1(n418), .B2(n406), .ZN(n579) );
  NOR2_X1 U561 ( .A1(n411), .A2(n527), .ZN(n182) );
  OAI22_X1 U562 ( .A1(n581), .A2(n582), .B1(n411), .B2(n583), .ZN(n181) );
  XOR2_X1 U563 ( .A(n527), .B(n505), .Z(n581) );
  OAI22_X1 U564 ( .A1(n583), .A2(n582), .B1(n410), .B2(n584), .ZN(n180) );
  XOR2_X1 U565 ( .A(n528), .B(n505), .Z(n583) );
  OAI22_X1 U566 ( .A1(n584), .A2(n582), .B1(n410), .B2(n585), .ZN(n179) );
  XOR2_X1 U567 ( .A(n529), .B(n505), .Z(n584) );
  OAI22_X1 U568 ( .A1(n585), .A2(n582), .B1(n411), .B2(n586), .ZN(n178) );
  XOR2_X1 U569 ( .A(n530), .B(n505), .Z(n585) );
  OAI22_X1 U570 ( .A1(n586), .A2(n582), .B1(n411), .B2(n587), .ZN(n177) );
  XOR2_X1 U571 ( .A(n531), .B(n505), .Z(n586) );
  OAI22_X1 U572 ( .A1(n587), .A2(n582), .B1(n410), .B2(n588), .ZN(n176) );
  XOR2_X1 U573 ( .A(n532), .B(n505), .Z(n587) );
  OAI22_X1 U574 ( .A1(n588), .A2(n582), .B1(n411), .B2(n589), .ZN(n175) );
  XOR2_X1 U575 ( .A(n533), .B(n505), .Z(n588) );
  OAI22_X1 U576 ( .A1(n589), .A2(n582), .B1(n410), .B2(n590), .ZN(n174) );
  XOR2_X1 U577 ( .A(n534), .B(a[7]), .Z(n589) );
  OAI22_X1 U578 ( .A1(n590), .A2(n582), .B1(n411), .B2(n591), .ZN(n173) );
  XOR2_X1 U579 ( .A(n535), .B(n505), .Z(n590) );
  OAI22_X1 U580 ( .A1(n591), .A2(n582), .B1(n410), .B2(n592), .ZN(n172) );
  XOR2_X1 U581 ( .A(n536), .B(a[7]), .Z(n591) );
  OAI22_X1 U582 ( .A1(n592), .A2(n582), .B1(n411), .B2(n521), .ZN(n171) );
  XOR2_X1 U583 ( .A(n537), .B(n505), .Z(n592) );
  OAI22_X1 U584 ( .A1(n521), .A2(n410), .B1(n582), .B2(n521), .ZN(n593) );
  NOR2_X1 U585 ( .A1(n594), .A2(n527), .ZN(n169) );
  OAI22_X1 U586 ( .A1(n595), .A2(n596), .B1(n594), .B2(n597), .ZN(n168) );
  XOR2_X1 U587 ( .A(n527), .B(a[9]), .Z(n595) );
  OAI22_X1 U588 ( .A1(n597), .A2(n596), .B1(n594), .B2(n598), .ZN(n167) );
  XOR2_X1 U589 ( .A(n528), .B(a[9]), .Z(n597) );
  OAI22_X1 U590 ( .A1(n598), .A2(n596), .B1(n594), .B2(n599), .ZN(n166) );
  XOR2_X1 U591 ( .A(n529), .B(a[9]), .Z(n598) );
  OAI22_X1 U592 ( .A1(n599), .A2(n596), .B1(n594), .B2(n600), .ZN(n165) );
  XOR2_X1 U593 ( .A(n530), .B(a[9]), .Z(n599) );
  OAI22_X1 U594 ( .A1(n600), .A2(n596), .B1(n594), .B2(n601), .ZN(n164) );
  XOR2_X1 U595 ( .A(n531), .B(a[9]), .Z(n600) );
  OAI22_X1 U596 ( .A1(n601), .A2(n596), .B1(n594), .B2(n602), .ZN(n163) );
  XOR2_X1 U597 ( .A(n532), .B(a[9]), .Z(n601) );
  OAI22_X1 U598 ( .A1(n602), .A2(n596), .B1(n594), .B2(n603), .ZN(n162) );
  XOR2_X1 U599 ( .A(n533), .B(a[9]), .Z(n602) );
  OAI22_X1 U600 ( .A1(n603), .A2(n596), .B1(n594), .B2(n604), .ZN(n161) );
  XOR2_X1 U601 ( .A(n534), .B(a[9]), .Z(n603) );
  OAI22_X1 U602 ( .A1(n604), .A2(n596), .B1(n594), .B2(n605), .ZN(n160) );
  XOR2_X1 U603 ( .A(n535), .B(a[9]), .Z(n604) );
  OAI22_X1 U604 ( .A1(n605), .A2(n596), .B1(n594), .B2(n606), .ZN(n159) );
  XOR2_X1 U605 ( .A(n536), .B(a[9]), .Z(n605) );
  OAI22_X1 U606 ( .A1(n606), .A2(n596), .B1(n594), .B2(n526), .ZN(n158) );
  XOR2_X1 U607 ( .A(n537), .B(a[9]), .Z(n606) );
  OAI22_X1 U608 ( .A1(n526), .A2(n594), .B1(n596), .B2(n526), .ZN(n607) );
  NOR2_X1 U609 ( .A1(n540), .A2(n527), .ZN(n156) );
  OAI22_X1 U610 ( .A1(n539), .A2(n527), .B1(n540), .B2(n528), .ZN(n155) );
  OAI22_X1 U611 ( .A1(n539), .A2(n528), .B1(n540), .B2(n529), .ZN(n154) );
  OAI22_X1 U612 ( .A1(n539), .A2(n529), .B1(n540), .B2(n530), .ZN(n153) );
  OAI22_X1 U613 ( .A1(n539), .A2(n530), .B1(n540), .B2(n531), .ZN(n152) );
  OAI22_X1 U614 ( .A1(n539), .A2(n532), .B1(n540), .B2(n533), .ZN(n151) );
  OAI22_X1 U615 ( .A1(n539), .A2(n534), .B1(n540), .B2(n535), .ZN(n150) );
  OAI22_X1 U616 ( .A1(n539), .A2(n536), .B1(n540), .B2(n537), .ZN(n149) );
  NAND2_X1 U617 ( .A1(n540), .A2(a[10]), .ZN(n539) );
  OAI21_X1 U618 ( .B1(b[0]), .B2(n516), .A(n541), .ZN(n147) );
  OAI21_X1 U619 ( .B1(n517), .B2(n554), .A(n608), .ZN(n146) );
  OR3_X1 U620 ( .A1(n513), .A2(b[0]), .A3(n517), .ZN(n608) );
  OAI21_X1 U621 ( .B1(n406), .B2(n568), .A(n609), .ZN(n145) );
  OAI21_X1 U622 ( .B1(n521), .B2(n582), .A(n610), .ZN(n144) );
  OR3_X1 U623 ( .A1(n410), .A2(b[0]), .A3(n521), .ZN(n610) );
  XOR2_X1 U624 ( .A(n505), .B(a[6]), .Z(n611) );
  OAI21_X1 U625 ( .B1(n526), .B2(n596), .A(n612), .ZN(n143) );
  OR3_X1 U626 ( .A1(n594), .A2(b[0]), .A3(n526), .ZN(n612) );
  XOR2_X1 U627 ( .A(a[9]), .B(a[8]), .Z(n613) );
  DFFS_X1 MY_CLK_r_REG143_S1 ( .D(n538), .CK(clk_i), .SN(rst_ni_INV), .Q(n660)
         );
  DFFR_X1 MY_CLK_r_REG139_S1 ( .D(n14), .CK(clk_i), .RN(rst_ni_INV), .Q(n659)
         );
  DFFR_X1 MY_CLK_r_REG120_S1 ( .D(n25), .CK(clk_i), .RN(rst_ni_INV), .Q(n658)
         );
  DFFS_X1 MY_CLK_r_REG121_S1 ( .D(n26), .CK(clk_i), .SN(rst_ni_INV), .Q(n657)
         );
  DFFR_X1 MY_CLK_r_REG124_S1 ( .D(n27), .CK(clk_i), .RN(rst_ni_INV), .Q(n656)
         );
  DFFS_X1 MY_CLK_r_REG125_S1 ( .D(n28), .CK(clk_i), .SN(rst_ni_INV), .Q(n655)
         );
  DFFR_X1 MY_CLK_r_REG122_S1 ( .D(n31), .CK(clk_i), .RN(rst_ni_INV), .Q(n654)
         );
  DFFS_X1 MY_CLK_r_REG123_S1 ( .D(n32), .CK(clk_i), .SN(rst_ni_INV), .Q(n653)
         );
  DFFR_X1 MY_CLK_r_REG128_S1 ( .D(n35), .CK(clk_i), .RN(rst_ni_INV), .Q(n652)
         );
  DFFS_X1 MY_CLK_r_REG129_S1 ( .D(n36), .CK(clk_i), .SN(rst_ni_INV), .Q(n651)
         );
  DFFR_X1 MY_CLK_r_REG126_S1 ( .D(n41), .CK(clk_i), .RN(rst_ni_INV), .Q(n650)
         );
  DFFS_X1 MY_CLK_r_REG127_S1 ( .D(n42), .CK(clk_i), .SN(rst_ni_INV), .Q(n649)
         );
  DFFS_X1 MY_CLK_r_REG132_S1 ( .D(n47), .CK(clk_i), .SN(rst_ni_INV), .Q(n648)
         );
  DFFR_X1 MY_CLK_r_REG133_S1 ( .D(n48), .CK(clk_i), .RN(rst_ni_INV), .Q(n647)
         );
  DFFR_X1 MY_CLK_r_REG130_S1 ( .D(n55), .CK(clk_i), .RN(rst_ni_INV), .Q(n646)
         );
  DFFR_X1 MY_CLK_r_REG131_S1 ( .D(n56), .CK(clk_i), .RN(rst_ni_INV), .Q(n645)
         );
  DFFR_X1 MY_CLK_r_REG136_S1 ( .D(n63), .CK(clk_i), .RN(rst_ni_INV), .Q(n644)
         );
  DFFR_X1 MY_CLK_r_REG137_S1 ( .D(n64), .CK(clk_i), .RN(rst_ni_INV), .Q(n643)
         );
  DFFR_X1 MY_CLK_r_REG134_S1 ( .D(n71), .CK(clk_i), .RN(rst_ni_INV), .Q(n642)
         );
  DFFR_X1 MY_CLK_r_REG135_S1 ( .D(n72), .CK(clk_i), .RN(rst_ni_INV), .Q(n641)
         );
  DFFR_X1 MY_CLK_r_REG141_S1 ( .D(n79), .CK(clk_i), .RN(rst_ni_INV), .Q(n640)
         );
  DFFR_X1 MY_CLK_r_REG142_S1 ( .D(n80), .CK(clk_i), .RN(rst_ni_INV), .Q(n639)
         );
  DFFR_X1 MY_CLK_r_REG138_S1 ( .D(n87), .CK(clk_i), .RN(rst_ni_INV), .Q(n638)
         );
  INV_X1 U482 ( .A(b[0]), .ZN(n527) );
  BUF_X1 U313 ( .A(n552), .Z(n513) );
  INV_X1 U486 ( .A(b[6]), .ZN(n533) );
  BUF_X1 U468 ( .A(a[7]), .Z(n505) );
  NAND2_X1 U453 ( .A1(n580), .A2(n611), .ZN(n582) );
  OR2_X1 U337 ( .A1(n392), .A2(n500), .ZN(n419) );
  INV_X1 U297 ( .A(b[3]), .ZN(n530) );
  CLKBUF_X1 U298 ( .A(a[5]), .Z(n512) );
  INV_X1 U299 ( .A(b[2]), .ZN(n529) );
  OR2_X1 U303 ( .A1(n392), .A2(n500), .ZN(n418) );
  INV_X1 U305 ( .A(n416), .ZN(n417) );
  INV_X1 U306 ( .A(b[5]), .ZN(n532) );
  INV_X1 U307 ( .A(b[7]), .ZN(n534) );
  NAND2_X1 U310 ( .A1(n594), .A2(n613), .ZN(n596) );
  INV_X1 U311 ( .A(b[10]), .ZN(n537) );
endmodule


module fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_sub_6 ( A, B, 
        CI, DIFF, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n1, n3, n5, n7, n9, n11, n12, n13, n14, n15, n17, n19, n20, n21, n22,
         n23, n25, n27, n28, n30, n32, n34, n35, n36, n37, n38, n39, n68, n69,
         n70, n71, n72, n73;

  XOR2_X1 U50 ( .A(n68), .B(n12), .Z(DIFF[5]) );
  AND2_X1 U51 ( .A1(n72), .A2(n11), .ZN(n68) );
  NOR2_X1 U52 ( .A1(n35), .A2(A[4]), .ZN(n13) );
  NAND2_X1 U53 ( .A1(n35), .A2(A[4]), .ZN(n14) );
  OR2_X1 U54 ( .A1(n34), .A2(A[5]), .ZN(n72) );
  OR2_X1 U55 ( .A1(n36), .A2(A[3]), .ZN(n71) );
  NOR2_X1 U56 ( .A1(n37), .A2(A[2]), .ZN(n21) );
  OR2_X1 U57 ( .A1(n38), .A2(A[1]), .ZN(n70) );
  AOI21_X1 U58 ( .B1(n71), .B2(n20), .A(n17), .ZN(n15) );
  INV_X1 U59 ( .A(n19), .ZN(n17) );
  OAI21_X1 U60 ( .B1(n21), .B2(n23), .A(n22), .ZN(n20) );
  OAI21_X1 U61 ( .B1(n13), .B2(n15), .A(n14), .ZN(n12) );
  XOR2_X1 U62 ( .A(n3), .B(n15), .Z(DIFF[4]) );
  NAND2_X1 U63 ( .A1(n30), .A2(n14), .ZN(n3) );
  INV_X1 U64 ( .A(n13), .ZN(n30) );
  XOR2_X1 U65 ( .A(n69), .B(n20), .Z(DIFF[3]) );
  AND2_X1 U66 ( .A1(n71), .A2(n19), .ZN(n69) );
  XOR2_X1 U67 ( .A(n5), .B(n23), .Z(DIFF[2]) );
  NAND2_X1 U68 ( .A1(n32), .A2(n22), .ZN(n5) );
  INV_X1 U69 ( .A(n21), .ZN(n32) );
  AOI21_X1 U70 ( .B1(n70), .B2(n1), .A(n25), .ZN(n23) );
  INV_X1 U71 ( .A(n28), .ZN(n1) );
  INV_X1 U72 ( .A(n27), .ZN(n25) );
  NAND2_X1 U73 ( .A1(n38), .A2(A[1]), .ZN(n27) );
  INV_X1 U74 ( .A(B[3]), .ZN(n36) );
  NAND2_X1 U75 ( .A1(n36), .A2(A[3]), .ZN(n19) );
  INV_X1 U76 ( .A(B[4]), .ZN(n35) );
  INV_X1 U77 ( .A(B[2]), .ZN(n37) );
  NAND2_X1 U78 ( .A1(n37), .A2(A[2]), .ZN(n22) );
  NAND2_X1 U79 ( .A1(n34), .A2(A[5]), .ZN(n11) );
  XNOR2_X1 U80 ( .A(n73), .B(n28), .ZN(DIFF[1]) );
  AND2_X1 U81 ( .A1(n70), .A2(n27), .ZN(n73) );
  XOR2_X1 U82 ( .A(n7), .B(B[6]), .Z(DIFF[6]) );
  AOI21_X1 U83 ( .B1(n12), .B2(n72), .A(n9), .ZN(n7) );
  INV_X1 U84 ( .A(n11), .ZN(n9) );
  INV_X1 U85 ( .A(B[1]), .ZN(n38) );
  INV_X1 U86 ( .A(B[5]), .ZN(n34) );
  NOR2_X1 U87 ( .A1(n39), .A2(A[0]), .ZN(n28) );
  INV_X1 U88 ( .A(B[0]), .ZN(n39) );
  XNOR2_X1 U89 ( .A(n39), .B(A[0]), .ZN(DIFF[0]) );
endmodule


module fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_add_6 ( A, B, 
        CI, SUM, CO, rst_ni_INV, clk_i );
  input [37:0] A;
  input [37:0] B;
  output [37:0] SUM;
  input CI, rst_ni_INV, clk_i;
  output CO;
  wire   n1, n2, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n30, n31, n32, n33, n35,
         n36, n37, n38, n39, n40, n41, n42, n44, n45, n46, n47, n48, n49, n51,
         n52, n53, n54, n55, n57, n58, n60, n61, n62, n63, n64, n67, n68, n69,
         n70, n71, n72, n73, n74, n76, n77, n78, n79, n80, n81, n83, n84, n85,
         n86, n87, n89, n90, n92, n93, n94, n95, n96, n99, n100, n101, n102,
         n104, n105, n106, n108, n109, n110, n111, n112, n115, n116, n117,
         n118, n119, n122, n124, n125, n126, n127, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n151, n152, n153, n154, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n190, n193, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n217, n218, n219, n220, n221, n222, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n304, n307, n309, n311, n312, n313,
         n315, n317, n319, n320, n321, n322, n323, n325, n326, n449, n451,
         n452, n455, n456, n458, n460, n461, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484;

  NOR2_X1 U369 ( .A1(n243), .A2(n205), .ZN(n203) );
  NOR2_X1 U370 ( .A1(A[17]), .A2(B[17]), .ZN(n197) );
  NOR2_X1 U371 ( .A1(A[15]), .A2(B[15]), .ZN(n209) );
  NOR2_X1 U372 ( .A1(n483), .A2(B[11]), .ZN(n247) );
  NOR2_X1 U373 ( .A1(A[13]), .A2(B[13]), .ZN(n229) );
  NOR2_X1 U374 ( .A1(n477), .A2(B[5]), .ZN(n284) );
  NOR2_X1 U375 ( .A1(n479), .A2(B[7]), .ZN(n276) );
  NOR2_X1 U376 ( .A1(n478), .A2(B[6]), .ZN(n279) );
  XNOR2_X1 U377 ( .A(n199), .B(n12), .ZN(SUM[17]) );
  OR2_X1 U378 ( .A1(A[22]), .A2(B[22]), .ZN(n449) );
  AND2_X1 U379 ( .A1(n461), .A2(n304), .ZN(SUM[0]) );
  NOR2_X1 U380 ( .A1(n482), .A2(B[10]), .ZN(n254) );
  NOR2_X1 U381 ( .A1(n484), .A2(B[12]), .ZN(n236) );
  NOR2_X1 U382 ( .A1(A[14]), .A2(B[14]), .ZN(n218) );
  AOI21_X1 U383 ( .B1(n271), .B2(n203), .A(n204), .ZN(n202) );
  AND2_X1 U385 ( .A1(n139), .A2(n451), .ZN(n135) );
  AND2_X1 U386 ( .A1(n159), .A2(n452), .ZN(n451) );
  INV_X1 U387 ( .A(n175), .ZN(n452) );
  NOR2_X1 U390 ( .A1(n175), .A2(n137), .ZN(n455) );
  OAI21_X1 U391 ( .B1(A[23]), .B2(B[23]), .A(n449), .ZN(n456) );
  INV_X1 U392 ( .A(n456), .ZN(n139) );
  CLKBUF_X1 U394 ( .A(A[23]), .Z(n458) );
  OR2_X1 U396 ( .A1(n458), .A2(B[23]), .ZN(n460) );
  NOR2_X1 U397 ( .A1(A[23]), .A2(B[23]), .ZN(n141) );
  AOI21_X1 U399 ( .B1(n245), .B2(n264), .A(n246), .ZN(n244) );
  AOI21_X1 U400 ( .B1(n207), .B2(n228), .A(n208), .ZN(n206) );
  NOR2_X1 U401 ( .A1(n200), .A2(n197), .ZN(n195) );
  NOR2_X1 U402 ( .A1(A[21]), .A2(B[21]), .ZN(n161) );
  NOR2_X1 U403 ( .A1(n168), .A2(n161), .ZN(n159) );
  NAND2_X1 U404 ( .A1(n482), .A2(B[10]), .ZN(n255) );
  NAND2_X1 U405 ( .A1(A[14]), .A2(B[14]), .ZN(n219) );
  NOR2_X1 U406 ( .A1(A[19]), .A2(B[19]), .ZN(n179) );
  NAND2_X1 U407 ( .A1(A[16]), .A2(B[16]), .ZN(n201) );
  NOR2_X1 U409 ( .A1(A[16]), .A2(B[16]), .ZN(n200) );
  OR2_X1 U410 ( .A1(B[0]), .A2(CI), .ZN(n461) );
  NOR2_X1 U411 ( .A1(A[20]), .A2(B[20]), .ZN(n168) );
  NOR2_X1 U412 ( .A1(n480), .A2(B[8]), .ZN(n268) );
  NOR2_X1 U413 ( .A1(A[18]), .A2(B[18]), .ZN(n186) );
  NOR2_X1 U414 ( .A1(n475), .A2(B[3]), .ZN(n295) );
  NOR2_X1 U415 ( .A1(n476), .A2(B[4]), .ZN(n289) );
  NOR2_X1 U416 ( .A1(n474), .A2(B[2]), .ZN(n298) );
  NAND2_X1 U419 ( .A1(n452), .A2(n159), .ZN(n153) );
  NAND2_X1 U420 ( .A1(n214), .A2(n241), .ZN(n212) );
  NAND2_X1 U421 ( .A1(n241), .A2(n227), .ZN(n221) );
  INV_X1 U424 ( .A(n196), .ZN(n190) );
  INV_X1 U427 ( .A(n122), .ZN(n119) );
  NAND2_X1 U428 ( .A1(n146), .A2(n452), .ZN(n144) );
  INV_X1 U429 ( .A(n244), .ZN(n242) );
  AOI21_X1 U430 ( .B1(n242), .B2(n227), .A(n228), .ZN(n222) );
  AOI21_X1 U432 ( .B1(n174), .B2(n159), .A(n160), .ZN(n154) );
  INV_X1 U435 ( .A(n243), .ZN(n241) );
  NAND2_X1 U437 ( .A1(n263), .A2(n252), .ZN(n250) );
  INV_X1 U438 ( .A(n263), .ZN(n257) );
  NOR2_X1 U440 ( .A1(n225), .A2(n218), .ZN(n214) );
  INV_X1 U443 ( .A(n195), .ZN(n193) );
  OAI21_X1 U444 ( .B1(n244), .B2(n205), .A(n206), .ZN(n204) );
  NAND2_X1 U445 ( .A1(n227), .A2(n207), .ZN(n205) );
  OAI21_X1 U446 ( .B1(n247), .B2(n255), .A(n248), .ZN(n246) );
  NAND2_X1 U447 ( .A1(n311), .A2(n198), .ZN(n12) );
  OAI21_X1 U448 ( .B1(n1), .B2(n200), .A(n201), .ZN(n199) );
  INV_X1 U449 ( .A(n197), .ZN(n311) );
  XNOR2_X1 U450 ( .A(n163), .B(n8), .ZN(SUM[21]) );
  NAND2_X1 U451 ( .A1(n307), .A2(n162), .ZN(n8) );
  OAI21_X1 U452 ( .B1(n1), .B2(n164), .A(n165), .ZN(n163) );
  INV_X1 U453 ( .A(n161), .ZN(n307) );
  XNOR2_X1 U454 ( .A(n181), .B(n10), .ZN(SUM[19]) );
  NAND2_X1 U455 ( .A1(n309), .A2(n180), .ZN(n10) );
  OAI21_X1 U456 ( .B1(n1), .B2(n182), .A(n183), .ZN(n181) );
  INV_X1 U457 ( .A(n179), .ZN(n309) );
  NOR2_X1 U458 ( .A1(n72), .A2(n67), .ZN(n64) );
  NAND2_X1 U459 ( .A1(n263), .A2(n245), .ZN(n243) );
  INV_X1 U460 ( .A(n72), .ZN(n71) );
  XOR2_X1 U461 ( .A(n1), .B(n13), .Z(SUM[16]) );
  NAND2_X1 U462 ( .A1(n312), .A2(n201), .ZN(n13) );
  INV_X1 U463 ( .A(n200), .ZN(n312) );
  NOR2_X1 U464 ( .A1(n254), .A2(n247), .ZN(n245) );
  OAI21_X1 U465 ( .B1(n209), .B2(n219), .A(n210), .ZN(n208) );
  NOR2_X1 U466 ( .A1(n218), .A2(n209), .ZN(n207) );
  INV_X1 U467 ( .A(n105), .ZN(n104) );
  NOR2_X1 U468 ( .A1(n104), .A2(n99), .ZN(n96) );
  NOR2_X1 U469 ( .A1(n104), .A2(n90), .ZN(n87) );
  NOR2_X1 U471 ( .A1(n104), .A2(n81), .ZN(n80) );
  NAND2_X1 U472 ( .A1(n89), .A2(B[30]), .ZN(n81) );
  INV_X1 U473 ( .A(n271), .ZN(n270) );
  NOR2_X1 U474 ( .A1(n122), .A2(n115), .ZN(n112) );
  XNOR2_X1 U475 ( .A(n220), .B(n15), .ZN(SUM[14]) );
  NAND2_X1 U476 ( .A1(n217), .A2(n219), .ZN(n15) );
  OAI21_X1 U477 ( .B1(n270), .B2(n221), .A(n222), .ZN(n220) );
  XNOR2_X1 U478 ( .A(n256), .B(n19), .ZN(SUM[10]) );
  NAND2_X1 U479 ( .A1(n252), .A2(n255), .ZN(n19) );
  OAI21_X1 U480 ( .B1(n270), .B2(n257), .A(n262), .ZN(n256) );
  XNOR2_X1 U481 ( .A(n211), .B(n14), .ZN(SUM[15]) );
  NAND2_X1 U482 ( .A1(n313), .A2(n210), .ZN(n14) );
  OAI21_X1 U483 ( .B1(n270), .B2(n212), .A(n213), .ZN(n211) );
  INV_X1 U484 ( .A(n209), .ZN(n313) );
  XNOR2_X1 U485 ( .A(n249), .B(n18), .ZN(SUM[11]) );
  NAND2_X1 U486 ( .A1(n317), .A2(n248), .ZN(n18) );
  OAI21_X1 U487 ( .B1(n270), .B2(n250), .A(n251), .ZN(n249) );
  INV_X1 U488 ( .A(n247), .ZN(n317) );
  NOR2_X1 U489 ( .A1(n157), .A2(n148), .ZN(n146) );
  AOI21_X1 U490 ( .B1(n214), .B2(n242), .A(n215), .ZN(n213) );
  OAI21_X1 U491 ( .B1(n226), .B2(n218), .A(n219), .ZN(n215) );
  INV_X1 U492 ( .A(n160), .ZN(n158) );
  NAND2_X1 U493 ( .A1(n195), .A2(n177), .ZN(n175) );
  INV_X1 U494 ( .A(n159), .ZN(n157) );
  NAND2_X1 U495 ( .A1(n241), .A2(n234), .ZN(n232) );
  AOI21_X1 U496 ( .B1(n264), .B2(n252), .A(n253), .ZN(n251) );
  INV_X1 U497 ( .A(n255), .ZN(n253) );
  INV_X1 U499 ( .A(n264), .ZN(n262) );
  OAI21_X1 U500 ( .B1(n197), .B2(n201), .A(n198), .ZN(n196) );
  INV_X1 U501 ( .A(n301), .ZN(n300) );
  INV_X1 U502 ( .A(n176), .ZN(n174) );
  NAND2_X1 U503 ( .A1(n452), .A2(n166), .ZN(n164) );
  OAI21_X1 U505 ( .B1(n2), .B2(n37), .A(n38), .ZN(n36) );
  NAND2_X1 U506 ( .A1(n135), .A2(n39), .ZN(n37) );
  NOR2_X1 U507 ( .A1(n72), .A2(n40), .ZN(n39) );
  INV_X1 U508 ( .A(n227), .ZN(n225) );
  INV_X1 U509 ( .A(n228), .ZN(n226) );
  INV_X1 U511 ( .A(n218), .ZN(n217) );
  NAND2_X1 U512 ( .A1(n195), .A2(n184), .ZN(n182) );
  INV_X1 U513 ( .A(n254), .ZN(n252) );
  NOR2_X1 U514 ( .A1(n122), .A2(n106), .ZN(n105) );
  NAND2_X1 U515 ( .A1(B[26]), .A2(B[27]), .ZN(n106) );
  NAND2_X1 U516 ( .A1(n105), .A2(n73), .ZN(n72) );
  NOR2_X1 U517 ( .A1(n90), .A2(n74), .ZN(n73) );
  NAND2_X1 U518 ( .A1(B[30]), .A2(B[31]), .ZN(n74) );
  NAND2_X1 U519 ( .A1(B[24]), .A2(B[25]), .ZN(n122) );
  NOR2_X1 U520 ( .A1(n72), .A2(n33), .ZN(n32) );
  NAND2_X1 U521 ( .A1(n41), .A2(B[36]), .ZN(n33) );
  NOR2_X1 U522 ( .A1(n481), .A2(B[9]), .ZN(n265) );
  OAI21_X1 U523 ( .B1(n265), .B2(n269), .A(n266), .ZN(n264) );
  XNOR2_X1 U524 ( .A(n170), .B(n9), .ZN(SUM[20]) );
  NAND2_X1 U525 ( .A1(n166), .A2(n169), .ZN(n9) );
  OAI21_X1 U526 ( .B1(n1), .B2(n175), .A(n176), .ZN(n170) );
  NAND2_X1 U527 ( .A1(n282), .A2(n274), .ZN(n272) );
  AOI21_X1 U528 ( .B1(n274), .B2(n283), .A(n275), .ZN(n273) );
  NOR2_X1 U529 ( .A1(n279), .A2(n276), .ZN(n274) );
  NAND2_X1 U530 ( .A1(B[0]), .A2(CI), .ZN(n304) );
  NOR2_X1 U531 ( .A1(n304), .A2(n302), .ZN(n301) );
  XNOR2_X1 U532 ( .A(n100), .B(n99), .ZN(SUM[28]) );
  OAI21_X1 U533 ( .B1(n2), .B2(n101), .A(n102), .ZN(n100) );
  NAND2_X1 U534 ( .A1(n455), .A2(n105), .ZN(n101) );
  XNOR2_X1 U535 ( .A(n132), .B(n131), .ZN(SUM[24]) );
  OAI21_X1 U536 ( .B1(n1), .B2(n133), .A(n134), .ZN(n132) );
  INV_X1 U537 ( .A(n455), .ZN(n133) );
  INV_X1 U538 ( .A(n136), .ZN(n134) );
  XNOR2_X1 U539 ( .A(n152), .B(n7), .ZN(SUM[22]) );
  NAND2_X1 U540 ( .A1(n449), .A2(n151), .ZN(n7) );
  OAI21_X1 U541 ( .B1(n1), .B2(n153), .A(n154), .ZN(n152) );
  XNOR2_X1 U542 ( .A(n188), .B(n11), .ZN(SUM[18]) );
  NAND2_X1 U543 ( .A1(n184), .A2(n187), .ZN(n11) );
  OAI21_X1 U544 ( .B1(n1), .B2(n193), .A(n190), .ZN(n188) );
  XNOR2_X1 U545 ( .A(n125), .B(n124), .ZN(SUM[25]) );
  OAI21_X1 U546 ( .B1(n1), .B2(n126), .A(n127), .ZN(n125) );
  NAND2_X1 U547 ( .A1(n135), .A2(B[24]), .ZN(n126) );
  XNOR2_X1 U548 ( .A(n143), .B(n6), .ZN(SUM[23]) );
  NAND2_X1 U549 ( .A1(n460), .A2(n142), .ZN(n6) );
  OAI21_X1 U550 ( .B1(n1), .B2(n144), .A(n145), .ZN(n143) );
  AOI21_X1 U553 ( .B1(n139), .B2(n160), .A(n140), .ZN(n138) );
  OAI21_X1 U554 ( .B1(n141), .B2(n151), .A(n142), .ZN(n140) );
  XNOR2_X1 U555 ( .A(n84), .B(n83), .ZN(SUM[30]) );
  OAI21_X1 U556 ( .B1(n2), .B2(n85), .A(n86), .ZN(n84) );
  NAND2_X1 U557 ( .A1(n135), .A2(n87), .ZN(n85) );
  XNOR2_X1 U558 ( .A(n116), .B(n115), .ZN(SUM[26]) );
  OAI21_X1 U559 ( .B1(n2), .B2(n117), .A(n118), .ZN(n116) );
  NAND2_X1 U560 ( .A1(n135), .A2(n119), .ZN(n117) );
  XNOR2_X1 U561 ( .A(n77), .B(n76), .ZN(SUM[31]) );
  OAI21_X1 U562 ( .B1(n2), .B2(n78), .A(n79), .ZN(n77) );
  NAND2_X1 U563 ( .A1(n135), .A2(n80), .ZN(n78) );
  XNOR2_X1 U564 ( .A(n109), .B(n108), .ZN(SUM[27]) );
  OAI21_X1 U565 ( .B1(n2), .B2(n110), .A(n111), .ZN(n109) );
  NAND2_X1 U566 ( .A1(n135), .A2(n112), .ZN(n110) );
  NOR2_X1 U567 ( .A1(n268), .A2(n265), .ZN(n263) );
  XNOR2_X1 U568 ( .A(n68), .B(n67), .ZN(SUM[32]) );
  OAI21_X1 U569 ( .B1(n2), .B2(n69), .A(n70), .ZN(n68) );
  NAND2_X1 U570 ( .A1(n135), .A2(n71), .ZN(n69) );
  NAND2_X1 U571 ( .A1(n481), .A2(B[9]), .ZN(n266) );
  OAI21_X1 U572 ( .B1(n229), .B2(n237), .A(n230), .ZN(n228) );
  OAI21_X1 U573 ( .B1(n276), .B2(n280), .A(n277), .ZN(n275) );
  NOR2_X1 U574 ( .A1(n236), .A2(n229), .ZN(n227) );
  NAND2_X1 U575 ( .A1(n483), .A2(B[11]), .ZN(n248) );
  NOR2_X1 U576 ( .A1(n72), .A2(n58), .ZN(n55) );
  NAND2_X1 U578 ( .A1(A[15]), .A2(B[15]), .ZN(n210) );
  NOR2_X1 U579 ( .A1(n72), .A2(n49), .ZN(n48) );
  NAND2_X1 U580 ( .A1(n57), .A2(B[34]), .ZN(n49) );
  XNOR2_X1 U581 ( .A(n238), .B(n17), .ZN(SUM[12]) );
  NAND2_X1 U582 ( .A1(n234), .A2(n237), .ZN(n17) );
  OAI21_X1 U583 ( .B1(n270), .B2(n243), .A(n244), .ZN(n238) );
  XNOR2_X1 U584 ( .A(n267), .B(n20), .ZN(SUM[9]) );
  NAND2_X1 U585 ( .A1(n319), .A2(n266), .ZN(n20) );
  OAI21_X1 U586 ( .B1(n270), .B2(n268), .A(n269), .ZN(n267) );
  INV_X1 U587 ( .A(n265), .ZN(n319) );
  XNOR2_X1 U588 ( .A(n231), .B(n16), .ZN(SUM[13]) );
  NAND2_X1 U589 ( .A1(n315), .A2(n230), .ZN(n16) );
  OAI21_X1 U590 ( .B1(n270), .B2(n232), .A(n233), .ZN(n231) );
  INV_X1 U591 ( .A(n229), .ZN(n315) );
  AOI21_X1 U592 ( .B1(n146), .B2(n174), .A(n147), .ZN(n145) );
  OAI21_X1 U593 ( .B1(n158), .B2(n148), .A(n151), .ZN(n147) );
  INV_X1 U594 ( .A(n449), .ZN(n148) );
  XOR2_X1 U595 ( .A(n270), .B(n21), .Z(SUM[8]) );
  NAND2_X1 U596 ( .A1(n320), .A2(n269), .ZN(n21) );
  INV_X1 U597 ( .A(n268), .ZN(n320) );
  OAI21_X1 U598 ( .B1(n161), .B2(n169), .A(n162), .ZN(n160) );
  INV_X1 U599 ( .A(n90), .ZN(n89) );
  XNOR2_X1 U600 ( .A(n278), .B(n22), .ZN(SUM[7]) );
  NAND2_X1 U601 ( .A1(n321), .A2(n277), .ZN(n22) );
  OAI21_X1 U602 ( .B1(n281), .B2(n279), .A(n280), .ZN(n278) );
  INV_X1 U603 ( .A(n276), .ZN(n321) );
  AOI21_X1 U604 ( .B1(n291), .B2(n282), .A(n283), .ZN(n281) );
  INV_X1 U605 ( .A(n292), .ZN(n291) );
  XOR2_X1 U606 ( .A(n281), .B(n23), .Z(SUM[6]) );
  NAND2_X1 U607 ( .A1(n322), .A2(n280), .ZN(n23) );
  INV_X1 U608 ( .A(n279), .ZN(n322) );
  AOI21_X1 U609 ( .B1(n242), .B2(n234), .A(n235), .ZN(n233) );
  INV_X1 U610 ( .A(n237), .ZN(n235) );
  NAND2_X1 U611 ( .A1(A[21]), .A2(B[21]), .ZN(n162) );
  NOR2_X1 U612 ( .A1(n186), .A2(n179), .ZN(n177) );
  AOI21_X1 U613 ( .B1(n177), .B2(n196), .A(n178), .ZN(n176) );
  OAI21_X1 U614 ( .B1(n179), .B2(n187), .A(n180), .ZN(n178) );
  AOI21_X1 U615 ( .B1(n174), .B2(n166), .A(n167), .ZN(n165) );
  INV_X1 U616 ( .A(n169), .ZN(n167) );
  NAND2_X1 U617 ( .A1(A[19]), .A2(B[19]), .ZN(n180) );
  NAND2_X1 U618 ( .A1(A[17]), .A2(B[17]), .ZN(n198) );
  AOI21_X1 U619 ( .B1(n196), .B2(n184), .A(n185), .ZN(n183) );
  INV_X1 U620 ( .A(n187), .ZN(n185) );
  INV_X1 U621 ( .A(n168), .ZN(n166) );
  INV_X1 U622 ( .A(n236), .ZN(n234) );
  XOR2_X1 U623 ( .A(n302), .B(n304), .Z(SUM[1]) );
  INV_X1 U624 ( .A(B[36]), .ZN(n35) );
  INV_X1 U625 ( .A(n186), .ZN(n184) );
  INV_X1 U626 ( .A(n41), .ZN(n40) );
  INV_X1 U627 ( .A(B[25]), .ZN(n124) );
  AOI21_X1 U628 ( .B1(n293), .B2(n301), .A(n294), .ZN(n292) );
  NOR2_X1 U629 ( .A1(n298), .A2(n295), .ZN(n293) );
  OAI21_X1 U630 ( .B1(n295), .B2(n299), .A(n296), .ZN(n294) );
  XNOR2_X1 U631 ( .A(n93), .B(n92), .ZN(SUM[29]) );
  OAI21_X1 U632 ( .B1(n2), .B2(n94), .A(n95), .ZN(n93) );
  NAND2_X1 U633 ( .A1(n455), .A2(n96), .ZN(n94) );
  INV_X1 U634 ( .A(B[28]), .ZN(n99) );
  NAND2_X1 U635 ( .A1(B[28]), .A2(B[29]), .ZN(n90) );
  INV_X1 U636 ( .A(B[1]), .ZN(n302) );
  OAI21_X1 U637 ( .B1(n284), .B2(n290), .A(n285), .ZN(n283) );
  INV_X1 U638 ( .A(B[24]), .ZN(n131) );
  INV_X1 U639 ( .A(B[26]), .ZN(n115) );
  NOR2_X1 U640 ( .A1(n289), .A2(n284), .ZN(n282) );
  INV_X1 U641 ( .A(B[27]), .ZN(n108) );
  INV_X1 U642 ( .A(B[30]), .ZN(n83) );
  NAND2_X1 U643 ( .A1(n480), .A2(B[8]), .ZN(n269) );
  INV_X1 U644 ( .A(B[31]), .ZN(n76) );
  NAND2_X1 U645 ( .A1(n484), .A2(B[12]), .ZN(n237) );
  XNOR2_X1 U646 ( .A(n52), .B(n51), .ZN(SUM[34]) );
  OAI21_X1 U647 ( .B1(n2), .B2(n53), .A(n54), .ZN(n52) );
  NAND2_X1 U648 ( .A1(n135), .A2(n55), .ZN(n53) );
  NAND2_X1 U649 ( .A1(n478), .A2(B[6]), .ZN(n280) );
  NAND2_X1 U650 ( .A1(n479), .A2(B[7]), .ZN(n277) );
  NAND2_X1 U651 ( .A1(A[13]), .A2(B[13]), .ZN(n230) );
  XNOR2_X1 U652 ( .A(n45), .B(n44), .ZN(SUM[35]) );
  OAI21_X1 U653 ( .B1(n2), .B2(n46), .A(n47), .ZN(n45) );
  NAND2_X1 U654 ( .A1(n135), .A2(n48), .ZN(n46) );
  NAND2_X1 U655 ( .A1(A[22]), .A2(B[22]), .ZN(n151) );
  XOR2_X1 U656 ( .A(n286), .B(n24), .Z(SUM[5]) );
  NAND2_X1 U657 ( .A1(n323), .A2(n285), .ZN(n24) );
  AOI21_X1 U658 ( .B1(n291), .B2(n287), .A(n288), .ZN(n286) );
  INV_X1 U659 ( .A(n284), .ZN(n323) );
  NOR2_X1 U660 ( .A1(n58), .A2(n42), .ZN(n41) );
  NAND2_X1 U661 ( .A1(B[34]), .A2(B[35]), .ZN(n42) );
  INV_X1 U662 ( .A(B[32]), .ZN(n67) );
  NAND2_X1 U663 ( .A1(A[20]), .A2(B[20]), .ZN(n169) );
  XNOR2_X1 U664 ( .A(n291), .B(n25), .ZN(SUM[4]) );
  NAND2_X1 U665 ( .A1(n287), .A2(n290), .ZN(n25) );
  XNOR2_X1 U666 ( .A(n297), .B(n26), .ZN(SUM[3]) );
  NAND2_X1 U667 ( .A1(n325), .A2(n296), .ZN(n26) );
  OAI21_X1 U668 ( .B1(n300), .B2(n298), .A(n299), .ZN(n297) );
  INV_X1 U669 ( .A(n295), .ZN(n325) );
  XOR2_X1 U670 ( .A(n27), .B(n300), .Z(SUM[2]) );
  NAND2_X1 U671 ( .A1(n326), .A2(n299), .ZN(n27) );
  INV_X1 U672 ( .A(n298), .ZN(n326) );
  NAND2_X1 U673 ( .A1(A[18]), .A2(B[18]), .ZN(n187) );
  INV_X1 U674 ( .A(n58), .ZN(n57) );
  INV_X1 U675 ( .A(n289), .ZN(n287) );
  INV_X1 U676 ( .A(n290), .ZN(n288) );
  XNOR2_X1 U677 ( .A(n61), .B(n60), .ZN(SUM[33]) );
  OAI21_X1 U678 ( .B1(n2), .B2(n62), .A(n63), .ZN(n61) );
  NAND2_X1 U679 ( .A1(n135), .A2(n64), .ZN(n62) );
  NAND2_X1 U680 ( .A1(n477), .A2(B[5]), .ZN(n285) );
  INV_X1 U681 ( .A(B[29]), .ZN(n92) );
  NAND2_X1 U682 ( .A1(n475), .A2(B[3]), .ZN(n296) );
  NAND2_X1 U683 ( .A1(n476), .A2(B[4]), .ZN(n290) );
  NAND2_X1 U684 ( .A1(n474), .A2(B[2]), .ZN(n299) );
  NAND2_X1 U685 ( .A1(B[32]), .A2(B[33]), .ZN(n58) );
  INV_X1 U686 ( .A(B[34]), .ZN(n51) );
  INV_X1 U687 ( .A(B[35]), .ZN(n44) );
  INV_X1 U688 ( .A(B[33]), .ZN(n60) );
  XNOR2_X1 U689 ( .A(n36), .B(n35), .ZN(SUM[36]) );
  NAND2_X1 U690 ( .A1(n135), .A2(n32), .ZN(n30) );
  NAND2_X1 U691 ( .A1(n136), .A2(n39), .ZN(n38) );
  NAND2_X1 U692 ( .A1(n136), .A2(n48), .ZN(n47) );
  NAND2_X1 U693 ( .A1(n136), .A2(n55), .ZN(n54) );
  NAND2_X1 U694 ( .A1(n136), .A2(n64), .ZN(n63) );
  NAND2_X1 U695 ( .A1(n136), .A2(n71), .ZN(n70) );
  NAND2_X1 U696 ( .A1(n136), .A2(n112), .ZN(n111) );
  NAND2_X1 U697 ( .A1(n136), .A2(n80), .ZN(n79) );
  NAND2_X1 U698 ( .A1(n136), .A2(n119), .ZN(n118) );
  NAND2_X1 U699 ( .A1(n136), .A2(n87), .ZN(n86) );
  NAND2_X1 U700 ( .A1(n136), .A2(n96), .ZN(n95) );
  NAND2_X1 U701 ( .A1(n136), .A2(B[24]), .ZN(n127) );
  NAND2_X1 U702 ( .A1(n136), .A2(n105), .ZN(n102) );
  OAI21_X1 U703 ( .B1(n2), .B2(n30), .A(n31), .ZN(SUM[37]) );
  NAND2_X1 U704 ( .A1(n136), .A2(n32), .ZN(n31) );
  NAND2_X1 U705 ( .A1(n139), .A2(n159), .ZN(n137) );
  NAND2_X1 U706 ( .A1(A[23]), .A2(B[23]), .ZN(n142) );
  DFFR_X1 MY_CLK_r_REG140_S1 ( .D(A[12]), .CK(clk_i), .RN(rst_ni_INV), .Q(n484) );
  DFFR_X1 MY_CLK_r_REG158_S1 ( .D(A[11]), .CK(clk_i), .RN(rst_ni_INV), .Q(n483) );
  DFFR_X1 MY_CLK_r_REG160_S1 ( .D(A[10]), .CK(clk_i), .RN(rst_ni_INV), .Q(n482) );
  DFFR_X1 MY_CLK_r_REG162_S1 ( .D(A[9]), .CK(clk_i), .RN(rst_ni_INV), .Q(n481)
         );
  DFFR_X1 MY_CLK_r_REG164_S1 ( .D(A[8]), .CK(clk_i), .RN(rst_ni_INV), .Q(n480)
         );
  DFFR_X1 MY_CLK_r_REG166_S1 ( .D(A[7]), .CK(clk_i), .RN(rst_ni_INV), .Q(n479)
         );
  DFFR_X1 MY_CLK_r_REG168_S1 ( .D(A[6]), .CK(clk_i), .RN(rst_ni_INV), .Q(n478)
         );
  DFFR_X1 MY_CLK_r_REG170_S1 ( .D(A[5]), .CK(clk_i), .RN(rst_ni_INV), .Q(n477)
         );
  DFFR_X1 MY_CLK_r_REG172_S1 ( .D(A[4]), .CK(clk_i), .RN(rst_ni_INV), .Q(n476)
         );
  DFFR_X1 MY_CLK_r_REG174_S1 ( .D(A[3]), .CK(clk_i), .RN(rst_ni_INV), .Q(n475)
         );
  DFFR_X1 MY_CLK_r_REG176_S1 ( .D(A[2]), .CK(clk_i), .RN(rst_ni_INV), .Q(n474)
         );
  OAI21_X1 U384 ( .B1(n292), .B2(n272), .A(n273), .ZN(n271) );
  CLKBUF_X1 U388 ( .A(n202), .Z(n2) );
  CLKBUF_X2 U389 ( .A(n202), .Z(n1) );
  OAI21_X2 U393 ( .B1(n176), .B2(n137), .A(n138), .ZN(n136) );
endmodule


module fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_sub_7 ( A, B, 
        CI, DIFF, CO );
  input [36:0] A;
  input [36:0] B;
  output [36:0] DIFF;
  input CI;
  output CO;
  wire   n5, n7, n9, n10, n11, n13, n14, n15, n16, n17, n18, n20, n21, n22,
         n24, n25, n28, n30, n31, n32, n33, n34, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n48, n49, n50, n51, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n234, n235, n236, n238, n242, n243,
         n244, n246, n247, n248;
  assign DIFF[0] = B[0];

  XNOR2_X1 U156 ( .A(n234), .B(B[29]), .ZN(DIFF[29]) );
  AND2_X1 U157 ( .A1(n30), .A2(n79), .ZN(n234) );
  XNOR2_X1 U158 ( .A(n235), .B(B[30]), .ZN(DIFF[30]) );
  AND2_X1 U159 ( .A1(n24), .A2(n79), .ZN(n235) );
  XNOR2_X1 U160 ( .A(n236), .B(B[31]), .ZN(DIFF[31]) );
  AND2_X1 U161 ( .A1(n20), .A2(n79), .ZN(n236) );
  AND2_X1 U163 ( .A1(n7), .A2(n5), .ZN(n238) );
  XNOR2_X1 U169 ( .A(n242), .B(B[34]), .ZN(DIFF[34]) );
  AND2_X1 U170 ( .A1(n14), .A2(n9), .ZN(n242) );
  XNOR2_X1 U171 ( .A(n243), .B(B[33]), .ZN(DIFF[33]) );
  AND2_X1 U172 ( .A1(n14), .A2(n13), .ZN(n243) );
  OR2_X1 U173 ( .A1(B[28]), .A2(B[29]), .ZN(n244) );
  XNOR2_X1 U175 ( .A(n246), .B(B[35]), .ZN(DIFF[35]) );
  AND2_X1 U176 ( .A1(n14), .A2(n7), .ZN(n246) );
  XNOR2_X1 U177 ( .A(n247), .B(B[36]), .ZN(DIFF[36]) );
  AND2_X1 U178 ( .A1(n14), .A2(n238), .ZN(n247) );
  OR2_X1 U179 ( .A1(B[24]), .A2(B[25]), .ZN(n248) );
  INV_X2 U181 ( .A(n80), .ZN(n79) );
  NOR2_X1 U182 ( .A1(B[16]), .A2(B[17]), .ZN(n76) );
  INV_X1 U183 ( .A(n67), .ZN(n66) );
  INV_X1 U184 ( .A(n75), .ZN(n74) );
  NOR2_X1 U185 ( .A1(n53), .A2(n248), .ZN(n44) );
  NOR2_X1 U187 ( .A1(n53), .A2(n37), .ZN(n34) );
  INV_X1 U190 ( .A(n68), .ZN(n67) );
  INV_X1 U191 ( .A(n61), .ZN(n60) );
  INV_X1 U192 ( .A(n76), .ZN(n75) );
  INV_X1 U193 ( .A(n94), .ZN(n93) );
  NOR2_X1 U194 ( .A1(n102), .A2(n92), .ZN(n91) );
  INV_X1 U195 ( .A(n93), .ZN(n92) );
  NAND2_X1 U196 ( .A1(n16), .A2(n54), .ZN(n15) );
  NOR2_X1 U197 ( .A1(n37), .A2(n17), .ZN(n16) );
  INV_X1 U198 ( .A(n54), .ZN(n53) );
  NOR2_X1 U199 ( .A1(n53), .A2(n25), .ZN(n24) );
  NAND2_X1 U200 ( .A1(n36), .A2(n28), .ZN(n25) );
  INV_X1 U202 ( .A(n37), .ZN(n36) );
  NAND2_X1 U203 ( .A1(n68), .A2(n62), .ZN(n61) );
  INV_X1 U204 ( .A(n69), .ZN(n68) );
  NAND2_X1 U206 ( .A1(n81), .A2(n103), .ZN(n80) );
  NOR2_X1 U207 ( .A1(n94), .A2(n82), .ZN(n81) );
  NAND2_X1 U208 ( .A1(n88), .A2(n83), .ZN(n82) );
  NOR2_X1 U209 ( .A1(B[14]), .A2(B[15]), .ZN(n83) );
  NAND2_X1 U210 ( .A1(n100), .A2(n95), .ZN(n94) );
  NOR2_X1 U211 ( .A1(B[10]), .A2(B[11]), .ZN(n95) );
  NOR2_X1 U212 ( .A1(n102), .A2(n87), .ZN(n86) );
  NAND2_X1 U213 ( .A1(n93), .A2(n88), .ZN(n87) );
  INV_X1 U214 ( .A(n103), .ZN(n102) );
  NOR2_X1 U215 ( .A1(n102), .A2(n99), .ZN(n98) );
  INV_X1 U216 ( .A(n100), .ZN(n99) );
  INV_X1 U217 ( .A(B[16]), .ZN(n78) );
  INV_X1 U218 ( .A(B[14]), .ZN(n85) );
  INV_X1 U219 ( .A(B[10]), .ZN(n97) );
  INV_X1 U220 ( .A(n116), .ZN(n115) );
  NOR2_X1 U221 ( .A1(n69), .A2(n55), .ZN(n54) );
  NAND2_X1 U222 ( .A1(n62), .A2(n56), .ZN(n55) );
  NOR2_X1 U223 ( .A1(B[22]), .A2(B[23]), .ZN(n56) );
  NAND2_X1 U224 ( .A1(n76), .A2(n70), .ZN(n69) );
  NOR2_X1 U225 ( .A1(B[18]), .A2(B[19]), .ZN(n70) );
  NOR2_X1 U226 ( .A1(B[20]), .A2(B[21]), .ZN(n62) );
  NOR2_X1 U227 ( .A1(n53), .A2(B[24]), .ZN(n50) );
  NOR2_X1 U228 ( .A1(n53), .A2(n41), .ZN(n40) );
  NAND2_X1 U229 ( .A1(n48), .A2(n42), .ZN(n41) );
  INV_X1 U230 ( .A(B[26]), .ZN(n42) );
  NOR2_X1 U231 ( .A1(n53), .A2(n31), .ZN(n30) );
  NAND2_X1 U232 ( .A1(n36), .A2(n32), .ZN(n31) );
  INV_X1 U233 ( .A(B[28]), .ZN(n32) );
  NOR2_X1 U234 ( .A1(n53), .A2(n21), .ZN(n20) );
  NAND2_X1 U235 ( .A1(n22), .A2(n36), .ZN(n21) );
  NOR2_X1 U236 ( .A1(n244), .A2(B[30]), .ZN(n22) );
  NAND2_X1 U237 ( .A1(n28), .A2(n18), .ZN(n17) );
  NOR2_X1 U238 ( .A1(B[30]), .A2(B[31]), .ZN(n18) );
  NOR2_X1 U239 ( .A1(B[24]), .A2(B[25]), .ZN(n48) );
  NAND2_X1 U240 ( .A1(n48), .A2(n38), .ZN(n37) );
  NOR2_X1 U241 ( .A1(B[26]), .A2(B[27]), .ZN(n38) );
  INV_X1 U242 ( .A(B[32]), .ZN(n13) );
  NOR2_X1 U243 ( .A1(n61), .A2(B[22]), .ZN(n58) );
  NOR2_X1 U244 ( .A1(n67), .A2(B[20]), .ZN(n64) );
  NOR2_X1 U245 ( .A1(n75), .A2(B[18]), .ZN(n72) );
  NOR2_X1 U246 ( .A1(B[12]), .A2(B[13]), .ZN(n88) );
  NOR2_X1 U247 ( .A1(B[8]), .A2(B[9]), .ZN(n100) );
  NOR2_X1 U248 ( .A1(n104), .A2(n112), .ZN(n103) );
  NAND2_X1 U249 ( .A1(n108), .A2(n105), .ZN(n104) );
  NOR2_X1 U250 ( .A1(B[6]), .A2(B[7]), .ZN(n105) );
  NOR2_X1 U251 ( .A1(B[1]), .A2(B[0]), .ZN(n116) );
  NAND2_X1 U252 ( .A1(n91), .A2(n90), .ZN(n89) );
  INV_X1 U253 ( .A(B[12]), .ZN(n90) );
  INV_X1 U254 ( .A(n112), .ZN(n111) );
  NAND2_X1 U255 ( .A1(n111), .A2(n108), .ZN(n107) );
  INV_X1 U256 ( .A(B[35]), .ZN(n5) );
  NOR2_X1 U257 ( .A1(B[28]), .A2(B[29]), .ZN(n28) );
  NOR2_X1 U258 ( .A1(n10), .A2(B[34]), .ZN(n7) );
  INV_X1 U259 ( .A(n10), .ZN(n9) );
  NOR2_X1 U260 ( .A1(B[4]), .A2(B[5]), .ZN(n108) );
  NAND2_X1 U261 ( .A1(n113), .A2(n116), .ZN(n112) );
  NOR2_X1 U262 ( .A1(B[2]), .A2(B[3]), .ZN(n113) );
  INV_X1 U263 ( .A(B[4]), .ZN(n110) );
  NAND2_X1 U264 ( .A1(n13), .A2(n11), .ZN(n10) );
  INV_X1 U265 ( .A(B[33]), .ZN(n11) );
  XNOR2_X1 U266 ( .A(n79), .B(B[16]), .ZN(DIFF[16]) );
  XNOR2_X1 U267 ( .A(n98), .B(B[10]), .ZN(DIFF[10]) );
  XNOR2_X1 U268 ( .A(n91), .B(B[12]), .ZN(DIFF[12]) );
  XNOR2_X1 U269 ( .A(n86), .B(B[14]), .ZN(DIFF[14]) );
  XOR2_X1 U270 ( .A(n73), .B(B[18]), .Z(DIFF[18]) );
  NAND2_X1 U271 ( .A1(n79), .A2(n74), .ZN(n73) );
  XOR2_X1 U272 ( .A(n65), .B(B[20]), .Z(DIFF[20]) );
  NAND2_X1 U273 ( .A1(n79), .A2(n66), .ZN(n65) );
  XOR2_X1 U274 ( .A(n84), .B(B[15]), .Z(DIFF[15]) );
  NAND2_X1 U275 ( .A1(n86), .A2(n85), .ZN(n84) );
  XOR2_X1 U276 ( .A(n77), .B(B[17]), .Z(DIFF[17]) );
  NAND2_X1 U277 ( .A1(n79), .A2(n78), .ZN(n77) );
  XOR2_X1 U278 ( .A(n71), .B(B[19]), .Z(DIFF[19]) );
  NAND2_X1 U279 ( .A1(n79), .A2(n72), .ZN(n71) );
  XOR2_X1 U280 ( .A(n63), .B(B[21]), .Z(DIFF[21]) );
  NAND2_X1 U281 ( .A1(n79), .A2(n64), .ZN(n63) );
  XOR2_X1 U282 ( .A(n96), .B(B[11]), .Z(DIFF[11]) );
  NAND2_X1 U283 ( .A1(n98), .A2(n97), .ZN(n96) );
  XNOR2_X1 U284 ( .A(n101), .B(B[9]), .ZN(DIFF[9]) );
  NOR2_X1 U285 ( .A1(n102), .A2(B[8]), .ZN(n101) );
  XOR2_X1 U286 ( .A(n89), .B(B[13]), .Z(DIFF[13]) );
  XOR2_X1 U287 ( .A(n43), .B(B[26]), .Z(DIFF[26]) );
  NAND2_X1 U288 ( .A1(n44), .A2(n79), .ZN(n43) );
  XOR2_X1 U289 ( .A(n33), .B(B[28]), .Z(DIFF[28]) );
  NAND2_X1 U290 ( .A1(n34), .A2(n79), .ZN(n33) );
  XOR2_X1 U291 ( .A(n49), .B(B[25]), .Z(DIFF[25]) );
  NAND2_X1 U292 ( .A1(n50), .A2(n79), .ZN(n49) );
  XOR2_X1 U293 ( .A(n39), .B(B[27]), .Z(DIFF[27]) );
  NAND2_X1 U294 ( .A1(n40), .A2(n79), .ZN(n39) );
  XOR2_X1 U295 ( .A(n51), .B(B[24]), .Z(DIFF[24]) );
  NAND2_X1 U296 ( .A1(n79), .A2(n54), .ZN(n51) );
  XNOR2_X1 U297 ( .A(n111), .B(B[4]), .ZN(DIFF[4]) );
  XOR2_X1 U298 ( .A(n115), .B(B[2]), .Z(DIFF[2]) );
  XNOR2_X1 U299 ( .A(n14), .B(B[32]), .ZN(DIFF[32]) );
  XOR2_X1 U300 ( .A(B[1]), .B(B[0]), .Z(DIFF[1]) );
  XNOR2_X1 U301 ( .A(n114), .B(B[3]), .ZN(DIFF[3]) );
  NOR2_X1 U302 ( .A1(n115), .A2(B[2]), .ZN(n114) );
  XOR2_X1 U303 ( .A(n109), .B(B[5]), .Z(DIFF[5]) );
  NAND2_X1 U304 ( .A1(n111), .A2(n110), .ZN(n109) );
  XOR2_X1 U305 ( .A(n57), .B(B[23]), .Z(DIFF[23]) );
  NAND2_X1 U306 ( .A1(n58), .A2(n79), .ZN(n57) );
  XOR2_X1 U307 ( .A(n59), .B(B[22]), .Z(DIFF[22]) );
  NAND2_X1 U308 ( .A1(n79), .A2(n60), .ZN(n59) );
  XOR2_X1 U309 ( .A(n102), .B(B[8]), .Z(DIFF[8]) );
  XOR2_X1 U310 ( .A(n107), .B(B[6]), .Z(DIFF[6]) );
  XNOR2_X1 U311 ( .A(n106), .B(B[7]), .ZN(DIFF[7]) );
  NOR2_X1 U312 ( .A1(n107), .A2(B[6]), .ZN(n106) );
  NOR2_X1 U162 ( .A1(n15), .A2(n80), .ZN(n14) );
endmodule


module fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_sub_8 ( A, B, 
        CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n8, n9, n10, n14, n15, n16, n17, n18, n22, n23,
         n24, n25, n31, n32, n33, n34, n36, n39, n40, n41, n42, n43, n46, n50,
         n51, n52, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n97, n98, n100, n101, n102, n103, n104;

  NOR2_X1 U64 ( .A1(B[3]), .A2(n85), .ZN(n95) );
  OR2_X1 U66 ( .A1(n98), .A2(A[4]), .ZN(n84) );
  OR2_X1 U67 ( .A1(n98), .A2(A[4]), .ZN(n103) );
  NAND2_X1 U68 ( .A1(B[3]), .A2(n85), .ZN(n104) );
  INV_X1 U69 ( .A(A[3]), .ZN(n85) );
  NAND2_X1 U70 ( .A1(n51), .A2(A[1]), .ZN(n86) );
  NOR2_X1 U71 ( .A1(n90), .A2(A[1]), .ZN(n87) );
  CLKBUF_X1 U72 ( .A(n104), .Z(n92) );
  INV_X1 U73 ( .A(B[0]), .ZN(n88) );
  CLKBUF_X1 U74 ( .A(n95), .Z(n89) );
  INV_X1 U75 ( .A(A[5]), .ZN(n91) );
  INV_X1 U76 ( .A(n89), .ZN(n31) );
  INV_X1 U77 ( .A(B[1]), .ZN(n90) );
  XNOR2_X1 U78 ( .A(n97), .B(n91), .ZN(DIFF[5]) );
  NOR2_X1 U79 ( .A1(n52), .A2(A[0]), .ZN(n93) );
  OAI21_X1 U80 ( .B1(n87), .B2(n93), .A(n86), .ZN(n94) );
  OAI21_X1 U82 ( .B1(n43), .B2(n41), .A(n42), .ZN(n40) );
  NOR2_X1 U83 ( .A1(n50), .A2(A[2]), .ZN(n33) );
  NAND2_X1 U84 ( .A1(n50), .A2(A[2]), .ZN(n34) );
  AOI21_X1 U85 ( .B1(n94), .B2(n15), .A(n16), .ZN(n97) );
  AOI21_X1 U86 ( .B1(n40), .B2(n15), .A(n16), .ZN(n14) );
  INV_X1 U87 ( .A(B[4]), .ZN(n98) );
  INV_X1 U88 ( .A(n100), .ZN(n22) );
  AND2_X1 U90 ( .A1(n98), .A2(A[4]), .ZN(n100) );
  OR2_X1 U91 ( .A1(n51), .A2(A[1]), .ZN(n101) );
  INV_X1 U93 ( .A(n6), .ZN(DIFF[7]) );
  NAND2_X1 U94 ( .A1(n104), .A2(n84), .ZN(n17) );
  XOR2_X1 U95 ( .A(n39), .B(n4), .Z(DIFF[2]) );
  NAND2_X1 U96 ( .A1(n46), .A2(n34), .ZN(n4) );
  NAND2_X1 U97 ( .A1(n92), .A2(n31), .ZN(n3) );
  NAND2_X1 U98 ( .A1(n84), .A2(n22), .ZN(n2) );
  NAND2_X1 U99 ( .A1(n46), .A2(n92), .ZN(n24) );
  NAND2_X1 U100 ( .A1(n101), .A2(n86), .ZN(n5) );
  INV_X1 U101 ( .A(n33), .ZN(n46) );
  AOI21_X1 U102 ( .B1(n92), .B2(n36), .A(n89), .ZN(n25) );
  INV_X1 U103 ( .A(n34), .ZN(n36) );
  NOR2_X1 U104 ( .A1(n88), .A2(A[0]), .ZN(n43) );
  NOR2_X1 U106 ( .A1(n90), .A2(A[1]), .ZN(n41) );
  NAND2_X1 U107 ( .A1(n51), .A2(A[1]), .ZN(n42) );
  NAND2_X1 U108 ( .A1(n9), .A2(A[5]), .ZN(n8) );
  INV_X1 U109 ( .A(A[7]), .ZN(n9) );
  AOI21_X1 U110 ( .B1(n103), .B2(n95), .A(n100), .ZN(n18) );
  XOR2_X1 U111 ( .A(n5), .B(n102), .Z(DIFF[1]) );
  INV_X1 U112 ( .A(n40), .ZN(n39) );
  OAI21_X1 U113 ( .B1(n39), .B2(n24), .A(n25), .ZN(n23) );
  XNOR2_X1 U114 ( .A(n10), .B(A[6]), .ZN(DIFF[6]) );
  OAI21_X1 U115 ( .B1(n39), .B2(n33), .A(n34), .ZN(n32) );
  XNOR2_X1 U116 ( .A(n23), .B(n2), .ZN(DIFF[4]) );
  XNOR2_X1 U117 ( .A(n32), .B(n3), .ZN(DIFF[3]) );
  INV_X1 U118 ( .A(B[2]), .ZN(n50) );
  XNOR2_X1 U119 ( .A(n52), .B(A[0]), .ZN(DIFF[0]) );
  OAI21_X1 U120 ( .B1(n97), .B2(A[7]), .A(n8), .ZN(n6) );
  NAND2_X1 U121 ( .A1(n14), .A2(n91), .ZN(n10) );
  OAI21_X1 U122 ( .B1(n17), .B2(n34), .A(n18), .ZN(n16) );
  NOR2_X1 U123 ( .A1(n17), .A2(n33), .ZN(n15) );
  INV_X1 U124 ( .A(B[0]), .ZN(n52) );
  INV_X1 U125 ( .A(B[1]), .ZN(n51) );
  CLKBUF_X1 U65 ( .A(n93), .Z(n102) );
endmodule


module fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_sub_9 ( A, B, 
        CI, DIFF, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n63;

  XNOR2_X1 U45 ( .A(n7), .B(A[6]), .ZN(DIFF[6]) );
  NOR2_X1 U46 ( .A1(n32), .A2(A[2]), .ZN(n19) );
  NOR2_X1 U47 ( .A1(n34), .A2(A[0]), .ZN(n25) );
  NOR2_X1 U48 ( .A1(n33), .A2(A[1]), .ZN(n23) );
  AND2_X1 U49 ( .A1(n13), .A2(n10), .ZN(n63) );
  NOR2_X1 U50 ( .A1(n31), .A2(A[3]), .ZN(n16) );
  NOR2_X1 U51 ( .A1(n30), .A2(A[4]), .ZN(n12) );
  INV_X1 U52 ( .A(B[2]), .ZN(n32) );
  INV_X1 U53 ( .A(n22), .ZN(n21) );
  NAND2_X1 U54 ( .A1(n29), .A2(n24), .ZN(n6) );
  INV_X1 U55 ( .A(n23), .ZN(n29) );
  XOR2_X1 U56 ( .A(n21), .B(n5), .Z(DIFF[2]) );
  NAND2_X1 U57 ( .A1(n28), .A2(n20), .ZN(n5) );
  INV_X1 U58 ( .A(n19), .ZN(n28) );
  OAI21_X1 U59 ( .B1(n23), .B2(n25), .A(n24), .ZN(n22) );
  XNOR2_X1 U60 ( .A(n18), .B(n4), .ZN(DIFF[3]) );
  NAND2_X1 U61 ( .A1(n27), .A2(n17), .ZN(n4) );
  OAI21_X1 U62 ( .B1(n21), .B2(n19), .A(n20), .ZN(n18) );
  INV_X1 U63 ( .A(n16), .ZN(n27) );
  AOI21_X1 U64 ( .B1(n14), .B2(n22), .A(n15), .ZN(n1) );
  OAI21_X1 U65 ( .B1(n16), .B2(n20), .A(n17), .ZN(n15) );
  NOR2_X1 U66 ( .A1(n19), .A2(n16), .ZN(n14) );
  XNOR2_X1 U67 ( .A(n11), .B(A[5]), .ZN(DIFF[5]) );
  OAI21_X1 U69 ( .B1(n1), .B2(n12), .A(n13), .ZN(n11) );
  XOR2_X1 U70 ( .A(n1), .B(n3), .Z(DIFF[4]) );
  NAND2_X1 U71 ( .A1(n26), .A2(n13), .ZN(n3) );
  INV_X1 U72 ( .A(n12), .ZN(n26) );
  NAND2_X1 U73 ( .A1(n33), .A2(A[1]), .ZN(n24) );
  OAI21_X1 U74 ( .B1(n1), .B2(n12), .A(n63), .ZN(n7) );
  NAND2_X1 U75 ( .A1(n32), .A2(A[2]), .ZN(n20) );
  NAND2_X1 U76 ( .A1(n31), .A2(A[3]), .ZN(n17) );
  NAND2_X1 U77 ( .A1(n30), .A2(A[4]), .ZN(n13) );
  XNOR2_X1 U78 ( .A(n34), .B(A[0]), .ZN(DIFF[0]) );
  INV_X1 U79 ( .A(A[5]), .ZN(n10) );
  INV_X1 U80 ( .A(B[4]), .ZN(n30) );
  INV_X1 U81 ( .A(B[0]), .ZN(n34) );
  INV_X1 U82 ( .A(B[1]), .ZN(n33) );
  XOR2_X1 U83 ( .A(n6), .B(n25), .Z(DIFF[1]) );
  INV_X1 U84 ( .A(B[3]), .ZN(n31) );
endmodule


module fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB_ ( clk_i, rst_ni, 
        operands_i, is_boxed_i, rnd_mode_i, op_i, op_mod_i, tag_i, aux_i, 
        in_valid_i, in_ready_o, flush_i, result_o, extension_bit_o, tag_o, 
        aux_o, out_valid_o, out_ready_i, busy_o, status_o_NV_, status_o_DZ_, 
        status_o_OF_, status_o_UF_, status_o_NX_ );
  input [47:0] operands_i;
  input [2:0] is_boxed_i;
  input [2:0] rnd_mode_i;
  input [3:0] op_i;
  output [15:0] result_o;
  input clk_i, rst_ni, op_mod_i, tag_i, aux_i, in_valid_i, flush_i,
         out_ready_i;
  output in_ready_o, extension_bit_o, tag_o, aux_o, out_valid_o, busy_o,
         status_o_NV_, status_o_DZ_, status_o_OF_, status_o_UF_, status_o_NX_;
  wire   n2124, n2125, inp_pipe_operands_q_1__2__15_,
         inp_pipe_operands_q_1__2__14_, inp_pipe_operands_q_1__2__13_,
         inp_pipe_operands_q_1__2__12_, inp_pipe_operands_q_1__2__11_,
         inp_pipe_operands_q_1__2__10_, inp_pipe_operands_q_1__2__9_,
         inp_pipe_operands_q_1__2__8_, inp_pipe_operands_q_1__2__7_,
         inp_pipe_operands_q_1__2__6_, inp_pipe_operands_q_1__2__5_,
         inp_pipe_operands_q_1__2__4_, inp_pipe_operands_q_1__2__3_,
         inp_pipe_operands_q_1__2__2_, inp_pipe_operands_q_1__2__1_,
         inp_pipe_operands_q_1__2__0_, inp_pipe_operands_q_1__1__15_,
         inp_pipe_operands_q_1__1__14_, inp_pipe_operands_q_1__1__13_,
         inp_pipe_operands_q_1__1__12_, inp_pipe_operands_q_1__1__11_,
         inp_pipe_operands_q_1__1__10_, inp_pipe_operands_q_1__1__9_,
         inp_pipe_operands_q_1__1__8_, inp_pipe_operands_q_1__1__7_,
         inp_pipe_operands_q_1__1__6_, inp_pipe_operands_q_1__1__5_,
         inp_pipe_operands_q_1__1__4_, inp_pipe_operands_q_1__1__3_,
         inp_pipe_operands_q_1__1__2_, inp_pipe_operands_q_1__1__1_,
         inp_pipe_operands_q_1__1__0_, inp_pipe_operands_q_1__0__15_,
         inp_pipe_operands_q_1__0__14_, inp_pipe_operands_q_1__0__13_,
         inp_pipe_operands_q_1__0__12_, inp_pipe_operands_q_1__0__11_,
         inp_pipe_operands_q_1__0__10_, inp_pipe_operands_q_1__0__9_,
         inp_pipe_operands_q_1__0__8_, inp_pipe_operands_q_1__0__7_,
         inp_pipe_operands_q_1__0__6_, inp_pipe_operands_q_1__0__5_,
         inp_pipe_operands_q_1__0__4_, inp_pipe_operands_q_1__0__3_,
         inp_pipe_operands_q_1__0__2_, inp_pipe_operands_q_1__0__1_,
         inp_pipe_operands_q_1__0__0_, inp_pipe_is_boxed_q_1__2_,
         inp_pipe_is_boxed_q_1__1_, inp_pipe_is_boxed_q_1__0_,
         info_a_is_normal_, info_b_is_normal_, N140, inject_carry_in, N226,
         N227, N228, N229, N230, N231, N232, N233, N234, N235, N236, N237,
         N238, N239, N240, N241, N242, N243, N244, N245, N246, N247, N248,
         N249, N250, N251, N252, N253, N254, N255, N256, N257, N258, N259,
         N260, N261, N262, mid_pipe_eff_sub_q_1_, mid_pipe_exp_prod_q_1__6_,
         mid_pipe_exp_prod_q_1__5_, mid_pipe_exp_prod_q_1__4_,
         mid_pipe_exp_prod_q_1__3_, mid_pipe_exp_prod_q_1__2_,
         mid_pipe_exp_prod_q_1__1_, mid_pipe_exp_prod_q_1__0_,
         mid_pipe_sum_q_1__24_, mid_pipe_sum_q_1__23_, mid_pipe_sum_q_1__22_,
         mid_pipe_sum_q_1__21_, mid_pipe_sum_q_1__20_, mid_pipe_sum_q_1__19_,
         mid_pipe_sum_q_1__18_, mid_pipe_sum_q_1__17_, mid_pipe_sum_q_1__16_,
         mid_pipe_sum_q_1__15_, mid_pipe_sum_q_1__14_, mid_pipe_sum_q_1__13_,
         mid_pipe_sum_q_1__12_, mid_pipe_sum_q_1__11_, mid_pipe_sum_q_1__10_,
         mid_pipe_sum_q_1__9_, mid_pipe_sum_q_1__8_, mid_pipe_sum_q_1__7_,
         mid_pipe_sum_q_1__6_, mid_pipe_sum_q_1__5_, mid_pipe_sum_q_1__4_,
         mid_pipe_sum_q_1__3_, mid_pipe_sum_q_1__2_, mid_pipe_sum_q_1__1_,
         mid_pipe_sum_q_1__0_, mid_pipe_final_sign_q_1_,
         mid_pipe_rnd_mode_q_1__2_, mid_pipe_rnd_mode_q_1__1_,
         mid_pipe_rnd_mode_q_1__0_, lzc_zeroes, N308, N309, N310, N311, N312,
         N313, N337, N338, N339, N340, N341, N342, N343, regular_result_15_,
         n396, n398, n399, n400, n405, n406, n407, n408, n411, n412, n413,
         n415, n416, n443, n444, n445, n449, n450, n464, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
         n488, n489, n490, n491, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n506, n507, n569, n653, n656, n680, n681, n682,
         n683, n684, n685, n686, product_9_, product_8_, product_7_,
         product_6_, product_5_, product_4_, product_3_, product_2_,
         product_21_, product_20_, product_1_, product_19_, product_18_,
         product_17_, product_16_, product_15_, product_14_, product_13_,
         product_12_, product_11_, product_10_, product_0_,
         dp_cluster_1_operand_a_mantissa__0_, N306, N305, N304, N303, N302,
         N301, N300, N281, N280, N279, N278, N277, N276, N275, N274,
         gt_547_A_6_, gt_547_A_5_, gt_547_A_4_, gt_547_A_3_, gt_547_A_2_,
         gt_547_A_1_, sub_549_A_0_, n8, n9, n10, n13, n16, n22, n24, n26, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n40, n41, n43, n44, n46, n49,
         n53, n54, n55, n59, n62, n63, n64, n65, n67, n68, n69, n71, n72, n73,
         n74, n75, n78, n79, n83, n85, n92, n95, n96, n97, n101, n102, n103,
         n105, n112, n113, n115, n118, n119, n120, n123, n125, n126, n127,
         n129, n130, n131, n133, n135, n138, n139, n143, n145, n146, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n169, n172, n173, n174,
         n175, n177, n178, n179, n180, n181, n185, n186, n187, n188, n189,
         n191, n193, n194, n195, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n232, n236, n237, n240, n241, n244, n245, n247, n248,
         n249, n250, n251, n252, n256, n259, n260, n265, n271, n275, n276,
         n277, n278, n279, n280, n282, n283, n287, n289, n290, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n323, n325,
         n326, n327, n328, n329, n331, n332, n334, n335, n337, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n377,
         n378, n379, n381, n383, n385, n386, n387, n388, n389, n390, n429,
         n430, n431, n432, n433, n436, n439, n441, n442, n447, n448, n452,
         n453, n455, n457, n458, n459, n508, n509, n584, n585, n587, n589,
         n601, n602, n667, n668, n669, n670, n671, n672, n674, n675, n676,
         n677, n678, n679, n687, n689, n690, n691, n692, n693, n694, n695,
         n696, n697, n698, n699, n700, n701, n702, n703, n704, n705, n706,
         n707, n708, n709, n710, n711, n712, n713, n714, n715, n716, n717,
         n718, n719, n720, n721, n722, n724, n725, n726, n727, n728, n729,
         n730, n731, n732, n733, n734, n735, n736, n737, n738, n739, n740,
         n741, n742, n743, n744, n745, n746, n747, n748, n749, n750, n751,
         n752, n753, n754, n755, n756, n757, n758, n759, n760, n761, n762,
         n763, n764, n765, n766, n767, n768, n769, n770, n771, n772, n773,
         n774, n775, n776, n777, n778, n779, n780, n781, n782, n783, n784,
         n785, n786, n787, n788, n789, n790, n791, n792, n793, n794, n795,
         n796, n797, n798, n799, n800, n801, n802, n803, n804, n805, n806,
         n807, n808, n809, n810, n811, n812, n813, n814, n815, n816, n817,
         n818, n819, n820, n821, n822, n823, n824, n825, n826, n827, n828,
         n829, n830, n831, n832, n833, n834, n835, n836, n837, n838, n839,
         n840, n841, n842, n843, n844, n845, n846, n847, n848, n849, n850,
         n851, n852, n853, n854, n855, n856, n857, n858, n859, n860, n861,
         n862, n863, n864, n865, n866, n867, n868, n869, n870, n871, n872,
         n873, n874, n875, n876, n877, n878, n879, n880, n881, n882, n883,
         n884, n885, n886, n887, n888, n889, n890, n891, n892, n893, n894,
         n895, n896, n897, n898, n900, n901, n904, n905, n906, n907, n910,
         n911, n912, n915, n916, n917, n918, n920, n921, n922, n923, n924,
         n925, n926, n927, n928, n929, n931, n932, n933, n935, n936, n937,
         n938, n939, n940, n941, n942, n943, n944, n945, n946, n947, n948,
         n949, n950, n951, n952, n953, n954, n955, n956, n957, n958, n959,
         n960, n961, n962, n963, n964, n965, n966, n967, n968, n969, n970,
         n971, n972, n973, n974, n975, n976, n977, n978, n979, n980, n981,
         n982, n983, n984, n985, n986, n987, n988, n989, n990, n991, n992,
         n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003,
         n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013,
         n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023,
         n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1032, n1033, n1034,
         n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044,
         n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1053, n1055, n1056,
         n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066,
         n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076,
         n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086,
         n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097,
         n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107,
         n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117,
         n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127,
         n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137,
         n1138, n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147, n1148,
         n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157, n1158,
         n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166, n1167, n1168,
         n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176, n1177, n1178,
         n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186, n1187, n1188,
         n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196, n1197, n1198,
         n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206, n1207, n1208,
         n1209, n1210, n1211, n1212, n1213, n1214, n1215, n1216, n1217, n1218,
         n1220, n1221, n1222, n1223, n1224, n1225, n1226, n1227, n1228, n1229,
         n1230, n1231, n1232, n1233, n1234, n1235, n1236, n1237, n1238, n1239,
         n1240, n1241, n1242, n1243, n1244, n1245, n1246, n1247, n1248, n1249,
         n1250, n1251, n1252, n1253, n1254, n1255, n1259, n1260, n1261, n1262,
         n1263, n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272,
         n1273, n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1282, n1283,
         n1289, n1290, n1291, n1292, n1293, n1294, n1295, n1296, n1297, n1298,
         n1299, n1300, n1301, n1302, n1303, n1306, n1307, n1308, n1309, n1310,
         n1311, n1312, n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321,
         n1322, n1323, n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331,
         n1332, n1333, n1334, n1335, n1336, n1337, n1338, n1349, n1544, n1545,
         n1546, n1547, n1548, n1549, n1550, n1551, n1553, n1554, n1555, n1556,
         n1557, n1558, n1559, n1560, n1561, n1562, n1566, n1567, n1568, n1569,
         n1570, n1571, n1572, n1573, n1574, n1575, n1576, n1577, n1578, n1579,
         n1580, n1581, n1582, n1583, n1584, n1585, n1586, n1587, n1588, n1589,
         n1590, n1591, n1592, n1593, n1594, n1595, n1596, n1597, n1598, n1599,
         n1600, n1601, n1602, n1603, n1604, n1605, n1606, n1607, n1608, n1609,
         n1610, n1611, n1612, n1613, n1614, n1615, n1616, n1617, n1618, n1619,
         n1620, n1621, n1622, n1623, n1624, n1625, n1626, n1627, n1628, n1629,
         n1630, n1631, n1632, n1633, n1634, n1635, n1636, n1637, n1638, n1639,
         n1640, n1641, n1643, n1644, n1645, n1646, n1647, n1648, n1649, n1650,
         n1651, n1652, n1653, n1654, n1655, n1656, n1657, n1658, n1659, n1660,
         n1661, n1662, n1663, n1664, n1665, n1666, n1667, n1668, n1669, n1670,
         n1671, n1672, n1673, n1674, n1675, n1676, n1677, n1678, n1679, n1680,
         n1681, n1682, n1683, n1684, n1685, n1686, n1687, n1688, n1689, n1690,
         n1691, n1692, n1693, n1694, n1695, n1696, n1697, n1698, n1699, n1700,
         n1701, n1702, n1703, n1704, n1705, n1706, n1707, n1708, n1709, n1710,
         n1711, n1712, n1713, n1714, n1715, n1716, n1717, n1718, n1719, n1720,
         n1721, n1722, n1723, n1724, n1725, n1726, n1727, n1728,
         add_0_root_add_515_n41, add_0_root_add_515_n40,
         add_0_root_add_515_n20, add_0_root_add_515_n18,
         add_0_root_add_515_n17, add_0_root_add_515_n16,
         add_0_root_add_515_n14, add_0_root_add_515_n13,
         add_0_root_add_515_n11, add_0_root_add_515_n10, add_0_root_add_515_n9,
         add_0_root_add_515_n7, add_0_root_add_515_n6, n2126, n2127, n2128,
         n2129, n2130, n2131, n2132, n2133, n2134, n2135, n2136, n2137, n2138,
         n2139, n2140, n2141, n2142, n2143, n2144, n2145, n2146, n2147, n2148,
         n2149, n2150, n2151, n2152, n2153, n2154, n2155, n2156, n2157, n2158,
         n2159, n2160, n2161, n2162, n2163, n2164, n2165, n2166, n2167, n2168,
         n2169, n2170, n2171, n2172, n2173, n2174, n2175, n2176, n2177, n2178,
         n2179, n2180, n2181, n2182, n2183, n2184, n2185, n2186, n2187, n2188,
         n2189, n2190, n2191, n2192, n2193, n2194, n2195, n2196, n2197, n2198,
         n2199, n2200, n2201, n2202, n2203, n2204, n2205, n2206, n2207, n2208,
         n2209, n2210, n2211, n2212, n2213, n2214;
  wire   [15:0] info_q;
  wire   [7:0] operand_a;
  wire   [9:0] operand_b;
  wire   [6:0] exponent_addend;
  wire   [6:1] exponent_difference;
  wire   [36:0] addend_shifted;
  wire   [37:0] sum_raw;
  wire   [4:0] leading_zero_count;
  wire   [4:0] pre_round_exponent;
  wire   [9:0] pre_round_mantissa;
  wire   [1:0] round_sticky_bits;
  wire   [14:0] rounded_abs;

  OAI221_X1 U5 ( .B1(n194), .B2(n245), .C1(n1209), .C2(n1078), .A(n1074), .ZN(
        n1075) );
  NOR2_X1 U14 ( .A1(n972), .A2(n973), .ZN(n8) );
  CLKBUF_X1 U16 ( .A(n95), .Z(n9) );
  AOI22_X1 U17 ( .A1(N343), .A2(n112), .B1(n130), .B2(n1244), .ZN(n10) );
  OAI221_X1 U19 ( .B1(n1079), .B2(n1209), .C1(n172), .C2(n1080), .A(n960), 
        .ZN(n13) );
  AOI221_X1 U21 ( .B1(n275), .B2(n1581), .C1(n271), .C2(n1669), .A(n1199), 
        .ZN(n1215) );
  INV_X2 U23 ( .A(n97), .ZN(n1159) );
  INV_X1 U27 ( .A(n961), .ZN(n16) );
  CLKBUF_X1 U30 ( .A(n95), .Z(n73) );
  AND2_X1 U34 ( .A1(n904), .A2(n972), .ZN(n22) );
  NOR2_X1 U39 ( .A1(n917), .A2(n906), .ZN(n24) );
  AND2_X1 U43 ( .A1(n994), .A2(n162), .ZN(n26) );
  AND2_X1 U44 ( .A1(n994), .A2(n162), .ZN(n130) );
  NOR2_X1 U49 ( .A1(n1072), .A2(n1164), .ZN(n97) );
  INV_X1 U50 ( .A(n96), .ZN(n1211) );
  AND2_X1 U51 ( .A1(n981), .A2(n1010), .ZN(n212) );
  NAND2_X1 U52 ( .A1(n311), .A2(n1643), .ZN(n1300) );
  AND3_X1 U53 ( .A1(n959), .A2(n178), .A3(n177), .ZN(n32) );
  OR2_X1 U54 ( .A1(n1081), .A2(n1175), .ZN(n33) );
  AND2_X1 U55 ( .A1(N274), .A2(n429), .ZN(n34) );
  AND2_X1 U56 ( .A1(n1176), .A2(n1173), .ZN(n35) );
  OR2_X1 U57 ( .A1(n497), .A2(n54), .ZN(n36) );
  AND2_X1 U59 ( .A1(n167), .A2(n166), .ZN(n165) );
  OAI21_X1 U63 ( .B1(n677), .B2(n676), .A(n675), .ZN(n862) );
  XNOR2_X1 U64 ( .A(n44), .B(n344), .ZN(n361) );
  XNOR2_X1 U65 ( .A(n342), .B(n477), .ZN(n44) );
  NAND2_X2 U66 ( .A1(n1715), .A2(n71), .ZN(n724) );
  OAI21_X1 U68 ( .B1(n479), .B2(n329), .A(n328), .ZN(n46) );
  OAI21_X1 U72 ( .B1(n477), .B2(n335), .A(n334), .ZN(n49) );
  BUF_X2 U74 ( .A(n1143), .Z(n95) );
  OAI21_X2 U77 ( .B1(n587), .B2(n2171), .A(n1728), .ZN(n675) );
  NAND2_X1 U78 ( .A1(n53), .A2(n1248), .ZN(n54) );
  NAND2_X1 U79 ( .A1(n53), .A2(n1248), .ZN(n55) );
  NAND2_X1 U80 ( .A1(n53), .A2(n1248), .ZN(n85) );
  AND2_X1 U88 ( .A1(n1007), .A2(n1234), .ZN(n161) );
  OAI211_X1 U90 ( .C1(n313), .C2(n1316), .A(n65), .B(
        inp_pipe_operands_q_1__0__1_), .ZN(n62) );
  INV_X1 U91 ( .A(n62), .ZN(operand_a[0]) );
  NAND2_X1 U92 ( .A1(n105), .A2(n10), .ZN(n175) );
  OAI211_X1 U93 ( .C1(n313), .C2(n1316), .A(n165), .B(
        inp_pipe_operands_q_1__0__2_), .ZN(n63) );
  INV_X1 U94 ( .A(n63), .ZN(operand_a[1]) );
  OAI211_X1 U95 ( .C1(n313), .C2(n1316), .A(n165), .B(
        inp_pipe_operands_q_1__0__3_), .ZN(n64) );
  INV_X1 U96 ( .A(n64), .ZN(operand_a[2]) );
  AND2_X1 U97 ( .A1(n167), .A2(n166), .ZN(n65) );
  OAI222_X1 U100 ( .A1(n1171), .A2(n194), .B1(n32), .B2(n1080), .C1(n1172), 
        .C2(n1209), .ZN(n67) );
  NAND2_X1 U101 ( .A1(n1336), .A2(n315), .ZN(n68) );
  NAND2_X1 U102 ( .A1(n1336), .A2(n315), .ZN(n69) );
  NAND2_X1 U103 ( .A1(n1336), .A2(n315), .ZN(n1248) );
  OAI21_X1 U105 ( .B1(n677), .B2(n2191), .A(n675), .ZN(n71) );
  AOI22_X1 U106 ( .A1(n67), .A2(n1207), .B1(n1025), .B2(n96), .ZN(n72) );
  INV_X1 U107 ( .A(n1080), .ZN(n74) );
  INV_X1 U108 ( .A(n1080), .ZN(n1204) );
  AND2_X1 U109 ( .A1(n975), .A2(n189), .ZN(n75) );
  INV_X1 U111 ( .A(n1209), .ZN(n1170) );
  OR2_X1 U112 ( .A1(n973), .A2(n972), .ZN(n1198) );
  NOR3_X1 U115 ( .A1(n152), .A2(n153), .A3(n1016), .ZN(n83) );
  NOR3_X1 U116 ( .A1(n153), .A2(n152), .A3(n1016), .ZN(n1244) );
  AND2_X1 U124 ( .A1(n975), .A2(n1156), .ZN(n200) );
  INV_X1 U127 ( .A(n1176), .ZN(n92) );
  NAND2_X1 U129 ( .A1(n973), .A2(n972), .ZN(n1143) );
  NOR2_X1 U130 ( .A1(n1176), .A2(n1173), .ZN(n96) );
  INV_X1 U133 ( .A(n1164), .ZN(n1207) );
  INV_X1 U137 ( .A(n101), .ZN(n102) );
  BUF_X1 U140 ( .A(n189), .Z(n103) );
  AOI21_X1 U142 ( .B1(n1012), .B2(n26), .A(n1011), .ZN(n105) );
  CLKBUF_X1 U151 ( .A(leading_zero_count[0]), .Z(n115) );
  AND2_X1 U155 ( .A1(n904), .A2(n972), .ZN(n118) );
  OR2_X1 U156 ( .A1(n1080), .A2(n1067), .ZN(n119) );
  OR2_X1 U157 ( .A1(n194), .A2(n1066), .ZN(n120) );
  NAND3_X1 U158 ( .A1(n119), .A2(n120), .A3(n1065), .ZN(n1146) );
  NAND2_X1 U163 ( .A1(n105), .A2(n10), .ZN(n123) );
  NAND2_X1 U164 ( .A1(n1116), .A2(n1170), .ZN(n125) );
  NAND2_X1 U165 ( .A1(n200), .A2(n1113), .ZN(n126) );
  NAND2_X1 U166 ( .A1(n1158), .A2(n1204), .ZN(n127) );
  AND3_X1 U167 ( .A1(n125), .A2(n127), .A3(n126), .ZN(n987) );
  CLKBUF_X1 U169 ( .A(leading_zero_count[1]), .Z(n129) );
  AOI222_X1 U170 ( .A1(n1116), .A2(n74), .B1(n1115), .B2(n195), .C1(n1114), 
        .C2(n78), .ZN(n1118) );
  NAND3_X1 U171 ( .A1(n993), .A2(n212), .A3(n247), .ZN(n131) );
  CLKBUF_X1 U173 ( .A(leading_zero_count[3]), .Z(n133) );
  INV_X1 U175 ( .A(n967), .ZN(n135) );
  INV_X1 U178 ( .A(n174), .ZN(n138) );
  CLKBUF_X1 U179 ( .A(leading_zero_count[4]), .Z(n139) );
  NAND2_X1 U184 ( .A1(n956), .A2(n143), .ZN(n964) );
  AND2_X1 U185 ( .A1(n189), .A2(n35), .ZN(n143) );
  OR2_X1 U187 ( .A1(n991), .A2(n992), .ZN(n145) );
  OR2_X1 U188 ( .A1(n991), .A2(n992), .ZN(n1225) );
  NAND2_X1 U189 ( .A1(n145), .A2(n149), .ZN(n146) );
  OAI211_X1 U191 ( .C1(n965), .C2(n1159), .A(n72), .B(n964), .ZN(n241) );
  INV_X1 U192 ( .A(n972), .ZN(n148) );
  AND3_X1 U193 ( .A1(n1160), .A2(n1117), .A3(n1133), .ZN(n1057) );
  INV_X1 U194 ( .A(n1224), .ZN(n149) );
  NOR3_X1 U195 ( .A1(n1083), .A2(n1082), .A3(n33), .ZN(n1084) );
  OR2_X1 U196 ( .A1(n95), .A2(n1588), .ZN(n150) );
  OR2_X1 U197 ( .A1(n79), .A2(n2167), .ZN(n151) );
  NAND3_X1 U198 ( .A1(n948), .A2(n151), .A3(n150), .ZN(n988) );
  AND2_X1 U199 ( .A1(N341), .A2(n113), .ZN(n152) );
  AND2_X1 U200 ( .A1(n160), .A2(gt_547_A_4_), .ZN(n153) );
  OR2_X1 U201 ( .A1(n2212), .A2(n279), .ZN(n154) );
  NAND2_X1 U202 ( .A1(n864), .A2(n154), .ZN(n1200) );
  AND3_X1 U203 ( .A1(n993), .A2(n212), .A3(n149), .ZN(n155) );
  OAI221_X1 U204 ( .B1(n95), .B2(n2200), .C1(n79), .C2(n2156), .A(n952), .ZN(
        n156) );
  AND2_X1 U205 ( .A1(rounded_abs[12]), .A2(rounded_abs[10]), .ZN(n157) );
  OR2_X1 U207 ( .A1(n2211), .A2(n279), .ZN(n159) );
  NAND2_X1 U208 ( .A1(n870), .A2(n159), .ZN(n1183) );
  NAND2_X1 U209 ( .A1(n149), .A2(n1225), .ZN(n1231) );
  AND2_X1 U212 ( .A1(n149), .A2(n145), .ZN(n160) );
  OR2_X1 U214 ( .A1(n131), .A2(n995), .ZN(n162) );
  NAND3_X1 U215 ( .A1(n247), .A2(n212), .A3(n993), .ZN(n1243) );
  NAND3_X1 U218 ( .A1(rounded_abs[14]), .A2(n157), .A3(rounded_abs[13]), .ZN(
        n1273) );
  MUX2_X1 U220 ( .A(n1078), .B(n968), .S(n173), .Z(n956) );
  OAI222_X1 U221 ( .A1(n1055), .A2(n1080), .B1(n103), .B2(n163), .C1(n1053), 
        .C2(n1072), .ZN(n1117) );
  MUX2_X1 U222 ( .A(n164), .B(n135), .S(n138), .Z(n163) );
  AND2_X1 U223 ( .A1(n236), .A2(n1587), .ZN(n164) );
  OR2_X1 U225 ( .A1(n2210), .A2(n279), .ZN(n169) );
  NAND2_X1 U226 ( .A1(n169), .A2(n866), .ZN(n985) );
  AND3_X1 U228 ( .A1(n188), .A2(n923), .A3(n187), .ZN(n172) );
  NAND3_X1 U229 ( .A1(n1009), .A2(n1008), .A3(n161), .ZN(n1012) );
  OAI211_X1 U230 ( .C1(n1662), .C2(n2147), .A(n912), .B(n911), .ZN(n173) );
  OAI211_X1 U231 ( .C1(n1662), .C2(n2147), .A(n912), .B(n911), .ZN(n174) );
  OAI211_X1 U232 ( .C1(n1662), .C2(n2147), .A(n912), .B(n911), .ZN(n1048) );
  OR2_X1 U233 ( .A1(n2149), .A2(n95), .ZN(n177) );
  OR2_X1 U234 ( .A1(n2213), .A2(n1142), .ZN(n178) );
  NAND2_X1 U235 ( .A1(n1272), .A2(n179), .ZN(round_sticky_bits[0]) );
  AND2_X1 U236 ( .A1(n186), .A2(n1090), .ZN(n179) );
  OR2_X1 U237 ( .A1(n95), .A2(n1575), .ZN(n180) );
  OR2_X1 U238 ( .A1(n1142), .A2(n2199), .ZN(n181) );
  NAND3_X1 U239 ( .A1(n180), .A2(n181), .A3(n944), .ZN(n1172) );
  AND2_X1 U242 ( .A1(n1275), .A2(n2201), .ZN(status_o_OF_) );
  INV_X1 U243 ( .A(n155), .ZN(n185) );
  NOR3_X1 U244 ( .A1(n1021), .A2(n1020), .A3(n1019), .ZN(n186) );
  OR2_X1 U245 ( .A1(n1143), .A2(n2154), .ZN(n187) );
  OR2_X1 U246 ( .A1(n1142), .A2(n2189), .ZN(n188) );
  NAND3_X1 U247 ( .A1(n187), .A2(n188), .A3(n923), .ZN(n1073) );
  INV_X1 U248 ( .A(n1156), .ZN(n189) );
  INV_X1 U250 ( .A(n175), .ZN(n191) );
  OAI221_X1 U251 ( .B1(n73), .B2(n1571), .C1(n240), .C2(n2196), .A(n922), .ZN(
        n193) );
  NAND2_X2 U252 ( .A1(n92), .A2(n1173), .ZN(n1164) );
  OAI221_X1 U253 ( .B1(n1142), .B2(n1569), .C1(n95), .C2(n1570), .A(n905), 
        .ZN(n1076) );
  NAND3_X1 U254 ( .A1(N278), .A2(n34), .A3(N279), .ZN(n431) );
  OAI222_X4 U258 ( .A1(n938), .A2(n901), .B1(n936), .B2(n900), .C1(n1662), 
        .C2(n2133), .ZN(n972) );
  AND2_X1 U260 ( .A1(status_o_NX_), .A2(n198), .ZN(status_o_UF_) );
  NOR2_X1 U261 ( .A1(n1279), .A2(rounded_abs[10]), .ZN(n198) );
  NAND2_X2 U267 ( .A1(n1715), .A2(n694), .ZN(n720) );
  BUF_X1 U272 ( .A(n1298), .Z(n290) );
  XOR2_X1 U276 ( .A(n364), .B(n365), .Z(n366) );
  XOR2_X1 U277 ( .A(n201), .B(n218), .Z(n448) );
  NAND2_X1 U278 ( .A1(n692), .A2(inp_pipe_operands_q_1__2__12_), .ZN(n201) );
  XOR2_X1 U279 ( .A(n202), .B(n349), .Z(n226) );
  XOR2_X1 U280 ( .A(n348), .B(n479), .Z(n202) );
  INV_X1 U288 ( .A(n1100), .ZN(n894) );
  BUF_X1 U289 ( .A(n895), .Z(n260) );
  AND2_X1 U292 ( .A1(n668), .A2(n675), .ZN(n206) );
  AND2_X1 U293 ( .A1(n726), .A2(n209), .ZN(n207) );
  AND2_X1 U294 ( .A1(n1724), .A2(n508), .ZN(n208) );
  NAND2_X1 U304 ( .A1(n761), .A2(n719), .ZN(addend_shifted[28]) );
  AND2_X1 U305 ( .A1(n694), .A2(n2130), .ZN(n209) );
  INV_X1 U306 ( .A(N340), .ZN(n1006) );
  BUF_X1 U310 ( .A(n283), .Z(n278) );
  BUF_X1 U319 ( .A(n282), .Z(n280) );
  INV_X1 U324 ( .A(n1239), .ZN(n1000) );
  INV_X1 U327 ( .A(rounded_abs[11]), .ZN(n1274) );
  AND2_X1 U328 ( .A1(n956), .A2(n103), .ZN(n244) );
  XOR2_X1 U329 ( .A(n367), .B(n210), .Z(n369) );
  XNOR2_X1 U330 ( .A(n370), .B(n226), .ZN(n210) );
  AND2_X1 U331 ( .A1(n232), .A2(n1152), .ZN(n211) );
  XNOR2_X1 U332 ( .A(n362), .B(n361), .ZN(n363) );
  AND2_X1 U333 ( .A1(n1001), .A2(n998), .ZN(n213) );
  XNOR2_X1 U334 ( .A(n214), .B(n215), .ZN(n453) );
  AND2_X1 U335 ( .A1(n692), .A2(inp_pipe_operands_q_1__2__11_), .ZN(n214) );
  AND2_X1 U336 ( .A1(n693), .A2(n377), .ZN(n215) );
  NOR2_X1 U337 ( .A1(info_q[9]), .A2(n1263), .ZN(n216) );
  XNOR2_X1 U338 ( .A(n217), .B(n219), .ZN(n442) );
  AND2_X1 U339 ( .A1(n692), .A2(inp_pipe_operands_q_1__2__13_), .ZN(n217) );
  AND2_X1 U340 ( .A1(n215), .A2(inp_pipe_operands_q_1__2__11_), .ZN(n218) );
  AND2_X1 U341 ( .A1(n218), .A2(inp_pipe_operands_q_1__2__12_), .ZN(n219) );
  INV_X1 U342 ( .A(lzc_zeroes), .ZN(n429) );
  XNOR2_X1 U343 ( .A(n220), .B(n221), .ZN(n439) );
  AND2_X1 U344 ( .A1(n692), .A2(inp_pipe_operands_q_1__2__14_), .ZN(n220) );
  AND2_X1 U345 ( .A1(n219), .A2(inp_pipe_operands_q_1__2__13_), .ZN(n221) );
  AND3_X1 U346 ( .A1(n1179), .A2(n1216), .A3(n1178), .ZN(n222) );
  AND2_X1 U347 ( .A1(n337), .A2(inp_pipe_operands_q_1__0__14_), .ZN(n223) );
  NOR2_X1 U348 ( .A1(info_q[8]), .A2(n1263), .ZN(n224) );
  AND2_X1 U349 ( .A1(info_q[14]), .A2(n1260), .ZN(n225) );
  CLKBUF_X1 U351 ( .A(n894), .Z(n256) );
  XNOR2_X1 U352 ( .A(n227), .B(n223), .ZN(n355) );
  XNOR2_X1 U353 ( .A(n341), .B(n476), .ZN(n227) );
  XNOR2_X1 U354 ( .A(n347), .B(n346), .ZN(n364) );
  XNOR2_X1 U355 ( .A(n351), .B(n480), .ZN(n228) );
  XNOR2_X1 U356 ( .A(n491), .B(n316), .ZN(n317) );
  MUX2_X1 U357 ( .A(rnd_mode_i[2]), .B(n1640), .S(n310), .Z(n1319) );
  INV_X1 U359 ( .A(n1198), .ZN(n236) );
  NAND2_X1 U361 ( .A1(n904), .A2(n148), .ZN(n237) );
  NAND2_X1 U362 ( .A1(n160), .A2(sub_549_A_0_), .ZN(n1005) );
  AOI21_X1 U363 ( .B1(n1012), .B2(n26), .A(n1011), .ZN(n1018) );
  OAI221_X1 U364 ( .B1(n95), .B2(n2195), .C1(n79), .C2(n2198), .A(n953), .ZN(
        n1154) );
  NAND2_X1 U365 ( .A1(n146), .A2(n1006), .ZN(n1007) );
  NOR2_X1 U366 ( .A1(n1010), .A2(n1231), .ZN(n1011) );
  NAND2_X1 U367 ( .A1(n1018), .A2(n1017), .ZN(n1272) );
  INV_X1 U371 ( .A(n9), .ZN(n275) );
  INV_X1 U372 ( .A(n271), .ZN(n240) );
  INV_X1 U376 ( .A(n1142), .ZN(n271) );
  OAI211_X1 U377 ( .C1(n965), .C2(n1159), .A(n964), .B(n963), .ZN(n1224) );
  OR2_X1 U379 ( .A1(n898), .A2(n2206), .ZN(n938) );
  NAND3_X1 U380 ( .A1(n248), .A2(n249), .A3(n940), .ZN(n245) );
  INV_X1 U382 ( .A(n1224), .ZN(n247) );
  INV_X1 U383 ( .A(n113), .ZN(n1223) );
  NAND4_X1 U384 ( .A1(N277), .A2(N280), .A3(N275), .A4(N276), .ZN(n430) );
  OR2_X1 U385 ( .A1(n95), .A2(n1675), .ZN(n248) );
  OR2_X1 U386 ( .A1(n1676), .A2(n1142), .ZN(n249) );
  NAND3_X1 U387 ( .A1(n249), .A2(n248), .A3(n940), .ZN(n1079) );
  AOI22_X1 U388 ( .A1(n1679), .A2(n8), .B1(n22), .B2(n2166), .ZN(n905) );
  NAND2_X1 U389 ( .A1(n1280), .A2(n1276), .ZN(status_o_NX_) );
  NAND2_X1 U390 ( .A1(n1005), .A2(n1232), .ZN(n1008) );
  OAI22_X1 U391 ( .A1(n1551), .A2(n1641), .B1(n1720), .B2(n1721), .ZN(n898) );
  NOR2_X1 U392 ( .A1(rounded_abs[14]), .A2(rounded_abs[12]), .ZN(n1278) );
  OAI21_X1 U393 ( .B1(round_sticky_bits[1]), .B2(round_sticky_bits[0]), .A(
        n2201), .ZN(n1276) );
  OAI222_X4 U394 ( .A1(n921), .A2(n936), .B1(n920), .B2(n938), .C1(n1662), 
        .C2(n2132), .ZN(n1156) );
  AOI22_X1 U396 ( .A1(n1238), .A2(n1237), .B1(n1000), .B2(n1240), .ZN(n1009)
         );
  NAND2_X1 U397 ( .A1(n1275), .A2(n2201), .ZN(n1280) );
  INV_X1 U398 ( .A(rounded_abs[13]), .ZN(n1277) );
  OAI21_X1 U399 ( .B1(n1273), .B2(n1274), .A(n175), .ZN(n1275) );
  AOI22_X1 U400 ( .A1(N343), .A2(n112), .B1(n130), .B2(n1244), .ZN(n1017) );
  NAND2_X1 U401 ( .A1(n449), .A2(n390), .ZN(n935) );
  INV_X2 U404 ( .A(n862), .ZN(n746) );
  INV_X1 U405 ( .A(flush_i), .ZN(n1349) );
  OR2_X1 U406 ( .A1(out_ready_i), .A2(n2127), .ZN(n311) );
  INV_X1 U407 ( .A(n311), .ZN(n1299) );
  NAND2_X1 U408 ( .A1(n1299), .A2(n1643), .ZN(in_ready_o) );
  NAND2_X1 U409 ( .A1(in_valid_i), .A2(in_ready_o), .ZN(n310) );
  INV_X1 U410 ( .A(n310), .ZN(n1298) );
  MUX2_X1 U411 ( .A(n1639), .B(op_i[2]), .S(n1298), .Z(n1338) );
  MUX2_X1 U412 ( .A(n1638), .B(op_i[3]), .S(n1298), .Z(n1337) );
  MUX2_X1 U413 ( .A(n1637), .B(op_i[0]), .S(n1298), .Z(n1316) );
  MUX2_X1 U414 ( .A(n1636), .B(op_i[1]), .S(n1298), .Z(n1336) );
  MUX2_X1 U415 ( .A(n1635), .B(operands_i[15]), .S(n289), .Z(
        inp_pipe_operands_q_1__0__15_) );
  MUX2_X1 U416 ( .A(n1634), .B(operands_i[31]), .S(n1298), .Z(
        inp_pipe_operands_q_1__1__15_) );
  MUX2_X1 U417 ( .A(n1633), .B(operands_i[47]), .S(n289), .Z(
        inp_pipe_operands_q_1__2__15_) );
  MUX2_X1 U418 ( .A(n1632), .B(op_mod_i), .S(n289), .Z(n1315) );
  NAND2_X1 U419 ( .A1(n1316), .A2(n1336), .ZN(n1260) );
  NAND2_X1 U420 ( .A1(n165), .A2(n1260), .ZN(n679) );
  INV_X1 U421 ( .A(n679), .ZN(n692) );
  XOR2_X1 U422 ( .A(n1315), .B(n507), .Z(n312) );
  NAND2_X1 U423 ( .A1(n692), .A2(n312), .ZN(n1289) );
  INV_X1 U424 ( .A(n1260), .ZN(n1246) );
  AOI21_X1 U425 ( .B1(n315), .B2(n313), .A(n1246), .ZN(n314) );
  NAND2_X1 U426 ( .A1(n1316), .A2(n313), .ZN(n316) );
  MUX2_X1 U427 ( .A(n314), .B(n316), .S(n491), .Z(n319) );
  INV_X1 U428 ( .A(n69), .ZN(n1271) );
  NOR2_X1 U429 ( .A1(n1271), .A2(n317), .ZN(n318) );
  MUX2_X1 U430 ( .A(n319), .B(n318), .S(n475), .Z(n320) );
  NAND2_X1 U431 ( .A1(n53), .A2(n320), .ZN(n1293) );
  INV_X1 U432 ( .A(n1293), .ZN(n1099) );
  XOR2_X1 U433 ( .A(n1289), .B(n1099), .Z(n1262) );
  INV_X1 U434 ( .A(n1300), .ZN(n1296) );
  MUX2_X1 U435 ( .A(n1631), .B(n1660), .S(n276), .Z(mid_pipe_eff_sub_q_1_) );
  MUX2_X1 U437 ( .A(n1713), .B(operands_i[14]), .S(n289), .Z(
        inp_pipe_operands_q_1__0__14_) );
  MUX2_X1 U439 ( .A(n1712), .B(operands_i[13]), .S(n290), .Z(
        inp_pipe_operands_q_1__0__13_) );
  MUX2_X1 U441 ( .A(n1711), .B(operands_i[12]), .S(n289), .Z(
        inp_pipe_operands_q_1__0__12_) );
  INV_X1 U442 ( .A(n495), .ZN(n323) );
  MUX2_X1 U443 ( .A(n1710), .B(operands_i[11]), .S(n290), .Z(
        inp_pipe_operands_q_1__0__11_) );
  MUX2_X1 U444 ( .A(n1630), .B(operands_i[26]), .S(n290), .Z(
        inp_pipe_operands_q_1__1__10_) );
  MUX2_X1 U446 ( .A(n1709), .B(operands_i[10]), .S(n290), .Z(
        inp_pipe_operands_q_1__0__10_) );
  MUX2_X1 U447 ( .A(n1629), .B(operands_i[27]), .S(n290), .Z(
        inp_pipe_operands_q_1__1__11_) );
  MUX2_X1 U449 ( .A(n1708), .B(operands_i[28]), .S(n290), .Z(
        inp_pipe_operands_q_1__1__12_) );
  MUX2_X1 U451 ( .A(n1707), .B(operands_i[29]), .S(n290), .Z(
        inp_pipe_operands_q_1__1__13_) );
  MUX2_X1 U453 ( .A(n1706), .B(operands_i[30]), .S(n290), .Z(
        inp_pipe_operands_q_1__1__14_) );
  INV_X1 U454 ( .A(info_q[3]), .ZN(n1245) );
  OAI21_X1 U455 ( .B1(n1271), .B2(n1245), .A(n216), .ZN(n325) );
  INV_X1 U456 ( .A(n325), .ZN(n372) );
  INV_X1 U457 ( .A(n55), .ZN(n337) );
  NAND2_X1 U458 ( .A1(n337), .A2(n496), .ZN(n350) );
  INV_X1 U459 ( .A(n350), .ZN(n327) );
  OAI21_X1 U460 ( .B1(inp_pipe_operands_q_1__1__10_), .B2(n350), .A(info_q[10]), .ZN(n326) );
  OAI21_X1 U461 ( .B1(n480), .B2(n327), .A(n326), .ZN(n348) );
  INV_X1 U462 ( .A(n348), .ZN(n329) );
  NAND2_X1 U463 ( .A1(n495), .A2(n68), .ZN(n349) );
  OAI21_X1 U464 ( .B1(inp_pipe_operands_q_1__1__11_), .B2(n348), .A(n349), 
        .ZN(n328) );
  OAI21_X1 U465 ( .B1(n479), .B2(n329), .A(n328), .ZN(n345) );
  INV_X1 U466 ( .A(n46), .ZN(n332) );
  NAND2_X1 U467 ( .A1(n494), .A2(n69), .ZN(n346) );
  OAI21_X1 U468 ( .B1(inp_pipe_operands_q_1__1__12_), .B2(n345), .A(n346), 
        .ZN(n331) );
  INV_X1 U469 ( .A(n342), .ZN(n335) );
  NAND2_X1 U470 ( .A1(n493), .A2(n69), .ZN(n343) );
  OAI21_X1 U471 ( .B1(inp_pipe_operands_q_1__1__13_), .B2(n342), .A(n343), 
        .ZN(n334) );
  OAI21_X1 U472 ( .B1(n477), .B2(n335), .A(n334), .ZN(n341) );
  INV_X1 U473 ( .A(n49), .ZN(n340) );
  OAI21_X1 U474 ( .B1(inp_pipe_operands_q_1__1__14_), .B2(n49), .A(n223), .ZN(
        n339) );
  OAI21_X1 U475 ( .B1(n476), .B2(n340), .A(n339), .ZN(n356) );
  INV_X1 U476 ( .A(n356), .ZN(n352) );
  INV_X1 U477 ( .A(n343), .ZN(n344) );
  XOR2_X1 U478 ( .A(n46), .B(n478), .Z(n347) );
  NAND2_X1 U479 ( .A1(info_q[4]), .A2(n68), .ZN(n368) );
  XOR2_X1 U480 ( .A(info_q[10]), .B(n350), .Z(n351) );
  NAND2_X1 U481 ( .A1(n228), .A2(n368), .ZN(n367) );
  OAI22_X1 U482 ( .A1(n226), .A2(n368), .B1(n226), .B2(n367), .ZN(n365) );
  NAND3_X1 U483 ( .A1(n361), .A2(n364), .A3(n365), .ZN(n354) );
  NAND3_X1 U484 ( .A1(n352), .A2(n355), .A3(n354), .ZN(n353) );
  NAND2_X1 U485 ( .A1(n372), .A2(n353), .ZN(n680) );
  MUX2_X1 U486 ( .A(n1628), .B(n1659), .S(n277), .Z(mid_pipe_exp_prod_q_1__6_)
         );
  INV_X1 U487 ( .A(n354), .ZN(n358) );
  INV_X1 U488 ( .A(n355), .ZN(n359) );
  OAI21_X1 U489 ( .B1(n358), .B2(n359), .A(n356), .ZN(n357) );
  INV_X1 U490 ( .A(n680), .ZN(n385) );
  NAND2_X1 U491 ( .A1(n357), .A2(n385), .ZN(n681) );
  MUX2_X1 U492 ( .A(n1627), .B(n1658), .S(n278), .Z(mid_pipe_exp_prod_q_1__5_)
         );
  XOR2_X1 U493 ( .A(n359), .B(n358), .Z(n360) );
  NAND2_X1 U494 ( .A1(n372), .A2(n360), .ZN(n682) );
  MUX2_X1 U495 ( .A(n1626), .B(n1657), .S(n277), .Z(mid_pipe_exp_prod_q_1__4_)
         );
  NAND2_X1 U496 ( .A1(n364), .A2(n365), .ZN(n362) );
  NAND2_X1 U497 ( .A1(n372), .A2(n363), .ZN(n441) );
  INV_X1 U498 ( .A(n441), .ZN(n683) );
  MUX2_X1 U499 ( .A(n1625), .B(n1704), .S(n277), .Z(mid_pipe_exp_prod_q_1__3_)
         );
  NAND2_X1 U500 ( .A1(n372), .A2(n366), .ZN(n447) );
  INV_X1 U501 ( .A(n447), .ZN(n684) );
  MUX2_X1 U502 ( .A(n1624), .B(n1703), .S(n277), .Z(mid_pipe_exp_prod_q_1__2_)
         );
  INV_X1 U503 ( .A(n368), .ZN(n370) );
  NAND2_X1 U504 ( .A1(n372), .A2(n369), .ZN(n685) );
  MUX2_X1 U505 ( .A(n1623), .B(n1654), .S(n277), .Z(mid_pipe_exp_prod_q_1__1_)
         );
  XOR2_X1 U506 ( .A(n370), .B(n228), .Z(n371) );
  NAND2_X1 U507 ( .A1(n372), .A2(n371), .ZN(n686) );
  MUX2_X1 U508 ( .A(n1622), .B(n1653), .S(n277), .Z(mid_pipe_exp_prod_q_1__0_)
         );
  MUX2_X1 U509 ( .A(n1621), .B(operands_i[42]), .S(n1298), .Z(
        inp_pipe_operands_q_1__2__10_) );
  MUX2_X1 U511 ( .A(n1702), .B(operands_i[43]), .S(n1298), .Z(
        inp_pipe_operands_q_1__2__11_) );
  MUX2_X1 U513 ( .A(n1701), .B(operands_i[44]), .S(n1298), .Z(
        inp_pipe_operands_q_1__2__12_) );
  MUX2_X1 U515 ( .A(n1700), .B(operands_i[45]), .S(n289), .Z(
        inp_pipe_operands_q_1__2__13_) );
  MUX2_X1 U517 ( .A(n1699), .B(operands_i[46]), .S(n290), .Z(
        inp_pipe_operands_q_1__2__14_) );
  AOI21_X1 U518 ( .B1(info_q[15]), .B2(n1260), .A(n1263), .ZN(n693) );
  OAI21_X1 U519 ( .B1(n464), .B2(n1246), .A(n53), .ZN(n377) );
  NAND2_X1 U520 ( .A1(n221), .A2(inp_pipe_operands_q_1__2__14_), .ZN(n436) );
  INV_X1 U521 ( .A(n436), .ZN(exponent_addend[5]) );
  INV_X1 U522 ( .A(n439), .ZN(exponent_addend[4]) );
  INV_X1 U523 ( .A(n442), .ZN(exponent_addend[3]) );
  INV_X1 U524 ( .A(n448), .ZN(exponent_addend[2]) );
  INV_X1 U525 ( .A(n453), .ZN(exponent_addend[1]) );
  XOR2_X1 U526 ( .A(n377), .B(n693), .Z(exponent_addend[0]) );
  MUX2_X1 U527 ( .A(n1619), .B(n1728), .S(n277), .Z(n378) );
  MUX2_X1 U528 ( .A(n1618), .B(n1727), .S(n277), .Z(n387) );
  MUX2_X1 U529 ( .A(n1617), .B(n1726), .S(n277), .Z(n30) );
  MUX2_X1 U530 ( .A(n1616), .B(n1725), .S(n277), .Z(n38) );
  MUX2_X1 U531 ( .A(n1615), .B(n1724), .S(n277), .Z(n379) );
  MUX2_X1 U532 ( .A(n1614), .B(n1722), .S(n276), .Z(n41) );
  MUX2_X1 U533 ( .A(n1613), .B(n1723), .S(n276), .Z(n37) );
  NAND2_X1 U538 ( .A1(n2197), .A2(n2214), .ZN(n585) );
  NOR3_X1 U539 ( .A1(n1726), .A2(n1727), .A3(n585), .ZN(n381) );
  NAND3_X1 U540 ( .A1(n2205), .A2(n2191), .A3(n381), .ZN(n383) );
  NAND2_X1 U542 ( .A1(n383), .A2(n2194), .ZN(n432) );
  NAND2_X1 U543 ( .A1(n432), .A2(n278), .ZN(n455) );
  OAI22_X1 U544 ( .A1(n1705), .A2(n455), .B1(n278), .B2(n2175), .ZN(n1325) );
  OAI21_X1 U545 ( .B1(n444), .B2(mid_pipe_eff_sub_q_1_), .A(n443), .ZN(n386)
         );
  OAI21_X1 U546 ( .B1(n450), .B2(n37), .A(n386), .ZN(n389) );
  NOR3_X1 U547 ( .A1(n38), .A2(n30), .A3(n387), .ZN(n388) );
  NAND3_X1 U548 ( .A1(n445), .A2(n389), .A3(n388), .ZN(n390) );
  NAND2_X1 U549 ( .A1(n1662), .A2(n898), .ZN(n936) );
  INV_X1 U550 ( .A(n936), .ZN(n928) );
  AOI22_X1 U552 ( .A1(N313), .A2(n928), .B1(n1550), .B2(n2206), .ZN(n1010) );
  INV_X1 U553 ( .A(n1010), .ZN(gt_547_A_6_) );
  INV_X1 U554 ( .A(n432), .ZN(n433) );
  NAND2_X1 U555 ( .A1(n433), .A2(n278), .ZN(n457) );
  OAI222_X1 U557 ( .A1(n457), .A2(n1652), .B1(n2177), .B2(n455), .C1(n278), 
        .C2(n2164), .ZN(n1324) );
  AOI22_X1 U558 ( .A1(N312), .A2(n928), .B1(n1548), .B2(n2206), .ZN(n995) );
  INV_X1 U559 ( .A(n995), .ZN(gt_547_A_5_) );
  OAI222_X1 U561 ( .A1(n1663), .A2(n457), .B1(n2180), .B2(n455), .C1(n278), 
        .C2(n2179), .ZN(n1323) );
  AOI22_X1 U562 ( .A1(N311), .A2(n928), .B1(n1547), .B2(n2206), .ZN(n1015) );
  INV_X1 U563 ( .A(n1015), .ZN(gt_547_A_4_) );
  OAI222_X1 U564 ( .A1(n1664), .A2(n457), .B1(n455), .B2(n1656), .C1(n278), 
        .C2(n2176), .ZN(n1322) );
  AOI22_X1 U565 ( .A1(N310), .A2(n928), .B1(n1546), .B2(n2206), .ZN(n999) );
  INV_X1 U566 ( .A(n999), .ZN(gt_547_A_3_) );
  OAI222_X1 U567 ( .A1(n1666), .A2(n457), .B1(n455), .B2(n1655), .C1(n278), 
        .C2(n2173), .ZN(n1321) );
  AOI22_X1 U568 ( .A1(N309), .A2(n928), .B1(n1545), .B2(n2206), .ZN(n998) );
  INV_X1 U569 ( .A(n998), .ZN(gt_547_A_2_) );
  INV_X1 U570 ( .A(n1654), .ZN(n452) );
  OAI222_X1 U571 ( .A1(n1665), .A2(n457), .B1(n452), .B2(n455), .C1(n278), 
        .C2(n2174), .ZN(n1320) );
  AOI22_X1 U572 ( .A1(N308), .A2(n928), .B1(n1544), .B2(n2206), .ZN(n1003) );
  INV_X1 U573 ( .A(n1003), .ZN(gt_547_A_1_) );
  INV_X1 U574 ( .A(exponent_addend[0]), .ZN(n458) );
  OAI222_X1 U576 ( .A1(n1698), .A2(n457), .B1(n2186), .B2(n455), .C1(n278), 
        .C2(n1678), .ZN(n569) );
  OAI22_X1 U577 ( .A1(n1662), .A2(n1678), .B1(N300), .B2(n936), .ZN(
        sub_549_A_0_) );
  NAND2_X1 U578 ( .A1(n1723), .A2(n1722), .ZN(n674) );
  INV_X1 U579 ( .A(n674), .ZN(n508) );
  NAND2_X1 U580 ( .A1(n1725), .A2(n208), .ZN(n589) );
  NAND3_X1 U582 ( .A1(n1724), .A2(n1723), .A3(n1725), .ZN(n509) );
  NAND3_X1 U584 ( .A1(n509), .A2(n2171), .A3(n2188), .ZN(n584) );
  NAND2_X1 U585 ( .A1(n584), .A2(n2194), .ZN(n668) );
  AOI21_X1 U586 ( .B1(n1725), .B2(n585), .A(n1726), .ZN(n587) );
  NAND2_X1 U587 ( .A1(n589), .A2(n2188), .ZN(n667) );
  OAI211_X1 U588 ( .C1(n589), .C2(n2188), .A(n206), .B(n667), .ZN(n846) );
  INV_X1 U589 ( .A(n846), .ZN(n817) );
  MUX2_X1 U590 ( .A(n1612), .B(n817), .S(n276), .Z(n1330) );
  OAI21_X1 U591 ( .B1(n1725), .B2(n208), .A(n589), .ZN(n601) );
  NAND2_X1 U592 ( .A1(n206), .A2(n601), .ZN(n769) );
  MUX2_X1 U593 ( .A(n1611), .B(n796), .S(n276), .Z(n1329) );
  OAI21_X1 U594 ( .B1(n1723), .B2(n1722), .A(n674), .ZN(n602) );
  MUX2_X1 U596 ( .A(n1610), .B(n789), .S(n276), .Z(n1327) );
  INV_X1 U597 ( .A(n668), .ZN(n677) );
  OAI21_X1 U598 ( .B1(n677), .B2(n2191), .A(n675), .ZN(n732) );
  MUX2_X1 U599 ( .A(n1609), .B(n71), .S(n276), .Z(n1326) );
  OR2_X1 U600 ( .A1(n54), .A2(info_q[5]), .ZN(info_a_is_normal_) );
  MUX2_X1 U601 ( .A(n1608), .B(operands_i[9]), .S(n289), .Z(
        inp_pipe_operands_q_1__0__9_) );
  MUX2_X1 U602 ( .A(n1607), .B(operands_i[8]), .S(n289), .Z(
        inp_pipe_operands_q_1__0__8_) );
  NOR2_X1 U603 ( .A1(n498), .A2(n55), .ZN(operand_a[7]) );
  MUX2_X1 U604 ( .A(n1606), .B(operands_i[7]), .S(n289), .Z(
        inp_pipe_operands_q_1__0__7_) );
  NOR2_X1 U605 ( .A1(n499), .A2(n54), .ZN(operand_a[6]) );
  MUX2_X1 U606 ( .A(n1605), .B(operands_i[6]), .S(n290), .Z(
        inp_pipe_operands_q_1__0__6_) );
  NOR2_X1 U607 ( .A1(n500), .A2(n55), .ZN(operand_a[5]) );
  MUX2_X1 U608 ( .A(n1604), .B(operands_i[5]), .S(n290), .Z(
        inp_pipe_operands_q_1__0__5_) );
  NOR2_X1 U609 ( .A1(n501), .A2(n85), .ZN(operand_a[4]) );
  MUX2_X1 U610 ( .A(n1603), .B(operands_i[4]), .S(n289), .Z(
        inp_pipe_operands_q_1__0__4_) );
  NOR2_X1 U611 ( .A1(n502), .A2(n85), .ZN(operand_a[3]) );
  MUX2_X1 U613 ( .A(n1697), .B(operands_i[3]), .S(n290), .Z(
        inp_pipe_operands_q_1__0__3_) );
  MUX2_X1 U615 ( .A(n1696), .B(operands_i[2]), .S(n290), .Z(
        inp_pipe_operands_q_1__0__2_) );
  MUX2_X1 U617 ( .A(n1695), .B(operands_i[1]), .S(n290), .Z(
        inp_pipe_operands_q_1__0__1_) );
  MUX2_X1 U618 ( .A(n1602), .B(operands_i[0]), .S(n289), .Z(
        inp_pipe_operands_q_1__0__0_) );
  OAI21_X1 U619 ( .B1(n506), .B2(n1271), .A(n53), .ZN(
        dp_cluster_1_operand_a_mantissa__0_) );
  OR2_X1 U620 ( .A1(n1263), .A2(info_q[11]), .ZN(info_b_is_normal_) );
  MUX2_X1 U622 ( .A(n1694), .B(operands_i[25]), .S(n290), .Z(
        inp_pipe_operands_q_1__1__9_) );
  NOR2_X1 U623 ( .A1(n481), .A2(n1263), .ZN(operand_b[9]) );
  MUX2_X1 U625 ( .A(n1693), .B(operands_i[24]), .S(n290), .Z(
        inp_pipe_operands_q_1__1__8_) );
  NOR2_X1 U627 ( .A1(n482), .A2(n1263), .ZN(operand_b[8]) );
  MUX2_X1 U629 ( .A(n1692), .B(operands_i[23]), .S(n289), .Z(
        inp_pipe_operands_q_1__1__7_) );
  NOR2_X1 U630 ( .A1(n483), .A2(n1263), .ZN(operand_b[7]) );
  MUX2_X1 U632 ( .A(n1691), .B(operands_i[22]), .S(n287), .Z(
        inp_pipe_operands_q_1__1__6_) );
  NOR2_X1 U633 ( .A1(n484), .A2(n1263), .ZN(operand_b[6]) );
  MUX2_X1 U635 ( .A(n1690), .B(operands_i[21]), .S(n287), .Z(
        inp_pipe_operands_q_1__1__5_) );
  NOR2_X1 U636 ( .A1(n485), .A2(n1263), .ZN(operand_b[5]) );
  MUX2_X1 U638 ( .A(n1689), .B(operands_i[20]), .S(n287), .Z(
        inp_pipe_operands_q_1__1__4_) );
  NOR2_X1 U639 ( .A1(n486), .A2(n1263), .ZN(operand_b[4]) );
  MUX2_X1 U641 ( .A(n1688), .B(operands_i[19]), .S(n287), .Z(
        inp_pipe_operands_q_1__1__3_) );
  NOR2_X1 U642 ( .A1(n487), .A2(n1263), .ZN(operand_b[3]) );
  MUX2_X1 U644 ( .A(n1687), .B(operands_i[18]), .S(n287), .Z(
        inp_pipe_operands_q_1__1__2_) );
  NOR2_X1 U645 ( .A1(n488), .A2(n1263), .ZN(operand_b[2]) );
  MUX2_X1 U647 ( .A(n1686), .B(operands_i[17]), .S(n287), .Z(
        inp_pipe_operands_q_1__1__1_) );
  NOR2_X1 U648 ( .A1(n489), .A2(n1263), .ZN(operand_b[1]) );
  MUX2_X1 U650 ( .A(n1685), .B(operands_i[16]), .S(n287), .Z(
        inp_pipe_operands_q_1__1__0_) );
  NAND2_X1 U651 ( .A1(n490), .A2(n165), .ZN(operand_b[0]) );
  INV_X1 U652 ( .A(n1660), .ZN(n855) );
  INV_X1 U653 ( .A(n667), .ZN(n669) );
  NAND3_X1 U654 ( .A1(n669), .A2(n1727), .A3(n668), .ZN(n670) );
  NAND2_X1 U655 ( .A1(n670), .A2(n675), .ZN(n863) );
  INV_X1 U656 ( .A(n863), .ZN(n853) );
  NAND2_X1 U657 ( .A1(n853), .A2(n846), .ZN(n772) );
  NAND2_X1 U658 ( .A1(n1660), .A2(n772), .ZN(n768) );
  OAI21_X1 U659 ( .B1(n251), .B2(n769), .A(n768), .ZN(n671) );
  INV_X1 U660 ( .A(n671), .ZN(n713) );
  INV_X1 U661 ( .A(n772), .ZN(n794) );
  NAND2_X1 U662 ( .A1(n794), .A2(n251), .ZN(n766) );
  INV_X1 U663 ( .A(n766), .ZN(n672) );
  NAND2_X1 U664 ( .A1(n672), .A2(n769), .ZN(n711) );
  AOI21_X1 U665 ( .B1(n674), .B2(n2197), .A(n208), .ZN(n676) );
  NAND2_X1 U666 ( .A1(n746), .A2(n745), .ZN(n748) );
  INV_X1 U667 ( .A(n748), .ZN(n726) );
  INV_X1 U668 ( .A(n732), .ZN(n694) );
  MUX2_X1 U670 ( .A(n252), .B(n711), .S(n207), .Z(n678) );
  NAND2_X1 U671 ( .A1(n713), .A2(n678), .ZN(addend_shifted[36]) );
  MUX2_X1 U672 ( .A(n1601), .B(operands_i[41]), .S(n287), .Z(
        inp_pipe_operands_q_1__2__9_) );
  NOR2_X1 U673 ( .A1(n2135), .A2(n1661), .ZN(n687) );
  MUX2_X1 U674 ( .A(n2130), .B(n687), .S(n694), .Z(n689) );
  NAND2_X1 U675 ( .A1(n689), .A2(n745), .ZN(n702) );
  INV_X1 U676 ( .A(n702), .ZN(n691) );
  NAND2_X1 U677 ( .A1(n691), .A2(n746), .ZN(n775) );
  OAI21_X1 U678 ( .B1(n746), .B2(n252), .A(n713), .ZN(n690) );
  INV_X1 U679 ( .A(n690), .ZN(n696) );
  OAI221_X1 U680 ( .B1(n775), .B2(n711), .C1(n691), .C2(n251), .A(n696), .ZN(
        addend_shifted[35]) );
  MUX2_X1 U681 ( .A(n1600), .B(operands_i[40]), .S(n287), .Z(
        inp_pipe_operands_q_1__2__8_) );
  OAI22_X1 U682 ( .A1(n2135), .A2(n724), .B1(n2136), .B2(n720), .ZN(n715) );
  MUX2_X1 U683 ( .A(n715), .B(n209), .S(n789), .Z(n704) );
  NAND2_X1 U684 ( .A1(n746), .A2(n704), .ZN(n781) );
  OAI221_X1 U685 ( .B1(n781), .B2(n711), .C1(n252), .C2(n704), .A(n696), .ZN(
        addend_shifted[34]) );
  MUX2_X1 U686 ( .A(n1599), .B(operands_i[39]), .S(n287), .Z(
        inp_pipe_operands_q_1__2__7_) );
  OAI22_X1 U687 ( .A1(n2136), .A2(n724), .B1(n2137), .B2(n720), .ZN(n700) );
  OAI22_X1 U688 ( .A1(n2135), .A2(n720), .B1(n694), .B2(n1620), .ZN(n695) );
  MUX2_X1 U689 ( .A(n700), .B(n695), .S(n789), .Z(n706) );
  NAND2_X1 U690 ( .A1(n746), .A2(n706), .ZN(n783) );
  OAI221_X1 U691 ( .B1(n783), .B2(n711), .C1(n706), .C2(n251), .A(n696), .ZN(
        addend_shifted[33]) );
  MUX2_X1 U692 ( .A(n1598), .B(operands_i[38]), .S(n287), .Z(
        inp_pipe_operands_q_1__2__6_) );
  NAND2_X1 U693 ( .A1(n789), .A2(n43), .ZN(n770) );
  INV_X1 U694 ( .A(n715), .ZN(n697) );
  OAI22_X1 U695 ( .A1(n2137), .A2(n724), .B1(n2138), .B2(n720), .ZN(n716) );
  INV_X1 U696 ( .A(n716), .ZN(n728) );
  AOI22_X1 U697 ( .A1(n697), .A2(n789), .B1(n728), .B2(n726), .ZN(n698) );
  OAI211_X1 U698 ( .C1(n746), .C2(n209), .A(n770), .B(n698), .ZN(n742) );
  INV_X1 U699 ( .A(n742), .ZN(n826) );
  MUX2_X1 U700 ( .A(n252), .B(n711), .S(n826), .Z(n699) );
  NAND2_X1 U701 ( .A1(n713), .A2(n699), .ZN(addend_shifted[32]) );
  MUX2_X1 U702 ( .A(n1597), .B(operands_i[37]), .S(n287), .Z(
        inp_pipe_operands_q_1__2__5_) );
  OAI22_X1 U703 ( .A1(n2138), .A2(n724), .B1(n2139), .B2(n720), .ZN(n707) );
  MUX2_X1 U704 ( .A(n707), .B(n700), .S(n789), .Z(n721) );
  INV_X1 U705 ( .A(n721), .ZN(n701) );
  MUX2_X1 U706 ( .A(n702), .B(n701), .S(n746), .Z(n750) );
  INV_X1 U707 ( .A(n750), .ZN(n831) );
  MUX2_X1 U708 ( .A(n252), .B(n711), .S(n831), .Z(n703) );
  NAND2_X1 U709 ( .A1(n713), .A2(n703), .ZN(addend_shifted[31]) );
  MUX2_X1 U710 ( .A(n1596), .B(operands_i[36]), .S(n289), .Z(
        inp_pipe_operands_q_1__2__4_) );
  NAND2_X1 U711 ( .A1(n789), .A2(n746), .ZN(n735) );
  OAI22_X1 U712 ( .A1(n2139), .A2(n724), .B1(n2140), .B2(n720), .ZN(n741) );
  OAI222_X1 U713 ( .A1(n735), .A2(n716), .B1(n746), .B2(n704), .C1(n748), .C2(
        n741), .ZN(n755) );
  INV_X1 U714 ( .A(n755), .ZN(n830) );
  MUX2_X1 U715 ( .A(n252), .B(n711), .S(n830), .Z(n705) );
  NAND2_X1 U716 ( .A1(n713), .A2(n705), .ZN(addend_shifted[30]) );
  MUX2_X1 U717 ( .A(n1595), .B(operands_i[35]), .S(n289), .Z(
        inp_pipe_operands_q_1__2__3_) );
  INV_X1 U718 ( .A(n706), .ZN(n709) );
  OAI22_X1 U719 ( .A1(n2140), .A2(n724), .B1(n2141), .B2(n720), .ZN(n749) );
  MUX2_X1 U720 ( .A(n749), .B(n707), .S(n789), .Z(n708) );
  INV_X1 U721 ( .A(n708), .ZN(n734) );
  MUX2_X1 U722 ( .A(n709), .B(n734), .S(n746), .Z(n710) );
  INV_X1 U723 ( .A(n710), .ZN(n829) );
  MUX2_X1 U724 ( .A(n252), .B(n711), .S(n829), .Z(n712) );
  NAND2_X1 U725 ( .A1(n713), .A2(n712), .ZN(addend_shifted[29]) );
  MUX2_X1 U726 ( .A(n1594), .B(operands_i[34]), .S(n289), .Z(
        inp_pipe_operands_q_1__2__2_) );
  NAND2_X1 U727 ( .A1(n1660), .A2(n863), .ZN(n761) );
  NAND2_X1 U728 ( .A1(n251), .A2(n853), .ZN(n759) );
  NAND2_X1 U729 ( .A1(n745), .A2(n43), .ZN(n762) );
  INV_X1 U730 ( .A(n741), .ZN(n729) );
  INV_X1 U731 ( .A(n735), .ZN(n725) );
  OAI22_X1 U732 ( .A1(n2141), .A2(n724), .B1(n2142), .B2(n720), .ZN(n753) );
  INV_X1 U733 ( .A(n753), .ZN(n739) );
  AOI22_X1 U734 ( .A1(n729), .A2(n725), .B1(n739), .B2(n726), .ZN(n714) );
  OAI221_X1 U735 ( .B1(n762), .B2(n716), .C1(n770), .C2(n715), .A(n714), .ZN(
        n717) );
  INV_X1 U736 ( .A(n717), .ZN(n813) );
  MUX2_X1 U737 ( .A(n813), .B(n207), .S(n796), .Z(n718) );
  NAND2_X1 U738 ( .A1(n718), .A2(n846), .ZN(n847) );
  MUX2_X1 U739 ( .A(n759), .B(n252), .S(n847), .Z(n719) );
  MUX2_X1 U740 ( .A(n1593), .B(operands_i[33]), .S(n1298), .Z(
        inp_pipe_operands_q_1__2__1_) );
  OAI22_X1 U741 ( .A1(n2142), .A2(n724), .B1(n2143), .B2(n720), .ZN(n790) );
  OAI222_X1 U742 ( .A1(n790), .A2(n748), .B1(n746), .B2(n721), .C1(n749), .C2(
        n735), .ZN(n778) );
  MUX2_X1 U743 ( .A(n778), .B(n775), .S(n796), .Z(n836) );
  INV_X1 U744 ( .A(n836), .ZN(n798) );
  MUX2_X1 U745 ( .A(n252), .B(n766), .S(n798), .Z(n722) );
  NAND2_X1 U746 ( .A1(n768), .A2(n722), .ZN(addend_shifted[27]) );
  MUX2_X1 U747 ( .A(n1592), .B(operands_i[32]), .S(n289), .Z(
        inp_pipe_operands_q_1__2__0_) );
  OAI21_X1 U748 ( .B1(n474), .B2(n1246), .A(n165), .ZN(n733) );
  OAI22_X1 U750 ( .A1(n2143), .A2(n724), .B1(n2185), .B2(n71), .ZN(n771) );
  AOI22_X1 U751 ( .A1(n726), .A2(n771), .B1(n725), .B2(n753), .ZN(n727) );
  OAI221_X1 U752 ( .B1(n729), .B2(n762), .C1(n728), .C2(n770), .A(n727), .ZN(
        n820) );
  INV_X1 U753 ( .A(n820), .ZN(n730) );
  MUX2_X1 U754 ( .A(n730), .B(n781), .S(n796), .Z(n838) );
  INV_X1 U755 ( .A(n838), .ZN(n801) );
  MUX2_X1 U756 ( .A(n252), .B(n766), .S(n801), .Z(n731) );
  NAND2_X1 U757 ( .A1(n768), .A2(n731), .ZN(addend_shifted[26]) );
  INV_X1 U758 ( .A(n790), .ZN(n763) );
  NAND2_X1 U759 ( .A1(n1591), .A2(n71), .ZN(n776) );
  OAI222_X1 U760 ( .A1(n763), .A2(n735), .B1(n776), .B2(n748), .C1(n746), .C2(
        n734), .ZN(n823) );
  INV_X1 U761 ( .A(n823), .ZN(n736) );
  MUX2_X1 U762 ( .A(n736), .B(n783), .S(n796), .Z(n839) );
  INV_X1 U763 ( .A(n839), .ZN(n803) );
  MUX2_X1 U764 ( .A(n252), .B(n766), .S(n803), .Z(n737) );
  NAND2_X1 U765 ( .A1(n768), .A2(n737), .ZN(addend_shifted[25]) );
  NAND2_X1 U766 ( .A1(n769), .A2(n846), .ZN(n757) );
  INV_X1 U767 ( .A(n771), .ZN(n738) );
  AOI22_X1 U768 ( .A1(n739), .A2(n745), .B1(n738), .B2(n746), .ZN(n740) );
  OAI211_X1 U769 ( .C1(n770), .C2(n741), .A(n748), .B(n740), .ZN(n785) );
  NAND2_X1 U770 ( .A1(n796), .A2(n846), .ZN(n756) );
  OAI22_X1 U771 ( .A1(n757), .A2(n785), .B1(n756), .B2(n742), .ZN(n743) );
  INV_X1 U772 ( .A(n743), .ZN(n842) );
  MUX2_X1 U773 ( .A(n759), .B(n252), .S(n842), .Z(n744) );
  NAND2_X1 U774 ( .A1(n761), .A2(n744), .ZN(addend_shifted[24]) );
  AOI22_X1 U775 ( .A1(n746), .A2(n776), .B1(n763), .B2(n745), .ZN(n747) );
  OAI211_X1 U776 ( .C1(n770), .C2(n749), .A(n748), .B(n747), .ZN(n832) );
  OAI22_X1 U777 ( .A1(n757), .A2(n832), .B1(n750), .B2(n756), .ZN(n751) );
  INV_X1 U778 ( .A(n751), .ZN(n844) );
  MUX2_X1 U779 ( .A(n759), .B(n252), .S(n844), .Z(n752) );
  NAND2_X1 U780 ( .A1(n761), .A2(n752), .ZN(addend_shifted[23]) );
  MUX2_X1 U781 ( .A(n771), .B(n753), .S(n789), .Z(n754) );
  NAND2_X1 U782 ( .A1(n754), .A2(n43), .ZN(n833) );
  OAI22_X1 U783 ( .A1(n757), .A2(n833), .B1(n756), .B2(n755), .ZN(n758) );
  INV_X1 U784 ( .A(n758), .ZN(n843) );
  MUX2_X1 U785 ( .A(n759), .B(n252), .S(n843), .Z(n760) );
  NAND2_X1 U786 ( .A1(n761), .A2(n760), .ZN(addend_shifted[22]) );
  OAI22_X1 U787 ( .A1(n763), .A2(n770), .B1(n776), .B2(n762), .ZN(n764) );
  MUX2_X1 U788 ( .A(n764), .B(n829), .S(n796), .Z(n765) );
  INV_X1 U789 ( .A(n765), .ZN(n837) );
  MUX2_X1 U790 ( .A(n766), .B(n252), .S(n837), .Z(n767) );
  NAND2_X1 U791 ( .A1(n768), .A2(n767), .ZN(addend_shifted[21]) );
  INV_X1 U792 ( .A(n770), .ZN(n777) );
  NAND2_X1 U793 ( .A1(n777), .A2(n771), .ZN(n834) );
  NOR3_X1 U794 ( .A1(n796), .A2(n834), .A3(n772), .ZN(n773) );
  AOI221_X1 U795 ( .B1(n207), .B2(n205), .C1(n203), .C2(n813), .A(n773), .ZN(
        n774) );
  XOR2_X1 U796 ( .A(n251), .B(n774), .Z(addend_shifted[20]) );
  INV_X1 U797 ( .A(n775), .ZN(n818) );
  INV_X1 U798 ( .A(n776), .ZN(n791) );
  NAND2_X1 U799 ( .A1(n777), .A2(n791), .ZN(n835) );
  MUX2_X1 U800 ( .A(n835), .B(n778), .S(n796), .Z(n779) );
  INV_X1 U801 ( .A(n779), .ZN(n816) );
  AOI22_X1 U802 ( .A1(n205), .A2(n818), .B1(n794), .B2(n816), .ZN(n780) );
  XOR2_X1 U803 ( .A(n251), .B(n780), .Z(addend_shifted[19]) );
  INV_X1 U804 ( .A(n781), .ZN(n821) );
  AOI22_X1 U805 ( .A1(n205), .A2(n821), .B1(n203), .B2(n820), .ZN(n782) );
  XOR2_X1 U806 ( .A(n251), .B(n782), .Z(addend_shifted[18]) );
  INV_X1 U807 ( .A(n783), .ZN(n824) );
  AOI22_X1 U808 ( .A1(n205), .A2(n824), .B1(n203), .B2(n823), .ZN(n784) );
  XOR2_X1 U809 ( .A(n251), .B(n784), .Z(addend_shifted[17]) );
  INV_X1 U810 ( .A(n785), .ZN(n827) );
  AOI22_X1 U811 ( .A1(n203), .A2(n827), .B1(n205), .B2(n826), .ZN(n786) );
  XOR2_X1 U812 ( .A(n251), .B(n786), .Z(addend_shifted[16]) );
  INV_X1 U813 ( .A(n832), .ZN(n806) );
  AOI22_X1 U814 ( .A1(n203), .A2(n806), .B1(n205), .B2(n831), .ZN(n787) );
  XOR2_X1 U815 ( .A(n251), .B(n787), .Z(addend_shifted[15]) );
  INV_X1 U816 ( .A(n833), .ZN(n808) );
  AOI22_X1 U817 ( .A1(n203), .A2(n808), .B1(n205), .B2(n830), .ZN(n788) );
  XOR2_X1 U818 ( .A(n250), .B(n788), .Z(addend_shifted[14]) );
  MUX2_X1 U819 ( .A(n791), .B(n790), .S(n789), .Z(n792) );
  NAND3_X1 U820 ( .A1(n796), .A2(n43), .A3(n792), .ZN(n845) );
  INV_X1 U821 ( .A(n845), .ZN(n793) );
  AOI22_X1 U822 ( .A1(n205), .A2(n829), .B1(n794), .B2(n793), .ZN(n795) );
  XOR2_X1 U823 ( .A(n250), .B(n795), .Z(addend_shifted[13]) );
  INV_X1 U824 ( .A(n834), .ZN(n814) );
  AOI222_X1 U825 ( .A1(n207), .A2(n204), .B1(n203), .B2(n814), .C1(n813), .C2(
        n205), .ZN(n797) );
  XOR2_X1 U826 ( .A(n250), .B(n797), .Z(addend_shifted[12]) );
  INV_X1 U827 ( .A(n835), .ZN(n799) );
  AOI22_X1 U828 ( .A1(n799), .A2(n203), .B1(n817), .B2(n798), .ZN(n800) );
  XOR2_X1 U829 ( .A(n250), .B(n800), .Z(addend_shifted[11]) );
  NAND2_X1 U830 ( .A1(n1660), .A2(n846), .ZN(n812) );
  NAND2_X1 U831 ( .A1(n817), .A2(n251), .ZN(n810) );
  MUX2_X1 U832 ( .A(n252), .B(n810), .S(n801), .Z(n802) );
  NAND2_X1 U833 ( .A1(n812), .A2(n802), .ZN(addend_shifted[10]) );
  MUX2_X1 U834 ( .A(n252), .B(n810), .S(n803), .Z(n804) );
  NAND2_X1 U835 ( .A1(n812), .A2(n804), .ZN(addend_shifted[9]) );
  AOI22_X1 U836 ( .A1(n205), .A2(n827), .B1(n826), .B2(n204), .ZN(n805) );
  XOR2_X1 U837 ( .A(n250), .B(n805), .Z(addend_shifted[8]) );
  AOI22_X1 U838 ( .A1(n205), .A2(n806), .B1(n204), .B2(n831), .ZN(n807) );
  XOR2_X1 U839 ( .A(n250), .B(n807), .Z(addend_shifted[7]) );
  AOI22_X1 U840 ( .A1(n205), .A2(n808), .B1(n830), .B2(n204), .ZN(n809) );
  XOR2_X1 U841 ( .A(n250), .B(n809), .Z(addend_shifted[6]) );
  MUX2_X1 U842 ( .A(n810), .B(n252), .S(n837), .Z(n811) );
  NAND2_X1 U843 ( .A1(n812), .A2(n811), .ZN(addend_shifted[5]) );
  AOI222_X1 U844 ( .A1(n207), .A2(n863), .B1(n814), .B2(n205), .C1(n813), .C2(
        n204), .ZN(n815) );
  XOR2_X1 U845 ( .A(n250), .B(n815), .Z(addend_shifted[4]) );
  AOI22_X1 U846 ( .A1(n818), .A2(n863), .B1(n817), .B2(n816), .ZN(n819) );
  XOR2_X1 U847 ( .A(n250), .B(n819), .Z(addend_shifted[3]) );
  AOI22_X1 U848 ( .A1(n821), .A2(n863), .B1(n204), .B2(n820), .ZN(n822) );
  XOR2_X1 U849 ( .A(n250), .B(n822), .Z(addend_shifted[2]) );
  AOI22_X1 U850 ( .A1(n824), .A2(n863), .B1(n204), .B2(n823), .ZN(n825) );
  XOR2_X1 U851 ( .A(n250), .B(n825), .Z(addend_shifted[1]) );
  AOI22_X1 U852 ( .A1(n827), .A2(n204), .B1(n826), .B2(n863), .ZN(n828) );
  XOR2_X1 U853 ( .A(n250), .B(n828), .Z(addend_shifted[0]) );
  NOR3_X1 U854 ( .A1(n831), .A2(n830), .A3(n829), .ZN(n852) );
  NAND4_X1 U855 ( .A1(n835), .A2(n834), .A3(n833), .A4(n832), .ZN(n841) );
  NAND4_X1 U856 ( .A1(n839), .A2(n838), .A3(n837), .A4(n836), .ZN(n840) );
  AOI22_X1 U857 ( .A1(n204), .A2(n841), .B1(n840), .B2(n863), .ZN(n851) );
  NAND3_X1 U858 ( .A1(n844), .A2(n843), .A3(n842), .ZN(n849) );
  OAI22_X1 U859 ( .A1(n853), .A2(n847), .B1(n846), .B2(n845), .ZN(n848) );
  AOI21_X1 U860 ( .B1(n849), .B2(n863), .A(n848), .ZN(n850) );
  OAI211_X1 U861 ( .C1(n853), .C2(n852), .A(n851), .B(n850), .ZN(n897) );
  NOR2_X1 U862 ( .A1(n897), .A2(n251), .ZN(inject_carry_in) );
  INV_X1 U863 ( .A(sum_raw[37]), .ZN(n854) );
  NAND3_X1 U864 ( .A1(n1660), .A2(n278), .A3(n854), .ZN(n1101) );
  OAI21_X1 U866 ( .B1(sum_raw[37]), .B2(n252), .A(n278), .ZN(n1100) );
  AOI22_X1 U867 ( .A1(N228), .A2(n259), .B1(sum_raw[2]), .B2(n256), .ZN(n856)
         );
  OAI21_X1 U868 ( .B1(n2144), .B2(n278), .A(n856), .ZN(mid_pipe_sum_q_1__2_)
         );
  AOI22_X1 U869 ( .A1(N230), .A2(n259), .B1(sum_raw[4]), .B2(n256), .ZN(n857)
         );
  OAI21_X1 U870 ( .B1(n1671), .B2(n279), .A(n857), .ZN(mid_pipe_sum_q_1__4_)
         );
  AOI22_X1 U871 ( .A1(N229), .A2(n259), .B1(sum_raw[3]), .B2(n256), .ZN(n858)
         );
  OAI21_X1 U872 ( .B1(n2145), .B2(n279), .A(n858), .ZN(mid_pipe_sum_q_1__3_)
         );
  AOI22_X1 U873 ( .A1(N231), .A2(n259), .B1(sum_raw[5]), .B2(n256), .ZN(n859)
         );
  OAI21_X1 U874 ( .B1(n2146), .B2(n279), .A(n859), .ZN(mid_pipe_sum_q_1__5_)
         );
  AOI22_X1 U875 ( .A1(N226), .A2(n259), .B1(sum_raw[0]), .B2(n256), .ZN(n860)
         );
  OAI21_X1 U876 ( .B1(n2204), .B2(n279), .A(n860), .ZN(mid_pipe_sum_q_1__0_)
         );
  AOI22_X1 U877 ( .A1(N227), .A2(n259), .B1(sum_raw[1]), .B2(n256), .ZN(n861)
         );
  OAI21_X1 U878 ( .B1(n2203), .B2(n279), .A(n861), .ZN(mid_pipe_sum_q_1__1_)
         );
  MUX2_X1 U879 ( .A(n1585), .B(n43), .S(n276), .Z(n1328) );
  MUX2_X1 U880 ( .A(n1584), .B(n863), .S(n276), .Z(n1331) );
  AOI22_X1 U881 ( .A1(N260), .A2(n259), .B1(sum_raw[34]), .B2(n894), .ZN(n864)
         );
  AOI22_X1 U882 ( .A1(N262), .A2(n259), .B1(sum_raw[36]), .B2(n256), .ZN(n865)
         );
  OAI21_X1 U883 ( .B1(n2209), .B2(n279), .A(n865), .ZN(n955) );
  AOI22_X1 U884 ( .A1(N261), .A2(n259), .B1(sum_raw[35]), .B2(n256), .ZN(n866)
         );
  AOI22_X1 U885 ( .A1(N256), .A2(n259), .B1(sum_raw[30]), .B2(n894), .ZN(n867)
         );
  OAI21_X1 U886 ( .B1(n2149), .B2(n279), .A(n867), .ZN(n1128) );
  AOI22_X1 U887 ( .A1(N258), .A2(n259), .B1(sum_raw[32]), .B2(n256), .ZN(n868)
         );
  OAI21_X1 U888 ( .B1(n2213), .B2(n279), .A(n868), .ZN(n1201) );
  AOI22_X1 U889 ( .A1(N257), .A2(n259), .B1(n256), .B2(sum_raw[31]), .ZN(n869)
         );
  OAI21_X1 U890 ( .B1(n2150), .B2(n279), .A(n869), .ZN(n1184) );
  AOI22_X1 U891 ( .A1(N259), .A2(n260), .B1(sum_raw[33]), .B2(n256), .ZN(n870)
         );
  AOI22_X1 U892 ( .A1(N252), .A2(n260), .B1(sum_raw[26]), .B2(n894), .ZN(n871)
         );
  OAI21_X1 U893 ( .B1(n2151), .B2(n280), .A(n871), .ZN(n1091) );
  AOI22_X1 U894 ( .A1(N254), .A2(n260), .B1(sum_raw[28]), .B2(n894), .ZN(n872)
         );
  OAI21_X1 U895 ( .B1(n2152), .B2(n277), .A(n872), .ZN(n1129) );
  AOI22_X1 U896 ( .A1(N253), .A2(n260), .B1(sum_raw[27]), .B2(n894), .ZN(n873)
         );
  OAI21_X1 U897 ( .B1(n2153), .B2(n280), .A(n873), .ZN(n1103) );
  AOI22_X1 U898 ( .A1(N255), .A2(n260), .B1(sum_raw[29]), .B2(n894), .ZN(n874)
         );
  OAI21_X1 U899 ( .B1(n2158), .B2(n279), .A(n874), .ZN(n1140) );
  AOI22_X1 U900 ( .A1(N248), .A2(n260), .B1(sum_raw[22]), .B2(n894), .ZN(n875)
         );
  OAI21_X1 U901 ( .B1(n2159), .B2(n280), .A(n875), .ZN(mid_pipe_sum_q_1__22_)
         );
  AOI22_X1 U902 ( .A1(N250), .A2(n260), .B1(sum_raw[24]), .B2(n894), .ZN(n876)
         );
  OAI21_X1 U903 ( .B1(n1682), .B2(n280), .A(n876), .ZN(mid_pipe_sum_q_1__24_)
         );
  AOI22_X1 U904 ( .A1(N249), .A2(n260), .B1(sum_raw[23]), .B2(n894), .ZN(n877)
         );
  OAI21_X1 U905 ( .B1(n1670), .B2(n280), .A(n877), .ZN(mid_pipe_sum_q_1__23_)
         );
  AOI22_X1 U906 ( .A1(N251), .A2(n260), .B1(sum_raw[25]), .B2(n894), .ZN(n878)
         );
  OAI21_X1 U907 ( .B1(n2160), .B2(n280), .A(n878), .ZN(n1104) );
  AOI22_X1 U908 ( .A1(N232), .A2(n260), .B1(sum_raw[6]), .B2(n894), .ZN(n879)
         );
  OAI21_X1 U909 ( .B1(n1675), .B2(n280), .A(n879), .ZN(mid_pipe_sum_q_1__6_)
         );
  AOI22_X1 U910 ( .A1(N234), .A2(n260), .B1(sum_raw[8]), .B2(n894), .ZN(n880)
         );
  OAI21_X1 U911 ( .B1(n1676), .B2(n280), .A(n880), .ZN(mid_pipe_sum_q_1__8_)
         );
  AOI22_X1 U912 ( .A1(N233), .A2(n260), .B1(sum_raw[7]), .B2(n894), .ZN(n881)
         );
  OAI21_X1 U913 ( .B1(n1680), .B2(n280), .A(n881), .ZN(mid_pipe_sum_q_1__7_)
         );
  AOI22_X1 U914 ( .A1(N235), .A2(n895), .B1(sum_raw[9]), .B2(n894), .ZN(n882)
         );
  OAI21_X1 U915 ( .B1(n2193), .B2(n280), .A(n882), .ZN(mid_pipe_sum_q_1__9_)
         );
  AOI22_X1 U916 ( .A1(N240), .A2(n895), .B1(sum_raw[14]), .B2(n894), .ZN(n883)
         );
  OAI21_X1 U917 ( .B1(n1673), .B2(n280), .A(n883), .ZN(mid_pipe_sum_q_1__14_)
         );
  AOI22_X1 U918 ( .A1(N242), .A2(n895), .B1(sum_raw[16]), .B2(n894), .ZN(n884)
         );
  OAI21_X1 U919 ( .B1(n1674), .B2(n280), .A(n884), .ZN(mid_pipe_sum_q_1__16_)
         );
  AOI22_X1 U920 ( .A1(N241), .A2(n895), .B1(sum_raw[15]), .B2(n894), .ZN(n885)
         );
  OAI21_X1 U921 ( .B1(n1677), .B2(n277), .A(n885), .ZN(mid_pipe_sum_q_1__15_)
         );
  AOI22_X1 U922 ( .A1(N243), .A2(n895), .B1(sum_raw[17]), .B2(n894), .ZN(n886)
         );
  OAI21_X1 U923 ( .B1(n2161), .B2(n280), .A(n886), .ZN(mid_pipe_sum_q_1__17_)
         );
  AOI22_X1 U924 ( .A1(N244), .A2(n895), .B1(sum_raw[18]), .B2(n894), .ZN(n887)
         );
  OAI21_X1 U925 ( .B1(n2162), .B2(n282), .A(n887), .ZN(mid_pipe_sum_q_1__18_)
         );
  AOI22_X1 U926 ( .A1(N246), .A2(n895), .B1(sum_raw[20]), .B2(n894), .ZN(n888)
         );
  OAI21_X1 U927 ( .B1(n1681), .B2(n279), .A(n888), .ZN(mid_pipe_sum_q_1__20_)
         );
  AOI22_X1 U928 ( .A1(N245), .A2(n895), .B1(sum_raw[19]), .B2(n894), .ZN(n889)
         );
  OAI21_X1 U929 ( .B1(n1672), .B2(n276), .A(n889), .ZN(mid_pipe_sum_q_1__19_)
         );
  AOI22_X1 U930 ( .A1(N247), .A2(n895), .B1(sum_raw[21]), .B2(n894), .ZN(n890)
         );
  OAI21_X1 U931 ( .B1(n1683), .B2(n276), .A(n890), .ZN(mid_pipe_sum_q_1__21_)
         );
  AOI22_X1 U932 ( .A1(N236), .A2(n895), .B1(sum_raw[10]), .B2(n894), .ZN(n891)
         );
  OAI21_X1 U933 ( .B1(n2163), .B2(n279), .A(n891), .ZN(mid_pipe_sum_q_1__10_)
         );
  AOI22_X1 U934 ( .A1(N238), .A2(n895), .B1(sum_raw[12]), .B2(n894), .ZN(n892)
         );
  OAI21_X1 U935 ( .B1(n2165), .B2(n276), .A(n892), .ZN(mid_pipe_sum_q_1__12_)
         );
  AOI22_X1 U936 ( .A1(N237), .A2(n895), .B1(sum_raw[11]), .B2(n894), .ZN(n893)
         );
  OAI21_X1 U937 ( .B1(n2166), .B2(n277), .A(n893), .ZN(mid_pipe_sum_q_1__11_)
         );
  AOI22_X1 U938 ( .A1(N239), .A2(n895), .B1(sum_raw[13]), .B2(n256), .ZN(n896)
         );
  OAI21_X1 U939 ( .B1(n1679), .B2(n279), .A(n896), .ZN(mid_pipe_sum_q_1__13_)
         );
  MUX2_X1 U940 ( .A(n1567), .B(n897), .S(n276), .Z(n1312) );
  XOR2_X1 U941 ( .A(n31), .B(n1622), .Z(n901) );
  XOR2_X1 U943 ( .A(n2172), .B(n1719), .Z(n900) );
  INV_X1 U945 ( .A(n973), .ZN(n904) );
  INV_X1 U946 ( .A(n1076), .ZN(n924) );
  OAI21_X1 U947 ( .B1(n31), .B2(n2187), .A(n2178), .ZN(n918) );
  INV_X1 U948 ( .A(n918), .ZN(n917) );
  NOR3_X1 U949 ( .A1(n2187), .A2(n31), .A3(n2178), .ZN(n906) );
  INV_X1 U951 ( .A(leading_zero_count[2]), .ZN(n907) );
  OAI21_X1 U952 ( .B1(n2172), .B2(n2190), .A(n1684), .ZN(n916) );
  INV_X1 U953 ( .A(n916), .ZN(n915) );
  NOR3_X1 U954 ( .A1(n2190), .A2(n2172), .A3(n1684), .ZN(n910) );
  OAI21_X1 U955 ( .B1(n915), .B2(n910), .A(n928), .ZN(n911) );
  NAND2_X1 U957 ( .A1(n915), .A2(n2157), .ZN(n927) );
  INV_X1 U958 ( .A(n927), .ZN(n933) );
  AOI21_X1 U959 ( .B1(n1717), .B2(n916), .A(n933), .ZN(n921) );
  NAND2_X1 U960 ( .A1(n917), .A2(n40), .ZN(n925) );
  INV_X1 U961 ( .A(n925), .ZN(n932) );
  AOI21_X1 U962 ( .B1(n1625), .B2(n918), .A(n932), .ZN(n920) );
  AOI22_X1 U963 ( .A1(n199), .A2(n1672), .B1(n236), .B2(n1683), .ZN(n922) );
  OAI221_X1 U964 ( .B1(n95), .B2(n1571), .C1(n1142), .C2(n2196), .A(n922), 
        .ZN(n1169) );
  INV_X1 U965 ( .A(n193), .ZN(n1121) );
  NAND2_X1 U967 ( .A1(n189), .A2(n174), .ZN(n1080) );
  AOI22_X1 U968 ( .A1(n1677), .A2(n199), .B1(n2161), .B2(n2208), .ZN(n923) );
  INV_X1 U969 ( .A(n1048), .ZN(n975) );
  AOI222_X1 U970 ( .A1(n924), .A2(n78), .B1(n1121), .B2(n74), .C1(n172), .C2(
        n195), .ZN(n945) );
  NAND2_X1 U971 ( .A1(n1626), .A2(n925), .ZN(n926) );
  XOR2_X1 U972 ( .A(n926), .B(n1627), .Z(n931) );
  NAND3_X1 U973 ( .A1(n1716), .A2(n928), .A3(n927), .ZN(n929) );
  XOR2_X1 U974 ( .A(n1626), .B(n932), .Z(n939) );
  XOR2_X1 U975 ( .A(n1716), .B(n933), .Z(n937) );
  INV_X1 U976 ( .A(n1155), .ZN(n1173) );
  NAND2_X1 U977 ( .A1(n975), .A2(n103), .ZN(n1072) );
  AOI22_X1 U979 ( .A1(n118), .A2(n2167), .B1(n8), .B2(n1573), .ZN(n940) );
  AOI22_X1 U980 ( .A1(n199), .A2(n1589), .B1(n2207), .B2(n1588), .ZN(n941) );
  OAI221_X1 U981 ( .B1(n2144), .B2(n9), .C1(n1671), .C2(n1142), .A(n941), .ZN(
        n1078) );
  INV_X1 U982 ( .A(n1078), .ZN(n942) );
  OAI22_X1 U983 ( .A1(n2203), .A2(n237), .B1(n2204), .B2(n79), .ZN(n968) );
  INV_X1 U984 ( .A(n968), .ZN(n1177) );
  AOI22_X1 U985 ( .A1(n942), .A2(n174), .B1(n1177), .B2(n1156), .ZN(n943) );
  OAI211_X1 U986 ( .C1(n1072), .C2(n245), .A(n1209), .B(n943), .ZN(n1029) );
  AOI22_X1 U987 ( .A1(n1670), .A2(n101), .B1(n2160), .B2(n2208), .ZN(n944) );
  OAI222_X1 U988 ( .A1(n945), .A2(n1164), .B1(n1211), .B2(n1029), .C1(n1159), 
        .C2(n1172), .ZN(n946) );
  INV_X1 U989 ( .A(n946), .ZN(n1111) );
  AOI22_X1 U990 ( .A1(n2144), .A2(n22), .B1(n2208), .B2(n1671), .ZN(n947) );
  OAI221_X1 U991 ( .B1(n95), .B2(n1586), .C1(n1142), .C2(n1589), .A(n947), 
        .ZN(n967) );
  NAND3_X1 U993 ( .A1(n138), .A2(n265), .A3(n1587), .ZN(n1157) );
  INV_X1 U994 ( .A(n1157), .ZN(n949) );
  AOI22_X1 U995 ( .A1(n1675), .A2(n118), .B1(n1676), .B2(n236), .ZN(n948) );
  INV_X1 U996 ( .A(n988), .ZN(n1055) );
  OAI222_X1 U997 ( .A1(n135), .A2(n1080), .B1(n103), .B2(n949), .C1(n1055), 
        .C2(n1072), .ZN(n1028) );
  AOI22_X1 U998 ( .A1(n2163), .A2(n101), .B1(n2165), .B2(n8), .ZN(n950) );
  OAI221_X1 U999 ( .B1(n95), .B2(n1573), .C1(n1142), .C2(n1568), .A(n950), 
        .ZN(n1050) );
  INV_X1 U1000 ( .A(n1050), .ZN(n1053) );
  AOI22_X1 U1001 ( .A1(n2162), .A2(n101), .B1(n1681), .B2(n236), .ZN(n951) );
  OAI221_X1 U1002 ( .B1(n73), .B2(n1572), .C1(n79), .C2(n2155), .A(n951), .ZN(
        n1152) );
  INV_X1 U1003 ( .A(n1152), .ZN(n1115) );
  AOI22_X1 U1004 ( .A1(n1673), .A2(n101), .B1(n1674), .B2(n2208), .ZN(n952) );
  INV_X1 U1005 ( .A(n156), .ZN(n1114) );
  AOI222_X1 U1006 ( .A1(n1053), .A2(n78), .B1(n1115), .B2(n74), .C1(n1114), 
        .C2(n195), .ZN(n954) );
  AOI22_X1 U1007 ( .A1(n2159), .A2(n199), .B1(n1682), .B2(n2207), .ZN(n953) );
  OAI222_X1 U1008 ( .A1(n1211), .A2(n1028), .B1(n954), .B2(n1164), .C1(n1159), 
        .C2(n1154), .ZN(n1097) );
  INV_X1 U1009 ( .A(n1097), .ZN(n966) );
  AOI222_X1 U1010 ( .A1(n101), .A2(n1667), .B1(n275), .B2(n1669), .C1(n271), 
        .C2(n1583), .ZN(n965) );
  AOI22_X1 U1011 ( .A1(n199), .A2(n1577), .B1(n2207), .B2(n1576), .ZN(n957) );
  OAI221_X1 U1012 ( .B1(n2151), .B2(n95), .C1(n79), .C2(n2152), .A(n957), .ZN(
        n958) );
  INV_X1 U1013 ( .A(n958), .ZN(n1171) );
  AOI22_X1 U1014 ( .A1(n101), .A2(n1580), .B1(n2208), .B2(n1668), .ZN(n959) );
  OAI222_X1 U1015 ( .A1(n1171), .A2(n194), .B1(n32), .B2(n1080), .C1(n1172), 
        .C2(n1209), .ZN(n962) );
  AOI22_X1 U1016 ( .A1(n1169), .A2(n75), .B1(n1076), .B2(n200), .ZN(n960) );
  OAI221_X1 U1017 ( .B1(n1079), .B2(n1209), .C1(n172), .C2(n1080), .A(n960), 
        .ZN(n961) );
  INV_X1 U1018 ( .A(n13), .ZN(n1025) );
  AOI22_X1 U1019 ( .A1(n962), .A2(n1207), .B1(n16), .B2(n96), .ZN(n963) );
  AOI21_X1 U1020 ( .B1(n1111), .B2(n966), .A(n1223), .ZN(n1021) );
  NAND2_X1 U1021 ( .A1(n163), .A2(n103), .ZN(n989) );
  INV_X1 U1022 ( .A(n989), .ZN(n1027) );
  AOI211_X1 U1023 ( .C1(n232), .C2(n968), .A(n244), .B(n1027), .ZN(n979) );
  AOI22_X1 U1024 ( .A1(n118), .A2(n1588), .B1(n265), .B2(n2167), .ZN(n969) );
  OAI221_X1 U1025 ( .B1(n1671), .B2(n73), .C1(n1675), .C2(n240), .A(n969), 
        .ZN(n1066) );
  AOI22_X1 U1026 ( .A1(n118), .A2(n1586), .B1(n265), .B2(n1589), .ZN(n970) );
  OAI221_X1 U1027 ( .B1(n2204), .B2(n73), .C1(n2144), .C2(n240), .A(n970), 
        .ZN(n1218) );
  AOI21_X1 U1028 ( .B1(n138), .B2(n1066), .A(n1218), .ZN(n977) );
  AOI22_X1 U1029 ( .A1(n1671), .A2(n199), .B1(n1675), .B2(n265), .ZN(n971) );
  OAI221_X1 U1030 ( .B1(n95), .B2(n1589), .C1(n240), .C2(n1588), .A(n971), 
        .ZN(n1032) );
  INV_X1 U1031 ( .A(n1032), .ZN(n1071) );
  AOI22_X1 U1032 ( .A1(n2203), .A2(n973), .B1(n2204), .B2(n972), .ZN(n974) );
  OAI211_X1 U1033 ( .C1(n1198), .C2(n1590), .A(n1143), .B(n974), .ZN(n1033) );
  INV_X1 U1034 ( .A(n1033), .ZN(n1195) );
  AOI21_X1 U1035 ( .B1(n1071), .B2(n138), .A(n1195), .ZN(n976) );
  OAI22_X1 U1036 ( .A1(n1156), .A2(n977), .B1(n1156), .B2(n976), .ZN(n1038) );
  INV_X1 U1037 ( .A(n1038), .ZN(n978) );
  AOI21_X1 U1038 ( .B1(n979), .B2(n978), .A(n1211), .ZN(n1020) );
  NOR3_X1 U1039 ( .A1(gt_547_A_3_), .A2(gt_547_A_4_), .A3(gt_547_A_5_), .ZN(
        n980) );
  NAND3_X1 U1040 ( .A1(n998), .A2(n1003), .A3(n980), .ZN(n981) );
  INV_X1 U1041 ( .A(n1154), .ZN(n1116) );
  AOI22_X1 U1042 ( .A1(n101), .A2(n1579), .B1(n2207), .B2(n1578), .ZN(n982) );
  OAI221_X1 U1043 ( .B1(n2160), .B2(n9), .C1(n2153), .C2(n1142), .A(n982), 
        .ZN(n1113) );
  AOI22_X1 U1044 ( .A1(n101), .A2(n1582), .B1(n2207), .B2(n1581), .ZN(n983) );
  OAI221_X1 U1045 ( .B1(n2158), .B2(n73), .C1(n2150), .C2(n1142), .A(n983), 
        .ZN(n1158) );
  OAI22_X1 U1046 ( .A1(n2209), .A2(n237), .B1(n2212), .B2(n102), .ZN(n984) );
  AOI221_X1 U1047 ( .B1(n275), .B2(n1668), .C1(n271), .C2(n1667), .A(n984), 
        .ZN(n986) );
  NAND2_X1 U1048 ( .A1(n232), .A2(n1173), .ZN(n1214) );
  OAI33_X1 U1049 ( .A1(n987), .A2(n1155), .A3(n1176), .B1(n986), .B2(n1176), 
        .B3(n1214), .ZN(n992) );
  NAND2_X1 U1050 ( .A1(n1170), .A2(n988), .ZN(n1022) );
  NAND3_X1 U1051 ( .A1(n1022), .A2(n1155), .A3(n92), .ZN(n990) );
  OAI22_X1 U1052 ( .A1(n1114), .A2(n1080), .B1(n1053), .B2(n194), .ZN(n1024)
         );
  OAI33_X1 U1053 ( .A1(n990), .A2(n1024), .A3(n211), .B1(n989), .B2(n92), .B3(
        n1155), .ZN(n991) );
  INV_X1 U1054 ( .A(n1225), .ZN(n993) );
  AOI22_X1 U1055 ( .A1(N342), .A2(n113), .B1(n160), .B2(gt_547_A_5_), .ZN(n994) );
  NAND2_X1 U1056 ( .A1(N339), .A2(n112), .ZN(n1237) );
  INV_X1 U1057 ( .A(sub_549_A_0_), .ZN(n1230) );
  NAND2_X1 U1058 ( .A1(n1003), .A2(n1230), .ZN(n996) );
  INV_X1 U1059 ( .A(n996), .ZN(n1001) );
  AOI21_X1 U1060 ( .B1(n996), .B2(gt_547_A_2_), .A(n213), .ZN(n997) );
  OAI22_X1 U1061 ( .A1(n1231), .A2(n998), .B1(n1243), .B2(n997), .ZN(n1236) );
  NAND2_X1 U1062 ( .A1(n213), .A2(n999), .ZN(n1013) );
  OAI21_X1 U1063 ( .B1(n999), .B2(n213), .A(n1013), .ZN(n1239) );
  NAND2_X1 U1064 ( .A1(N340), .A2(n112), .ZN(n1240) );
  AOI21_X1 U1065 ( .B1(sub_549_A_0_), .B2(gt_547_A_1_), .A(n1001), .ZN(n1004)
         );
  NAND2_X1 U1066 ( .A1(N338), .A2(n241), .ZN(n1002) );
  OAI221_X1 U1067 ( .B1(n131), .B2(n1004), .C1(n1003), .C2(n146), .A(n1002), 
        .ZN(n1234) );
  NAND2_X1 U1068 ( .A1(N337), .A2(n112), .ZN(n1232) );
  INV_X1 U1069 ( .A(n1013), .ZN(n1014) );
  NOR3_X1 U1070 ( .A1(n131), .A2(n1015), .A3(n1014), .ZN(n1016) );
  NOR3_X1 U1071 ( .A1(n1157), .A2(n1156), .A3(n1176), .ZN(n1019) );
  INV_X1 U1072 ( .A(n1022), .ZN(n1023) );
  NOR3_X1 U1073 ( .A1(n1024), .A2(n211), .A3(n1023), .ZN(n1026) );
  NOR4_X1 U1074 ( .A1(n1027), .A2(n1026), .A3(n244), .A4(n1025), .ZN(n1086) );
  INV_X1 U1075 ( .A(n1028), .ZN(n1037) );
  INV_X1 U1076 ( .A(n1029), .ZN(n1036) );
  AOI22_X1 U1077 ( .A1(n1676), .A2(n118), .B1(n2163), .B2(n265), .ZN(n1030) );
  OAI221_X1 U1078 ( .B1(n9), .B2(n2167), .C1(n240), .C2(n1573), .A(n1030), 
        .ZN(n1068) );
  INV_X1 U1079 ( .A(n1068), .ZN(n1043) );
  AOI22_X1 U1080 ( .A1(n1033), .A2(n1156), .B1(n1032), .B2(n173), .ZN(n1034)
         );
  OAI211_X1 U1081 ( .C1(n1043), .C2(n1072), .A(n1209), .B(n1034), .ZN(n1094)
         );
  INV_X1 U1082 ( .A(n1094), .ZN(n1035) );
  NOR4_X1 U1083 ( .A1(n1038), .A2(n1037), .A3(n1036), .A4(n1035), .ZN(n1085)
         );
  AOI22_X1 U1084 ( .A1(n118), .A2(n1573), .B1(n265), .B2(n1568), .ZN(n1039) );
  OAI221_X1 U1085 ( .B1(n1676), .B2(n9), .C1(n2163), .C2(n240), .A(n1039), 
        .ZN(n1067) );
  AOI22_X1 U1086 ( .A1(n2161), .A2(n118), .B1(n1672), .B2(n265), .ZN(n1040) );
  OAI221_X1 U1087 ( .B1(n1143), .B2(n2189), .C1(n240), .C2(n1571), .A(n1040), 
        .ZN(n1061) );
  INV_X1 U1088 ( .A(n1061), .ZN(n1145) );
  AOI22_X1 U1089 ( .A1(n1674), .A2(n118), .B1(n2162), .B2(n265), .ZN(n1041) );
  OAI221_X1 U1090 ( .B1(n9), .B2(n2156), .C1(n240), .C2(n1572), .A(n1041), 
        .ZN(n1042) );
  INV_X1 U1091 ( .A(n1042), .ZN(n1132) );
  OAI33_X1 U1092 ( .A1(n1043), .A2(n1209), .A3(n1067), .B1(n1145), .B2(n1132), 
        .B3(n1080), .ZN(n1059) );
  AOI22_X1 U1093 ( .A1(n1679), .A2(n199), .B1(n1677), .B2(n265), .ZN(n1044) );
  OAI221_X1 U1094 ( .B1(n9), .B2(n1569), .C1(n240), .C2(n2154), .A(n1044), 
        .ZN(n1064) );
  INV_X1 U1095 ( .A(n1064), .ZN(n1106) );
  AOI22_X1 U1096 ( .A1(n2165), .A2(n101), .B1(n1673), .B2(n265), .ZN(n1045) );
  OAI221_X1 U1097 ( .B1(n95), .B2(n1568), .C1(n240), .C2(n2200), .A(n1045), 
        .ZN(n1069) );
  INV_X1 U1098 ( .A(n1069), .ZN(n1093) );
  AOI22_X1 U1099 ( .A1(n1683), .A2(n118), .B1(n1670), .B2(n265), .ZN(n1046) );
  OAI221_X1 U1100 ( .B1(n1143), .B2(n2196), .C1(n240), .C2(n1575), .A(n1046), 
        .ZN(n1208) );
  INV_X1 U1101 ( .A(n1208), .ZN(n1144) );
  AOI22_X1 U1102 ( .A1(n1681), .A2(n101), .B1(n2159), .B2(n265), .ZN(n1047) );
  OAI221_X1 U1103 ( .B1(n73), .B2(n2155), .C1(n240), .C2(n2195), .A(n1047), 
        .ZN(n1189) );
  INV_X1 U1104 ( .A(n1189), .ZN(n1131) );
  OAI33_X1 U1105 ( .A1(n1106), .A2(n1093), .A3(n194), .B1(n1144), .B2(n1131), 
        .B3(n1072), .ZN(n1058) );
  INV_X1 U1106 ( .A(n1066), .ZN(n1060) );
  INV_X1 U1107 ( .A(n1218), .ZN(n1063) );
  AOI22_X1 U1108 ( .A1(n1060), .A2(n173), .B1(n1063), .B2(n1156), .ZN(n1049)
         );
  OAI211_X1 U1109 ( .C1(n1072), .C2(n1067), .A(n1209), .B(n1049), .ZN(n1107)
         );
  AOI22_X1 U1110 ( .A1(n232), .A2(n156), .B1(n1204), .B2(n1050), .ZN(n1051) );
  OAI221_X1 U1111 ( .B1(n135), .B2(n1209), .C1(n1055), .C2(n194), .A(n1051), 
        .ZN(n1160) );
  AOI22_X1 U1112 ( .A1(n1069), .A2(n232), .B1(n1068), .B2(n74), .ZN(n1056) );
  OAI221_X1 U1113 ( .B1(n1195), .B2(n1209), .C1(n1071), .C2(n194), .A(n1056), 
        .ZN(n1133) );
  OAI211_X1 U1114 ( .C1(n1059), .C2(n1058), .A(n1057), .B(n1107), .ZN(n1083)
         );
  AOI22_X1 U1115 ( .A1(n232), .A2(n1061), .B1(n1060), .B2(n78), .ZN(n1062) );
  OAI221_X1 U1116 ( .B1(n1106), .B2(n1080), .C1(n194), .C2(n1067), .A(n1062), 
        .ZN(n1202) );
  AOI22_X1 U1117 ( .A1(n232), .A2(n1064), .B1(n1063), .B2(n78), .ZN(n1065) );
  AOI22_X1 U1118 ( .A1(n1069), .A2(n1204), .B1(n195), .B2(n1068), .ZN(n1070)
         );
  OAI221_X1 U1119 ( .B1(n1132), .B2(n1072), .C1(n1071), .C2(n1209), .A(n1070), 
        .ZN(n1185) );
  NAND3_X1 U1120 ( .A1(n1202), .A2(n1146), .A3(n1185), .ZN(n1082) );
  AOI22_X1 U1121 ( .A1(n1204), .A2(n1076), .B1(n232), .B2(n1073), .ZN(n1074)
         );
  INV_X1 U1122 ( .A(n1075), .ZN(n1175) );
  AOI22_X1 U1123 ( .A1(n1177), .A2(n78), .B1(n232), .B2(n1076), .ZN(n1077) );
  OAI221_X1 U1124 ( .B1(n1080), .B2(n245), .C1(n194), .C2(n1078), .A(n1077), 
        .ZN(n1124) );
  INV_X1 U1125 ( .A(n1124), .ZN(n1081) );
  NAND3_X1 U1126 ( .A1(n1084), .A2(n1085), .A3(n1086), .ZN(n1089) );
  OAI21_X1 U1127 ( .B1(n212), .B2(n113), .A(n1231), .ZN(n1221) );
  OAI21_X1 U1128 ( .B1(n1177), .B2(n1159), .A(n2202), .ZN(n1088) );
  AOI221_X1 U1129 ( .B1(n1089), .B2(n1207), .C1(n1097), .C2(n1221), .A(n1088), 
        .ZN(n1090) );
  INV_X1 U1130 ( .A(n1221), .ZN(n1229) );
  AOI22_X1 U1131 ( .A1(n118), .A2(n2199), .B1(n265), .B2(n1579), .ZN(n1092) );
  OAI221_X1 U1132 ( .B1(n1670), .B2(n73), .C1(n2160), .C2(n240), .A(n1092), 
        .ZN(n1187) );
  INV_X1 U1133 ( .A(n1187), .ZN(n1096) );
  AOI222_X1 U1134 ( .A1(n1093), .A2(n78), .B1(n1131), .B2(n74), .C1(n1132), 
        .C2(n195), .ZN(n1095) );
  OAI222_X1 U1135 ( .A1(n1096), .A2(n1159), .B1(n1095), .B2(n1164), .C1(n1211), 
        .C2(n1094), .ZN(n1112) );
  AOI22_X1 U1136 ( .A1(n1112), .A2(n113), .B1(n155), .B2(n1097), .ZN(n1098) );
  OAI211_X1 U1137 ( .C1(n1111), .C2(n1229), .A(n1272), .B(n1098), .ZN(
        round_sticky_bits[1]) );
  MUX2_X1 U1138 ( .A(n1101), .B(n1100), .S(n1714), .Z(n1102) );
  OAI21_X1 U1139 ( .B1(n2192), .B2(n282), .A(n1102), .ZN(
        mid_pipe_final_sign_q_1_) );
  AOI22_X1 U1140 ( .A1(n101), .A2(n1574), .B1(n265), .B2(n1577), .ZN(n1105) );
  OAI221_X1 U1141 ( .B1(n1682), .B2(n95), .C1(n2151), .C2(n240), .A(n1105), 
        .ZN(n1205) );
  INV_X1 U1142 ( .A(n1205), .ZN(n1109) );
  AOI222_X1 U1143 ( .A1(n1145), .A2(n195), .B1(n1144), .B2(n74), .C1(n1106), 
        .C2(n78), .ZN(n1108) );
  OAI222_X1 U1144 ( .A1(n1109), .A2(n1159), .B1(n1108), .B2(n1164), .C1(n1211), 
        .C2(n1107), .ZN(n1125) );
  AOI22_X1 U1145 ( .A1(n1112), .A2(n1221), .B1(n1125), .B2(n113), .ZN(n1110)
         );
  OAI211_X1 U1146 ( .C1(n1111), .C2(n185), .A(n1272), .B(n1110), .ZN(
        pre_round_mantissa[0]) );
  INV_X1 U1147 ( .A(n1112), .ZN(n1120) );
  INV_X1 U1148 ( .A(n1113), .ZN(n1153) );
  OAI222_X1 U1149 ( .A1(n1153), .A2(n1159), .B1(n1118), .B2(n1164), .C1(n1211), 
        .C2(n1117), .ZN(n1136) );
  AOI22_X1 U1150 ( .A1(n1136), .A2(n113), .B1(n1125), .B2(n1221), .ZN(n1119)
         );
  OAI211_X1 U1151 ( .C1(n1120), .C2(n185), .A(n123), .B(n1119), .ZN(
        pre_round_mantissa[1]) );
  INV_X1 U1152 ( .A(n1172), .ZN(n1122) );
  OAI222_X1 U1153 ( .A1(n1211), .A2(n1124), .B1(n1123), .B2(n1164), .C1(n1171), 
        .C2(n1159), .ZN(n1150) );
  INV_X1 U1154 ( .A(n1150), .ZN(n1127) );
  AOI22_X1 U1155 ( .A1(n1136), .A2(n1221), .B1(n155), .B2(n1125), .ZN(n1126)
         );
  OAI211_X1 U1156 ( .C1(n1223), .C2(n1127), .A(n123), .B(n1126), .ZN(
        pre_round_mantissa[2]) );
  AOI22_X1 U1157 ( .A1(n101), .A2(n1578), .B1(n265), .B2(n1582), .ZN(n1130) );
  OAI221_X1 U1158 ( .B1(n2153), .B2(n9), .C1(n2158), .C2(n240), .A(n1130), 
        .ZN(n1186) );
  INV_X1 U1159 ( .A(n1186), .ZN(n1135) );
  AOI222_X1 U1160 ( .A1(n1132), .A2(n78), .B1(n74), .B2(n1187), .C1(n1131), 
        .C2(n195), .ZN(n1134) );
  OAI222_X1 U1161 ( .A1(n1135), .A2(n1159), .B1(n1134), .B2(n1164), .C1(n1133), 
        .C2(n1211), .ZN(n1167) );
  INV_X1 U1162 ( .A(n1167), .ZN(n1138) );
  AOI22_X1 U1163 ( .A1(n1150), .A2(n1221), .B1(n155), .B2(n1136), .ZN(n1137)
         );
  OAI211_X1 U1164 ( .C1(n1223), .C2(n1138), .A(n123), .B(n1137), .ZN(
        pre_round_mantissa[3]) );
  AOI22_X1 U1165 ( .A1(n101), .A2(n1576), .B1(n265), .B2(n1580), .ZN(n1141) );
  OAI221_X1 U1166 ( .B1(n2152), .B2(n95), .C1(n2149), .C2(n240), .A(n1141), 
        .ZN(n1203) );
  INV_X1 U1167 ( .A(n1203), .ZN(n1148) );
  AOI222_X1 U1168 ( .A1(n1145), .A2(n78), .B1(n74), .B2(n1205), .C1(n1144), 
        .C2(n195), .ZN(n1147) );
  OAI222_X1 U1169 ( .A1(n1148), .A2(n1159), .B1(n1147), .B2(n1164), .C1(n1211), 
        .C2(n1146), .ZN(n1149) );
  INV_X1 U1170 ( .A(n1149), .ZN(n1181) );
  AOI22_X1 U1171 ( .A1(n1167), .A2(n1221), .B1(n155), .B2(n1150), .ZN(n1151)
         );
  OAI211_X1 U1172 ( .C1(n1223), .C2(n1181), .A(n175), .B(n1151), .ZN(
        pre_round_mantissa[4]) );
  AOI222_X1 U1173 ( .A1(n195), .A2(n1154), .B1(n1153), .B2(n74), .C1(n78), 
        .C2(n1152), .ZN(n1165) );
  NOR3_X1 U1174 ( .A1(n1157), .A2(n1156), .A3(n1155), .ZN(n1163) );
  INV_X1 U1175 ( .A(n1158), .ZN(n1161) );
  AOI22_X1 U1176 ( .A1(n1161), .A2(n97), .B1(n96), .B2(n1160), .ZN(n1162) );
  OAI221_X1 U1177 ( .B1(n1165), .B2(n1164), .C1(n92), .C2(n1163), .A(n1162), 
        .ZN(n1166) );
  INV_X1 U1178 ( .A(n1166), .ZN(n1196) );
  AOI22_X1 U1179 ( .A1(n1196), .A2(n113), .B1(n155), .B2(n1167), .ZN(n1168) );
  OAI211_X1 U1180 ( .C1(n1229), .C2(n1181), .A(n175), .B(n1168), .ZN(
        pre_round_mantissa[5]) );
  AOI222_X1 U1181 ( .A1(n195), .A2(n1172), .B1(n1171), .B2(n74), .C1(n78), 
        .C2(n193), .ZN(n1174) );
  MUX2_X1 U1182 ( .A(n1175), .B(n1174), .S(n1173), .Z(n1179) );
  NAND2_X1 U1183 ( .A1(n1214), .A2(n1176), .ZN(n1216) );
  AOI22_X1 U1184 ( .A1(n32), .A2(n97), .B1(n1177), .B2(n1176), .ZN(n1178) );
  AOI22_X1 U1185 ( .A1(n222), .A2(n112), .B1(n1196), .B2(n1221), .ZN(n1180) );
  OAI211_X1 U1186 ( .C1(n1181), .C2(n185), .A(n175), .B(n1180), .ZN(
        pre_round_mantissa[6]) );
  OAI22_X1 U1187 ( .A1(n2212), .A2(n1198), .B1(n2213), .B2(n102), .ZN(n1182)
         );
  INV_X1 U1188 ( .A(n1185), .ZN(n1191) );
  AOI22_X1 U1189 ( .A1(n195), .A2(n1187), .B1(n74), .B2(n1186), .ZN(n1188) );
  OAI211_X1 U1190 ( .C1(n1209), .C2(n1189), .A(n1207), .B(n1188), .ZN(n1190)
         );
  OAI21_X1 U1191 ( .B1(n1191), .B2(n1211), .A(n1190), .ZN(n1192) );
  OAI21_X1 U1192 ( .B1(n1193), .B2(n1214), .A(n1192), .ZN(n1194) );
  OAI211_X1 U1193 ( .C1(n92), .C2(n1195), .A(n1194), .B(n1216), .ZN(n1220) );
  AOI22_X1 U1194 ( .A1(n222), .A2(n1221), .B1(n1196), .B2(n155), .ZN(n1197) );
  OAI211_X1 U1195 ( .C1(n1223), .C2(n1220), .A(n123), .B(n1197), .ZN(
        pre_round_mantissa[7]) );
  OAI22_X1 U1196 ( .A1(n2210), .A2(n1198), .B1(n2211), .B2(n102), .ZN(n1199)
         );
  INV_X1 U1197 ( .A(n1202), .ZN(n1212) );
  AOI22_X1 U1198 ( .A1(n195), .A2(n1205), .B1(n74), .B2(n1203), .ZN(n1206) );
  OAI211_X1 U1199 ( .C1(n1209), .C2(n1208), .A(n1207), .B(n1206), .ZN(n1210)
         );
  OAI21_X1 U1200 ( .B1(n1212), .B2(n1211), .A(n1210), .ZN(n1213) );
  OAI21_X1 U1201 ( .B1(n1215), .B2(n1214), .A(n1213), .ZN(n1217) );
  OAI211_X1 U1202 ( .C1(n92), .C2(n1218), .A(n1217), .B(n1216), .ZN(n1228) );
  INV_X1 U1203 ( .A(n1220), .ZN(n1226) );
  AOI22_X1 U1204 ( .A1(n1226), .A2(n1221), .B1(n222), .B2(n155), .ZN(n1222) );
  OAI211_X1 U1205 ( .C1(n1223), .C2(n1228), .A(n123), .B(n1222), .ZN(
        pre_round_mantissa[8]) );
  AOI22_X1 U1206 ( .A1(n1226), .A2(n155), .B1(n145), .B2(n113), .ZN(n1227) );
  OAI211_X1 U1207 ( .C1(n1229), .C2(n1228), .A(n175), .B(n1227), .ZN(
        pre_round_mantissa[9]) );
  MUX2_X1 U1208 ( .A(n146), .B(n185), .S(n1230), .Z(n1233) );
  INV_X1 U1209 ( .A(n1234), .ZN(n1235) );
  NAND2_X1 U1210 ( .A1(n1235), .A2(n175), .ZN(pre_round_exponent[1]) );
  INV_X1 U1211 ( .A(n1236), .ZN(n1238) );
  NAND3_X1 U1212 ( .A1(n1238), .A2(n175), .A3(n1237), .ZN(
        pre_round_exponent[2]) );
  INV_X1 U1213 ( .A(n1240), .ZN(n1241) );
  AOI21_X1 U1214 ( .B1(n160), .B2(gt_547_A_3_), .A(n1241), .ZN(n1242) );
  OAI211_X1 U1215 ( .C1(n1000), .C2(n185), .A(n175), .B(n1242), .ZN(
        pre_round_exponent[3]) );
  NAND2_X1 U1216 ( .A1(n83), .A2(n175), .ZN(pre_round_exponent[4]) );
  OAI22_X1 U1220 ( .A1(n224), .A2(n1245), .B1(n1303), .B2(n216), .ZN(n1254) );
  INV_X1 U1221 ( .A(n1254), .ZN(n1250) );
  OAI21_X1 U1224 ( .B1(n1246), .B2(info_q[13]), .A(info_q[7]), .ZN(n1249) );
  INV_X1 U1225 ( .A(n1249), .ZN(n1247) );
  NAND2_X1 U1227 ( .A1(n1247), .A2(info_q[1]), .ZN(n1255) );
  OAI21_X1 U1228 ( .B1(n1249), .B2(n68), .A(n1255), .ZN(n1261) );
  OAI21_X1 U1229 ( .B1(n1271), .B2(n1250), .A(n1261), .ZN(n1251) );
  INV_X1 U1230 ( .A(n1251), .ZN(n1252) );
  OAI21_X1 U1231 ( .B1(n1303), .B2(n1271), .A(n224), .ZN(n1290) );
  OAI21_X1 U1232 ( .B1(n225), .B2(n1290), .A(n1252), .ZN(n1264) );
  NAND2_X1 U1233 ( .A1(n1252), .A2(n1264), .ZN(n1253) );
  MUX2_X1 U1234 ( .A(n1562), .B(n1651), .S(n276), .Z(n1334) );
  AOI21_X1 U1235 ( .B1(info_q[0]), .B2(n1255), .A(n1254), .ZN(n1270) );
  OAI211_X1 U1236 ( .C1(n1271), .C2(info_q[1]), .A(info_q[7]), .B(info_q[13]), 
        .ZN(n1259) );
  NAND3_X1 U1237 ( .A1(info_q[12]), .A2(n1260), .A3(n1259), .ZN(n1269) );
  INV_X1 U1238 ( .A(n1261), .ZN(n1267) );
  OR2_X1 U1239 ( .A1(info_q[6]), .A2(n1263), .ZN(n1266) );
  OAI211_X1 U1240 ( .C1(n225), .C2(n1263), .A(n1262), .B(n1290), .ZN(n1282) );
  INV_X1 U1241 ( .A(n1282), .ZN(n1265) );
  INV_X1 U1242 ( .A(n1264), .ZN(n1283) );
  AOI22_X1 U1243 ( .A1(n1267), .A2(n1266), .B1(n1265), .B2(n1283), .ZN(n1268)
         );
  OAI211_X1 U1244 ( .C1(n1271), .C2(n1270), .A(n1269), .B(n1268), .ZN(n1302)
         );
  NAND3_X1 U1245 ( .A1(n1278), .A2(n1274), .A3(n1277), .ZN(n1279) );
  AND2_X1 U1246 ( .A1(rounded_abs[0]), .A2(n2201), .ZN(result_o[0]) );
  AND2_X1 U1247 ( .A1(rounded_abs[1]), .A2(n2201), .ZN(result_o[1]) );
  AND2_X1 U1248 ( .A1(rounded_abs[2]), .A2(n2201), .ZN(result_o[2]) );
  AND2_X1 U1249 ( .A1(rounded_abs[3]), .A2(n2201), .ZN(result_o[3]) );
  AND2_X1 U1250 ( .A1(rounded_abs[4]), .A2(n2201), .ZN(result_o[4]) );
  AND2_X1 U1251 ( .A1(rounded_abs[5]), .A2(n2201), .ZN(result_o[5]) );
  AND2_X1 U1252 ( .A1(rounded_abs[6]), .A2(n2201), .ZN(result_o[6]) );
  AND2_X1 U1253 ( .A1(rounded_abs[7]), .A2(n2201), .ZN(result_o[7]) );
  AND2_X1 U1254 ( .A1(rounded_abs[8]), .A2(n2201), .ZN(result_o[8]) );
  NAND2_X1 U1255 ( .A1(n1283), .A2(n1282), .ZN(n1294) );
  MUX2_X1 U1256 ( .A(n1561), .B(n1650), .S(n276), .Z(n1332) );
  MUX2_X1 U1257 ( .A(rounded_abs[9]), .B(n1561), .S(n1562), .Z(result_o[9]) );
  NAND2_X1 U1258 ( .A1(n2181), .A2(n1300), .ZN(n1307) );
  MUX2_X1 U1259 ( .A(rounded_abs[10]), .B(n1649), .S(n1562), .Z(result_o[10])
         );
  NAND2_X1 U1260 ( .A1(n2182), .A2(n1300), .ZN(n1308) );
  MUX2_X1 U1261 ( .A(rounded_abs[11]), .B(n1648), .S(n1562), .Z(result_o[11])
         );
  NAND2_X1 U1262 ( .A1(n2183), .A2(n1300), .ZN(n1309) );
  MUX2_X1 U1263 ( .A(rounded_abs[12]), .B(n1647), .S(n1562), .Z(result_o[12])
         );
  NAND2_X1 U1264 ( .A1(n2128), .A2(n1300), .ZN(n1310) );
  MUX2_X1 U1265 ( .A(rounded_abs[13]), .B(n1646), .S(n1562), .Z(result_o[13])
         );
  NAND2_X1 U1266 ( .A1(n2129), .A2(n1300), .ZN(n1311) );
  MUX2_X1 U1267 ( .A(rounded_abs[14]), .B(n1645), .S(n1562), .Z(result_o[14])
         );
  INV_X1 U1268 ( .A(n1289), .ZN(n1292) );
  INV_X1 U1269 ( .A(n1290), .ZN(n1291) );
  MUX2_X1 U1270 ( .A(n1293), .B(n1292), .S(n1291), .Z(n1295) );
  NOR2_X1 U1271 ( .A1(n1295), .A2(n1294), .ZN(n1297) );
  MUX2_X1 U1272 ( .A(n1560), .B(n1644), .S(n277), .Z(n1333) );
  MUX2_X1 U1273 ( .A(regular_result_15_), .B(n1560), .S(n1562), .Z(
        result_o[15]) );
  AND2_X1 U1274 ( .A1(n1562), .A2(n1553), .ZN(status_o_NV_) );
  OR2_X1 U1275 ( .A1(n1643), .A2(n1299), .ZN(n656) );
  NAND2_X1 U1276 ( .A1(n1301), .A2(in_ready_o), .ZN(n653) );
  MUX2_X1 U1277 ( .A(n1559), .B(rnd_mode_i[0]), .S(n289), .Z(n1318) );
  MUX2_X1 U1278 ( .A(n1558), .B(rnd_mode_i[1]), .S(n1298), .Z(n1317) );
  MUX2_X1 U1279 ( .A(n1557), .B(tag_i), .S(n289), .Z(n1314) );
  MUX2_X1 U1281 ( .A(n1640), .B(n1556), .S(n1300), .Z(
        mid_pipe_rnd_mode_q_1__2_) );
  MUX2_X1 U1282 ( .A(n1558), .B(n1555), .S(n1300), .Z(
        mid_pipe_rnd_mode_q_1__1_) );
  MUX2_X1 U1283 ( .A(n1559), .B(n1554), .S(n1300), .Z(
        mid_pipe_rnd_mode_q_1__0_) );
  MUX2_X1 U1284 ( .A(n1549), .B(n1553), .S(n1300), .Z(n1306) );
  INV_X1 U1285 ( .A(info_q[2]), .ZN(n1303) );
  MUX2_X1 U1286 ( .A(n1557), .B(tag_o), .S(n1300), .Z(n2124) );
  NAND3_X1 U1288 ( .A1(n2126), .A2(n2127), .A3(n1301), .ZN(busy_o) );
  INV_X1 U1289 ( .A(in_valid_i), .ZN(n1301) );
  DFFR_X1 MY_CLK_r_REG59_S1 ( .D(exponent_difference[6]), .CK(clk_i), .RN(
        rst_ni), .Q(n1728), .QN(n2194) );
  DFFR_X1 MY_CLK_r_REG75_S1 ( .D(exponent_difference[5]), .CK(clk_i), .RN(
        rst_ni), .Q(n1727), .QN(n2171) );
  DFFS_X1 MY_CLK_r_REG78_S1 ( .D(exponent_difference[4]), .CK(clk_i), .SN(
        rst_ni), .Q(n1726), .QN(n2188) );
  DFFR_X1 MY_CLK_r_REG88_S1 ( .D(exponent_difference[3]), .CK(clk_i), .RN(
        rst_ni), .Q(n1725), .QN(n2205) );
  DFFR_X1 MY_CLK_r_REG86_S1 ( .D(exponent_difference[2]), .CK(clk_i), .RN(
        rst_ni), .Q(n1724), .QN(n2197) );
  DFFR_X1 MY_CLK_r_REG84_S1 ( .D(exponent_difference[1]), .CK(clk_i), .RN(
        rst_ni), .Q(n1723), .QN(n2214) );
  DFFR_X1 MY_CLK_r_REG82_S1 ( .D(N140), .CK(clk_i), .RN(rst_ni), .Q(n1722), 
        .QN(n2191) );
  DFFR_X1 MY_CLK_r_REG16_S2 ( .D(N281), .CK(clk_i), .RN(rst_ni), .Q(n1721) );
  DFFS_X1 MY_CLK_r_REG22_S2 ( .D(lzc_zeroes), .CK(clk_i), .SN(rst_ni), .Q(
        n1720) );
  DFFR_X1 MY_CLK_r_REG20_S2 ( .D(n115), .CK(clk_i), .RN(rst_ni), .Q(n1719), 
        .QN(n2190) );
  DFFR_X1 MY_CLK_r_REG18_S2 ( .D(n129), .CK(clk_i), .RN(rst_ni), .Q(n1718), 
        .QN(n2172) );
  DFFR_X1 MY_CLK_r_REG14_S2 ( .D(n133), .CK(clk_i), .RN(rst_ni), .Q(n1717), 
        .QN(n2157) );
  DFFR_X1 MY_CLK_r_REG21_S2 ( .D(n139), .CK(clk_i), .RN(rst_ni), .Q(n1716) );
  DFFS_X1 MY_CLK_r_REG213_S1 ( .D(n692), .CK(clk_i), .SN(rst_ni), .Q(n1715) );
  DFFR_X1 MY_CLK_r_REG111_S1 ( .D(n1099), .CK(clk_i), .RN(rst_ni), .Q(n1714)
         );
  DFFR_X1 MY_CLK_r_REG179_S1 ( .D(inp_pipe_operands_q_1__0__14_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1713) );
  DFFR_X1 MY_CLK_r_REG180_S1 ( .D(inp_pipe_operands_q_1__0__13_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1712) );
  DFFR_X1 MY_CLK_r_REG181_S1 ( .D(inp_pipe_operands_q_1__0__12_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1711) );
  DFFR_X1 MY_CLK_r_REG182_S1 ( .D(n323), .CK(clk_i), .RN(rst_ni), .Q(n1710) );
  DFFR_X1 MY_CLK_r_REG183_S1 ( .D(inp_pipe_operands_q_1__0__10_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1709) );
  DFFR_X1 MY_CLK_r_REG155_S1 ( .D(inp_pipe_operands_q_1__1__12_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1708) );
  DFFR_X1 MY_CLK_r_REG154_S1 ( .D(inp_pipe_operands_q_1__1__13_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1707) );
  DFFR_X1 MY_CLK_r_REG117_S1 ( .D(inp_pipe_operands_q_1__1__14_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1706) );
  DFFR_X1 MY_CLK_r_REG115_S1 ( .D(n385), .CK(clk_i), .RN(rst_ni), .Q(n1705) );
  DFFR_X1 MY_CLK_r_REG145_S1 ( .D(n683), .CK(clk_i), .RN(rst_ni), .Q(n1704) );
  DFFR_X1 MY_CLK_r_REG148_S1 ( .D(n684), .CK(clk_i), .RN(rst_ni), .Q(n1703) );
  DFFR_X1 MY_CLK_r_REG97_S1 ( .D(inp_pipe_operands_q_1__2__11_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1702) );
  DFFR_X1 MY_CLK_r_REG96_S1 ( .D(inp_pipe_operands_q_1__2__12_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1701) );
  DFFR_X1 MY_CLK_r_REG95_S1 ( .D(inp_pipe_operands_q_1__2__13_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1700) );
  DFFR_X1 MY_CLK_r_REG57_S1 ( .D(inp_pipe_operands_q_1__2__14_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1699) );
  DFFR_X1 MY_CLK_r_REG81_S1 ( .D(n458), .CK(clk_i), .RN(rst_ni), .Q(n1698) );
  DFFR_X1 MY_CLK_r_REG190_S1 ( .D(inp_pipe_operands_q_1__0__3_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1697) );
  DFFR_X1 MY_CLK_r_REG191_S1 ( .D(inp_pipe_operands_q_1__0__2_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1696) );
  DFFR_X1 MY_CLK_r_REG192_S1 ( .D(inp_pipe_operands_q_1__0__1_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1695) );
  DFFR_X1 MY_CLK_r_REG159_S1 ( .D(inp_pipe_operands_q_1__1__9_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1694) );
  DFFR_X1 MY_CLK_r_REG161_S1 ( .D(inp_pipe_operands_q_1__1__8_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1693) );
  DFFR_X1 MY_CLK_r_REG163_S1 ( .D(inp_pipe_operands_q_1__1__7_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1692) );
  DFFR_X1 MY_CLK_r_REG165_S1 ( .D(inp_pipe_operands_q_1__1__6_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1691) );
  DFFR_X1 MY_CLK_r_REG167_S1 ( .D(inp_pipe_operands_q_1__1__5_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1690) );
  DFFR_X1 MY_CLK_r_REG169_S1 ( .D(inp_pipe_operands_q_1__1__4_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1689) );
  DFFR_X1 MY_CLK_r_REG171_S1 ( .D(inp_pipe_operands_q_1__1__3_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1688) );
  DFFR_X1 MY_CLK_r_REG173_S1 ( .D(inp_pipe_operands_q_1__1__2_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1687) );
  DFFR_X1 MY_CLK_r_REG175_S1 ( .D(inp_pipe_operands_q_1__1__1_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1686) );
  DFFR_X1 MY_CLK_r_REG177_S1 ( .D(inp_pipe_operands_q_1__1__0_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1685) );
  DFFS_X1 MY_CLK_r_REG19_S2 ( .D(n907), .CK(clk_i), .SN(rst_ni), .Q(n1684), 
        .QN(n2184) );
  DFFS_X1 MY_CLK_r_REG42_S2 ( .D(n413), .CK(clk_i), .SN(rst_ni), .Q(n1683), 
        .QN(n2195) );
  DFFS_X1 MY_CLK_r_REG28_S2 ( .D(n416), .CK(clk_i), .SN(rst_ni), .Q(n1682), 
        .QN(n2199) );
  DFFS_X1 MY_CLK_r_REG40_S2 ( .D(n412), .CK(clk_i), .SN(rst_ni), .Q(n1681), 
        .QN(n2196) );
  DFFS_X1 MY_CLK_r_REG33_S2 ( .D(n399), .CK(clk_i), .SN(rst_ni), .Q(n1680), 
        .QN(n2167) );
  DFFS_X1 MY_CLK_r_REG13_S2 ( .D(n405), .CK(clk_i), .SN(rst_ni), .Q(n1679), 
        .QN(n2200) );
  DFFS_X1 MY_CLK_r_REG68_S2 ( .D(n459), .CK(clk_i), .SN(rst_ni), .Q(n1678) );
  DFFS_X1 MY_CLK_r_REG37_S2 ( .D(n407), .CK(clk_i), .SN(rst_ni), .Q(n1677), 
        .QN(n2156) );
  DFFS_X1 MY_CLK_r_REG32_S2 ( .D(n400), .CK(clk_i), .SN(rst_ni), .Q(n1676) );
  DFFS_X1 MY_CLK_r_REG31_S2 ( .D(n398), .CK(clk_i), .SN(rst_ni), .Q(n1675) );
  DFFS_X1 MY_CLK_r_REG36_S2 ( .D(n408), .CK(clk_i), .SN(rst_ni), .Q(n1674), 
        .QN(n2189) );
  DFFS_X1 MY_CLK_r_REG35_S2 ( .D(n406), .CK(clk_i), .SN(rst_ni), .Q(n1673), 
        .QN(n2154) );
  DFFS_X1 MY_CLK_r_REG41_S2 ( .D(n411), .CK(clk_i), .SN(rst_ni), .Q(n1672), 
        .QN(n2155) );
  DFFS_X1 MY_CLK_r_REG47_S2 ( .D(n396), .CK(clk_i), .SN(rst_ni), .Q(n1671) );
  DFFS_X1 MY_CLK_r_REG29_S2 ( .D(n415), .CK(clk_i), .SN(rst_ni), .Q(n1670), 
        .QN(n2198) );
  DFFR_X1 MY_CLK_r_REG9_S2 ( .D(n1200), .CK(clk_i), .RN(rst_ni), .Q(n1669), 
        .QN(n2212) );
  DFFR_X1 MY_CLK_r_REG8_S2 ( .D(n1183), .CK(clk_i), .RN(rst_ni), .Q(n1668), 
        .QN(n2211) );
  DFFR_X1 MY_CLK_r_REG10_S2 ( .D(n985), .CK(clk_i), .RN(rst_ni), .Q(n1667), 
        .QN(n2210) );
  DFFS_X1 MY_CLK_r_REG91_S1 ( .D(n448), .CK(clk_i), .SN(rst_ni), .Q(n1666) );
  DFFS_X1 MY_CLK_r_REG92_S1 ( .D(n453), .CK(clk_i), .SN(rst_ni), .Q(n1665) );
  DFFS_X1 MY_CLK_r_REG90_S1 ( .D(n442), .CK(clk_i), .SN(rst_ni), .Q(n1664) );
  DFFS_X1 MY_CLK_r_REG77_S1 ( .D(n439), .CK(clk_i), .SN(rst_ni), .Q(n1663) );
  DFFS_X1 MY_CLK_r_REG56_S2 ( .D(n935), .CK(clk_i), .SN(rst_ni), .Q(n1662), 
        .QN(n2206) );
  DFFR_X1 MY_CLK_r_REG212_S1 ( .D(n679), .CK(clk_i), .RN(rst_ni), .Q(n1661) );
  DFFR_X1 MY_CLK_r_REG3_S1 ( .D(n1262), .CK(clk_i), .RN(rst_ni), .Q(n1660) );
  DFFS_X1 MY_CLK_r_REG114_S1 ( .D(n680), .CK(clk_i), .SN(rst_ni), .Q(n1659) );
  DFFS_X1 MY_CLK_r_REG112_S1 ( .D(n681), .CK(clk_i), .SN(rst_ni), .Q(n1658), 
        .QN(n2177) );
  DFFS_X1 MY_CLK_r_REG118_S1 ( .D(n682), .CK(clk_i), .SN(rst_ni), .Q(n1657), 
        .QN(n2180) );
  DFFS_X1 MY_CLK_r_REG144_S1 ( .D(n441), .CK(clk_i), .SN(rst_ni), .Q(n1656) );
  DFFS_X1 MY_CLK_r_REG147_S1 ( .D(n447), .CK(clk_i), .SN(rst_ni), .Q(n1655) );
  DFFR_X1 MY_CLK_r_REG150_S1 ( .D(n685), .CK(clk_i), .RN(rst_ni), .Q(n1654) );
  DFFS_X1 MY_CLK_r_REG152_S1 ( .D(n686), .CK(clk_i), .SN(rst_ni), .Q(n1653), 
        .QN(n2186) );
  DFFS_X1 MY_CLK_r_REG58_S1 ( .D(n436), .CK(clk_i), .SN(rst_ni), .Q(n1652) );
  DFFS_X1 MY_CLK_r_REG93_S1 ( .D(n1253), .CK(clk_i), .SN(rst_ni), .Q(n1651) );
  DFFS_X1 MY_CLK_r_REG4_S1 ( .D(n1294), .CK(clk_i), .SN(rst_ni), .Q(n1650) );
  DFFR_X1 MY_CLK_r_REG206_S2 ( .D(n1307), .CK(clk_i), .RN(rst_ni), .Q(n1649), 
        .QN(n2181) );
  DFFR_X1 MY_CLK_r_REG205_S2 ( .D(n1308), .CK(clk_i), .RN(rst_ni), .Q(n1648), 
        .QN(n2182) );
  DFFR_X1 MY_CLK_r_REG204_S2 ( .D(n1309), .CK(clk_i), .RN(rst_ni), .Q(n1647), 
        .QN(n2183) );
  DFFR_X1 MY_CLK_r_REG203_S2 ( .D(n1310), .CK(clk_i), .RN(rst_ni), .Q(n1646), 
        .QN(n2128) );
  DFFR_X1 MY_CLK_r_REG202_S2 ( .D(n1311), .CK(clk_i), .RN(rst_ni), .Q(n1645), 
        .QN(n2129) );
  DFFR_X1 MY_CLK_r_REG1_S1 ( .D(n1297), .CK(clk_i), .RN(rst_ni), .Q(n1644) );
  DFFR_X1 MY_CLK_r_REG200_S1 ( .D(n1335), .CK(clk_i), .RN(rst_ni), .Q(n1643), 
        .QN(n2126) );
  DFFR_X1 MY_CLK_r_REG218_S2 ( .D(n2125), .CK(clk_i), .RN(rst_ni), .Q(
        out_valid_o), .QN(n2127) );
  DFFS_X1 MY_CLK_r_REG17_S2 ( .D(n431), .CK(clk_i), .SN(rst_ni), .Q(n1641) );
  DFFR_X1 MY_CLK_r_REG194_S1 ( .D(n1319), .CK(clk_i), .RN(rst_ni), .Q(n1640)
         );
  DFFR_X1 MY_CLK_r_REG211_S1 ( .D(n1338), .CK(clk_i), .RN(rst_ni), .Q(n1639)
         );
  DFFR_X1 MY_CLK_r_REG214_S1 ( .D(n1337), .CK(clk_i), .RN(rst_ni), .Q(n1638)
         );
  DFFR_X1 MY_CLK_r_REG215_S1 ( .D(n1316), .CK(clk_i), .RN(rst_ni), .Q(n1637)
         );
  DFFR_X1 MY_CLK_r_REG216_S1 ( .D(n1336), .CK(clk_i), .RN(rst_ni), .Q(n1636)
         );
  DFFR_X1 MY_CLK_r_REG178_S1 ( .D(inp_pipe_operands_q_1__0__15_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1635) );
  DFFR_X1 MY_CLK_r_REG110_S1 ( .D(inp_pipe_operands_q_1__1__15_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1634) );
  DFFR_X1 MY_CLK_r_REG0_S1 ( .D(inp_pipe_operands_q_1__2__15_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1633) );
  DFFR_X1 MY_CLK_r_REG217_S1 ( .D(n1315), .CK(clk_i), .RN(rst_ni), .Q(n1632)
         );
  DFFR_X1 MY_CLK_r_REG55_S2 ( .D(mid_pipe_eff_sub_q_1_), .CK(clk_i), .RN(
        rst_ni), .Q(n1631) );
  DFFR_X1 MY_CLK_r_REG157_S1 ( .D(inp_pipe_operands_q_1__1__10_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1630) );
  DFFR_X1 MY_CLK_r_REG156_S1 ( .D(inp_pipe_operands_q_1__1__11_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1629) );
  DFFR_X1 MY_CLK_r_REG116_S2 ( .D(mid_pipe_exp_prod_q_1__6_), .CK(clk_i), .RN(
        rst_ni), .Q(n1628) );
  DFFR_X1 MY_CLK_r_REG113_S2 ( .D(mid_pipe_exp_prod_q_1__5_), .CK(clk_i), .RN(
        rst_ni), .Q(n1627) );
  DFFR_X1 MY_CLK_r_REG119_S2 ( .D(mid_pipe_exp_prod_q_1__4_), .CK(clk_i), .RN(
        rst_ni), .Q(n1626) );
  DFFR_X1 MY_CLK_r_REG146_S2 ( .D(mid_pipe_exp_prod_q_1__3_), .CK(clk_i), .RN(
        rst_ni), .Q(n1625) );
  DFFR_X1 MY_CLK_r_REG149_S2 ( .D(mid_pipe_exp_prod_q_1__2_), .CK(clk_i), .RN(
        rst_ni), .Q(n1624), .QN(n2178) );
  DFFR_X1 MY_CLK_r_REG151_S2 ( .D(mid_pipe_exp_prod_q_1__1_), .CK(clk_i), .RN(
        rst_ni), .Q(n1623) );
  DFFR_X1 MY_CLK_r_REG153_S2 ( .D(mid_pipe_exp_prod_q_1__0_), .CK(clk_i), .RN(
        rst_ni), .Q(n1622), .QN(n2187) );
  DFFR_X1 MY_CLK_r_REG98_S1 ( .D(inp_pipe_operands_q_1__2__10_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1621) );
  DFFS_X1 MY_CLK_r_REG80_S1 ( .D(n693), .CK(clk_i), .SN(rst_ni), .Q(n1620), 
        .QN(n2130) );
  DFFR_X1 MY_CLK_r_REG67_S2 ( .D(n378), .CK(clk_i), .RN(rst_ni), .Q(n1619) );
  DFFR_X1 MY_CLK_r_REG76_S2 ( .D(n387), .CK(clk_i), .RN(rst_ni), .Q(n1618) );
  DFFR_X1 MY_CLK_r_REG79_S2 ( .D(n30), .CK(clk_i), .RN(rst_ni), .Q(n1617) );
  DFFR_X1 MY_CLK_r_REG89_S2 ( .D(n38), .CK(clk_i), .RN(rst_ni), .Q(n1616) );
  DFFR_X1 MY_CLK_r_REG87_S2 ( .D(n379), .CK(clk_i), .RN(rst_ni), .Q(n1615) );
  DFFR_X1 MY_CLK_r_REG83_S2 ( .D(n41), .CK(clk_i), .RN(rst_ni), .Q(n1614) );
  DFFR_X1 MY_CLK_r_REG85_S2 ( .D(n37), .CK(clk_i), .RN(rst_ni), .Q(n1613) );
  DFFR_X1 MY_CLK_r_REG62_S2 ( .D(n1330), .CK(clk_i), .RN(rst_ni), .Q(n1612), 
        .QN(n2131) );
  DFFR_X1 MY_CLK_r_REG63_S2 ( .D(n1329), .CK(clk_i), .RN(rst_ni), .Q(n1611), 
        .QN(n2132) );
  DFFR_X1 MY_CLK_r_REG64_S2 ( .D(n1327), .CK(clk_i), .RN(rst_ni), .Q(n1610), 
        .QN(n2133) );
  DFFR_X1 MY_CLK_r_REG65_S2 ( .D(n1326), .CK(clk_i), .RN(rst_ni), .Q(n1609), 
        .QN(n2134) );
  DFFR_X1 MY_CLK_r_REG184_S1 ( .D(inp_pipe_operands_q_1__0__9_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1608) );
  DFFR_X1 MY_CLK_r_REG185_S1 ( .D(inp_pipe_operands_q_1__0__8_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1607) );
  DFFR_X1 MY_CLK_r_REG186_S1 ( .D(inp_pipe_operands_q_1__0__7_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1606) );
  DFFR_X1 MY_CLK_r_REG187_S1 ( .D(inp_pipe_operands_q_1__0__6_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1605) );
  DFFR_X1 MY_CLK_r_REG188_S1 ( .D(inp_pipe_operands_q_1__0__5_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1604) );
  DFFR_X1 MY_CLK_r_REG189_S1 ( .D(inp_pipe_operands_q_1__0__4_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1603) );
  DFFR_X1 MY_CLK_r_REG193_S1 ( .D(inp_pipe_operands_q_1__0__0_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1602) );
  DFFR_X1 MY_CLK_r_REG99_S1 ( .D(inp_pipe_operands_q_1__2__9_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1601), .QN(n2135) );
  DFFR_X1 MY_CLK_r_REG100_S1 ( .D(inp_pipe_operands_q_1__2__8_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1600), .QN(n2136) );
  DFFR_X1 MY_CLK_r_REG101_S1 ( .D(inp_pipe_operands_q_1__2__7_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1599), .QN(n2137) );
  DFFR_X1 MY_CLK_r_REG102_S1 ( .D(inp_pipe_operands_q_1__2__6_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1598), .QN(n2138) );
  DFFR_X1 MY_CLK_r_REG103_S1 ( .D(inp_pipe_operands_q_1__2__5_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1597), .QN(n2139) );
  DFFR_X1 MY_CLK_r_REG104_S1 ( .D(inp_pipe_operands_q_1__2__4_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1596), .QN(n2140) );
  DFFR_X1 MY_CLK_r_REG105_S1 ( .D(inp_pipe_operands_q_1__2__3_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1595), .QN(n2141) );
  DFFR_X1 MY_CLK_r_REG106_S1 ( .D(inp_pipe_operands_q_1__2__2_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1594), .QN(n2142) );
  DFFR_X1 MY_CLK_r_REG107_S1 ( .D(inp_pipe_operands_q_1__2__1_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1593), .QN(n2143) );
  DFFR_X1 MY_CLK_r_REG108_S1 ( .D(inp_pipe_operands_q_1__2__0_), .CK(clk_i), 
        .RN(rst_ni), .Q(n1592) );
  DFFR_X1 MY_CLK_r_REG109_S1 ( .D(n733), .CK(clk_i), .RN(rst_ni), .Q(n1591), 
        .QN(n2185) );
  DFFR_X1 MY_CLK_r_REG46_S2 ( .D(mid_pipe_sum_q_1__2_), .CK(clk_i), .RN(rst_ni), .Q(n1590), .QN(n2144) );
  DFFR_X1 MY_CLK_r_REG48_S2 ( .D(mid_pipe_sum_q_1__3_), .CK(clk_i), .RN(rst_ni), .Q(n1589), .QN(n2145) );
  DFFR_X1 MY_CLK_r_REG49_S2 ( .D(mid_pipe_sum_q_1__5_), .CK(clk_i), .RN(rst_ni), .Q(n1588), .QN(n2146) );
  DFFR_X1 MY_CLK_r_REG50_S2 ( .D(mid_pipe_sum_q_1__0_), .CK(clk_i), .RN(rst_ni), .Q(n1587), .QN(n2204) );
  DFFR_X1 MY_CLK_r_REG51_S2 ( .D(mid_pipe_sum_q_1__1_), .CK(clk_i), .RN(rst_ni), .Q(n1586), .QN(n2203) );
  DFFR_X1 MY_CLK_r_REG66_S2 ( .D(n1328), .CK(clk_i), .RN(rst_ni), .Q(n1585), 
        .QN(n2147) );
  DFFR_X1 MY_CLK_r_REG60_S2 ( .D(n1331), .CK(clk_i), .RN(rst_ni), .Q(n1584), 
        .QN(n2148) );
  DFFR_X1 MY_CLK_r_REG11_S2 ( .D(n955), .CK(clk_i), .RN(rst_ni), .Q(n1583), 
        .QN(n2209) );
  DFFR_X1 MY_CLK_r_REG52_S2 ( .D(n1128), .CK(clk_i), .RN(rst_ni), .Q(n1582), 
        .QN(n2149) );
  DFFR_X1 MY_CLK_r_REG53_S2 ( .D(n1201), .CK(clk_i), .RN(rst_ni), .Q(n1581), 
        .QN(n2213) );
  DFFR_X1 MY_CLK_r_REG54_S2 ( .D(n1184), .CK(clk_i), .RN(rst_ni), .Q(n1580), 
        .QN(n2150) );
  DFFR_X1 MY_CLK_r_REG23_S2 ( .D(n1091), .CK(clk_i), .RN(rst_ni), .Q(n1579), 
        .QN(n2151) );
  DFFR_X1 MY_CLK_r_REG24_S2 ( .D(n1129), .CK(clk_i), .RN(rst_ni), .Q(n1578), 
        .QN(n2152) );
  DFFR_X1 MY_CLK_r_REG25_S2 ( .D(n1103), .CK(clk_i), .RN(rst_ni), .Q(n1577), 
        .QN(n2153) );
  DFFR_X1 MY_CLK_r_REG26_S2 ( .D(n1140), .CK(clk_i), .RN(rst_ni), .Q(n1576), 
        .QN(n2158) );
  DFFR_X1 MY_CLK_r_REG27_S2 ( .D(mid_pipe_sum_q_1__22_), .CK(clk_i), .RN(
        rst_ni), .Q(n1575), .QN(n2159) );
  DFFR_X1 MY_CLK_r_REG30_S2 ( .D(n1104), .CK(clk_i), .RN(rst_ni), .Q(n1574), 
        .QN(n2160) );
  DFFR_X1 MY_CLK_r_REG34_S2 ( .D(mid_pipe_sum_q_1__9_), .CK(clk_i), .RN(rst_ni), .Q(n1573), .QN(n2193) );
  DFFR_X1 MY_CLK_r_REG38_S2 ( .D(mid_pipe_sum_q_1__17_), .CK(clk_i), .RN(
        rst_ni), .Q(n1572), .QN(n2161) );
  DFFR_X1 MY_CLK_r_REG39_S2 ( .D(mid_pipe_sum_q_1__18_), .CK(clk_i), .RN(
        rst_ni), .Q(n1571), .QN(n2162) );
  DFFR_X1 MY_CLK_r_REG43_S2 ( .D(mid_pipe_sum_q_1__10_), .CK(clk_i), .RN(
        rst_ni), .Q(n1570), .QN(n2163) );
  DFFR_X1 MY_CLK_r_REG44_S2 ( .D(mid_pipe_sum_q_1__12_), .CK(clk_i), .RN(
        rst_ni), .Q(n1569), .QN(n2165) );
  DFFR_X1 MY_CLK_r_REG45_S2 ( .D(mid_pipe_sum_q_1__11_), .CK(clk_i), .RN(
        rst_ni), .Q(n1568), .QN(n2166) );
  DFFR_X1 MY_CLK_r_REG61_S2 ( .D(n1312), .CK(clk_i), .RN(rst_ni), .Q(n1567), 
        .QN(n2202) );
  DFFR_X1 MY_CLK_r_REG12_S2 ( .D(mid_pipe_final_sign_q_1_), .CK(clk_i), .RN(
        rst_ni), .Q(n1566), .QN(n2192) );
  DFFR_X1 MY_CLK_r_REG207_S1 ( .D(inp_pipe_is_boxed_q_1__0_), .CK(clk_i), .RN(
        rst_ni), .QN(n2168) );
  DFFR_X1 MY_CLK_r_REG208_S1 ( .D(inp_pipe_is_boxed_q_1__1_), .CK(clk_i), .RN(
        rst_ni), .QN(n2169) );
  DFFR_X1 MY_CLK_r_REG209_S1 ( .D(inp_pipe_is_boxed_q_1__2_), .CK(clk_i), .RN(
        rst_ni), .QN(n2170) );
  DFFR_X1 MY_CLK_r_REG94_S2 ( .D(n1334), .CK(clk_i), .RN(rst_ni), .Q(n1562), 
        .QN(n2201) );
  DFFR_X1 MY_CLK_r_REG5_S2 ( .D(n1332), .CK(clk_i), .RN(rst_ni), .Q(n1561) );
  DFFR_X1 MY_CLK_r_REG2_S2 ( .D(n1333), .CK(clk_i), .RN(rst_ni), .Q(n1560) );
  DFFR_X1 MY_CLK_r_REG198_S1 ( .D(n1318), .CK(clk_i), .RN(rst_ni), .Q(n1559)
         );
  DFFR_X1 MY_CLK_r_REG196_S1 ( .D(n1317), .CK(clk_i), .RN(rst_ni), .Q(n1558)
         );
  DFFR_X1 MY_CLK_r_REG210_S1 ( .D(n1314), .CK(clk_i), .RN(rst_ni), .Q(n1557)
         );
  DFFR_X1 MY_CLK_r_REG195_S2 ( .D(mid_pipe_rnd_mode_q_1__2_), .CK(clk_i), .RN(
        rst_ni), .Q(n1556) );
  DFFR_X1 MY_CLK_r_REG197_S2 ( .D(mid_pipe_rnd_mode_q_1__1_), .CK(clk_i), .RN(
        rst_ni), .Q(n1555) );
  DFFR_X1 MY_CLK_r_REG199_S2 ( .D(mid_pipe_rnd_mode_q_1__0_), .CK(clk_i), .RN(
        rst_ni), .Q(n1554) );
  DFFR_X1 MY_CLK_r_REG7_S2 ( .D(n1306), .CK(clk_i), .RN(rst_ni), .Q(n1553) );
  DFFR_X1 MY_CLK_r_REG201_S2 ( .D(n2124), .CK(clk_i), .RN(rst_ni), .Q(tag_o)
         );
  DFFS_X1 MY_CLK_r_REG15_S2 ( .D(n430), .CK(clk_i), .SN(rst_ni), .Q(n1551) );
  DFFR_X1 MY_CLK_r_REG74_S2 ( .D(n1325), .CK(clk_i), .RN(rst_ni), .Q(n1550), 
        .QN(n2175) );
  DFFR_X1 MY_CLK_r_REG6_S1 ( .D(n1302), .CK(clk_i), .RN(rst_ni), .Q(n1549) );
  DFFR_X1 MY_CLK_r_REG73_S2 ( .D(n1324), .CK(clk_i), .RN(rst_ni), .Q(n1548), 
        .QN(n2164) );
  DFFR_X1 MY_CLK_r_REG72_S2 ( .D(n1323), .CK(clk_i), .RN(rst_ni), .Q(n1547), 
        .QN(n2179) );
  DFFR_X1 MY_CLK_r_REG71_S2 ( .D(n1322), .CK(clk_i), .RN(rst_ni), .Q(n1546), 
        .QN(n2176) );
  DFFR_X1 MY_CLK_r_REG70_S2 ( .D(n1321), .CK(clk_i), .RN(rst_ni), .Q(n1545), 
        .QN(n2173) );
  DFFR_X1 MY_CLK_r_REG69_S2 ( .D(n1320), .CK(clk_i), .RN(rst_ni), .Q(n1544), 
        .QN(n2174) );
  INV_X1 U1297 ( .A(inp_pipe_operands_q_1__2__15_), .ZN(n507) );
  INV_X1 U1298 ( .A(inp_pipe_operands_q_1__1__15_), .ZN(n475) );
  INV_X1 U1299 ( .A(inp_pipe_operands_q_1__0__15_), .ZN(n491) );
  INV_X1 U1309 ( .A(inp_pipe_operands_q_1__1__7_), .ZN(n483) );
  INV_X1 U1310 ( .A(inp_pipe_operands_q_1__1__8_), .ZN(n482) );
  INV_X1 U1311 ( .A(inp_pipe_operands_q_1__1__9_), .ZN(n481) );
  INV_X1 U1315 ( .A(inp_pipe_operands_q_1__0__4_), .ZN(n502) );
  INV_X1 U1317 ( .A(inp_pipe_operands_q_1__0__6_), .ZN(n500) );
  INV_X1 U1325 ( .A(inp_pipe_operands_q_1__1__1_), .ZN(n489) );
  INV_X1 U1326 ( .A(inp_pipe_operands_q_1__1__2_), .ZN(n488) );
  INV_X1 U1327 ( .A(inp_pipe_operands_q_1__1__3_), .ZN(n487) );
  INV_X1 U1328 ( .A(inp_pipe_operands_q_1__1__4_), .ZN(n486) );
  INV_X1 U1329 ( .A(inp_pipe_operands_q_1__1__5_), .ZN(n485) );
  INV_X1 U1330 ( .A(inp_pipe_operands_q_1__1__6_), .ZN(n484) );
  INV_X1 U1331 ( .A(inp_pipe_operands_q_1__2__0_), .ZN(n474) );
  INV_X1 U1336 ( .A(n41), .ZN(n443) );
  INV_X1 U1337 ( .A(n37), .ZN(n444) );
  INV_X1 U1343 ( .A(mid_pipe_sum_q_1__23_), .ZN(n415) );
  INV_X1 U1345 ( .A(mid_pipe_sum_q_1__4_), .ZN(n396) );
  INV_X1 U1349 ( .A(mid_pipe_sum_q_1__19_), .ZN(n411) );
  INV_X1 U1352 ( .A(mid_pipe_sum_q_1__14_), .ZN(n406) );
  INV_X1 U1355 ( .A(mid_pipe_sum_q_1__16_), .ZN(n408) );
  INV_X1 U1358 ( .A(mid_pipe_sum_q_1__6_), .ZN(n398) );
  INV_X1 U1359 ( .A(mid_pipe_sum_q_1__8_), .ZN(n400) );
  INV_X1 U1360 ( .A(mid_pipe_sum_q_1__15_), .ZN(n407) );
  INV_X1 U1367 ( .A(n379), .ZN(n445) );
  INV_X1 U1374 ( .A(n378), .ZN(n449) );
  INV_X1 U1381 ( .A(n569), .ZN(n459) );
  INV_X1 U1389 ( .A(mid_pipe_eff_sub_q_1_), .ZN(n450) );
  INV_X1 U1390 ( .A(inp_pipe_operands_q_1__2__10_), .ZN(n464) );
  INV_X1 U1393 ( .A(inp_pipe_operands_q_1__0__0_), .ZN(n506) );
  INV_X1 U1394 ( .A(mid_pipe_sum_q_1__13_), .ZN(n405) );
  INV_X1 U1395 ( .A(mid_pipe_sum_q_1__7_), .ZN(n399) );
  INV_X1 U1396 ( .A(mid_pipe_sum_q_1__20_), .ZN(n412) );
  INV_X1 U1397 ( .A(mid_pipe_sum_q_1__24_), .ZN(n416) );
  INV_X1 U1411 ( .A(mid_pipe_sum_q_1__21_), .ZN(n413) );
  AND2_X1 U1414 ( .A1(n656), .A2(n1349), .ZN(n2125) );
  AND2_X1 U1415 ( .A1(n653), .A2(n1349), .ZN(n1335) );
  fpnew_classifier_2_3 i_class_inputs ( .operands_i({1'b0, 
        inp_pipe_operands_q_1__2__14_, inp_pipe_operands_q_1__2__13_, 
        inp_pipe_operands_q_1__2__12_, inp_pipe_operands_q_1__2__11_, 
        inp_pipe_operands_q_1__2__10_, inp_pipe_operands_q_1__2__9_, 
        inp_pipe_operands_q_1__2__8_, inp_pipe_operands_q_1__2__7_, 
        inp_pipe_operands_q_1__2__6_, inp_pipe_operands_q_1__2__5_, 
        inp_pipe_operands_q_1__2__4_, inp_pipe_operands_q_1__2__3_, 
        inp_pipe_operands_q_1__2__2_, inp_pipe_operands_q_1__2__1_, 
        inp_pipe_operands_q_1__2__0_, 1'b0, inp_pipe_operands_q_1__1__14_, 
        inp_pipe_operands_q_1__1__13_, inp_pipe_operands_q_1__1__12_, 
        inp_pipe_operands_q_1__1__11_, inp_pipe_operands_q_1__1__10_, 
        inp_pipe_operands_q_1__1__9_, inp_pipe_operands_q_1__1__8_, 
        inp_pipe_operands_q_1__1__7_, inp_pipe_operands_q_1__1__6_, 
        inp_pipe_operands_q_1__1__5_, inp_pipe_operands_q_1__1__4_, 
        inp_pipe_operands_q_1__1__3_, inp_pipe_operands_q_1__1__2_, 
        inp_pipe_operands_q_1__1__1_, inp_pipe_operands_q_1__1__0_, 1'b0, 
        inp_pipe_operands_q_1__0__14_, inp_pipe_operands_q_1__0__13_, 
        inp_pipe_operands_q_1__0__12_, inp_pipe_operands_q_1__0__11_, 
        inp_pipe_operands_q_1__0__10_, inp_pipe_operands_q_1__0__9_, 
        inp_pipe_operands_q_1__0__8_, inp_pipe_operands_q_1__0__7_, 
        inp_pipe_operands_q_1__0__6_, inp_pipe_operands_q_1__0__5_, 
        inp_pipe_operands_q_1__0__4_, inp_pipe_operands_q_1__0__3_, 
        inp_pipe_operands_q_1__0__2_, inp_pipe_operands_q_1__0__1_, 
        inp_pipe_operands_q_1__0__0_}), .is_boxed_i({inp_pipe_is_boxed_q_1__2_, 
        inp_pipe_is_boxed_q_1__1_, inp_pipe_is_boxed_q_1__0_}), 
        .info_o_2__is_normal_(info_q[15]), .info_o_2__is_inf_(info_q[14]), 
        .info_o_2__is_nan__BAR(info_q[13]), .info_o_2__is_signalling_(
        info_q[12]), .info_o_1__is_normal_(info_q[11]), 
        .info_o_1__is_subnormal_(info_q[10]), .info_o_1__is_zero_(info_q[9]), 
        .info_o_1__is_inf_(info_q[8]), .info_o_1__is_signalling_(info_q[6]), 
        .info_o_0__is_normal_(info_q[5]), .info_o_0__is_subnormal_(info_q[4]), 
        .info_o_0__is_zero_(info_q[3]), .info_o_0__is_inf_(info_q[2]), 
        .info_o_0__is_signalling_(info_q[0]), .info_o_1__is_nan__BAR(info_q[7]), .info_o_0__is_nan__BAR(info_q[1]) );
  lzc_00000019_1 i_lzc ( .in_i({mid_pipe_sum_q_1__24_, mid_pipe_sum_q_1__23_, 
        mid_pipe_sum_q_1__22_, mid_pipe_sum_q_1__21_, mid_pipe_sum_q_1__20_, 
        mid_pipe_sum_q_1__19_, mid_pipe_sum_q_1__18_, mid_pipe_sum_q_1__17_, 
        mid_pipe_sum_q_1__16_, mid_pipe_sum_q_1__15_, mid_pipe_sum_q_1__14_, 
        mid_pipe_sum_q_1__13_, mid_pipe_sum_q_1__12_, mid_pipe_sum_q_1__11_, 
        mid_pipe_sum_q_1__10_, mid_pipe_sum_q_1__9_, mid_pipe_sum_q_1__8_, 
        mid_pipe_sum_q_1__7_, mid_pipe_sum_q_1__6_, mid_pipe_sum_q_1__5_, 
        mid_pipe_sum_q_1__4_, mid_pipe_sum_q_1__3_, mid_pipe_sum_q_1__2_, 
        mid_pipe_sum_q_1__1_, mid_pipe_sum_q_1__0_}), .cnt_o(
        leading_zero_count), .empty_o(lzc_zeroes) );
  fpnew_rounding_0000000f i_fpnew_rounding ( .abs_value_i({pre_round_exponent, 
        pre_round_mantissa}), .sign_i(n1566), .round_sticky_bits_i(
        round_sticky_bits), .rnd_mode_i({n1556, n1555, n1554}), 
        .effective_subtraction_i(n1631), .abs_rounded_o(rounded_abs), .sign_o(
        regular_result_15_) );
  fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_inc_0 add_542 ( .A({
        gt_547_A_6_, gt_547_A_5_, gt_547_A_4_, gt_547_A_3_, gt_547_A_2_, 
        gt_547_A_1_, sub_549_A_0_}), .SUM({N343, N342, N341, N340, N339, N338, 
        N337}) );
  fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW_mult_uns_0 mult_325 ( 
        .a({info_a_is_normal_, n59, operand_a, 
        dp_cluster_1_operand_a_mantissa__0_}), .b({info_b_is_normal_, 
        operand_b}), .product({product_21_, product_20_, product_19_, 
        product_18_, product_17_, product_16_, product_15_, product_14_, 
        product_13_, product_12_, product_11_, product_10_, product_9_, 
        product_8_, product_7_, product_6_, product_5_, product_4_, product_3_, 
        product_2_, product_1_, product_0_}), .rst_ni_INV(rst_ni), .clk_i(
        clk_i) );
  fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_sub_6 sub_293 ( .A({
        1'b0, exponent_addend[5:0]}), .B({n680, n681, n682, n683, n684, n685, 
        n686}), .CI(1'b0), .DIFF({exponent_difference, N140}) );
  fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_add_6 add_1_root_add_368_2 ( 
        .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, product_21_, product_20_, product_19_, product_18_, 
        product_17_, product_16_, product_15_, product_14_, product_13_, 
        product_12_, product_11_, product_10_, product_9_, product_8_, 
        product_7_, product_6_, product_5_, product_4_, product_3_, product_2_, 
        product_1_, product_0_, 1'b0, 1'b0}), .B({1'b0, addend_shifted}), .CI(
        inject_carry_in), .SUM(sum_raw), .rst_ni_INV(rst_ni), .clk_i(clk_i) );
  fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_sub_7 sub_372 ( .A({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .B(sum_raw[36:0]), .CI(1'b0), .DIFF({N262, N261, N260, N259, 
        N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, 
        N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, 
        N234, N233, N232, N231, N230, N229, N228, N227, N226}) );
  fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_sub_8 sub_1_root_add_512 ( 
        .A({mid_pipe_exp_prod_q_1__6_, mid_pipe_exp_prod_q_1__6_, 
        mid_pipe_exp_prod_q_1__5_, mid_pipe_exp_prod_q_1__4_, 
        mid_pipe_exp_prod_q_1__3_, mid_pipe_exp_prod_q_1__2_, 
        mid_pipe_exp_prod_q_1__1_, mid_pipe_exp_prod_q_1__0_}), .B({1'b0, 1'b0, 
        1'b0, leading_zero_count}), .CI(1'b0), .DIFF({N281, N280, N279, N278, 
        N277, N276, N275, N274}) );
  fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_sub_9 sub_1_root_add_515 ( 
        .A({n1628, n1627, n1626, n1625, n1624, n1623, n1622}), .B({1'b0, 1'b0, 
        n1716, n1717, n2184, n1718, n1719}), .CI(1'b0), .DIFF({N306, N305, 
        N304, N303, N302, N301, N300}) );
  INV_X1 add_0_root_add_515_U49 ( .A(N301), .ZN(add_0_root_add_515_n20) );
  INV_X1 add_0_root_add_515_U48 ( .A(N302), .ZN(add_0_root_add_515_n16) );
  INV_X1 add_0_root_add_515_U47 ( .A(N305), .ZN(add_0_root_add_515_n6) );
  INV_X1 add_0_root_add_515_U46 ( .A(N304), .ZN(add_0_root_add_515_n9) );
  XNOR2_X1 add_0_root_add_515_U45 ( .A(add_0_root_add_515_n20), .B(N300), .ZN(
        N308) );
  XNOR2_X1 add_0_root_add_515_U44 ( .A(add_0_root_add_515_n16), .B(
        add_0_root_add_515_n17), .ZN(N309) );
  XNOR2_X1 add_0_root_add_515_U43 ( .A(add_0_root_add_515_n10), .B(
        add_0_root_add_515_n9), .ZN(N311) );
  AND2_X1 add_0_root_add_515_U42 ( .A1(add_0_root_add_515_n10), .A2(
        add_0_root_add_515_n40), .ZN(add_0_root_add_515_n41) );
  XOR2_X1 add_0_root_add_515_U41 ( .A(add_0_root_add_515_n41), .B(N306), .Z(
        N313) );
  NAND2_X1 add_0_root_add_515_U40 ( .A1(add_0_root_add_515_n17), .A2(N302), 
        .ZN(add_0_root_add_515_n14) );
  XOR2_X1 add_0_root_add_515_U39 ( .A(add_0_root_add_515_n14), .B(
        add_0_root_add_515_n13), .Z(N310) );
  NAND2_X1 add_0_root_add_515_U38 ( .A1(add_0_root_add_515_n10), .A2(N304), 
        .ZN(add_0_root_add_515_n7) );
  XOR2_X1 add_0_root_add_515_U37 ( .A(add_0_root_add_515_n7), .B(
        add_0_root_add_515_n6), .Z(N312) );
  INV_X1 add_0_root_add_515_U36 ( .A(N303), .ZN(add_0_root_add_515_n13) );
  NAND2_X1 add_0_root_add_515_U35 ( .A1(N301), .A2(N300), .ZN(
        add_0_root_add_515_n18) );
  INV_X1 add_0_root_add_515_U34 ( .A(add_0_root_add_515_n18), .ZN(
        add_0_root_add_515_n17) );
  NAND2_X1 add_0_root_add_515_U33 ( .A1(N302), .A2(N303), .ZN(
        add_0_root_add_515_n11) );
  NOR2_X1 add_0_root_add_515_U32 ( .A1(add_0_root_add_515_n11), .A2(
        add_0_root_add_515_n18), .ZN(add_0_root_add_515_n10) );
  AND2_X1 add_0_root_add_515_U31 ( .A1(N304), .A2(N305), .ZN(
        add_0_root_add_515_n40) );
  NAND2_X1 U595 ( .A1(n206), .A2(n602), .ZN(n745) );
  BUF_X1 U62 ( .A(n862), .Z(n43) );
  INV_X1 U402 ( .A(n769), .ZN(n796) );
  INV_X1 U1339 ( .A(n1625), .ZN(n40) );
  AND2_X1 U282 ( .A1(n817), .A2(n796), .ZN(n204) );
  AND2_X1 U26 ( .A1(n904), .A2(n972), .ZN(n101) );
  NAND2_X1 U262 ( .A1(n173), .A2(n1156), .ZN(n1209) );
  BUF_X1 U181 ( .A(n236), .Z(n265) );
  BUF_X1 U10 ( .A(n1170), .Z(n78) );
  BUF_X1 U11 ( .A(n241), .Z(n112) );
  INV_X1 U1364 ( .A(n1337), .ZN(n167) );
  AOI221_X1 U22 ( .B1(n275), .B2(n1580), .C1(n271), .C2(n1668), .A(n1182), 
        .ZN(n1193) );
  INV_X1 U98 ( .A(n65), .ZN(n1263) );
  BUF_X1 U290 ( .A(n895), .Z(n259) );
  INV_X1 U1318 ( .A(inp_pipe_operands_q_1__0__7_), .ZN(n499) );
  INV_X1 U1300 ( .A(inp_pipe_operands_q_1__0__9_), .ZN(n497) );
  INV_X1 U1391 ( .A(inp_pipe_operands_q_1__0__8_), .ZN(n498) );
  INV_X1 U85 ( .A(n36), .ZN(n59) );
  OAI222_X1 U3 ( .A1(n938), .A2(n1622), .B1(n936), .B2(n1719), .C1(n1662), 
        .C2(n2134), .ZN(n973) );
  OAI221_X1 U4 ( .B1(n938), .B2(n931), .C1(n1662), .C2(n2148), .A(n929), .ZN(
        n1176) );
  INV_X1 U6 ( .A(n1623), .ZN(n31) );
  OR2_X1 U7 ( .A1(n24), .A2(n938), .ZN(n912) );
  INV_X1 U8 ( .A(n200), .ZN(n194) );
  INV_X1 U9 ( .A(n194), .ZN(n195) );
  OAI222_X1 U12 ( .A1(n939), .A2(n938), .B1(n937), .B2(n936), .C1(n1662), .C2(
        n2131), .ZN(n1155) );
  CLKBUF_X1 U13 ( .A(n75), .Z(n232) );
  AOI222_X1 U15 ( .A1(n172), .A2(n78), .B1(n1122), .B2(n74), .C1(n1121), .C2(
        n195), .ZN(n1123) );
  AND2_X1 U18 ( .A1(n794), .A2(n796), .ZN(n203) );
  AND2_X1 U20 ( .A1(n817), .A2(n769), .ZN(n205) );
  CLKBUF_X1 U25 ( .A(n241), .Z(n113) );
  INV_X1 U28 ( .A(inp_pipe_operands_q_1__0__5_), .ZN(n501) );
  CLKBUF_X1 U29 ( .A(n855), .Z(n250) );
  INV_X1 U31 ( .A(inp_pipe_operands_q_1__1__11_), .ZN(n479) );
  CLKBUF_X1 U32 ( .A(n855), .Z(n251) );
  INV_X1 U35 ( .A(n1336), .ZN(n313) );
  AOI21_X1 U36 ( .B1(n1232), .B2(n1233), .A(n191), .ZN(pre_round_exponent[0])
         );
  OAI21_X1 U37 ( .B1(n478), .B2(n332), .A(n331), .ZN(n342) );
  INV_X1 U38 ( .A(n1316), .ZN(n315) );
  CLKBUF_X1 U40 ( .A(n855), .Z(n252) );
  INV_X1 U41 ( .A(inp_pipe_operands_q_1__1__10_), .ZN(n480) );
  INV_X1 U42 ( .A(n1101), .ZN(n895) );
  CLKBUF_X1 U45 ( .A(n1296), .Z(n283) );
  INV_X1 U46 ( .A(n1338), .ZN(n166) );
  AND2_X1 U47 ( .A1(n166), .A2(n167), .ZN(n53) );
  INV_X1 U48 ( .A(n745), .ZN(n789) );
  CLKBUF_X1 U58 ( .A(n289), .Z(n287) );
  INV_X1 U60 ( .A(inp_pipe_operands_q_1__0__11_), .ZN(n495) );
  NAND2_X1 U61 ( .A1(n2169), .A2(n310), .ZN(inp_pipe_is_boxed_q_1__1_) );
  NAND2_X1 U67 ( .A1(n2168), .A2(n310), .ZN(inp_pipe_is_boxed_q_1__0_) );
  CLKBUF_X1 U69 ( .A(n1296), .Z(n282) );
  CLKBUF_X1 U70 ( .A(n282), .Z(n279) );
  CLKBUF_X1 U71 ( .A(n283), .Z(n277) );
  CLKBUF_X1 U73 ( .A(n283), .Z(n276) );
  CLKBUF_X1 U75 ( .A(n1298), .Z(n289) );
  INV_X1 U76 ( .A(inp_pipe_operands_q_1__0__13_), .ZN(n493) );
  INV_X1 U81 ( .A(inp_pipe_operands_q_1__0__10_), .ZN(n496) );
  INV_X1 U82 ( .A(inp_pipe_operands_q_1__1__0_), .ZN(n490) );
  AND2_X1 U83 ( .A1(n904), .A2(n972), .ZN(n199) );
  INV_X1 U84 ( .A(inp_pipe_operands_q_1__1__13_), .ZN(n477) );
  INV_X1 U86 ( .A(inp_pipe_operands_q_1__0__12_), .ZN(n494) );
  INV_X1 U87 ( .A(inp_pipe_operands_q_1__1__14_), .ZN(n476) );
  INV_X1 U89 ( .A(inp_pipe_operands_q_1__1__12_), .ZN(n478) );
  CLKBUF_X1 U99 ( .A(n1142), .Z(n79) );
  NAND2_X1 U104 ( .A1(n148), .A2(n973), .ZN(n1142) );
  NOR2_X1 U110 ( .A1(n973), .A2(n972), .ZN(n2207) );
  NOR2_X1 U113 ( .A1(n973), .A2(n972), .ZN(n2208) );
  NAND2_X1 U114 ( .A1(n2170), .A2(n310), .ZN(inp_pipe_is_boxed_q_1__2_) );
endmodule


module fpnew_opgroup_fmt_slice_0_2_00000010_0_00000002_3__logic_Z_1yB_ ( clk_i, 
        rst_ni, operands_i, is_boxed_i, rnd_mode_i, op_i, op_mod_i, 
        vectorial_op_i, tag_i, in_valid_i, in_ready_o, flush_i, result_o, 
        extension_bit_o, tag_o, out_valid_o, out_ready_i, busy_o, status_o_NV_, 
        status_o_DZ_, status_o_OF_, status_o_UF_, status_o_NX_ );
  input [47:0] operands_i;
  input [2:0] is_boxed_i;
  input [2:0] rnd_mode_i;
  input [3:0] op_i;
  output [15:0] result_o;
  input clk_i, rst_ni, op_mod_i, vectorial_op_i, tag_i, in_valid_i, flush_i,
         out_ready_i;
  output in_ready_o, extension_bit_o, tag_o, out_valid_o, busy_o, status_o_NV_,
         status_o_DZ_, status_o_OF_, status_o_UF_, status_o_NX_;
  wire   gen_num_lanes_0__active_lane_op_status_NV_,
         gen_num_lanes_0__active_lane_op_status_OF_,
         gen_num_lanes_0__active_lane_op_status_UF_,
         gen_num_lanes_0__active_lane_op_status_NX_, n1;
  wire   [3:5] n;
  wire   [15:0] gen_num_lanes_0__active_lane_op_result;

  AND2_X1 U3 ( .A1(gen_num_lanes_0__active_lane_op_status_NV_), .A2(
        out_valid_o), .ZN(status_o_NV_) );
  AND2_X1 U4 ( .A1(gen_num_lanes_0__active_lane_op_status_NX_), .A2(
        out_valid_o), .ZN(status_o_NX_) );
  AND2_X1 U5 ( .A1(gen_num_lanes_0__active_lane_op_status_UF_), .A2(
        out_valid_o), .ZN(status_o_UF_) );
  AND2_X1 U6 ( .A1(gen_num_lanes_0__active_lane_op_status_OF_), .A2(
        out_valid_o), .ZN(status_o_OF_) );
  INV_X1 U7 ( .A(out_valid_o), .ZN(n1) );
  OR2_X1 U8 ( .A1(n1), .A2(gen_num_lanes_0__active_lane_op_result[0]), .ZN(
        result_o[0]) );
  OR2_X1 U9 ( .A1(n1), .A2(gen_num_lanes_0__active_lane_op_result[1]), .ZN(
        result_o[1]) );
  OR2_X1 U10 ( .A1(n1), .A2(gen_num_lanes_0__active_lane_op_result[2]), .ZN(
        result_o[2]) );
  OR2_X1 U11 ( .A1(n1), .A2(gen_num_lanes_0__active_lane_op_result[3]), .ZN(
        result_o[3]) );
  OR2_X1 U12 ( .A1(n1), .A2(gen_num_lanes_0__active_lane_op_result[4]), .ZN(
        result_o[4]) );
  OR2_X1 U13 ( .A1(n1), .A2(gen_num_lanes_0__active_lane_op_result[5]), .ZN(
        result_o[5]) );
  OR2_X1 U14 ( .A1(gen_num_lanes_0__active_lane_op_result[6]), .A2(n1), .ZN(
        result_o[6]) );
  OR2_X1 U15 ( .A1(gen_num_lanes_0__active_lane_op_result[7]), .A2(n1), .ZN(
        result_o[7]) );
  OR2_X1 U16 ( .A1(n1), .A2(gen_num_lanes_0__active_lane_op_result[8]), .ZN(
        result_o[8]) );
  OR2_X1 U17 ( .A1(n1), .A2(gen_num_lanes_0__active_lane_op_result[9]), .ZN(
        result_o[9]) );
  OR2_X1 U18 ( .A1(n1), .A2(gen_num_lanes_0__active_lane_op_result[10]), .ZN(
        result_o[10]) );
  OR2_X1 U19 ( .A1(gen_num_lanes_0__active_lane_op_result[11]), .A2(n1), .ZN(
        result_o[11]) );
  OR2_X1 U20 ( .A1(n1), .A2(gen_num_lanes_0__active_lane_op_result[12]), .ZN(
        result_o[12]) );
  OR2_X1 U21 ( .A1(gen_num_lanes_0__active_lane_op_result[13]), .A2(n1), .ZN(
        result_o[13]) );
  OR2_X1 U22 ( .A1(gen_num_lanes_0__active_lane_op_result[14]), .A2(n1), .ZN(
        result_o[14]) );
  OR2_X1 U23 ( .A1(n1), .A2(gen_num_lanes_0__active_lane_op_result[15]), .ZN(
        result_o[15]) );
  fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB_ gen_num_lanes_0__active_lane_lane_instance_i_fma ( 
        .clk_i(clk_i), .rst_ni(rst_ni), .operands_i(operands_i), .is_boxed_i({
        1'b1, 1'b1, 1'b1}), .rnd_mode_i(rnd_mode_i), .op_i(op_i), .op_mod_i(
        op_mod_i), .tag_i(tag_i), .aux_i(1'b0), .in_valid_i(in_valid_i), 
        .in_ready_o(in_ready_o), .flush_i(flush_i), .result_o(
        gen_num_lanes_0__active_lane_op_result), .tag_o(tag_o), .out_valid_o(
        out_valid_o), .out_ready_i(out_ready_i), .busy_o(busy_o), 
        .status_o_NV_(gen_num_lanes_0__active_lane_op_status_NV_), 
        .status_o_OF_(gen_num_lanes_0__active_lane_op_status_OF_), 
        .status_o_UF_(gen_num_lanes_0__active_lane_op_status_UF_), 
        .status_o_NX_(gen_num_lanes_0__active_lane_op_status_NX_) );
endmodule


module lzc_00000005_0_0 ( in_i, cnt_o, empty_o_BAR );
  input [4:0] in_i;
  output [2:0] cnt_o;
  output empty_o_BAR;

  assign empty_o_BAR = in_i[2];
  assign cnt_o[1] = in_i[2];

endmodule


module lzc_00000005_0_7 ( in_i, cnt_o, empty_o );
  input [4:0] in_i;
  output [2:0] cnt_o;
  output empty_o;

  assign cnt_o[1] = in_i[2];

endmodule


module rr_arb_tree_00000005_1_346242 ( clk_i, rst_ni, flush_i, rr_i, req_i, 
        gnt_o, data_i, req_o, gnt_i, data_o, idx_o );
  input [2:0] rr_i;
  input [4:0] req_i;
  output [4:0] gnt_o;
  input [114:0] data_i;
  output [22:0] data_o;
  output [2:0] idx_o;
  input clk_i, rst_ni, flush_i, gnt_i;
  output req_o;
  wire   gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask_2_,
         gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask_2_,
         gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx_1_,
         gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty,
         gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx_1_, n23, n24, n26, n36,
         n1, n6, n83, n92, n93, n102, n105, n116, n130, n131, n140,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4;
  wire   [2:0] gen_arbiter_rr_q;
  assign req_o = req_i[2];

  AND2_X1 U3 ( .A1(req_i[2]), .A2(req_i[2]), .ZN(n1) );
  AND2_X1 U20 ( .A1(gnt_i), .A2(n6), .ZN(gnt_o[2]) );
  INV_X1 U24 ( .A(n26), .ZN(n92) );
  NOR2_X1 U25 ( .A1(n83), .A2(n93), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask_2_) );
  INV_X1 U26 ( .A(n36), .ZN(n93) );
  NOR2_X1 U27 ( .A1(n36), .A2(n83), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask_2_) );
  AOI21_X1 U42 ( .B1(req_i[2]), .B2(gnt_i), .A(flush_i), .ZN(n26) );
  OAI22_X1 U43 ( .A1(n92), .A2(n131), .B1(n24), .B2(n23), .ZN(
        gen_arbiter_rr_q[1]) );
  AOI22_X1 U44 ( .A1(gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx_1_), .A2(
        n140), .B1(gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx_1_), .B2(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .ZN(n24) );
  OR2_X1 U47 ( .A1(n26), .A2(flush_i), .ZN(n23) );
  NOR2_X1 U51 ( .A1(n102), .A2(n105), .ZN(n36) );
  INV_X1 U52 ( .A(req_i[2]), .ZN(n83) );
  DFFR_X1 MY_CLK_r_REG220_S4 ( .D(gen_arbiter_rr_q[1]), .CK(clk_i), .RN(rst_ni), .Q(n105), .QN(n131) );
  DFFR_X1 MY_CLK_r_REG219_S3 ( .D(gen_arbiter_rr_q[0]), .CK(clk_i), .RN(rst_ni), .QN(n116) );
  DFFR_X1 MY_CLK_r_REG221_S4 ( .D(gen_arbiter_rr_q[2]), .CK(clk_i), .RN(rst_ni), .Q(n102), .QN(n130) );
  lzc_00000005_0_0 gen_arbiter_gen_int_rr_gen_fair_arb_i_lzc_upper ( .in_i({
        1'b0, 1'b0, gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask_2_, 1'b0, 
        1'b0}), .cnt_o({SYNOPSYS_UNCONNECTED_1, 
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx_1_, 
        SYNOPSYS_UNCONNECTED_2}), .empty_o_BAR(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty) );
  lzc_00000005_0_7 gen_arbiter_gen_int_rr_gen_fair_arb_i_lzc_lower ( .in_i({
        1'b0, 1'b0, gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask_2_, 1'b0, 
        1'b0}), .cnt_o({SYNOPSYS_UNCONNECTED_3, 
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx_1_, 
        SYNOPSYS_UNCONNECTED_4}) );
  CLKBUF_X1 U4 ( .A(n1), .Z(n6) );
  AND2_X1 U5 ( .A1(data_i[46]), .A2(n6), .ZN(data_o[0]) );
  AND2_X1 U6 ( .A1(data_i[50]), .A2(n1), .ZN(data_o[4]) );
  AND2_X1 U7 ( .A1(data_i[53]), .A2(n1), .ZN(data_o[7]) );
  AND2_X1 U8 ( .A1(data_i[54]), .A2(n1), .ZN(data_o[8]) );
  AND2_X1 U9 ( .A1(data_i[55]), .A2(n1), .ZN(data_o[9]) );
  AND2_X1 U10 ( .A1(data_i[56]), .A2(n1), .ZN(data_o[10]) );
  AND2_X1 U11 ( .A1(data_i[58]), .A2(n6), .ZN(data_o[12]) );
  AND2_X1 U12 ( .A1(data_i[63]), .A2(n6), .ZN(data_o[17]) );
  AND2_X1 U13 ( .A1(data_i[65]), .A2(n6), .ZN(data_o[19]) );
  AND2_X1 U14 ( .A1(data_i[66]), .A2(n6), .ZN(data_o[20]) );
  AND2_X1 U15 ( .A1(data_i[57]), .A2(n6), .ZN(data_o[11]) );
  AND2_X1 U16 ( .A1(data_i[60]), .A2(n6), .ZN(data_o[14]) );
  AND2_X1 U17 ( .A1(data_i[48]), .A2(n6), .ZN(data_o[2]) );
  AND2_X1 U18 ( .A1(data_i[52]), .A2(n6), .ZN(data_o[6]) );
  AND2_X1 U19 ( .A1(data_i[67]), .A2(n6), .ZN(data_o[21]) );
  AND2_X1 U21 ( .A1(data_i[59]), .A2(n6), .ZN(data_o[13]) );
  AND2_X1 U22 ( .A1(data_i[62]), .A2(n6), .ZN(data_o[16]) );
  AND2_X1 U23 ( .A1(data_i[68]), .A2(n6), .ZN(data_o[22]) );
  AND2_X1 U28 ( .A1(data_i[64]), .A2(n6), .ZN(data_o[18]) );
  AND2_X1 U29 ( .A1(data_i[49]), .A2(n1), .ZN(data_o[3]) );
  AND2_X1 U30 ( .A1(data_i[61]), .A2(n6), .ZN(data_o[15]) );
  INV_X1 U31 ( .A(gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .ZN(n140)
         );
  NOR2_X1 U32 ( .A1(n92), .A2(n116), .ZN(gen_arbiter_rr_q[0]) );
  NOR2_X1 U33 ( .A1(n92), .A2(n130), .ZN(gen_arbiter_rr_q[2]) );
endmodule


module fpnew_opgroup_block_0_00000010_0_04_4_155_3__logic_Z_1yB__395949 ( 
        clk_i, rst_ni, operands_i, is_boxed_i, rnd_mode_i, op_i, op_mod_i, 
        src_fmt_i, dst_fmt_i, int_fmt_i, vectorial_op_i, tag_i, in_valid_i, 
        in_ready_o, flush_i, result_o, extension_bit_o, tag_o, out_valid_o, 
        out_ready_i, busy_o, status_o_NV_, status_o_DZ_, status_o_OF_, 
        status_o_UF_, status_o_NX_ );
  input [47:0] operands_i;
  input [14:0] is_boxed_i;
  input [2:0] rnd_mode_i;
  input [3:0] op_i;
  input [2:0] src_fmt_i;
  input [2:0] dst_fmt_i;
  input [1:0] int_fmt_i;
  output [15:0] result_o;
  input clk_i, rst_ni, op_mod_i, vectorial_op_i, tag_i, in_valid_i, flush_i,
         out_ready_i;
  output in_ready_o, extension_bit_o, tag_o, out_valid_o, busy_o, status_o_NV_,
         status_o_DZ_, status_o_OF_, status_o_UF_, status_o_NX_;
  wire   fmt_in_ready_2_, fmt_out_valid_2_, fmt_outputs_2__result__15_,
         fmt_outputs_2__result__14_, fmt_outputs_2__result__13_,
         fmt_outputs_2__result__12_, fmt_outputs_2__result__11_,
         fmt_outputs_2__result__10_, fmt_outputs_2__result__9_,
         fmt_outputs_2__result__8_, fmt_outputs_2__result__7_,
         fmt_outputs_2__result__6_, fmt_outputs_2__result__5_,
         fmt_outputs_2__result__4_, fmt_outputs_2__result__3_,
         fmt_outputs_2__result__2_, fmt_outputs_2__result__1_,
         fmt_outputs_2__result__0_, fmt_outputs_2__status__NV_,
         fmt_outputs_2__status__OF_, fmt_outputs_2__status__UF_,
         fmt_outputs_2__status__NX_, fmt_outputs_2__tag_,
         gen_parallel_slices_2__active_format_in_valid, fmt_out_ready_2_, n4,
         n5, n6, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9;

  NOR4_X1 U3 ( .A1(n5), .A2(n4), .A3(n6), .A4(dst_fmt_i[0]), .ZN(in_ready_o)
         );
  INV_X1 U4 ( .A(fmt_in_ready_2_), .ZN(n4) );
  NOR4_X1 U5 ( .A1(dst_fmt_i[2]), .A2(dst_fmt_i[0]), .A3(n6), .A4(n5), .ZN(
        gen_parallel_slices_2__active_format_in_valid) );
  INV_X1 U6 ( .A(in_valid_i), .ZN(n5) );
  INV_X1 U7 ( .A(dst_fmt_i[1]), .ZN(n6) );
  fpnew_opgroup_fmt_slice_0_2_00000010_0_00000002_3__logic_Z_1yB_ gen_parallel_slices_2__active_format_i_fmt_slice ( 
        .clk_i(clk_i), .rst_ni(rst_ni), .operands_i(operands_i), .is_boxed_i({
        1'b1, 1'b1, 1'b1}), .rnd_mode_i(rnd_mode_i), .op_i(op_i), .op_mod_i(
        op_mod_i), .vectorial_op_i(1'b0), .tag_i(tag_i), .in_valid_i(
        gen_parallel_slices_2__active_format_in_valid), .in_ready_o(
        fmt_in_ready_2_), .flush_i(flush_i), .result_o({
        fmt_outputs_2__result__15_, fmt_outputs_2__result__14_, 
        fmt_outputs_2__result__13_, fmt_outputs_2__result__12_, 
        fmt_outputs_2__result__11_, fmt_outputs_2__result__10_, 
        fmt_outputs_2__result__9_, fmt_outputs_2__result__8_, 
        fmt_outputs_2__result__7_, fmt_outputs_2__result__6_, 
        fmt_outputs_2__result__5_, fmt_outputs_2__result__4_, 
        fmt_outputs_2__result__3_, fmt_outputs_2__result__2_, 
        fmt_outputs_2__result__1_, fmt_outputs_2__result__0_}), .tag_o(
        fmt_outputs_2__tag_), .out_valid_o(fmt_out_valid_2_), .out_ready_i(
        fmt_out_ready_2_), .busy_o(busy_o), .status_o_NV_(
        fmt_outputs_2__status__NV_), .status_o_OF_(fmt_outputs_2__status__OF_), 
        .status_o_UF_(fmt_outputs_2__status__UF_), .status_o_NX_(
        fmt_outputs_2__status__NX_) );
  rr_arb_tree_00000005_1_346242 i_arbiter ( .clk_i(clk_i), .rst_ni(rst_ni), 
        .flush_i(flush_i), .rr_i({1'b0, 1'b0, 1'b0}), .req_i({1'b0, 1'b0, 
        fmt_out_valid_2_, 1'b0, 1'b0}), .gnt_o({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, fmt_out_ready_2_, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4}), .data_i({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, fmt_outputs_2__result__15_, 
        fmt_outputs_2__result__14_, fmt_outputs_2__result__13_, 
        fmt_outputs_2__result__12_, fmt_outputs_2__result__11_, 
        fmt_outputs_2__result__10_, fmt_outputs_2__result__9_, 
        fmt_outputs_2__result__8_, fmt_outputs_2__result__7_, 
        fmt_outputs_2__result__6_, fmt_outputs_2__result__5_, 
        fmt_outputs_2__result__4_, fmt_outputs_2__result__3_, 
        fmt_outputs_2__result__2_, fmt_outputs_2__result__1_, 
        fmt_outputs_2__result__0_, fmt_outputs_2__status__NV_, 1'b0, 
        fmt_outputs_2__status__OF_, fmt_outputs_2__status__UF_, 
        fmt_outputs_2__status__NX_, 1'b1, fmt_outputs_2__tag_, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .req_o(out_valid_o), 
        .gnt_i(out_ready_i), .data_o({result_o, status_o_NV_, 
        SYNOPSYS_UNCONNECTED_5, status_o_OF_, status_o_UF_, status_o_NX_, 
        SYNOPSYS_UNCONNECTED_6, tag_o}), .idx_o({SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9}) );
endmodule


module rr_arb_tree_00000005_1_452242 ( clk_i, rst_ni, flush_i, rr_i, req_i, 
        gnt_o, data_i, req_o, gnt_i, data_o, idx_o );
  input [2:0] rr_i;
  input [4:0] req_i;
  output [4:0] gnt_o;
  input [114:0] data_i;
  output [22:0] data_o;
  output [2:0] idx_o;
  input clk_i, rst_ni, flush_i, gnt_i;
  output req_o;
  wire   n118, n119, n120;
  wire   [2:0] gen_arbiter_rr_q;

  DFFR_X1 MY_CLK_r_REG228_S3 ( .D(gen_arbiter_rr_q[0]), .CK(clk_i), .RN(rst_ni), .QN(n119) );
  DFFR_X1 MY_CLK_r_REG229_S3 ( .D(gen_arbiter_rr_q[2]), .CK(clk_i), .RN(rst_ni), .QN(n120) );
  DFFR_X1 MY_CLK_r_REG227_S3 ( .D(gen_arbiter_rr_q[1]), .CK(clk_i), .RN(rst_ni), .QN(n118) );
  NOR2_X1 U3 ( .A1(flush_i), .A2(n119), .ZN(gen_arbiter_rr_q[0]) );
  NOR2_X1 U4 ( .A1(flush_i), .A2(n120), .ZN(gen_arbiter_rr_q[2]) );
  NOR2_X1 U5 ( .A1(flush_i), .A2(n118), .ZN(gen_arbiter_rr_q[1]) );
endmodule


module fpnew_opgroup_block_1_00000010_0_04_4_000_3__logic_Z_1yB__395949 ( 
        clk_i, rst_ni, operands_i, is_boxed_i, rnd_mode_i, op_i, op_mod_i, 
        src_fmt_i, dst_fmt_i, int_fmt_i, vectorial_op_i, tag_i, in_valid_i, 
        in_ready_o, flush_i, result_o, extension_bit_o, tag_o, out_valid_o, 
        out_ready_i, busy_o, status_o_NV_, status_o_DZ_, status_o_OF_, 
        status_o_UF_, status_o_NX_ );
  input [31:0] operands_i;
  input [9:0] is_boxed_i;
  input [2:0] rnd_mode_i;
  input [3:0] op_i;
  input [2:0] src_fmt_i;
  input [2:0] dst_fmt_i;
  input [1:0] int_fmt_i;
  output [15:0] result_o;
  input clk_i, rst_ni, op_mod_i, vectorial_op_i, tag_i, in_valid_i, flush_i,
         out_ready_i;
  output in_ready_o, extension_bit_o, tag_o, out_valid_o, busy_o, status_o_NV_,
         status_o_DZ_, status_o_OF_, status_o_UF_, status_o_NX_;
  wire   net60465, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22,
         SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24,
         SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26,
         SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28,
         SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30,
         SYNOPSYS_UNCONNECTED_31;

  rr_arb_tree_00000005_1_452242 i_arbiter ( .clk_i(clk_i), .rst_ni(rst_ni), 
        .flush_i(flush_i), .rr_i({1'b0, 1'b0, 1'b0}), .req_i({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .gnt_o({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5}), .data_i({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .gnt_i(net60465), 
        .data_o({SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, 
        SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, 
        SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25, 
        SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, 
        SYNOPSYS_UNCONNECTED_28}), .idx_o({SYNOPSYS_UNCONNECTED_29, 
        SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31}) );
endmodule


module rr_arb_tree_00000005_1_077242 ( clk_i, rst_ni, flush_i, rr_i, req_i, 
        gnt_o, data_i, req_o, gnt_i, data_o, idx_o );
  input [2:0] rr_i;
  input [4:0] req_i;
  output [4:0] gnt_o;
  input [114:0] data_i;
  output [22:0] data_o;
  output [2:0] idx_o;
  input clk_i, rst_ni, flush_i, gnt_i;
  output req_o;
  wire   n118, n119, n120;
  wire   [2:0] gen_arbiter_rr_q;

  DFFR_X1 MY_CLK_r_REG225_S3 ( .D(gen_arbiter_rr_q[0]), .CK(clk_i), .RN(rst_ni), .QN(n119) );
  DFFR_X1 MY_CLK_r_REG226_S3 ( .D(gen_arbiter_rr_q[2]), .CK(clk_i), .RN(rst_ni), .QN(n120) );
  DFFR_X1 MY_CLK_r_REG224_S3 ( .D(gen_arbiter_rr_q[1]), .CK(clk_i), .RN(rst_ni), .QN(n118) );
  NOR2_X1 U3 ( .A1(flush_i), .A2(n119), .ZN(gen_arbiter_rr_q[0]) );
  NOR2_X1 U4 ( .A1(flush_i), .A2(n120), .ZN(gen_arbiter_rr_q[2]) );
  NOR2_X1 U5 ( .A1(flush_i), .A2(n118), .ZN(gen_arbiter_rr_q[1]) );
endmodule


module fpnew_opgroup_block_2_00000010_0_04_4_000_3__logic_Z_1yB__395949 ( 
        clk_i, rst_ni, operands_i, is_boxed_i, rnd_mode_i, op_i, op_mod_i, 
        src_fmt_i, dst_fmt_i, int_fmt_i, vectorial_op_i, tag_i, in_valid_i, 
        in_ready_o, flush_i, result_o, extension_bit_o, tag_o, out_valid_o, 
        out_ready_i, busy_o, status_o_NV_, status_o_DZ_, status_o_OF_, 
        status_o_UF_, status_o_NX_ );
  input [31:0] operands_i;
  input [9:0] is_boxed_i;
  input [2:0] rnd_mode_i;
  input [3:0] op_i;
  input [2:0] src_fmt_i;
  input [2:0] dst_fmt_i;
  input [1:0] int_fmt_i;
  output [15:0] result_o;
  input clk_i, rst_ni, op_mod_i, vectorial_op_i, tag_i, in_valid_i, flush_i,
         out_ready_i;
  output in_ready_o, extension_bit_o, tag_o, out_valid_o, busy_o, status_o_NV_,
         status_o_DZ_, status_o_OF_, status_o_UF_, status_o_NX_;
  wire   net60464, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22,
         SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24,
         SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26,
         SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28,
         SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30,
         SYNOPSYS_UNCONNECTED_31;

  rr_arb_tree_00000005_1_077242 i_arbiter ( .clk_i(clk_i), .rst_ni(rst_ni), 
        .flush_i(flush_i), .rr_i({1'b0, 1'b0, 1'b0}), .req_i({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .gnt_o({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5}), .data_i({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .gnt_i(net60464), 
        .data_o({SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, 
        SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, 
        SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25, 
        SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, 
        SYNOPSYS_UNCONNECTED_28}), .idx_o({SYNOPSYS_UNCONNECTED_29, 
        SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31}) );
endmodule


module rr_arb_tree_00000005_1_604242 ( clk_i, rst_ni, flush_i, rr_i, req_i, 
        gnt_o, data_i, req_o, gnt_i, data_o, idx_o );
  input [2:0] rr_i;
  input [4:0] req_i;
  output [4:0] gnt_o;
  input [114:0] data_i;
  output [22:0] data_o;
  output [2:0] idx_o;
  input clk_i, rst_ni, flush_i, gnt_i;
  output req_o;
  wire   n118, n119, n120;
  wire   [2:0] gen_arbiter_rr_q;

  DFFR_X1 MY_CLK_r_REG231_S3 ( .D(gen_arbiter_rr_q[0]), .CK(clk_i), .RN(rst_ni), .QN(n118) );
  DFFR_X1 MY_CLK_r_REG232_S3 ( .D(gen_arbiter_rr_q[2]), .CK(clk_i), .RN(rst_ni), .QN(n119) );
  DFFR_X1 MY_CLK_r_REG230_S3 ( .D(gen_arbiter_rr_q[1]), .CK(clk_i), .RN(rst_ni), .QN(n120) );
  NOR2_X1 U3 ( .A1(flush_i), .A2(n118), .ZN(gen_arbiter_rr_q[0]) );
  NOR2_X1 U4 ( .A1(flush_i), .A2(n119), .ZN(gen_arbiter_rr_q[2]) );
  NOR2_X1 U5 ( .A1(flush_i), .A2(n120), .ZN(gen_arbiter_rr_q[1]) );
endmodule


module fpnew_opgroup_block_3_00000010_0_04_4_000_3__logic_Z_1yB__395949 ( 
        clk_i, rst_ni, operands_i, is_boxed_i, rnd_mode_i, op_i, op_mod_i, 
        src_fmt_i, dst_fmt_i, int_fmt_i, vectorial_op_i, tag_i, in_valid_i, 
        in_ready_o, flush_i, result_o, extension_bit_o, tag_o, out_valid_o, 
        out_ready_i, busy_o, status_o_NV_, status_o_DZ_, status_o_OF_, 
        status_o_UF_, status_o_NX_ );
  input [47:0] operands_i;
  input [14:0] is_boxed_i;
  input [2:0] rnd_mode_i;
  input [3:0] op_i;
  input [2:0] src_fmt_i;
  input [2:0] dst_fmt_i;
  input [1:0] int_fmt_i;
  output [15:0] result_o;
  input clk_i, rst_ni, op_mod_i, vectorial_op_i, tag_i, in_valid_i, flush_i,
         out_ready_i;
  output in_ready_o, extension_bit_o, tag_o, out_valid_o, busy_o, status_o_NV_,
         status_o_DZ_, status_o_OF_, status_o_UF_, status_o_NX_;
  wire   SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22,
         SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24,
         SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26,
         SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28,
         SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30,
         SYNOPSYS_UNCONNECTED_31;

  rr_arb_tree_00000005_1_604242 i_arbiter ( .clk_i(clk_i), .rst_ni(rst_ni), 
        .flush_i(flush_i), .rr_i({1'b0, 1'b0, 1'b0}), .req_i({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .gnt_o({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5}), .data_i({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .gnt_i(1'b0), 
        .data_o({SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, 
        SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, 
        SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25, 
        SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, 
        SYNOPSYS_UNCONNECTED_28}), .idx_o({SYNOPSYS_UNCONNECTED_29, 
        SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31}) );
endmodule


module lzc_00000004_0_1 ( in_i, empty_o, cnt_o_1__BAR, cnt_o_0__BAR );
  input [3:0] in_i;
  output empty_o, cnt_o_1__BAR, cnt_o_0__BAR;

  assign cnt_o_0__BAR = in_i[0];
  assign cnt_o_1__BAR = in_i[0];

endmodule


module rr_arb_tree_00000004_1_532242 ( clk_i, rst_ni, flush_i, rr_i, req_i, 
        gnt_o, data_i, req_o, gnt_i, data_o, idx_o );
  input [1:0] rr_i;
  input [3:0] req_i;
  output [3:0] gnt_o;
  input [87:0] data_i;
  output [21:0] data_o;
  output [1:0] idx_o;
  input clk_i, rst_ni, flush_i, gnt_i;
  output req_o;
  wire   n20, n22, n27, n2, n64, n66, n73, n74, n102, n103;
  wire   [1:0] gen_arbiter_rr_q;
  wire   [1:0] gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx;
  assign req_o = req_i[0];
  assign data_o[4] = 1'b0;
  assign gnt_o[1] = 1'b0;
  assign gnt_o[2] = 1'b0;

  INV_X1 U5 ( .A(data_i[2]), .ZN(n2) );
  INV_X1 U6 ( .A(n27), .ZN(n64) );
  NOR2_X1 U13 ( .A1(n74), .A2(n27), .ZN(gnt_o[0]) );
  OAI21_X1 U23 ( .B1(n66), .B2(n74), .A(n73), .ZN(n20) );
  NAND2_X1 U25 ( .A1(n20), .A2(n73), .ZN(n22) );
  INV_X1 U31 ( .A(gnt_i), .ZN(n74) );
  OAI22_X1 U32 ( .A1(n20), .A2(n102), .B1(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx[1]), .B2(n22), .ZN(
        gen_arbiter_rr_q[1]) );
  OAI22_X1 U34 ( .A1(n20), .A2(n103), .B1(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx[0]), .B2(n22), .ZN(
        gen_arbiter_rr_q[0]) );
  INV_X1 U36 ( .A(flush_i), .ZN(n73) );
  NAND2_X1 U51 ( .A1(req_i[0]), .A2(req_i[0]), .ZN(n27) );
  INV_X1 U110 ( .A(req_i[0]), .ZN(n66) );
  DFFR_X1 MY_CLK_r_REG223_S3 ( .D(gen_arbiter_rr_q[1]), .CK(clk_i), .RN(rst_ni), .QN(n102) );
  DFFR_X1 MY_CLK_r_REG222_S3 ( .D(gen_arbiter_rr_q[0]), .CK(clk_i), .RN(rst_ni), .QN(n103) );
  lzc_00000004_0_1 gen_arbiter_gen_int_rr_gen_fair_arb_i_lzc_lower ( .in_i({
        1'b0, 1'b0, 1'b0, req_i[0]}), .cnt_o_1__BAR(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx[1]), .cnt_o_0__BAR(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx[0]) );
  AND2_X1 U3 ( .A1(data_i[18]), .A2(n64), .ZN(data_o[18]) );
  AND2_X1 U4 ( .A1(data_i[16]), .A2(n64), .ZN(data_o[16]) );
  AND2_X1 U7 ( .A1(data_i[10]), .A2(n64), .ZN(data_o[10]) );
  AND2_X1 U8 ( .A1(data_i[8]), .A2(n64), .ZN(data_o[8]) );
  AND2_X1 U9 ( .A1(data_i[6]), .A2(n64), .ZN(data_o[6]) );
  AND2_X1 U10 ( .A1(data_i[11]), .A2(n64), .ZN(data_o[11]) );
  AND2_X1 U11 ( .A1(data_i[1]), .A2(n64), .ZN(data_o[1]) );
  AND2_X1 U12 ( .A1(data_i[0]), .A2(n64), .ZN(data_o[0]) );
  AND2_X1 U14 ( .A1(data_i[12]), .A2(n64), .ZN(data_o[12]) );
  AND2_X1 U15 ( .A1(data_i[19]), .A2(n64), .ZN(data_o[19]) );
  AND2_X1 U16 ( .A1(data_i[9]), .A2(n64), .ZN(data_o[9]) );
  AND2_X1 U17 ( .A1(data_i[7]), .A2(n64), .ZN(data_o[7]) );
  AND2_X1 U18 ( .A1(data_i[13]), .A2(n64), .ZN(data_o[13]) );
  AND2_X1 U19 ( .A1(data_i[3]), .A2(n64), .ZN(data_o[3]) );
  AND2_X1 U20 ( .A1(data_i[20]), .A2(n64), .ZN(data_o[20]) );
  AND2_X1 U21 ( .A1(data_i[5]), .A2(n64), .ZN(data_o[5]) );
  AND2_X1 U22 ( .A1(data_i[14]), .A2(n64), .ZN(data_o[14]) );
  AND2_X1 U24 ( .A1(data_i[17]), .A2(n64), .ZN(data_o[17]) );
  AND2_X1 U26 ( .A1(data_i[21]), .A2(n64), .ZN(data_o[21]) );
  AND2_X1 U27 ( .A1(data_i[15]), .A2(n64), .ZN(data_o[15]) );
  NOR2_X1 U28 ( .A1(n2), .A2(n27), .ZN(data_o[2]) );
endmodule


module fpnew_top ( clk_i, rst_ni, operands_i, rnd_mode_i, op_i, op_mod_i, 
        src_fmt_i, dst_fmt_i, int_fmt_i, vectorial_op_i, tag_i, in_valid_i, 
        in_ready_o, flush_i, result_o, tag_o, out_valid_o, out_ready_i, busy_o, 
        status_o_NV_, status_o_DZ_, status_o_OF_, status_o_UF_, status_o_NX_
 );
  input [47:0] operands_i;
  input [2:0] rnd_mode_i;
  input [3:0] op_i;
  input [2:0] src_fmt_i;
  input [2:0] dst_fmt_i;
  input [1:0] int_fmt_i;
  output [15:0] result_o;
  input clk_i, rst_ni, op_mod_i, vectorial_op_i, tag_i, in_valid_i, flush_i,
         out_ready_i;
  output in_ready_o, tag_o, out_valid_o, busy_o, status_o_NV_, status_o_DZ_,
         status_o_OF_, status_o_UF_, status_o_NX_;
  wire   N32, opgrp_in_ready_0_, N119, gen_operation_groups_0__in_valid,
         opgrp_out_valid_0_, opgrp_out_ready_0_, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n26, net60466, net60467, net60468,
         net60469, net60470, net60471, net60472, net60473, net60474, net60475,
         net60476, net60477, net60478, net60479, net60480, net60481, net60482,
         net60483, net60484, net60485, net60486, net60487, net60488, net60489,
         net60490, net60491, net60492, net60493, net60494, net60495, net60496,
         net60497, net60498, net60499, net60500, net60501, net60502, net60503,
         net60504, net60505, net60506, net60507, net60508, net60509, net60510,
         net60511, net60512, net60513, net60514, net60515, net60516, net60517,
         net60518, net60519, net60520, net60521, net60522, net60523, net60524,
         net60525, net60526, net60527, net60528, net60529, net60530, net60531,
         net60532, net60533, net60534, net60535, net60536, net60537, net60538,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22,
         SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24,
         SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26,
         SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28,
         SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30,
         SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32,
         SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34,
         SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36,
         SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38,
         SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40,
         SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42,
         SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44,
         SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46,
         SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48,
         SYNOPSYS_UNCONNECTED_49, SYNOPSYS_UNCONNECTED_50,
         SYNOPSYS_UNCONNECTED_51, SYNOPSYS_UNCONNECTED_52,
         SYNOPSYS_UNCONNECTED_53, SYNOPSYS_UNCONNECTED_54;
  wire   [20:0] opgrp_outputs;
  assign status_o_DZ_ = 1'b0;

  OAI33_X1 U30 ( .A1(n22), .A2(op_i[2]), .A3(op_i[1]), .B1(n24), .B2(n16), 
        .B3(n23), .ZN(n15) );
  NAND3_X1 U31 ( .A1(n24), .A2(n22), .A3(op_i[2]), .ZN(n14) );
  AND2_X1 U32 ( .A1(n13), .A2(n14), .ZN(n19) );
  AND2_X1 U39 ( .A1(in_valid_i), .A2(N119), .ZN(in_ready_o) );
  NOR2_X1 U40 ( .A1(N32), .A2(n20), .ZN(N119) );
  NAND2_X1 U41 ( .A1(n21), .A2(n13), .ZN(N32) );
  NAND2_X1 U42 ( .A1(opgrp_in_ready_0_), .A2(n19), .ZN(n20) );
  INV_X1 U43 ( .A(in_valid_i), .ZN(n26) );
  NOR3_X1 U44 ( .A1(n26), .A2(op_i[3]), .A3(op_i[2]), .ZN(
        gen_operation_groups_0__in_valid) );
  OAI21_X1 U45 ( .B1(n17), .B2(n18), .A(op_i[3]), .ZN(n13) );
  AOI21_X1 U46 ( .B1(op_i[2]), .B2(op_i[0]), .A(n24), .ZN(n17) );
  NOR2_X1 U47 ( .A1(op_i[1]), .A2(n23), .ZN(n18) );
  INV_X1 U48 ( .A(op_i[2]), .ZN(n23) );
  INV_X1 U49 ( .A(op_i[1]), .ZN(n24) );
  INV_X1 U50 ( .A(n15), .ZN(n21) );
  NOR2_X1 U51 ( .A1(op_i[0]), .A2(n22), .ZN(n16) );
  INV_X1 U52 ( .A(op_i[3]), .ZN(n22) );
  fpnew_opgroup_block_0_00000010_0_04_4_155_3__logic_Z_1yB__395949 gen_operation_groups_0__i_opgroup_block ( 
        .clk_i(clk_i), .rst_ni(rst_ni), .operands_i(operands_i), .is_boxed_i({
        1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1}), .rnd_mode_i(rnd_mode_i), .op_i(op_i), .op_mod_i(
        op_mod_i), .src_fmt_i({1'b0, 1'b0, 1'b0}), .dst_fmt_i(dst_fmt_i), 
        .int_fmt_i({1'b0, 1'b0}), .vectorial_op_i(1'b0), .tag_i(tag_i), 
        .in_valid_i(gen_operation_groups_0__in_valid), .in_ready_o(
        opgrp_in_ready_0_), .flush_i(flush_i), .result_o(opgrp_outputs[20:5]), 
        .tag_o(opgrp_outputs[0]), .out_valid_o(opgrp_out_valid_0_), 
        .out_ready_i(opgrp_out_ready_0_), .busy_o(busy_o), .status_o_NV_(
        opgrp_outputs[4]), .status_o_OF_(opgrp_outputs[3]), .status_o_UF_(
        opgrp_outputs[2]), .status_o_NX_(opgrp_outputs[1]) );
  fpnew_opgroup_block_1_00000010_0_04_4_000_3__logic_Z_1yB__395949 gen_operation_groups_1__i_opgroup_block ( 
        .clk_i(clk_i), .rst_ni(rst_ni), .operands_i({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .is_boxed_i({1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .rnd_mode_i({1'b0, 1'b0, 1'b0}), 
        .op_i({1'b0, 1'b0, 1'b0, 1'b0}), .op_mod_i(1'b0), .src_fmt_i({1'b0, 
        1'b0, 1'b0}), .dst_fmt_i({1'b0, 1'b0, 1'b0}), .int_fmt_i({1'b0, 1'b0}), 
        .vectorial_op_i(1'b0), .tag_i(1'b0), .in_valid_i(1'b0), .flush_i(
        flush_i), .result_o({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, 
        SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16}), .out_ready_i(
        net60538) );
  fpnew_opgroup_block_2_00000010_0_04_4_000_3__logic_Z_1yB__395949 gen_operation_groups_2__i_opgroup_block ( 
        .clk_i(clk_i), .rst_ni(rst_ni), .operands_i({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .is_boxed_i({1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .rnd_mode_i({1'b0, 1'b0, 1'b0}), 
        .op_i({1'b0, 1'b0, 1'b0, 1'b0}), .op_mod_i(1'b0), .src_fmt_i({1'b0, 
        1'b0, 1'b0}), .dst_fmt_i({1'b0, 1'b0, 1'b0}), .int_fmt_i({1'b0, 1'b0}), 
        .vectorial_op_i(1'b0), .tag_i(1'b0), .in_valid_i(1'b0), .flush_i(
        flush_i), .result_o({SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, 
        SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, 
        SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, 
        SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26, 
        SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, 
        SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, 
        SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32}), .out_ready_i(
        net60537) );
  fpnew_opgroup_block_3_00000010_0_04_4_000_3__logic_Z_1yB__395949 gen_operation_groups_3__i_opgroup_block ( 
        .clk_i(clk_i), .rst_ni(rst_ni), .operands_i({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .is_boxed_i({1'b1, 
        1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1}), .rnd_mode_i({1'b0, 1'b0, 1'b0}), .op_i({1'b0, 1'b0, 1'b0, 
        1'b0}), .op_mod_i(1'b0), .src_fmt_i({1'b0, 1'b0, 1'b0}), .dst_fmt_i({
        1'b0, 1'b0, 1'b0}), .int_fmt_i({1'b0, 1'b0}), .vectorial_op_i(1'b0), 
        .tag_i(1'b0), .in_valid_i(1'b0), .flush_i(flush_i), .result_o({
        SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34, 
        SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36, 
        SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38, 
        SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40, 
        SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42, 
        SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44, 
        SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46, 
        SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48}), .out_ready_i(
        net60536) );
  rr_arb_tree_00000004_1_532242 i_arbiter ( .clk_i(clk_i), .rst_ni(rst_ni), 
        .flush_i(flush_i), .rr_i({1'b0, 1'b0}), .req_i({net60466, net60467, 
        net60468, opgrp_out_valid_0_}), .gnt_o({SYNOPSYS_UNCONNECTED_49, 
        SYNOPSYS_UNCONNECTED_50, SYNOPSYS_UNCONNECTED_51, opgrp_out_ready_0_}), 
        .data_i({net60469, net60470, net60471, net60472, net60473, net60474, 
        net60475, net60476, net60477, net60478, net60479, net60480, net60481, 
        net60482, net60483, net60484, net60485, net60486, net60487, net60488, 
        net60489, net60490, net60491, net60492, net60493, net60494, net60495, 
        net60496, net60497, net60498, net60499, net60500, net60501, net60502, 
        net60503, net60504, net60505, net60506, net60507, net60508, net60509, 
        net60510, net60511, net60512, net60513, net60514, net60515, net60516, 
        net60517, net60518, net60519, net60520, net60521, net60522, net60523, 
        net60524, net60525, net60526, net60527, net60528, net60529, net60530, 
        net60531, net60532, net60533, net60534, opgrp_outputs[20:4], net60535, 
        opgrp_outputs[3:0]}), .req_o(out_valid_o), .gnt_i(out_ready_i), 
        .data_o({result_o, status_o_NV_, SYNOPSYS_UNCONNECTED_52, status_o_OF_, 
        status_o_UF_, status_o_NX_, tag_o}), .idx_o({SYNOPSYS_UNCONNECTED_53, 
        SYNOPSYS_UNCONNECTED_54}) );
endmodule

