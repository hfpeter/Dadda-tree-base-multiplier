/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Thu Dec 14 10:32:06 2023
/////////////////////////////////////////////////////////////


module fpnew_classifier_2_3 ( operands_i, is_boxed_i, info_o );
  input [47:0] operands_i;
  input [2:0] is_boxed_i;
  output [23:0] info_o;
  wire   n21, n22, n23, n24, n30, n35, n40, n45, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n25,
         n26, n27, n28, n29, n31, n32, n33, n34, n36, n37, n38, n39, n41, n42,
         n43, n44, n46, n47, n49, n50, n52, n53, n55;
  assign info_o[16] = is_boxed_i[2];
  assign info_o[8] = is_boxed_i[1];
  assign info_o[0] = is_boxed_i[0];

  AND4_X1 U1 ( .A1(n21), .A2(n22), .A3(n23), .A4(n24), .ZN(n1) );
  INV_X1 U2 ( .A(n40), .ZN(n50) );
  INV_X1 U3 ( .A(n30), .ZN(n53) );
  AND4_X1 U4 ( .A1(n19), .A2(n18), .A3(n17), .A4(n16), .ZN(n2) );
  NAND4_X1 U5 ( .A1(operands_i[11]), .A2(operands_i[10]), .A3(operands_i[12]), 
        .A4(n45), .ZN(n40) );
  AND2_X1 U6 ( .A1(operands_i[13]), .A2(operands_i[14]), .ZN(n45) );
  NAND4_X1 U7 ( .A1(operands_i[27]), .A2(operands_i[26]), .A3(operands_i[28]), 
        .A4(n35), .ZN(n30) );
  AND2_X1 U8 ( .A1(operands_i[29]), .A2(operands_i[30]), .ZN(n35) );
  AND4_X1 U9 ( .A1(n7), .A2(n6), .A3(n5), .A4(n4), .ZN(n3) );
  NOR3_X1 U10 ( .A1(operands_i[39]), .A2(operands_i[41]), .A3(operands_i[40]), 
        .ZN(n24) );
  NOR2_X1 U11 ( .A1(operands_i[33]), .A2(operands_i[32]), .ZN(n21) );
  NOR2_X1 U12 ( .A1(operands_i[38]), .A2(operands_i[37]), .ZN(n23) );
  NOR3_X1 U13 ( .A1(operands_i[34]), .A2(operands_i[36]), .A3(operands_i[35]), 
        .ZN(n22) );
  INV_X1 U14 ( .A(operands_i[41]), .ZN(n55) );
  INV_X1 U15 ( .A(operands_i[9]), .ZN(n49) );
  INV_X1 U16 ( .A(operands_i[25]), .ZN(n52) );
  INV_X1 U17 ( .A(is_boxed_i[0]), .ZN(n14) );
  NOR3_X1 U18 ( .A1(operands_i[7]), .A2(operands_i[8]), .A3(operands_i[9]), 
        .ZN(n7) );
  NOR2_X1 U19 ( .A1(operands_i[5]), .A2(operands_i[6]), .ZN(n6) );
  NOR3_X1 U20 ( .A1(operands_i[2]), .A2(operands_i[3]), .A3(operands_i[4]), 
        .ZN(n5) );
  NOR2_X1 U21 ( .A1(operands_i[0]), .A2(operands_i[1]), .ZN(n4) );
  NAND2_X1 U22 ( .A1(n3), .A2(is_boxed_i[0]), .ZN(n12) );
  OAI21_X1 U23 ( .B1(n50), .B2(n14), .A(n12), .ZN(n8) );
  AOI21_X1 U24 ( .B1(n49), .B2(is_boxed_i[0]), .A(n8), .ZN(info_o[1]) );
  NOR3_X1 U25 ( .A1(operands_i[9]), .A2(n14), .A3(n8), .ZN(info_o[2]) );
  INV_X1 U26 ( .A(n8), .ZN(info_o[3]) );
  NOR2_X1 U27 ( .A1(n40), .A2(n12), .ZN(info_o[4]) );
  INV_X1 U28 ( .A(operands_i[13]), .ZN(n11) );
  INV_X1 U29 ( .A(operands_i[14]), .ZN(n10) );
  NOR3_X1 U30 ( .A1(operands_i[12]), .A2(operands_i[11]), .A3(operands_i[10]), 
        .ZN(n9) );
  NAND3_X1 U31 ( .A1(n11), .A2(n10), .A3(n9), .ZN(n13) );
  NOR2_X1 U32 ( .A1(n13), .A2(n12), .ZN(info_o[5]) );
  NOR3_X1 U33 ( .A1(n3), .A2(n14), .A3(n13), .ZN(info_o[6]) );
  INV_X1 U34 ( .A(n13), .ZN(n15) );
  NOR3_X1 U35 ( .A1(n50), .A2(n15), .A3(n14), .ZN(info_o[7]) );
  INV_X1 U36 ( .A(is_boxed_i[1]), .ZN(n31) );
  NOR3_X1 U37 ( .A1(operands_i[23]), .A2(operands_i[24]), .A3(operands_i[25]), 
        .ZN(n19) );
  NOR2_X1 U38 ( .A1(operands_i[21]), .A2(operands_i[22]), .ZN(n18) );
  NOR3_X1 U39 ( .A1(operands_i[18]), .A2(operands_i[19]), .A3(operands_i[20]), 
        .ZN(n17) );
  NOR2_X1 U40 ( .A1(operands_i[16]), .A2(operands_i[17]), .ZN(n16) );
  NAND2_X1 U41 ( .A1(n2), .A2(is_boxed_i[1]), .ZN(n28) );
  OAI21_X1 U42 ( .B1(n53), .B2(n31), .A(n28), .ZN(n20) );
  AOI21_X1 U43 ( .B1(n52), .B2(is_boxed_i[1]), .A(n20), .ZN(info_o[9]) );
  NOR3_X1 U44 ( .A1(operands_i[25]), .A2(n31), .A3(n20), .ZN(info_o[10]) );
  INV_X1 U45 ( .A(n20), .ZN(info_o[11]) );
  NOR2_X1 U46 ( .A1(n30), .A2(n28), .ZN(info_o[12]) );
  INV_X1 U47 ( .A(operands_i[29]), .ZN(n27) );
  INV_X1 U48 ( .A(operands_i[30]), .ZN(n26) );
  NOR3_X1 U49 ( .A1(operands_i[28]), .A2(operands_i[27]), .A3(operands_i[26]), 
        .ZN(n25) );
  NAND3_X1 U50 ( .A1(n27), .A2(n26), .A3(n25), .ZN(n29) );
  NOR2_X1 U51 ( .A1(n29), .A2(n28), .ZN(info_o[13]) );
  NOR3_X1 U52 ( .A1(n2), .A2(n31), .A3(n29), .ZN(info_o[14]) );
  INV_X1 U53 ( .A(n29), .ZN(n32) );
  NOR3_X1 U54 ( .A1(n53), .A2(n32), .A3(n31), .ZN(info_o[15]) );
  INV_X1 U55 ( .A(operands_i[44]), .ZN(n33) );
  INV_X1 U56 ( .A(operands_i[46]), .ZN(n41) );
  INV_X1 U57 ( .A(operands_i[45]), .ZN(n39) );
  NOR3_X1 U58 ( .A1(n33), .A2(n41), .A3(n39), .ZN(n34) );
  NAND3_X1 U59 ( .A1(operands_i[42]), .A2(operands_i[43]), .A3(n34), .ZN(n37)
         );
  INV_X1 U60 ( .A(n37), .ZN(n47) );
  INV_X1 U61 ( .A(is_boxed_i[2]), .ZN(n44) );
  NAND2_X1 U62 ( .A1(is_boxed_i[2]), .A2(n1), .ZN(n42) );
  OAI21_X1 U63 ( .B1(n47), .B2(n44), .A(n42), .ZN(n36) );
  AOI21_X1 U64 ( .B1(n55), .B2(is_boxed_i[2]), .A(n36), .ZN(info_o[17]) );
  NOR3_X1 U65 ( .A1(operands_i[41]), .A2(n44), .A3(n36), .ZN(info_o[18]) );
  INV_X1 U66 ( .A(n36), .ZN(info_o[19]) );
  NOR2_X1 U67 ( .A1(n42), .A2(n37), .ZN(info_o[20]) );
  NOR3_X1 U68 ( .A1(operands_i[44]), .A2(operands_i[42]), .A3(operands_i[43]), 
        .ZN(n38) );
  NAND3_X1 U69 ( .A1(n41), .A2(n39), .A3(n38), .ZN(n43) );
  NOR2_X1 U70 ( .A1(n43), .A2(n42), .ZN(info_o[21]) );
  NOR3_X1 U71 ( .A1(n43), .A2(n44), .A3(n1), .ZN(info_o[22]) );
  INV_X1 U72 ( .A(n43), .ZN(n46) );
  NOR3_X1 U73 ( .A1(n47), .A2(n46), .A3(n44), .ZN(info_o[23]) );
endmodule


module lzc_00000019_1 ( in_i, cnt_o, empty_o );
  input [24:0] in_i;
  output [4:0] cnt_o;
  output empty_o;
  wire   n17, n18, n20, n21, n22, n23, n24, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n19, n25, n44,
         n45, n46, n47, n48, n49, n51, n52, n54, n55, n56, n57, n58, n59, n60;

  NOR4_X2 U14 ( .A1(in_i[3]), .A2(in_i[4]), .A3(in_i[2]), .A4(n39), .ZN(n17)
         );
  NAND3_X1 U48 ( .A1(n17), .A2(n48), .A3(in_i[0]), .ZN(n21) );
  OAI33_X1 U49 ( .A1(n34), .A2(in_i[8]), .A3(in_i[7]), .B1(n2), .B2(in_i[4]), 
        .B3(in_i[3]), .ZN(n27) );
  NAND3_X1 U50 ( .A1(n57), .A2(n24), .A3(n23), .ZN(n32) );
  OR2_X1 U3 ( .A1(in_i[1]), .A2(n13), .ZN(n39) );
  OR4_X1 U4 ( .A1(in_i[6]), .A2(in_i[5]), .A3(in_i[8]), .A4(in_i[7]), .ZN(n13)
         );
  OR2_X1 U5 ( .A1(n3), .A2(n51), .ZN(n33) );
  NOR3_X1 U6 ( .A1(n9), .A2(in_i[0]), .A3(n7), .ZN(empty_o) );
  OR3_X1 U7 ( .A1(in_i[11]), .A2(in_i[9]), .A3(in_i[10]), .ZN(n1) );
  OR4_X1 U8 ( .A1(in_i[6]), .A2(in_i[5]), .A3(in_i[8]), .A4(in_i[7]), .ZN(n2)
         );
  OR2_X1 U9 ( .A1(in_i[16]), .A2(n24), .ZN(n3) );
  NOR4_X1 U10 ( .A1(in_i[14]), .A2(in_i[13]), .A3(in_i[16]), .A4(in_i[15]), 
        .ZN(n24) );
  AND2_X1 U11 ( .A1(in_i[10]), .A2(n58), .ZN(n4) );
  NOR2_X1 U12 ( .A1(n4), .A2(n32), .ZN(n40) );
  NOR2_X1 U13 ( .A1(n19), .A2(n17), .ZN(n5) );
  CLKBUF_X1 U15 ( .A(n51), .Z(n6) );
  OR2_X1 U16 ( .A1(n32), .A2(n1), .ZN(n7) );
  OR3_X1 U17 ( .A1(n40), .A2(n42), .A3(n43), .ZN(n8) );
  OR4_X1 U18 ( .A1(in_i[3]), .A2(in_i[4]), .A3(in_i[2]), .A4(n39), .ZN(n9) );
  OR2_X1 U19 ( .A1(n32), .A2(n1), .ZN(n19) );
  INV_X1 U20 ( .A(n2), .ZN(n34) );
  INV_X1 U21 ( .A(n7), .ZN(n48) );
  OR2_X1 U22 ( .A1(n37), .A2(n38), .ZN(n10) );
  NAND2_X1 U23 ( .A1(n10), .A2(n20), .ZN(n36) );
  OR4_X1 U24 ( .A1(in_i[22]), .A2(in_i[23]), .A3(in_i[24]), .A4(in_i[21]), 
        .ZN(n11) );
  AND2_X1 U25 ( .A1(in_i[14]), .A2(n56), .ZN(n12) );
  NOR2_X1 U26 ( .A1(n12), .A2(n33), .ZN(n41) );
  NOR2_X1 U27 ( .A1(n8), .A2(n41), .ZN(n35) );
  OR2_X1 U28 ( .A1(n31), .A2(n14), .ZN(n28) );
  NAND2_X1 U29 ( .A1(n15), .A2(n16), .ZN(n14) );
  NAND2_X1 U30 ( .A1(n25), .A2(n36), .ZN(cnt_o[0]) );
  OR2_X1 U31 ( .A1(in_i[19]), .A2(n29), .ZN(n15) );
  OR2_X1 U32 ( .A1(in_i[23]), .A2(n30), .ZN(n16) );
  NOR2_X1 U33 ( .A1(n19), .A2(n17), .ZN(n20) );
  OR2_X1 U34 ( .A1(n35), .A2(n48), .ZN(n25) );
  INV_X1 U35 ( .A(in_i[17]), .ZN(n44) );
  NOR2_X2 U36 ( .A1(n49), .A2(n45), .ZN(n23) );
  NAND2_X1 U37 ( .A1(n47), .A2(n44), .ZN(n45) );
  NOR4_X1 U38 ( .A1(in_i[22]), .A2(in_i[23]), .A3(in_i[24]), .A4(in_i[21]), 
        .ZN(n46) );
  NOR3_X1 U39 ( .A1(in_i[19]), .A2(in_i[18]), .A3(in_i[20]), .ZN(n47) );
  AOI21_X1 U40 ( .B1(in_i[22]), .B2(n54), .A(n30), .ZN(n43) );
  INV_X1 U41 ( .A(in_i[12]), .ZN(n57) );
  INV_X1 U42 ( .A(in_i[15]), .ZN(n56) );
  INV_X1 U43 ( .A(n26), .ZN(cnt_o[1]) );
  INV_X1 U44 ( .A(in_i[11]), .ZN(n58) );
  AOI21_X1 U45 ( .B1(in_i[18]), .B2(n55), .A(n29), .ZN(n42) );
  INV_X1 U46 ( .A(in_i[19]), .ZN(n55) );
  AOI211_X1 U47 ( .C1(in_i[2]), .C2(n60), .A(n2), .B(in_i[4]), .ZN(n37) );
  INV_X1 U51 ( .A(in_i[3]), .ZN(n60) );
  INV_X1 U52 ( .A(n18), .ZN(cnt_o[4]) );
  AOI211_X1 U53 ( .C1(in_i[6]), .C2(n59), .A(in_i[8]), .B(n34), .ZN(n38) );
  INV_X1 U54 ( .A(in_i[7]), .ZN(n59) );
  OAI22_X1 U55 ( .A1(n32), .A2(in_i[11]), .B1(n33), .B2(in_i[15]), .ZN(n31) );
  OR4_X2 U56 ( .A1(in_i[22]), .A2(in_i[23]), .A3(in_i[24]), .A4(in_i[21]), 
        .ZN(n49) );
  OR2_X1 U57 ( .A1(n46), .A2(in_i[24]), .ZN(n30) );
  INV_X1 U58 ( .A(in_i[23]), .ZN(n54) );
  INV_X1 U59 ( .A(n5), .ZN(n52) );
  AOI22_X1 U60 ( .A1(n20), .A2(n27), .B1(n28), .B2(n7), .ZN(n26) );
  AOI21_X1 U61 ( .B1(n48), .B2(in_i[0]), .A(n5), .ZN(n18) );
  OAI21_X1 U62 ( .B1(n48), .B2(n6), .A(n21), .ZN(cnt_o[3]) );
  OAI22_X1 U63 ( .A1(n2), .A2(n52), .B1(n48), .B2(n22), .ZN(cnt_o[2]) );
  AOI22_X1 U64 ( .A1(n23), .A2(n24), .B1(n46), .B2(n6), .ZN(n22) );
  OR3_X1 U65 ( .A1(n11), .A2(in_i[20]), .A3(n23), .ZN(n29) );
  INV_X1 U66 ( .A(n23), .ZN(n51) );
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
  wire   round_up, n8, n9, n10, n11, n12, n14, n16, n17, n18, n19, n1, n2, n3,
         n4, n5, n6, n7, n13, n15, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50;
  wire   [9:1] add_63_carry;

  AND2_X1 U3 ( .A1(add_63_carry[7]), .A2(abs_value_i[7]), .ZN(n40) );
  AND2_X1 U4 ( .A1(n50), .A2(n49), .ZN(n1) );
  CLKBUF_X1 U5 ( .A(abs_value_i[1]), .Z(n2) );
  AND2_X1 U6 ( .A1(n4), .A2(n2), .ZN(n3) );
  CLKBUF_X1 U7 ( .A(abs_value_i[0]), .Z(n4) );
  CLKBUF_X1 U8 ( .A(round_sticky_bits_i[0]), .Z(n5) );
  NOR2_X1 U9 ( .A1(n42), .A2(n6), .ZN(n44) );
  OR2_X1 U10 ( .A1(n43), .A2(n7), .ZN(n6) );
  INV_X1 U11 ( .A(abs_value_i[7]), .ZN(n7) );
  CLKBUF_X1 U12 ( .A(n12), .Z(n13) );
  CLKBUF_X1 U13 ( .A(n4), .Z(n15) );
  CLKBUF_X1 U14 ( .A(add_63_carry[7]), .Z(n20) );
  OAI211_X1 U15 ( .C1(n10), .C2(n48), .A(n13), .B(n11), .ZN(n21) );
  OR2_X1 U16 ( .A1(n22), .A2(n30), .ZN(n11) );
  NOR2_X1 U17 ( .A1(round_sticky_bits_i[0]), .A2(round_sticky_bits_i[1]), .ZN(
        n22) );
  OR2_X1 U18 ( .A1(n29), .A2(n23), .ZN(n12) );
  NOR2_X1 U19 ( .A1(round_sticky_bits_i[0]), .A2(abs_value_i[0]), .ZN(n23) );
  CLKBUF_X1 U20 ( .A(abs_value_i[4]), .Z(n24) );
  AND2_X1 U21 ( .A1(n26), .A2(abs_value_i[4]), .ZN(n25) );
  AND2_X1 U22 ( .A1(n21), .A2(n26), .ZN(add_63_carry[4]) );
  AND2_X1 U23 ( .A1(n27), .A2(n31), .ZN(n26) );
  AND2_X1 U24 ( .A1(abs_value_i[3]), .A2(abs_value_i[2]), .ZN(n27) );
  OR2_X1 U25 ( .A1(n5), .A2(round_sticky_bits_i[1]), .ZN(n28) );
  NAND2_X1 U26 ( .A1(round_sticky_bits_i[1]), .A2(n1), .ZN(n29) );
  NAND2_X1 U27 ( .A1(n14), .A2(rnd_mode_i[1]), .ZN(n30) );
  AND2_X1 U28 ( .A1(n21), .A2(n3), .ZN(add_63_carry[2]) );
  AND2_X1 U29 ( .A1(abs_value_i[0]), .A2(abs_value_i[1]), .ZN(n31) );
  XNOR2_X1 U30 ( .A(n32), .B(abs_value_i[12]), .ZN(abs_rounded_o[12]) );
  NAND2_X1 U31 ( .A1(n44), .A2(n41), .ZN(n32) );
  XNOR2_X1 U32 ( .A(n33), .B(abs_value_i[11]), .ZN(abs_rounded_o[11]) );
  NAND2_X1 U33 ( .A1(add_63_carry[8]), .A2(n38), .ZN(n33) );
  XNOR2_X1 U34 ( .A(abs_value_i[14]), .B(n34), .ZN(abs_rounded_o[14]) );
  NAND2_X1 U35 ( .A1(n37), .A2(n40), .ZN(n34) );
  XNOR2_X1 U36 ( .A(abs_value_i[13]), .B(n35), .ZN(abs_rounded_o[13]) );
  NAND2_X1 U37 ( .A1(n40), .A2(n39), .ZN(n35) );
  NOR4_X1 U38 ( .A1(n2), .A2(abs_value_i[14]), .A3(abs_value_i[13]), .A4(
        abs_value_i[12]), .ZN(n17) );
  NOR3_X1 U39 ( .A1(rnd_mode_i[0]), .A2(rnd_mode_i[1]), .A3(
        round_sticky_bits_i[1]), .ZN(n10) );
  AND2_X1 U40 ( .A1(effective_subtraction_i), .A2(exact_zero_o), .ZN(n8) );
  AND4_X1 U41 ( .A1(n16), .A2(n17), .A3(n18), .A4(n19), .ZN(exact_zero_o) );
  NOR4_X1 U42 ( .A1(abs_value_i[2]), .A2(abs_value_i[4]), .A3(abs_value_i[3]), 
        .A4(abs_value_i[5]), .ZN(n18) );
  NOR4_X1 U43 ( .A1(abs_value_i[9]), .A2(abs_value_i[8]), .A3(abs_value_i[7]), 
        .A4(abs_value_i[6]), .ZN(n19) );
  OAI21_X1 U44 ( .B1(n8), .B2(n47), .A(n9), .ZN(sign_o) );
  NAND4_X1 U45 ( .A1(rnd_mode_i[1]), .A2(n8), .A3(n50), .A4(n48), .ZN(n9) );
  XNOR2_X1 U46 ( .A(n47), .B(rnd_mode_i[0]), .ZN(n14) );
  INV_X1 U47 ( .A(sign_i), .ZN(n47) );
  INV_X1 U48 ( .A(rnd_mode_i[2]), .ZN(n48) );
  XNOR2_X1 U49 ( .A(n36), .B(abs_value_i[10]), .ZN(abs_rounded_o[10]) );
  NAND2_X1 U50 ( .A1(n44), .A2(n45), .ZN(n36) );
  AND2_X1 U51 ( .A1(n39), .A2(abs_value_i[13]), .ZN(n37) );
  AND2_X1 U52 ( .A1(n45), .A2(abs_value_i[10]), .ZN(n38) );
  AND2_X1 U53 ( .A1(n41), .A2(abs_value_i[12]), .ZN(n39) );
  AND2_X1 U54 ( .A1(n46), .A2(n45), .ZN(n41) );
  INV_X1 U55 ( .A(rnd_mode_i[0]), .ZN(n50) );
  INV_X1 U56 ( .A(rnd_mode_i[1]), .ZN(n49) );
  NOR4_X1 U57 ( .A1(abs_value_i[11]), .A2(abs_value_i[10]), .A3(n28), .A4(n4), 
        .ZN(n16) );
  NOR2_X1 U58 ( .A1(n42), .A2(n43), .ZN(add_63_carry[7]) );
  NAND2_X1 U59 ( .A1(n25), .A2(round_up), .ZN(n42) );
  NAND2_X1 U60 ( .A1(abs_value_i[6]), .A2(abs_value_i[5]), .ZN(n43) );
  AND2_X1 U61 ( .A1(abs_value_i[9]), .A2(abs_value_i[8]), .ZN(n45) );
  AND2_X1 U62 ( .A1(abs_value_i[11]), .A2(abs_value_i[10]), .ZN(n46) );
  OAI211_X1 U63 ( .C1(n10), .C2(n48), .A(n12), .B(n11), .ZN(round_up) );
  XOR2_X1 U64 ( .A(abs_value_i[9]), .B(add_63_carry[9]), .Z(abs_rounded_o[9])
         );
  AND2_X1 U65 ( .A1(n40), .A2(abs_value_i[8]), .ZN(add_63_carry[9]) );
  XOR2_X1 U66 ( .A(n40), .B(abs_value_i[8]), .Z(abs_rounded_o[8]) );
  AND2_X1 U67 ( .A1(add_63_carry[7]), .A2(abs_value_i[7]), .ZN(add_63_carry[8]) );
  XOR2_X1 U68 ( .A(abs_value_i[7]), .B(n20), .Z(abs_rounded_o[7]) );
  XOR2_X1 U69 ( .A(abs_value_i[6]), .B(add_63_carry[6]), .Z(abs_rounded_o[6])
         );
  AND2_X1 U70 ( .A1(add_63_carry[5]), .A2(abs_value_i[5]), .ZN(add_63_carry[6]) );
  XOR2_X1 U71 ( .A(abs_value_i[5]), .B(add_63_carry[5]), .Z(abs_rounded_o[5])
         );
  AND2_X1 U72 ( .A1(add_63_carry[4]), .A2(n24), .ZN(add_63_carry[5]) );
  XOR2_X1 U73 ( .A(n24), .B(add_63_carry[4]), .Z(abs_rounded_o[4]) );
  XOR2_X1 U74 ( .A(abs_value_i[3]), .B(add_63_carry[3]), .Z(abs_rounded_o[3])
         );
  AND2_X1 U75 ( .A1(add_63_carry[2]), .A2(abs_value_i[2]), .ZN(add_63_carry[3]) );
  XOR2_X1 U76 ( .A(abs_value_i[2]), .B(add_63_carry[2]), .Z(abs_rounded_o[2])
         );
  XOR2_X1 U77 ( .A(n2), .B(add_63_carry[1]), .Z(abs_rounded_o[1]) );
  AND2_X1 U78 ( .A1(n21), .A2(n15), .ZN(add_63_carry[1]) );
  XOR2_X1 U79 ( .A(n21), .B(n15), .Z(abs_rounded_o[0]) );
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
        product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n143,
         n144, n145, n146, n147, n149, n150, n151, n152, n153, n154, n155,
         n156, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497;

  FA_X1 U5 ( .A(n27), .B(n26), .CI(n5), .CO(n4), .S(product[20]) );
  FA_X1 U6 ( .A(n28), .B(n31), .CI(n6), .CO(n5), .S(product[19]) );
  FA_X1 U7 ( .A(n32), .B(n35), .CI(n7), .CO(n6), .S(product[18]) );
  FA_X1 U8 ( .A(n36), .B(n41), .CI(n8), .CO(n7), .S(product[17]) );
  FA_X1 U10 ( .A(n48), .B(n55), .CI(n10), .CO(n9), .S(product[15]) );
  FA_X1 U11 ( .A(n56), .B(n63), .CI(n11), .CO(n10), .S(product[14]) );
  FA_X1 U12 ( .A(n64), .B(n71), .CI(n12), .CO(n11), .S(product[13]) );
  FA_X1 U13 ( .A(n72), .B(n79), .CI(n13), .CO(n12), .S(product[12]) );
  FA_X1 U14 ( .A(n80), .B(n87), .CI(n14), .CO(n13), .S(product[11]) );
  FA_X1 U15 ( .A(n88), .B(n95), .CI(n15), .CO(n14), .S(product[10]) );
  FA_X1 U16 ( .A(n96), .B(n103), .CI(n16), .CO(n15), .S(product[9]) );
  FA_X1 U17 ( .A(n104), .B(n109), .CI(n17), .CO(n16), .S(product[8]) );
  FA_X1 U18 ( .A(n110), .B(n115), .CI(n18), .CO(n17), .S(product[7]) );
  FA_X1 U19 ( .A(n116), .B(n119), .CI(n19), .CO(n18), .S(product[6]) );
  FA_X1 U20 ( .A(n120), .B(n123), .CI(n20), .CO(n19), .S(product[5]) );
  FA_X1 U21 ( .A(n124), .B(n125), .CI(n21), .CO(n20), .S(product[4]) );
  FA_X1 U22 ( .A(n126), .B(n146), .CI(n22), .CO(n21), .S(product[3]) );
  FA_X1 U23 ( .A(n219), .B(n208), .CI(n23), .CO(n22), .S(product[2]) );
  HA_X1 U24 ( .A(n220), .B(n147), .CO(n23), .S(product[1]) );
  FA_X1 U26 ( .A(n149), .B(n29), .CI(n404), .CO(n25), .S(n26) );
  FA_X1 U27 ( .A(n405), .B(n158), .CI(n33), .CO(n27), .S(n28) );
  FA_X1 U29 ( .A(n37), .B(n402), .CI(n34), .CO(n31), .S(n32) );
  FA_X1 U30 ( .A(n150), .B(n39), .CI(n159), .CO(n33), .S(n34) );
  FA_X1 U31 ( .A(n38), .B(n45), .CI(n43), .CO(n35), .S(n36) );
  FA_X1 U32 ( .A(n160), .B(n171), .CI(n406), .CO(n37), .S(n38) );
  FA_X1 U34 ( .A(n49), .B(n46), .CI(n44), .CO(n41), .S(n42) );
  FA_X1 U35 ( .A(n400), .B(n161), .CI(n51), .CO(n43), .S(n44) );
  FA_X1 U36 ( .A(n151), .B(n53), .CI(n172), .CO(n45), .S(n46) );
  FA_X1 U37 ( .A(n57), .B(n52), .CI(n50), .CO(n47), .S(n48) );
  FA_X1 U38 ( .A(n61), .B(n184), .CI(n59), .CO(n49), .S(n50) );
  FA_X1 U39 ( .A(n173), .B(n162), .CI(n407), .CO(n51), .S(n52) );
  FA_X1 U41 ( .A(n65), .B(n60), .CI(n58), .CO(n55), .S(n56) );
  FA_X1 U42 ( .A(n67), .B(n69), .CI(n62), .CO(n57), .S(n58) );
  FA_X1 U43 ( .A(n397), .B(n174), .CI(n398), .CO(n59), .S(n60) );
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
  HA_X1 U74 ( .A(n145), .B(n194), .CO(n121), .S(n122) );
  FA_X1 U75 ( .A(n217), .B(n195), .CI(n206), .CO(n123), .S(n124) );
  HA_X1 U76 ( .A(n207), .B(n218), .CO(n125), .S(n126) );
  INV_X1 U297 ( .A(b[3]), .ZN(n412) );
  INV_X1 U298 ( .A(b[2]), .ZN(n411) );
  INV_X1 U299 ( .A(b[1]), .ZN(n410) );
  INV_X1 U300 ( .A(b[10]), .ZN(n419) );
  INV_X1 U301 ( .A(b[0]), .ZN(n409) );
  XNOR2_X1 U302 ( .A(a[2]), .B(a[1]), .ZN(n434) );
  NAND2_X2 U303 ( .A1(n448), .A2(n493), .ZN(n450) );
  INV_X1 U304 ( .A(n434), .ZN(n389) );
  INV_X2 U305 ( .A(n389), .ZN(n390) );
  XOR2_X1 U306 ( .A(n42), .B(n47), .Z(n391) );
  XOR2_X1 U307 ( .A(n9), .B(n391), .Z(product[16]) );
  NAND2_X1 U308 ( .A1(n9), .A2(n42), .ZN(n392) );
  NAND2_X1 U309 ( .A1(n9), .A2(n47), .ZN(n393) );
  NAND2_X1 U310 ( .A1(n42), .A2(n47), .ZN(n394) );
  NAND3_X1 U311 ( .A1(n392), .A2(n393), .A3(n394), .ZN(n8) );
  XNOR2_X1 U312 ( .A(n420), .B(n395), .ZN(product[21]) );
  NAND2_X2 U313 ( .A1(n434), .A2(n491), .ZN(n436) );
  XNOR2_X2 U314 ( .A(a[8]), .B(a[7]), .ZN(n476) );
  XNOR2_X2 U315 ( .A(a[4]), .B(a[3]), .ZN(n448) );
  XNOR2_X2 U316 ( .A(a[6]), .B(a[5]), .ZN(n462) );
  XNOR2_X1 U317 ( .A(n4), .B(n25), .ZN(n395) );
  INV_X1 U318 ( .A(n447), .ZN(n397) );
  INV_X1 U319 ( .A(n53), .ZN(n407) );
  INV_X1 U320 ( .A(n461), .ZN(n400) );
  INV_X1 U321 ( .A(n39), .ZN(n406) );
  INV_X1 U322 ( .A(n475), .ZN(n402) );
  INV_X1 U323 ( .A(n29), .ZN(n405) );
  INV_X1 U324 ( .A(a[5]), .ZN(n401) );
  INV_X1 U325 ( .A(a[1]), .ZN(n398) );
  INV_X1 U326 ( .A(a[7]), .ZN(n403) );
  INV_X1 U327 ( .A(a[9]), .ZN(n408) );
  INV_X1 U328 ( .A(a[3]), .ZN(n399) );
  INV_X1 U329 ( .A(n489), .ZN(n404) );
  INV_X1 U330 ( .A(a[0]), .ZN(n396) );
  INV_X1 U331 ( .A(b[4]), .ZN(n413) );
  INV_X1 U332 ( .A(b[6]), .ZN(n415) );
  INV_X1 U333 ( .A(b[5]), .ZN(n414) );
  INV_X1 U334 ( .A(b[7]), .ZN(n416) );
  INV_X1 U335 ( .A(b[8]), .ZN(n417) );
  INV_X1 U336 ( .A(b[9]), .ZN(n418) );
  XOR2_X2 U337 ( .A(a[10]), .B(n408), .Z(n422) );
  OR2_X1 U338 ( .A1(n419), .A2(n421), .ZN(n420) );
  NOR2_X1 U339 ( .A1(n396), .A2(n409), .ZN(product[0]) );
  OAI22_X1 U340 ( .A1(n421), .A2(n413), .B1(n422), .B2(n414), .ZN(n53) );
  OAI22_X1 U341 ( .A1(n421), .A2(n415), .B1(n422), .B2(n416), .ZN(n39) );
  OAI22_X1 U342 ( .A1(n421), .A2(n417), .B1(n422), .B2(n418), .ZN(n29) );
  OAI22_X1 U343 ( .A1(b[0]), .A2(n423), .B1(n424), .B2(n396), .ZN(n220) );
  OAI22_X1 U344 ( .A1(n424), .A2(n423), .B1(n425), .B2(n396), .ZN(n219) );
  XOR2_X1 U345 ( .A(n410), .B(a[1]), .Z(n424) );
  OAI22_X1 U346 ( .A1(n425), .A2(n423), .B1(n426), .B2(n396), .ZN(n218) );
  XOR2_X1 U347 ( .A(n411), .B(a[1]), .Z(n425) );
  OAI22_X1 U348 ( .A1(n426), .A2(n423), .B1(n427), .B2(n396), .ZN(n217) );
  XOR2_X1 U349 ( .A(n412), .B(a[1]), .Z(n426) );
  OAI22_X1 U350 ( .A1(n427), .A2(n423), .B1(n428), .B2(n396), .ZN(n216) );
  XOR2_X1 U351 ( .A(n413), .B(a[1]), .Z(n427) );
  OAI22_X1 U352 ( .A1(n428), .A2(n423), .B1(n429), .B2(n396), .ZN(n215) );
  XOR2_X1 U353 ( .A(n414), .B(a[1]), .Z(n428) );
  OAI22_X1 U354 ( .A1(n429), .A2(n423), .B1(n430), .B2(n396), .ZN(n214) );
  XOR2_X1 U355 ( .A(n415), .B(a[1]), .Z(n429) );
  OAI22_X1 U356 ( .A1(n430), .A2(n423), .B1(n431), .B2(n396), .ZN(n213) );
  XOR2_X1 U357 ( .A(n416), .B(a[1]), .Z(n430) );
  OAI22_X1 U358 ( .A1(n431), .A2(n423), .B1(n432), .B2(n396), .ZN(n212) );
  XOR2_X1 U359 ( .A(n417), .B(a[1]), .Z(n431) );
  OAI22_X1 U360 ( .A1(n432), .A2(n423), .B1(n433), .B2(n396), .ZN(n211) );
  XOR2_X1 U361 ( .A(n418), .B(a[1]), .Z(n432) );
  OAI22_X1 U362 ( .A1(n433), .A2(n423), .B1(n398), .B2(n396), .ZN(n210) );
  XOR2_X1 U363 ( .A(n419), .B(a[1]), .Z(n433) );
  NOR2_X1 U364 ( .A1(n390), .A2(n409), .ZN(n208) );
  OAI22_X1 U365 ( .A1(n435), .A2(n436), .B1(n390), .B2(n437), .ZN(n207) );
  XOR2_X1 U366 ( .A(n409), .B(a[3]), .Z(n435) );
  OAI22_X1 U367 ( .A1(n437), .A2(n436), .B1(n390), .B2(n438), .ZN(n206) );
  XOR2_X1 U368 ( .A(n410), .B(a[3]), .Z(n437) );
  OAI22_X1 U369 ( .A1(n438), .A2(n436), .B1(n390), .B2(n439), .ZN(n205) );
  XOR2_X1 U370 ( .A(n411), .B(a[3]), .Z(n438) );
  OAI22_X1 U371 ( .A1(n439), .A2(n436), .B1(n390), .B2(n440), .ZN(n204) );
  XOR2_X1 U372 ( .A(n412), .B(a[3]), .Z(n439) );
  OAI22_X1 U373 ( .A1(n440), .A2(n436), .B1(n390), .B2(n441), .ZN(n203) );
  XOR2_X1 U374 ( .A(n413), .B(a[3]), .Z(n440) );
  OAI22_X1 U375 ( .A1(n441), .A2(n436), .B1(n390), .B2(n442), .ZN(n202) );
  XOR2_X1 U376 ( .A(n414), .B(a[3]), .Z(n441) );
  OAI22_X1 U377 ( .A1(n442), .A2(n436), .B1(n390), .B2(n443), .ZN(n201) );
  XOR2_X1 U378 ( .A(n415), .B(a[3]), .Z(n442) );
  OAI22_X1 U379 ( .A1(n443), .A2(n436), .B1(n390), .B2(n444), .ZN(n200) );
  XOR2_X1 U380 ( .A(n416), .B(a[3]), .Z(n443) );
  OAI22_X1 U381 ( .A1(n444), .A2(n436), .B1(n390), .B2(n445), .ZN(n199) );
  XOR2_X1 U382 ( .A(n417), .B(a[3]), .Z(n444) );
  OAI22_X1 U383 ( .A1(n445), .A2(n436), .B1(n390), .B2(n446), .ZN(n198) );
  XOR2_X1 U384 ( .A(n418), .B(a[3]), .Z(n445) );
  OAI22_X1 U385 ( .A1(n446), .A2(n436), .B1(n390), .B2(n399), .ZN(n197) );
  XOR2_X1 U386 ( .A(n419), .B(a[3]), .Z(n446) );
  OAI22_X1 U387 ( .A1(n399), .A2(n390), .B1(n436), .B2(n399), .ZN(n447) );
  NOR2_X1 U388 ( .A1(n448), .A2(n409), .ZN(n195) );
  OAI22_X1 U389 ( .A1(n449), .A2(n450), .B1(n448), .B2(n451), .ZN(n194) );
  XOR2_X1 U390 ( .A(n409), .B(a[5]), .Z(n449) );
  OAI22_X1 U391 ( .A1(n451), .A2(n450), .B1(n448), .B2(n452), .ZN(n193) );
  XOR2_X1 U392 ( .A(n410), .B(a[5]), .Z(n451) );
  OAI22_X1 U393 ( .A1(n452), .A2(n450), .B1(n448), .B2(n453), .ZN(n192) );
  XOR2_X1 U394 ( .A(n411), .B(a[5]), .Z(n452) );
  OAI22_X1 U395 ( .A1(n453), .A2(n450), .B1(n448), .B2(n454), .ZN(n191) );
  XOR2_X1 U396 ( .A(n412), .B(a[5]), .Z(n453) );
  OAI22_X1 U397 ( .A1(n454), .A2(n450), .B1(n448), .B2(n455), .ZN(n190) );
  XOR2_X1 U398 ( .A(n413), .B(a[5]), .Z(n454) );
  OAI22_X1 U399 ( .A1(n455), .A2(n450), .B1(n448), .B2(n456), .ZN(n189) );
  XOR2_X1 U400 ( .A(n414), .B(a[5]), .Z(n455) );
  OAI22_X1 U401 ( .A1(n456), .A2(n450), .B1(n448), .B2(n457), .ZN(n188) );
  XOR2_X1 U402 ( .A(n415), .B(a[5]), .Z(n456) );
  OAI22_X1 U403 ( .A1(n457), .A2(n450), .B1(n448), .B2(n458), .ZN(n187) );
  XOR2_X1 U404 ( .A(n416), .B(a[5]), .Z(n457) );
  OAI22_X1 U405 ( .A1(n458), .A2(n450), .B1(n448), .B2(n459), .ZN(n186) );
  XOR2_X1 U406 ( .A(n417), .B(a[5]), .Z(n458) );
  OAI22_X1 U407 ( .A1(n459), .A2(n450), .B1(n448), .B2(n460), .ZN(n185) );
  XOR2_X1 U408 ( .A(n418), .B(a[5]), .Z(n459) );
  OAI22_X1 U409 ( .A1(n460), .A2(n450), .B1(n448), .B2(n401), .ZN(n184) );
  XOR2_X1 U410 ( .A(n419), .B(a[5]), .Z(n460) );
  OAI22_X1 U411 ( .A1(n401), .A2(n448), .B1(n450), .B2(n401), .ZN(n461) );
  NOR2_X1 U412 ( .A1(n462), .A2(n409), .ZN(n182) );
  OAI22_X1 U413 ( .A1(n463), .A2(n464), .B1(n462), .B2(n465), .ZN(n181) );
  XOR2_X1 U414 ( .A(n409), .B(a[7]), .Z(n463) );
  OAI22_X1 U415 ( .A1(n465), .A2(n464), .B1(n462), .B2(n466), .ZN(n180) );
  XOR2_X1 U416 ( .A(n410), .B(a[7]), .Z(n465) );
  OAI22_X1 U417 ( .A1(n466), .A2(n464), .B1(n462), .B2(n467), .ZN(n179) );
  XOR2_X1 U418 ( .A(n411), .B(a[7]), .Z(n466) );
  OAI22_X1 U419 ( .A1(n467), .A2(n464), .B1(n462), .B2(n468), .ZN(n178) );
  XOR2_X1 U420 ( .A(n412), .B(a[7]), .Z(n467) );
  OAI22_X1 U421 ( .A1(n468), .A2(n464), .B1(n462), .B2(n469), .ZN(n177) );
  XOR2_X1 U422 ( .A(n413), .B(a[7]), .Z(n468) );
  OAI22_X1 U423 ( .A1(n469), .A2(n464), .B1(n462), .B2(n470), .ZN(n176) );
  XOR2_X1 U424 ( .A(n414), .B(a[7]), .Z(n469) );
  OAI22_X1 U425 ( .A1(n470), .A2(n464), .B1(n462), .B2(n471), .ZN(n175) );
  XOR2_X1 U426 ( .A(n415), .B(a[7]), .Z(n470) );
  OAI22_X1 U427 ( .A1(n471), .A2(n464), .B1(n462), .B2(n472), .ZN(n174) );
  XOR2_X1 U428 ( .A(n416), .B(a[7]), .Z(n471) );
  OAI22_X1 U429 ( .A1(n472), .A2(n464), .B1(n462), .B2(n473), .ZN(n173) );
  XOR2_X1 U430 ( .A(n417), .B(a[7]), .Z(n472) );
  OAI22_X1 U431 ( .A1(n473), .A2(n464), .B1(n462), .B2(n474), .ZN(n172) );
  XOR2_X1 U432 ( .A(n418), .B(a[7]), .Z(n473) );
  OAI22_X1 U433 ( .A1(n474), .A2(n464), .B1(n462), .B2(n403), .ZN(n171) );
  XOR2_X1 U434 ( .A(n419), .B(a[7]), .Z(n474) );
  OAI22_X1 U435 ( .A1(n403), .A2(n462), .B1(n464), .B2(n403), .ZN(n475) );
  NOR2_X1 U436 ( .A1(n476), .A2(n409), .ZN(n169) );
  OAI22_X1 U437 ( .A1(n477), .A2(n478), .B1(n476), .B2(n479), .ZN(n168) );
  XOR2_X1 U438 ( .A(n409), .B(a[9]), .Z(n477) );
  OAI22_X1 U439 ( .A1(n479), .A2(n478), .B1(n476), .B2(n480), .ZN(n167) );
  XOR2_X1 U440 ( .A(n410), .B(a[9]), .Z(n479) );
  OAI22_X1 U441 ( .A1(n480), .A2(n478), .B1(n476), .B2(n481), .ZN(n166) );
  XOR2_X1 U442 ( .A(n411), .B(a[9]), .Z(n480) );
  OAI22_X1 U443 ( .A1(n481), .A2(n478), .B1(n476), .B2(n482), .ZN(n165) );
  XOR2_X1 U444 ( .A(n412), .B(a[9]), .Z(n481) );
  OAI22_X1 U445 ( .A1(n482), .A2(n478), .B1(n476), .B2(n483), .ZN(n164) );
  XOR2_X1 U446 ( .A(n413), .B(a[9]), .Z(n482) );
  OAI22_X1 U447 ( .A1(n483), .A2(n478), .B1(n476), .B2(n484), .ZN(n163) );
  XOR2_X1 U448 ( .A(n414), .B(a[9]), .Z(n483) );
  OAI22_X1 U449 ( .A1(n484), .A2(n478), .B1(n476), .B2(n485), .ZN(n162) );
  XOR2_X1 U450 ( .A(n415), .B(a[9]), .Z(n484) );
  OAI22_X1 U451 ( .A1(n485), .A2(n478), .B1(n476), .B2(n486), .ZN(n161) );
  XOR2_X1 U452 ( .A(n416), .B(a[9]), .Z(n485) );
  OAI22_X1 U453 ( .A1(n486), .A2(n478), .B1(n476), .B2(n487), .ZN(n160) );
  XOR2_X1 U454 ( .A(n417), .B(a[9]), .Z(n486) );
  OAI22_X1 U455 ( .A1(n487), .A2(n478), .B1(n476), .B2(n488), .ZN(n159) );
  XOR2_X1 U456 ( .A(n418), .B(a[9]), .Z(n487) );
  OAI22_X1 U457 ( .A1(n488), .A2(n478), .B1(n476), .B2(n408), .ZN(n158) );
  XOR2_X1 U458 ( .A(n419), .B(a[9]), .Z(n488) );
  OAI22_X1 U459 ( .A1(n408), .A2(n476), .B1(n478), .B2(n408), .ZN(n489) );
  NOR2_X1 U460 ( .A1(n422), .A2(n409), .ZN(n156) );
  OAI22_X1 U461 ( .A1(n421), .A2(n409), .B1(n422), .B2(n410), .ZN(n155) );
  OAI22_X1 U462 ( .A1(n421), .A2(n410), .B1(n422), .B2(n411), .ZN(n154) );
  OAI22_X1 U463 ( .A1(n421), .A2(n411), .B1(n422), .B2(n412), .ZN(n153) );
  OAI22_X1 U464 ( .A1(n421), .A2(n412), .B1(n422), .B2(n413), .ZN(n152) );
  OAI22_X1 U465 ( .A1(n421), .A2(n414), .B1(n422), .B2(n415), .ZN(n151) );
  OAI22_X1 U466 ( .A1(n421), .A2(n416), .B1(n422), .B2(n417), .ZN(n150) );
  OAI22_X1 U467 ( .A1(n421), .A2(n418), .B1(n422), .B2(n419), .ZN(n149) );
  NAND2_X1 U468 ( .A1(n422), .A2(a[10]), .ZN(n421) );
  OAI21_X1 U469 ( .B1(b[0]), .B2(n398), .A(n423), .ZN(n147) );
  NAND2_X1 U470 ( .A1(a[1]), .A2(n396), .ZN(n423) );
  OAI21_X1 U471 ( .B1(n399), .B2(n436), .A(n490), .ZN(n146) );
  OR3_X1 U472 ( .A1(n390), .A2(b[0]), .A3(n399), .ZN(n490) );
  XOR2_X1 U473 ( .A(a[3]), .B(a[2]), .Z(n491) );
  OAI21_X1 U474 ( .B1(n401), .B2(n450), .A(n492), .ZN(n145) );
  OR3_X1 U475 ( .A1(n448), .A2(b[0]), .A3(n401), .ZN(n492) );
  XOR2_X1 U476 ( .A(a[5]), .B(a[4]), .Z(n493) );
  OAI21_X1 U477 ( .B1(n403), .B2(n464), .A(n494), .ZN(n144) );
  OR3_X1 U478 ( .A1(n462), .A2(b[0]), .A3(n403), .ZN(n494) );
  NAND2_X1 U479 ( .A1(n462), .A2(n495), .ZN(n464) );
  XOR2_X1 U480 ( .A(a[7]), .B(a[6]), .Z(n495) );
  OAI21_X1 U481 ( .B1(n408), .B2(n478), .A(n496), .ZN(n143) );
  OR3_X1 U482 ( .A1(n476), .A2(b[0]), .A3(n408), .ZN(n496) );
  NAND2_X1 U483 ( .A1(n476), .A2(n497), .ZN(n478) );
  XOR2_X1 U484 ( .A(a[9]), .B(a[8]), .Z(n497) );
endmodule


module fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_sub_5 ( A, B, 
        CI, DIFF, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6;
  wire   [6:1] carry;

  FA_X1 U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA_X1 U2_3 ( .A(A[3]), .B(n4), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA_X1 U2_2 ( .A(A[2]), .B(n5), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA_X1 U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XNOR2_X1 U1 ( .A(A[6]), .B(carry[6]), .ZN(DIFF[6]) );
  INV_X1 U2 ( .A(B[4]), .ZN(n6) );
  INV_X1 U3 ( .A(B[3]), .ZN(n4) );
  INV_X1 U4 ( .A(B[2]), .ZN(n5) );
  XNOR2_X1 U5 ( .A(A[5]), .B(carry[5]), .ZN(DIFF[5]) );
  INV_X1 U6 ( .A(B[1]), .ZN(n3) );
  NAND2_X1 U7 ( .A1(B[0]), .A2(n1), .ZN(carry[1]) );
  INV_X1 U8 ( .A(A[0]), .ZN(n1) );
  OR2_X1 U9 ( .A1(A[5]), .A2(carry[5]), .ZN(carry[6]) );
  XNOR2_X1 U10 ( .A(n2), .B(A[0]), .ZN(DIFF[0]) );
  INV_X1 U11 ( .A(B[0]), .ZN(n2) );
endmodule


module fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_inc_2 ( A, SUM
 );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA_X1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U1 ( .A(carry[6]), .B(A[6]), .Z(SUM[6]) );
endmodule


module fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_sub_4 ( A, B, 
        CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38;
  wire   [7:1] carry;

  NAND2_X1 U1 ( .A1(n15), .A2(n38), .ZN(n1) );
  NAND2_X1 U2 ( .A1(n35), .A2(carry[1]), .ZN(n2) );
  NAND3_X1 U3 ( .A1(n9), .A2(n10), .A3(n11), .ZN(n3) );
  CLKBUF_X1 U4 ( .A(n9), .Z(n4) );
  NAND3_X1 U5 ( .A1(n20), .A2(n22), .A3(n21), .ZN(n5) );
  NAND3_X1 U6 ( .A1(n4), .A2(n10), .A3(n11), .ZN(n6) );
  CLKBUF_X1 U7 ( .A(n5), .Z(n7) );
  XOR2_X1 U8 ( .A(n37), .B(A[2]), .Z(n8) );
  XOR2_X1 U9 ( .A(n7), .B(n8), .Z(DIFF[2]) );
  NAND2_X1 U10 ( .A1(n5), .A2(n37), .ZN(n9) );
  NAND2_X1 U11 ( .A1(carry[2]), .A2(A[2]), .ZN(n10) );
  NAND2_X1 U12 ( .A1(n37), .A2(A[2]), .ZN(n11) );
  NAND3_X1 U13 ( .A1(n9), .A2(n10), .A3(n11), .ZN(carry[3]) );
  NAND2_X1 U14 ( .A1(n14), .A2(n12), .ZN(carry[7]) );
  AND2_X1 U15 ( .A1(n31), .A2(n32), .ZN(n12) );
  AND3_X1 U16 ( .A1(n1), .A2(n29), .A3(n28), .ZN(n13) );
  AND3_X1 U17 ( .A1(n29), .A2(n30), .A3(n28), .ZN(n14) );
  NAND3_X1 U18 ( .A1(n26), .A2(n25), .A3(n24), .ZN(n15) );
  NAND3_X1 U19 ( .A1(n26), .A2(n25), .A3(n24), .ZN(n16) );
  CLKBUF_X1 U20 ( .A(carry[1]), .Z(n17) );
  NAND2_X1 U21 ( .A1(B[0]), .A2(n33), .ZN(n18) );
  NAND2_X1 U22 ( .A1(B[0]), .A2(n33), .ZN(carry[1]) );
  XOR2_X1 U23 ( .A(n35), .B(A[1]), .Z(n19) );
  XOR2_X1 U24 ( .A(n17), .B(n19), .Z(DIFF[1]) );
  NAND2_X1 U25 ( .A1(n35), .A2(carry[1]), .ZN(n20) );
  NAND2_X1 U26 ( .A1(n18), .A2(A[1]), .ZN(n21) );
  NAND2_X1 U27 ( .A1(n35), .A2(A[1]), .ZN(n22) );
  NAND3_X1 U28 ( .A1(n2), .A2(n22), .A3(n21), .ZN(carry[2]) );
  XOR2_X1 U29 ( .A(A[3]), .B(n36), .Z(n23) );
  XOR2_X1 U30 ( .A(n23), .B(n6), .Z(DIFF[3]) );
  NAND2_X1 U31 ( .A1(A[3]), .A2(n36), .ZN(n24) );
  NAND2_X1 U32 ( .A1(carry[3]), .A2(A[3]), .ZN(n25) );
  NAND2_X1 U33 ( .A1(n36), .A2(n3), .ZN(n26) );
  NAND3_X1 U34 ( .A1(n26), .A2(n25), .A3(n24), .ZN(carry[4]) );
  XOR2_X1 U35 ( .A(A[4]), .B(n38), .Z(n27) );
  XOR2_X1 U36 ( .A(n27), .B(n16), .Z(DIFF[4]) );
  NAND2_X1 U37 ( .A1(A[4]), .A2(n38), .ZN(n28) );
  NAND2_X1 U38 ( .A1(carry[4]), .A2(A[4]), .ZN(n29) );
  NAND2_X1 U39 ( .A1(n15), .A2(n38), .ZN(n30) );
  NAND3_X1 U40 ( .A1(n1), .A2(n29), .A3(n28), .ZN(carry[5]) );
  INV_X1 U41 ( .A(B[4]), .ZN(n38) );
  XNOR2_X1 U42 ( .A(n34), .B(A[0]), .ZN(DIFF[0]) );
  XNOR2_X1 U43 ( .A(carry[7]), .B(A[7]), .ZN(DIFF[7]) );
  INV_X1 U44 ( .A(A[6]), .ZN(n32) );
  NAND2_X1 U45 ( .A1(n13), .A2(n31), .ZN(carry[6]) );
  INV_X1 U46 ( .A(A[5]), .ZN(n31) );
  INV_X1 U47 ( .A(B[3]), .ZN(n36) );
  INV_X1 U48 ( .A(B[2]), .ZN(n37) );
  INV_X1 U49 ( .A(A[0]), .ZN(n33) );
  XNOR2_X1 U50 ( .A(carry[5]), .B(A[5]), .ZN(DIFF[5]) );
  XNOR2_X1 U51 ( .A(carry[6]), .B(A[6]), .ZN(DIFF[6]) );
  INV_X1 U52 ( .A(B[1]), .ZN(n35) );
  INV_X1 U53 ( .A(B[0]), .ZN(n34) );
endmodule


module fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_sub_6 ( A, B, 
        CI, DIFF, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n7, n9, n11, n12, n13, n14, n15, n17, n19, n20,
         n21, n22, n23, n25, n27, n28, n30, n32, n34, n35, n36, n37, n38, n39,
         n68, n69, n70, n71;

  NOR2_X1 U50 ( .A1(n35), .A2(A[4]), .ZN(n13) );
  OR2_X1 U51 ( .A1(n34), .A2(A[5]), .ZN(n71) );
  OR2_X1 U52 ( .A1(n36), .A2(A[3]), .ZN(n70) );
  NOR2_X1 U53 ( .A1(n37), .A2(A[2]), .ZN(n21) );
  XOR2_X1 U54 ( .A(n68), .B(n28), .Z(DIFF[1]) );
  NAND2_X1 U55 ( .A1(n69), .A2(n27), .ZN(n68) );
  AOI21_X1 U56 ( .B1(n70), .B2(n20), .A(n17), .ZN(n15) );
  INV_X1 U57 ( .A(n19), .ZN(n17) );
  OAI21_X1 U58 ( .B1(n21), .B2(n23), .A(n22), .ZN(n20) );
  OAI21_X1 U59 ( .B1(n13), .B2(n15), .A(n14), .ZN(n12) );
  XNOR2_X1 U60 ( .A(n2), .B(n12), .ZN(DIFF[5]) );
  NAND2_X1 U61 ( .A1(n71), .A2(n11), .ZN(n2) );
  XOR2_X1 U62 ( .A(n3), .B(n15), .Z(DIFF[4]) );
  NAND2_X1 U63 ( .A1(n30), .A2(n14), .ZN(n3) );
  INV_X1 U64 ( .A(n13), .ZN(n30) );
  XNOR2_X1 U65 ( .A(n4), .B(n20), .ZN(DIFF[3]) );
  NAND2_X1 U66 ( .A1(n70), .A2(n19), .ZN(n4) );
  XOR2_X1 U67 ( .A(n5), .B(n23), .Z(DIFF[2]) );
  NAND2_X1 U68 ( .A1(n32), .A2(n22), .ZN(n5) );
  INV_X1 U69 ( .A(n21), .ZN(n32) );
  AOI21_X1 U70 ( .B1(n69), .B2(n1), .A(n25), .ZN(n23) );
  INV_X1 U71 ( .A(n28), .ZN(n1) );
  INV_X1 U72 ( .A(n27), .ZN(n25) );
  OR2_X1 U73 ( .A1(n38), .A2(A[1]), .ZN(n69) );
  NAND2_X1 U74 ( .A1(n38), .A2(A[1]), .ZN(n27) );
  INV_X1 U75 ( .A(B[3]), .ZN(n36) );
  NAND2_X1 U76 ( .A1(n36), .A2(A[3]), .ZN(n19) );
  INV_X1 U77 ( .A(B[4]), .ZN(n35) );
  NAND2_X1 U78 ( .A1(n35), .A2(A[4]), .ZN(n14) );
  INV_X1 U79 ( .A(B[2]), .ZN(n37) );
  NAND2_X1 U80 ( .A1(n37), .A2(A[2]), .ZN(n22) );
  NAND2_X1 U81 ( .A1(n34), .A2(A[5]), .ZN(n11) );
  XOR2_X1 U82 ( .A(n7), .B(B[6]), .Z(DIFF[6]) );
  AOI21_X1 U83 ( .B1(n12), .B2(n71), .A(n9), .ZN(n7) );
  INV_X1 U84 ( .A(n11), .ZN(n9) );
  INV_X1 U85 ( .A(B[1]), .ZN(n38) );
  INV_X1 U86 ( .A(B[5]), .ZN(n34) );
  NOR2_X1 U87 ( .A1(n39), .A2(A[0]), .ZN(n28) );
  INV_X1 U88 ( .A(B[0]), .ZN(n39) );
  XNOR2_X1 U89 ( .A(n39), .B(A[0]), .ZN(DIFF[0]) );
endmodule


module fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_add_6 ( A, B, 
        CI, SUM, CO );
  input [37:0] A;
  input [37:0] B;
  output [37:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n32, n33, n35,
         n36, n37, n38, n39, n40, n41, n42, n44, n45, n46, n47, n48, n49, n51,
         n52, n53, n54, n55, n57, n58, n60, n61, n62, n63, n64, n67, n68, n69,
         n70, n71, n72, n73, n74, n76, n77, n78, n79, n80, n81, n83, n84, n85,
         n86, n87, n89, n90, n92, n93, n94, n95, n96, n99, n100, n101, n102,
         n104, n105, n106, n108, n109, n110, n111, n112, n115, n116, n117,
         n118, n121, n122, n124, n125, n126, n127, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n149, n150, n151, n152, n153, n154, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n217, n218, n219, n220, n221,
         n222, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n304, n305, n307, n309,
         n311, n312, n313, n315, n317, n319, n320, n321, n322, n323, n325,
         n326, n449, n451, n452;

  AOI21_X1 U369 ( .B1(n271), .B2(n203), .A(n204), .ZN(n202) );
  OR2_X1 U370 ( .A1(B[0]), .A2(CI), .ZN(n449) );
  NOR2_X1 U371 ( .A1(A[23]), .A2(B[23]), .ZN(n141) );
  BUF_X2 U372 ( .A(n136), .Z(n3) );
  CLKBUF_X3 U373 ( .A(n135), .Z(n4) );
  BUF_X1 U374 ( .A(n202), .Z(n2) );
  OAI21_X1 U375 ( .B1(n2), .B2(n451), .A(n452), .ZN(SUM[37]) );
  NAND2_X1 U376 ( .A1(n4), .A2(n32), .ZN(n451) );
  NAND2_X1 U377 ( .A1(n3), .A2(n32), .ZN(n452) );
  NOR2_X1 U378 ( .A1(n150), .A2(n141), .ZN(n139) );
  NOR2_X1 U379 ( .A1(A[21]), .A2(B[21]), .ZN(n161) );
  NOR2_X1 U380 ( .A1(n168), .A2(n161), .ZN(n159) );
  NOR2_X1 U381 ( .A1(A[15]), .A2(B[15]), .ZN(n209) );
  NOR2_X1 U382 ( .A1(A[19]), .A2(B[19]), .ZN(n179) );
  NOR2_X1 U383 ( .A1(n186), .A2(n179), .ZN(n177) );
  NOR2_X1 U384 ( .A1(A[11]), .A2(B[11]), .ZN(n247) );
  NOR2_X1 U385 ( .A1(A[10]), .A2(B[10]), .ZN(n254) );
  NOR2_X1 U386 ( .A1(A[14]), .A2(B[14]), .ZN(n218) );
  NOR2_X1 U387 ( .A1(A[17]), .A2(B[17]), .ZN(n197) );
  NOR2_X1 U388 ( .A1(A[16]), .A2(B[16]), .ZN(n200) );
  BUF_X1 U389 ( .A(n72), .Z(n5) );
  AND2_X1 U390 ( .A1(n449), .A2(n304), .ZN(SUM[0]) );
  NOR2_X1 U391 ( .A1(A[22]), .A2(B[22]), .ZN(n150) );
  NOR2_X1 U392 ( .A1(A[20]), .A2(B[20]), .ZN(n168) );
  NOR2_X1 U393 ( .A1(A[7]), .A2(B[7]), .ZN(n276) );
  NOR2_X1 U394 ( .A1(A[13]), .A2(B[13]), .ZN(n229) );
  NOR2_X1 U395 ( .A1(A[12]), .A2(B[12]), .ZN(n236) );
  NOR2_X1 U396 ( .A1(A[6]), .A2(B[6]), .ZN(n279) );
  NOR2_X1 U397 ( .A1(A[18]), .A2(B[18]), .ZN(n186) );
  NOR2_X1 U398 ( .A1(A[8]), .A2(B[8]), .ZN(n268) );
  NOR2_X1 U399 ( .A1(A[5]), .A2(B[5]), .ZN(n284) );
  NOR2_X1 U400 ( .A1(A[3]), .A2(B[3]), .ZN(n295) );
  NOR2_X1 U401 ( .A1(A[4]), .A2(B[4]), .ZN(n289) );
  NOR2_X1 U402 ( .A1(A[2]), .A2(B[2]), .ZN(n298) );
  NAND2_X1 U403 ( .A1(n173), .A2(n159), .ZN(n153) );
  INV_X1 U404 ( .A(n195), .ZN(n189) );
  NAND2_X1 U405 ( .A1(n214), .A2(n241), .ZN(n212) );
  NAND2_X1 U406 ( .A1(n241), .A2(n227), .ZN(n221) );
  NOR2_X1 U407 ( .A1(n175), .A2(n137), .ZN(n135) );
  AOI21_X1 U408 ( .B1(n174), .B2(n159), .A(n160), .ZN(n154) );
  CLKBUF_X1 U409 ( .A(n202), .Z(n1) );
  INV_X1 U410 ( .A(n175), .ZN(n173) );
  INV_X1 U411 ( .A(n244), .ZN(n242) );
  AOI21_X1 U412 ( .B1(n242), .B2(n227), .A(n228), .ZN(n222) );
  INV_X1 U413 ( .A(n196), .ZN(n194) );
  INV_X1 U414 ( .A(n243), .ZN(n241) );
  NAND2_X1 U415 ( .A1(n263), .A2(n252), .ZN(n250) );
  INV_X1 U416 ( .A(n263), .ZN(n257) );
  NOR2_X1 U417 ( .A1(n225), .A2(n218), .ZN(n214) );
  NAND2_X1 U418 ( .A1(n159), .A2(n139), .ZN(n137) );
  NAND2_X1 U419 ( .A1(n195), .A2(n177), .ZN(n175) );
  NOR2_X1 U420 ( .A1(n157), .A2(n150), .ZN(n146) );
  INV_X1 U421 ( .A(n160), .ZN(n158) );
  INV_X1 U422 ( .A(n159), .ZN(n157) );
  NOR2_X1 U423 ( .A1(n243), .A2(n205), .ZN(n203) );
  OAI21_X1 U424 ( .B1(n244), .B2(n205), .A(n206), .ZN(n204) );
  NAND2_X1 U425 ( .A1(n227), .A2(n207), .ZN(n205) );
  AOI21_X1 U426 ( .B1(n245), .B2(n264), .A(n246), .ZN(n244) );
  OAI21_X1 U427 ( .B1(n247), .B2(n255), .A(n248), .ZN(n246) );
  NAND2_X1 U428 ( .A1(n263), .A2(n245), .ZN(n243) );
  XNOR2_X1 U429 ( .A(n199), .B(n12), .ZN(SUM[17]) );
  NAND2_X1 U430 ( .A1(n311), .A2(n198), .ZN(n12) );
  OAI21_X1 U431 ( .B1(n1), .B2(n200), .A(n201), .ZN(n199) );
  INV_X1 U432 ( .A(n197), .ZN(n311) );
  XNOR2_X1 U433 ( .A(n163), .B(n8), .ZN(SUM[21]) );
  NAND2_X1 U434 ( .A1(n307), .A2(n162), .ZN(n8) );
  OAI21_X1 U435 ( .B1(n1), .B2(n164), .A(n165), .ZN(n163) );
  INV_X1 U436 ( .A(n161), .ZN(n307) );
  NOR2_X1 U437 ( .A1(n200), .A2(n197), .ZN(n195) );
  OAI21_X1 U438 ( .B1(n197), .B2(n201), .A(n198), .ZN(n196) );
  XNOR2_X1 U439 ( .A(n181), .B(n10), .ZN(SUM[19]) );
  NAND2_X1 U440 ( .A1(n309), .A2(n180), .ZN(n10) );
  OAI21_X1 U441 ( .B1(n1), .B2(n182), .A(n183), .ZN(n181) );
  INV_X1 U442 ( .A(n179), .ZN(n309) );
  NOR2_X1 U443 ( .A1(n254), .A2(n247), .ZN(n245) );
  AOI21_X1 U444 ( .B1(n207), .B2(n228), .A(n208), .ZN(n206) );
  OAI21_X1 U445 ( .B1(n209), .B2(n219), .A(n210), .ZN(n208) );
  NOR2_X1 U446 ( .A1(n218), .A2(n209), .ZN(n207) );
  XOR2_X1 U447 ( .A(n1), .B(n13), .Z(SUM[16]) );
  NAND2_X1 U448 ( .A1(n312), .A2(n201), .ZN(n13) );
  INV_X1 U449 ( .A(n200), .ZN(n312) );
  INV_X1 U450 ( .A(n176), .ZN(n174) );
  XNOR2_X1 U451 ( .A(n36), .B(n35), .ZN(SUM[36]) );
  OAI21_X1 U452 ( .B1(n2), .B2(n37), .A(n38), .ZN(n36) );
  NAND2_X1 U453 ( .A1(n3), .A2(n39), .ZN(n38) );
  NAND2_X1 U454 ( .A1(n4), .A2(n39), .ZN(n37) );
  NAND2_X1 U455 ( .A1(n173), .A2(n166), .ZN(n164) );
  NOR2_X1 U456 ( .A1(n104), .A2(n99), .ZN(n96) );
  INV_X1 U457 ( .A(n105), .ZN(n104) );
  NOR2_X1 U458 ( .A1(n104), .A2(n90), .ZN(n87) );
  NOR2_X1 U459 ( .A1(n104), .A2(n81), .ZN(n80) );
  NAND2_X1 U460 ( .A1(n89), .A2(B[30]), .ZN(n81) );
  NOR2_X1 U461 ( .A1(n122), .A2(n115), .ZN(n112) );
  INV_X1 U462 ( .A(n122), .ZN(n121) );
  NOR2_X1 U463 ( .A1(n5), .A2(n67), .ZN(n64) );
  INV_X1 U464 ( .A(n5), .ZN(n71) );
  INV_X1 U465 ( .A(n271), .ZN(n270) );
  XNOR2_X1 U466 ( .A(n220), .B(n15), .ZN(SUM[14]) );
  NAND2_X1 U467 ( .A1(n217), .A2(n219), .ZN(n15) );
  OAI21_X1 U468 ( .B1(n270), .B2(n221), .A(n222), .ZN(n220) );
  XNOR2_X1 U469 ( .A(n256), .B(n19), .ZN(SUM[10]) );
  NAND2_X1 U470 ( .A1(n252), .A2(n255), .ZN(n19) );
  OAI21_X1 U471 ( .B1(n270), .B2(n257), .A(n262), .ZN(n256) );
  XNOR2_X1 U472 ( .A(n211), .B(n14), .ZN(SUM[15]) );
  NAND2_X1 U473 ( .A1(n313), .A2(n210), .ZN(n14) );
  OAI21_X1 U474 ( .B1(n270), .B2(n212), .A(n213), .ZN(n211) );
  INV_X1 U475 ( .A(n209), .ZN(n313) );
  XNOR2_X1 U476 ( .A(n249), .B(n18), .ZN(SUM[11]) );
  NAND2_X1 U477 ( .A1(n317), .A2(n248), .ZN(n18) );
  OAI21_X1 U478 ( .B1(n270), .B2(n250), .A(n251), .ZN(n249) );
  INV_X1 U479 ( .A(n247), .ZN(n317) );
  AOI21_X1 U480 ( .B1(n214), .B2(n242), .A(n215), .ZN(n213) );
  OAI21_X1 U481 ( .B1(n226), .B2(n218), .A(n219), .ZN(n215) );
  NAND2_X1 U482 ( .A1(n195), .A2(n184), .ZN(n182) );
  NAND2_X1 U483 ( .A1(n241), .A2(n234), .ZN(n232) );
  AOI21_X1 U484 ( .B1(n264), .B2(n252), .A(n253), .ZN(n251) );
  INV_X1 U485 ( .A(n255), .ZN(n253) );
  INV_X1 U486 ( .A(n264), .ZN(n262) );
  INV_X1 U487 ( .A(n301), .ZN(n300) );
  INV_X1 U488 ( .A(n228), .ZN(n226) );
  INV_X1 U489 ( .A(n227), .ZN(n225) );
  INV_X1 U490 ( .A(n218), .ZN(n217) );
  INV_X1 U491 ( .A(n254), .ZN(n252) );
  OAI21_X1 U492 ( .B1(n176), .B2(n137), .A(n138), .ZN(n136) );
  AOI21_X1 U493 ( .B1(n139), .B2(n160), .A(n140), .ZN(n138) );
  OAI21_X1 U494 ( .B1(n141), .B2(n151), .A(n142), .ZN(n140) );
  XNOR2_X1 U495 ( .A(n100), .B(n99), .ZN(SUM[28]) );
  OAI21_X1 U496 ( .B1(n2), .B2(n101), .A(n102), .ZN(n100) );
  NAND2_X1 U497 ( .A1(n3), .A2(n105), .ZN(n102) );
  NAND2_X1 U498 ( .A1(n4), .A2(n105), .ZN(n101) );
  XNOR2_X1 U499 ( .A(n125), .B(n124), .ZN(SUM[25]) );
  OAI21_X1 U500 ( .B1(n1), .B2(n126), .A(n127), .ZN(n125) );
  NAND2_X1 U501 ( .A1(n3), .A2(B[24]), .ZN(n127) );
  NAND2_X1 U502 ( .A1(n4), .A2(B[24]), .ZN(n126) );
  XNOR2_X1 U503 ( .A(n132), .B(n131), .ZN(SUM[24]) );
  OAI21_X1 U504 ( .B1(n1), .B2(n133), .A(n134), .ZN(n132) );
  INV_X1 U505 ( .A(n3), .ZN(n134) );
  INV_X1 U506 ( .A(n4), .ZN(n133) );
  XNOR2_X1 U507 ( .A(n84), .B(n83), .ZN(SUM[30]) );
  OAI21_X1 U508 ( .B1(n2), .B2(n85), .A(n86), .ZN(n84) );
  NAND2_X1 U509 ( .A1(n3), .A2(n87), .ZN(n86) );
  NAND2_X1 U510 ( .A1(n4), .A2(n87), .ZN(n85) );
  XNOR2_X1 U511 ( .A(n116), .B(n115), .ZN(SUM[26]) );
  OAI21_X1 U512 ( .B1(n2), .B2(n117), .A(n118), .ZN(n116) );
  NAND2_X1 U513 ( .A1(n3), .A2(n121), .ZN(n118) );
  NAND2_X1 U514 ( .A1(n4), .A2(n121), .ZN(n117) );
  XNOR2_X1 U515 ( .A(n77), .B(n76), .ZN(SUM[31]) );
  OAI21_X1 U516 ( .B1(n2), .B2(n78), .A(n79), .ZN(n77) );
  NAND2_X1 U517 ( .A1(n3), .A2(n80), .ZN(n79) );
  NAND2_X1 U518 ( .A1(n4), .A2(n80), .ZN(n78) );
  XNOR2_X1 U519 ( .A(n109), .B(n108), .ZN(SUM[27]) );
  OAI21_X1 U520 ( .B1(n2), .B2(n110), .A(n111), .ZN(n109) );
  NAND2_X1 U521 ( .A1(n3), .A2(n112), .ZN(n111) );
  NAND2_X1 U522 ( .A1(n4), .A2(n112), .ZN(n110) );
  OAI21_X1 U523 ( .B1(n161), .B2(n169), .A(n162), .ZN(n160) );
  NAND2_X1 U524 ( .A1(A[21]), .A2(B[21]), .ZN(n162) );
  XNOR2_X1 U525 ( .A(n68), .B(n67), .ZN(SUM[32]) );
  OAI21_X1 U526 ( .B1(n2), .B2(n69), .A(n70), .ZN(n68) );
  NAND2_X1 U527 ( .A1(n3), .A2(n71), .ZN(n70) );
  NAND2_X1 U528 ( .A1(n4), .A2(n71), .ZN(n69) );
  XNOR2_X1 U529 ( .A(n143), .B(n6), .ZN(SUM[23]) );
  OAI21_X1 U530 ( .B1(n1), .B2(n144), .A(n145), .ZN(n143) );
  NAND2_X1 U531 ( .A1(n305), .A2(n142), .ZN(n6) );
  NAND2_X1 U532 ( .A1(n146), .A2(n173), .ZN(n144) );
  INV_X1 U533 ( .A(n141), .ZN(n305) );
  AOI21_X1 U534 ( .B1(n177), .B2(n196), .A(n178), .ZN(n176) );
  OAI21_X1 U535 ( .B1(n179), .B2(n187), .A(n180), .ZN(n178) );
  AOI21_X1 U536 ( .B1(n146), .B2(n174), .A(n147), .ZN(n145) );
  OAI21_X1 U537 ( .B1(n158), .B2(n150), .A(n151), .ZN(n147) );
  INV_X1 U538 ( .A(n150), .ZN(n149) );
  NAND2_X1 U539 ( .A1(A[19]), .A2(B[19]), .ZN(n180) );
  NOR2_X1 U540 ( .A1(n5), .A2(n33), .ZN(n32) );
  NAND2_X1 U541 ( .A1(n41), .A2(B[36]), .ZN(n33) );
  NOR2_X1 U542 ( .A1(n122), .A2(n106), .ZN(n105) );
  NAND2_X1 U543 ( .A1(B[26]), .A2(B[27]), .ZN(n106) );
  NAND2_X1 U544 ( .A1(n105), .A2(n73), .ZN(n72) );
  NOR2_X1 U545 ( .A1(n90), .A2(n74), .ZN(n73) );
  NAND2_X1 U546 ( .A1(B[30]), .A2(B[31]), .ZN(n74) );
  NAND2_X1 U547 ( .A1(B[24]), .A2(B[25]), .ZN(n122) );
  XNOR2_X1 U548 ( .A(n152), .B(n7), .ZN(SUM[22]) );
  NAND2_X1 U549 ( .A1(n149), .A2(n151), .ZN(n7) );
  OAI21_X1 U550 ( .B1(n1), .B2(n153), .A(n154), .ZN(n152) );
  NOR2_X1 U551 ( .A1(A[9]), .A2(B[9]), .ZN(n265) );
  OAI21_X1 U552 ( .B1(n265), .B2(n269), .A(n266), .ZN(n264) );
  OAI21_X1 U553 ( .B1(n292), .B2(n272), .A(n273), .ZN(n271) );
  NAND2_X1 U554 ( .A1(n282), .A2(n274), .ZN(n272) );
  AOI21_X1 U555 ( .B1(n274), .B2(n283), .A(n275), .ZN(n273) );
  NOR2_X1 U556 ( .A1(n279), .A2(n276), .ZN(n274) );
  NAND2_X1 U557 ( .A1(B[0]), .A2(CI), .ZN(n304) );
  NOR2_X1 U558 ( .A1(n304), .A2(n302), .ZN(n301) );
  NOR2_X1 U559 ( .A1(n268), .A2(n265), .ZN(n263) );
  XNOR2_X1 U560 ( .A(n170), .B(n9), .ZN(SUM[20]) );
  NAND2_X1 U561 ( .A1(n166), .A2(n169), .ZN(n9) );
  OAI21_X1 U562 ( .B1(n1), .B2(n175), .A(n176), .ZN(n170) );
  NAND2_X1 U563 ( .A1(A[9]), .A2(B[9]), .ZN(n266) );
  XNOR2_X1 U564 ( .A(n188), .B(n11), .ZN(SUM[18]) );
  NAND2_X1 U565 ( .A1(n184), .A2(n187), .ZN(n11) );
  OAI21_X1 U566 ( .B1(n1), .B2(n189), .A(n194), .ZN(n188) );
  OAI21_X1 U567 ( .B1(n229), .B2(n237), .A(n230), .ZN(n228) );
  OAI21_X1 U568 ( .B1(n276), .B2(n280), .A(n277), .ZN(n275) );
  NAND2_X1 U569 ( .A1(A[17]), .A2(B[17]), .ZN(n198) );
  NOR2_X1 U570 ( .A1(n236), .A2(n229), .ZN(n227) );
  NAND2_X1 U571 ( .A1(A[10]), .A2(B[10]), .ZN(n255) );
  NAND2_X1 U572 ( .A1(A[11]), .A2(B[11]), .ZN(n248) );
  AOI21_X1 U573 ( .B1(n174), .B2(n166), .A(n167), .ZN(n165) );
  INV_X1 U574 ( .A(n169), .ZN(n167) );
  NAND2_X1 U575 ( .A1(A[14]), .A2(B[14]), .ZN(n219) );
  NAND2_X1 U576 ( .A1(A[15]), .A2(B[15]), .ZN(n210) );
  NAND2_X1 U577 ( .A1(A[16]), .A2(B[16]), .ZN(n201) );
  INV_X1 U578 ( .A(n168), .ZN(n166) );
  INV_X1 U579 ( .A(n90), .ZN(n89) );
  XNOR2_X1 U580 ( .A(n238), .B(n17), .ZN(SUM[12]) );
  NAND2_X1 U581 ( .A1(n234), .A2(n237), .ZN(n17) );
  OAI21_X1 U582 ( .B1(n270), .B2(n243), .A(n244), .ZN(n238) );
  XNOR2_X1 U583 ( .A(n267), .B(n20), .ZN(SUM[9]) );
  NAND2_X1 U584 ( .A1(n319), .A2(n266), .ZN(n20) );
  OAI21_X1 U585 ( .B1(n270), .B2(n268), .A(n269), .ZN(n267) );
  INV_X1 U586 ( .A(n265), .ZN(n319) );
  XNOR2_X1 U587 ( .A(n231), .B(n16), .ZN(SUM[13]) );
  NAND2_X1 U588 ( .A1(n315), .A2(n230), .ZN(n16) );
  OAI21_X1 U589 ( .B1(n270), .B2(n232), .A(n233), .ZN(n231) );
  INV_X1 U590 ( .A(n229), .ZN(n315) );
  XOR2_X1 U591 ( .A(n270), .B(n21), .Z(SUM[8]) );
  NAND2_X1 U592 ( .A1(n320), .A2(n269), .ZN(n21) );
  INV_X1 U593 ( .A(n268), .ZN(n320) );
  XNOR2_X1 U594 ( .A(n278), .B(n22), .ZN(SUM[7]) );
  NAND2_X1 U595 ( .A1(n321), .A2(n277), .ZN(n22) );
  OAI21_X1 U596 ( .B1(n281), .B2(n279), .A(n280), .ZN(n278) );
  INV_X1 U597 ( .A(n276), .ZN(n321) );
  AOI21_X1 U598 ( .B1(n291), .B2(n282), .A(n283), .ZN(n281) );
  INV_X1 U599 ( .A(n292), .ZN(n291) );
  AOI21_X1 U600 ( .B1(n242), .B2(n234), .A(n235), .ZN(n233) );
  INV_X1 U601 ( .A(n237), .ZN(n235) );
  XOR2_X1 U602 ( .A(n281), .B(n23), .Z(SUM[6]) );
  NAND2_X1 U603 ( .A1(n322), .A2(n280), .ZN(n23) );
  INV_X1 U604 ( .A(n279), .ZN(n322) );
  NOR2_X1 U605 ( .A1(n5), .A2(n58), .ZN(n55) );
  AOI21_X1 U606 ( .B1(n196), .B2(n184), .A(n185), .ZN(n183) );
  INV_X1 U607 ( .A(n187), .ZN(n185) );
  INV_X1 U608 ( .A(n186), .ZN(n184) );
  NOR2_X1 U609 ( .A1(n5), .A2(n49), .ZN(n48) );
  NAND2_X1 U610 ( .A1(n57), .A2(B[34]), .ZN(n49) );
  INV_X1 U611 ( .A(B[36]), .ZN(n35) );
  INV_X1 U612 ( .A(n236), .ZN(n234) );
  XOR2_X1 U613 ( .A(n302), .B(n304), .Z(SUM[1]) );
  NOR2_X1 U614 ( .A1(n5), .A2(n40), .ZN(n39) );
  INV_X1 U615 ( .A(n41), .ZN(n40) );
  XNOR2_X1 U616 ( .A(n93), .B(n92), .ZN(SUM[29]) );
  OAI21_X1 U617 ( .B1(n2), .B2(n94), .A(n95), .ZN(n93) );
  NAND2_X1 U618 ( .A1(n3), .A2(n96), .ZN(n95) );
  NAND2_X1 U619 ( .A1(n4), .A2(n96), .ZN(n94) );
  NAND2_X1 U620 ( .A1(A[23]), .A2(B[23]), .ZN(n142) );
  NAND2_X1 U621 ( .A1(A[22]), .A2(B[22]), .ZN(n151) );
  NAND2_X1 U622 ( .A1(A[20]), .A2(B[20]), .ZN(n169) );
  XNOR2_X1 U623 ( .A(n52), .B(n51), .ZN(SUM[34]) );
  OAI21_X1 U624 ( .B1(n2), .B2(n53), .A(n54), .ZN(n52) );
  NAND2_X1 U625 ( .A1(n3), .A2(n55), .ZN(n54) );
  NAND2_X1 U626 ( .A1(n4), .A2(n55), .ZN(n53) );
  XNOR2_X1 U627 ( .A(n45), .B(n44), .ZN(SUM[35]) );
  OAI21_X1 U628 ( .B1(n2), .B2(n46), .A(n47), .ZN(n45) );
  NAND2_X1 U629 ( .A1(n3), .A2(n48), .ZN(n47) );
  NAND2_X1 U630 ( .A1(n4), .A2(n48), .ZN(n46) );
  INV_X1 U631 ( .A(B[25]), .ZN(n124) );
  INV_X1 U632 ( .A(B[26]), .ZN(n115) );
  NAND2_X1 U633 ( .A1(A[18]), .A2(B[18]), .ZN(n187) );
  NAND2_X1 U634 ( .A1(B[28]), .A2(B[29]), .ZN(n90) );
  INV_X1 U635 ( .A(B[28]), .ZN(n99) );
  INV_X1 U636 ( .A(B[24]), .ZN(n131) );
  OAI21_X1 U637 ( .B1(n284), .B2(n290), .A(n285), .ZN(n283) );
  AOI21_X1 U638 ( .B1(n293), .B2(n301), .A(n294), .ZN(n292) );
  NOR2_X1 U639 ( .A1(n298), .A2(n295), .ZN(n293) );
  OAI21_X1 U640 ( .B1(n295), .B2(n299), .A(n296), .ZN(n294) );
  INV_X1 U641 ( .A(B[27]), .ZN(n108) );
  INV_X1 U642 ( .A(B[1]), .ZN(n302) );
  NOR2_X1 U643 ( .A1(n289), .A2(n284), .ZN(n282) );
  INV_X1 U644 ( .A(B[30]), .ZN(n83) );
  INV_X1 U645 ( .A(B[31]), .ZN(n76) );
  NAND2_X1 U646 ( .A1(A[8]), .A2(B[8]), .ZN(n269) );
  NAND2_X1 U647 ( .A1(A[12]), .A2(B[12]), .ZN(n237) );
  NAND2_X1 U648 ( .A1(A[6]), .A2(B[6]), .ZN(n280) );
  NAND2_X1 U649 ( .A1(A[7]), .A2(B[7]), .ZN(n277) );
  NAND2_X1 U650 ( .A1(A[13]), .A2(B[13]), .ZN(n230) );
  NOR2_X1 U651 ( .A1(n58), .A2(n42), .ZN(n41) );
  NAND2_X1 U652 ( .A1(B[34]), .A2(B[35]), .ZN(n42) );
  INV_X1 U653 ( .A(B[32]), .ZN(n67) );
  XOR2_X1 U654 ( .A(n286), .B(n24), .Z(SUM[5]) );
  NAND2_X1 U655 ( .A1(n323), .A2(n285), .ZN(n24) );
  AOI21_X1 U656 ( .B1(n291), .B2(n287), .A(n288), .ZN(n286) );
  INV_X1 U657 ( .A(n284), .ZN(n323) );
  XNOR2_X1 U658 ( .A(n291), .B(n25), .ZN(SUM[4]) );
  NAND2_X1 U659 ( .A1(n287), .A2(n290), .ZN(n25) );
  XNOR2_X1 U660 ( .A(n297), .B(n26), .ZN(SUM[3]) );
  NAND2_X1 U661 ( .A1(n325), .A2(n296), .ZN(n26) );
  OAI21_X1 U662 ( .B1(n300), .B2(n298), .A(n299), .ZN(n297) );
  INV_X1 U663 ( .A(n295), .ZN(n325) );
  XOR2_X1 U664 ( .A(n27), .B(n300), .Z(SUM[2]) );
  NAND2_X1 U665 ( .A1(n326), .A2(n299), .ZN(n27) );
  INV_X1 U666 ( .A(n298), .ZN(n326) );
  INV_X1 U667 ( .A(n289), .ZN(n287) );
  INV_X1 U668 ( .A(n290), .ZN(n288) );
  INV_X1 U669 ( .A(n58), .ZN(n57) );
  XNOR2_X1 U670 ( .A(n61), .B(n60), .ZN(SUM[33]) );
  OAI21_X1 U671 ( .B1(n2), .B2(n62), .A(n63), .ZN(n61) );
  NAND2_X1 U672 ( .A1(n3), .A2(n64), .ZN(n63) );
  NAND2_X1 U673 ( .A1(n4), .A2(n64), .ZN(n62) );
  INV_X1 U674 ( .A(B[29]), .ZN(n92) );
  NAND2_X1 U675 ( .A1(A[5]), .A2(B[5]), .ZN(n285) );
  NAND2_X1 U676 ( .A1(A[3]), .A2(B[3]), .ZN(n296) );
  NAND2_X1 U677 ( .A1(A[4]), .A2(B[4]), .ZN(n290) );
  NAND2_X1 U678 ( .A1(A[2]), .A2(B[2]), .ZN(n299) );
  NAND2_X1 U679 ( .A1(B[32]), .A2(B[33]), .ZN(n58) );
  INV_X1 U680 ( .A(B[34]), .ZN(n51) );
  INV_X1 U681 ( .A(B[35]), .ZN(n44) );
  INV_X1 U682 ( .A(B[33]), .ZN(n60) );
endmodule


module fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_sub_7 ( A, B, 
        CI, DIFF, CO );
  input [36:0] A;
  input [36:0] B;
  output [36:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n46,
         n47, n48, n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n68, n69, n70, n71, n72, n73, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n234;
  assign DIFF[0] = B[0];

  AND2_X1 U156 ( .A1(n7), .A2(n5), .ZN(n234) );
  BUF_X2 U157 ( .A(n14), .Z(n1) );
  NOR2_X1 U158 ( .A1(n53), .A2(n35), .ZN(n34) );
  INV_X1 U159 ( .A(n36), .ZN(n35) );
  NOR2_X1 U160 ( .A1(n53), .A2(n47), .ZN(n44) );
  INV_X1 U161 ( .A(n61), .ZN(n60) );
  INV_X1 U162 ( .A(n76), .ZN(n75) );
  INV_X1 U163 ( .A(n80), .ZN(n79) );
  INV_X1 U164 ( .A(n94), .ZN(n93) );
  NOR2_X1 U165 ( .A1(n102), .A2(n94), .ZN(n91) );
  NOR2_X1 U166 ( .A1(n15), .A2(n80), .ZN(n14) );
  NAND2_X1 U167 ( .A1(n54), .A2(n16), .ZN(n15) );
  NOR2_X1 U168 ( .A1(n37), .A2(n17), .ZN(n16) );
  INV_X1 U169 ( .A(n37), .ZN(n36) );
  NOR2_X1 U170 ( .A1(n53), .A2(n25), .ZN(n24) );
  NAND2_X1 U171 ( .A1(n36), .A2(n26), .ZN(n25) );
  INV_X1 U172 ( .A(n27), .ZN(n26) );
  INV_X1 U173 ( .A(n47), .ZN(n46) );
  INV_X1 U174 ( .A(n48), .ZN(n47) );
  NOR2_X1 U175 ( .A1(B[16]), .A2(B[17]), .ZN(n76) );
  INV_X1 U176 ( .A(n54), .ZN(n53) );
  NAND2_X1 U177 ( .A1(n81), .A2(n103), .ZN(n80) );
  NOR2_X1 U178 ( .A1(n94), .A2(n82), .ZN(n81) );
  NAND2_X1 U179 ( .A1(n88), .A2(n83), .ZN(n82) );
  NOR2_X1 U180 ( .A1(B[14]), .A2(B[15]), .ZN(n83) );
  NAND2_X1 U181 ( .A1(n100), .A2(n95), .ZN(n94) );
  NOR2_X1 U182 ( .A1(B[10]), .A2(B[11]), .ZN(n95) );
  NAND2_X1 U183 ( .A1(n68), .A2(n62), .ZN(n61) );
  INV_X1 U184 ( .A(n69), .ZN(n68) );
  NOR2_X1 U185 ( .A1(n102), .A2(n87), .ZN(n86) );
  NAND2_X1 U186 ( .A1(n93), .A2(n88), .ZN(n87) );
  INV_X1 U187 ( .A(n103), .ZN(n102) );
  NOR2_X1 U188 ( .A1(n102), .A2(n99), .ZN(n98) );
  INV_X1 U189 ( .A(n100), .ZN(n99) );
  INV_X1 U190 ( .A(B[16]), .ZN(n78) );
  INV_X1 U191 ( .A(B[14]), .ZN(n85) );
  INV_X1 U192 ( .A(B[10]), .ZN(n97) );
  INV_X1 U193 ( .A(n116), .ZN(n115) );
  NAND2_X1 U194 ( .A1(n28), .A2(n18), .ZN(n17) );
  NOR2_X1 U195 ( .A1(B[30]), .A2(B[31]), .ZN(n18) );
  NOR2_X1 U196 ( .A1(B[24]), .A2(B[25]), .ZN(n48) );
  NAND2_X1 U197 ( .A1(n48), .A2(n38), .ZN(n37) );
  NOR2_X1 U198 ( .A1(B[26]), .A2(B[27]), .ZN(n38) );
  NOR2_X1 U199 ( .A1(n53), .A2(n21), .ZN(n20) );
  NAND2_X1 U200 ( .A1(n22), .A2(n36), .ZN(n21) );
  NOR2_X1 U201 ( .A1(n27), .A2(B[30]), .ZN(n22) );
  NOR2_X1 U202 ( .A1(n53), .A2(n31), .ZN(n30) );
  NAND2_X1 U203 ( .A1(n36), .A2(n32), .ZN(n31) );
  INV_X1 U204 ( .A(B[28]), .ZN(n32) );
  INV_X1 U205 ( .A(n28), .ZN(n27) );
  NOR2_X1 U206 ( .A1(n53), .A2(n41), .ZN(n40) );
  NAND2_X1 U207 ( .A1(n46), .A2(n42), .ZN(n41) );
  INV_X1 U208 ( .A(B[26]), .ZN(n42) );
  INV_X1 U209 ( .A(B[32]), .ZN(n13) );
  NOR2_X1 U210 ( .A1(n69), .A2(n55), .ZN(n54) );
  NAND2_X1 U211 ( .A1(n62), .A2(n56), .ZN(n55) );
  NOR2_X1 U212 ( .A1(B[22]), .A2(B[23]), .ZN(n56) );
  NOR2_X1 U213 ( .A1(n53), .A2(B[24]), .ZN(n50) );
  NAND2_X1 U214 ( .A1(n76), .A2(n70), .ZN(n69) );
  NOR2_X1 U215 ( .A1(B[18]), .A2(B[19]), .ZN(n70) );
  NOR2_X1 U216 ( .A1(B[20]), .A2(B[21]), .ZN(n62) );
  NOR2_X1 U217 ( .A1(B[12]), .A2(B[13]), .ZN(n88) );
  NOR2_X1 U218 ( .A1(B[8]), .A2(B[9]), .ZN(n100) );
  NOR2_X1 U219 ( .A1(n61), .A2(B[22]), .ZN(n58) );
  NOR2_X1 U220 ( .A1(n69), .A2(B[20]), .ZN(n64) );
  NOR2_X1 U221 ( .A1(n104), .A2(n112), .ZN(n103) );
  NAND2_X1 U222 ( .A1(n108), .A2(n105), .ZN(n104) );
  NOR2_X1 U223 ( .A1(B[6]), .A2(B[7]), .ZN(n105) );
  NOR2_X1 U224 ( .A1(B[1]), .A2(B[0]), .ZN(n116) );
  NOR2_X1 U225 ( .A1(n75), .A2(B[18]), .ZN(n72) );
  INV_X1 U226 ( .A(n112), .ZN(n111) );
  NAND2_X1 U227 ( .A1(n111), .A2(n108), .ZN(n107) );
  INV_X1 U228 ( .A(B[12]), .ZN(n90) );
  NOR2_X1 U229 ( .A1(B[28]), .A2(B[29]), .ZN(n28) );
  NAND2_X1 U230 ( .A1(n1), .A2(n234), .ZN(n2) );
  INV_X1 U231 ( .A(B[35]), .ZN(n5) );
  NOR2_X1 U232 ( .A1(n10), .A2(B[34]), .ZN(n7) );
  INV_X1 U233 ( .A(n10), .ZN(n9) );
  NOR2_X1 U234 ( .A1(B[4]), .A2(B[5]), .ZN(n108) );
  NAND2_X1 U235 ( .A1(n113), .A2(n116), .ZN(n112) );
  NOR2_X1 U236 ( .A1(B[2]), .A2(B[3]), .ZN(n113) );
  INV_X1 U237 ( .A(B[4]), .ZN(n110) );
  NAND2_X1 U238 ( .A1(n13), .A2(n11), .ZN(n10) );
  INV_X1 U239 ( .A(B[33]), .ZN(n11) );
  XOR2_X1 U240 ( .A(n107), .B(B[6]), .Z(DIFF[6]) );
  XOR2_X1 U241 ( .A(n115), .B(B[2]), .Z(DIFF[2]) );
  XNOR2_X1 U242 ( .A(n111), .B(B[4]), .ZN(DIFF[4]) );
  XNOR2_X1 U243 ( .A(n86), .B(B[14]), .ZN(DIFF[14]) );
  XOR2_X1 U244 ( .A(n23), .B(B[30]), .Z(DIFF[30]) );
  NAND2_X1 U245 ( .A1(n24), .A2(n79), .ZN(n23) );
  XOR2_X1 U246 ( .A(n65), .B(B[20]), .Z(DIFF[20]) );
  NAND2_X1 U247 ( .A1(n79), .A2(n68), .ZN(n65) );
  XOR2_X1 U248 ( .A(n59), .B(B[22]), .Z(DIFF[22]) );
  NAND2_X1 U249 ( .A1(n79), .A2(n60), .ZN(n59) );
  XOR2_X1 U250 ( .A(n51), .B(B[24]), .Z(DIFF[24]) );
  NAND2_X1 U251 ( .A1(n79), .A2(n54), .ZN(n51) );
  XOR2_X1 U252 ( .A(n43), .B(B[26]), .Z(DIFF[26]) );
  NAND2_X1 U253 ( .A1(n44), .A2(n79), .ZN(n43) );
  XOR2_X1 U254 ( .A(n33), .B(B[28]), .Z(DIFF[28]) );
  NAND2_X1 U255 ( .A1(n34), .A2(n79), .ZN(n33) );
  XOR2_X1 U256 ( .A(B[1]), .B(B[0]), .Z(DIFF[1]) );
  XOR2_X1 U257 ( .A(n109), .B(B[5]), .Z(DIFF[5]) );
  NAND2_X1 U258 ( .A1(n111), .A2(n110), .ZN(n109) );
  XNOR2_X1 U259 ( .A(n114), .B(B[3]), .ZN(DIFF[3]) );
  NOR2_X1 U260 ( .A1(n115), .A2(B[2]), .ZN(n114) );
  XOR2_X1 U261 ( .A(n57), .B(B[23]), .Z(DIFF[23]) );
  NAND2_X1 U262 ( .A1(n58), .A2(n79), .ZN(n57) );
  XOR2_X1 U263 ( .A(n49), .B(B[25]), .Z(DIFF[25]) );
  NAND2_X1 U264 ( .A1(n50), .A2(n79), .ZN(n49) );
  XOR2_X1 U265 ( .A(n63), .B(B[21]), .Z(DIFF[21]) );
  NAND2_X1 U266 ( .A1(n79), .A2(n64), .ZN(n63) );
  XNOR2_X1 U267 ( .A(n1), .B(B[32]), .ZN(DIFF[32]) );
  XOR2_X1 U268 ( .A(n39), .B(B[27]), .Z(DIFF[27]) );
  NAND2_X1 U269 ( .A1(n40), .A2(n79), .ZN(n39) );
  XOR2_X1 U270 ( .A(n29), .B(B[29]), .Z(DIFF[29]) );
  NAND2_X1 U271 ( .A1(n30), .A2(n79), .ZN(n29) );
  XOR2_X1 U272 ( .A(n19), .B(B[31]), .Z(DIFF[31]) );
  NAND2_X1 U273 ( .A1(n20), .A2(n79), .ZN(n19) );
  XOR2_X1 U274 ( .A(n8), .B(B[34]), .Z(DIFF[34]) );
  NAND2_X1 U275 ( .A1(n1), .A2(n9), .ZN(n8) );
  XOR2_X1 U276 ( .A(n12), .B(B[33]), .Z(DIFF[33]) );
  NAND2_X1 U277 ( .A1(n1), .A2(n13), .ZN(n12) );
  XOR2_X1 U278 ( .A(n6), .B(B[35]), .Z(DIFF[35]) );
  NAND2_X1 U279 ( .A1(n1), .A2(n7), .ZN(n6) );
  XOR2_X1 U280 ( .A(n2), .B(B[36]), .Z(DIFF[36]) );
  XOR2_X1 U281 ( .A(n102), .B(B[8]), .Z(DIFF[8]) );
  XNOR2_X1 U282 ( .A(n79), .B(B[16]), .ZN(DIFF[16]) );
  XNOR2_X1 U283 ( .A(n98), .B(B[10]), .ZN(DIFF[10]) );
  XNOR2_X1 U284 ( .A(n91), .B(B[12]), .ZN(DIFF[12]) );
  XOR2_X1 U285 ( .A(n73), .B(B[18]), .Z(DIFF[18]) );
  NAND2_X1 U286 ( .A1(n79), .A2(n76), .ZN(n73) );
  XNOR2_X1 U287 ( .A(n106), .B(B[7]), .ZN(DIFF[7]) );
  NOR2_X1 U288 ( .A1(n107), .A2(B[6]), .ZN(n106) );
  XNOR2_X1 U289 ( .A(n101), .B(B[9]), .ZN(DIFF[9]) );
  NOR2_X1 U290 ( .A1(n102), .A2(B[8]), .ZN(n101) );
  XOR2_X1 U291 ( .A(n71), .B(B[19]), .Z(DIFF[19]) );
  NAND2_X1 U292 ( .A1(n79), .A2(n72), .ZN(n71) );
  XOR2_X1 U293 ( .A(n77), .B(B[17]), .Z(DIFF[17]) );
  NAND2_X1 U294 ( .A1(n79), .A2(n78), .ZN(n77) );
  XOR2_X1 U295 ( .A(n89), .B(B[13]), .Z(DIFF[13]) );
  NAND2_X1 U296 ( .A1(n91), .A2(n90), .ZN(n89) );
  XOR2_X1 U297 ( .A(n84), .B(B[15]), .Z(DIFF[15]) );
  NAND2_X1 U298 ( .A1(n86), .A2(n85), .ZN(n84) );
  XOR2_X1 U299 ( .A(n96), .B(B[11]), .Z(DIFF[11]) );
  NAND2_X1 U300 ( .A1(n98), .A2(n97), .ZN(n96) );
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
  wire   inp_pipe_operands_q_1__2__15_, inp_pipe_operands_q_1__2__14_,
         inp_pipe_operands_q_1__2__13_, inp_pipe_operands_q_1__2__12_,
         inp_pipe_operands_q_1__2__11_, inp_pipe_operands_q_1__2__10_,
         inp_pipe_operands_q_1__2__9_, inp_pipe_operands_q_1__2__8_,
         inp_pipe_operands_q_1__2__7_, inp_pipe_operands_q_1__2__6_,
         inp_pipe_operands_q_1__2__5_, inp_pipe_operands_q_1__2__4_,
         inp_pipe_operands_q_1__2__3_, inp_pipe_operands_q_1__2__2_,
         inp_pipe_operands_q_1__2__1_, inp_pipe_operands_q_1__2__0_,
         inp_pipe_operands_q_1__1__15_, inp_pipe_operands_q_1__1__14_,
         inp_pipe_operands_q_1__1__13_, inp_pipe_operands_q_1__1__12_,
         inp_pipe_operands_q_1__1__11_, inp_pipe_operands_q_1__1__10_,
         inp_pipe_operands_q_1__1__9_, inp_pipe_operands_q_1__1__8_,
         inp_pipe_operands_q_1__1__7_, inp_pipe_operands_q_1__1__6_,
         inp_pipe_operands_q_1__1__5_, inp_pipe_operands_q_1__1__4_,
         inp_pipe_operands_q_1__1__3_, inp_pipe_operands_q_1__1__2_,
         inp_pipe_operands_q_1__1__1_, inp_pipe_operands_q_1__1__0_,
         inp_pipe_operands_q_1__0__15_, inp_pipe_operands_q_1__0__14_,
         inp_pipe_operands_q_1__0__13_, inp_pipe_operands_q_1__0__12_,
         inp_pipe_operands_q_1__0__11_, inp_pipe_operands_q_1__0__10_,
         inp_pipe_operands_q_1__0__9_, inp_pipe_operands_q_1__0__8_,
         inp_pipe_operands_q_1__0__7_, inp_pipe_operands_q_1__0__6_,
         inp_pipe_operands_q_1__0__5_, inp_pipe_operands_q_1__0__4_,
         inp_pipe_operands_q_1__0__3_, inp_pipe_operands_q_1__0__2_,
         inp_pipe_operands_q_1__0__1_, inp_pipe_operands_q_1__0__0_,
         inp_pipe_is_boxed_q_1__2_, inp_pipe_is_boxed_q_1__1_,
         inp_pipe_is_boxed_q_1__0_, info_a_is_normal_, info_b_is_normal_, N140,
         inject_carry_in, N226, N227, N228, N229, N230, N231, N232, N233, N234,
         N235, N236, N237, N238, N239, N240, N241, N242, N243, N244, N245,
         N246, N247, N248, N249, N250, N251, N252, N253, N254, N255, N256,
         N257, N258, N259, N260, N261, N262, mid_pipe_eff_sub_q_1_,
         mid_pipe_exp_prod_q_1__6_, mid_pipe_exp_prod_q_1__5_,
         mid_pipe_exp_prod_q_1__4_, mid_pipe_exp_prod_q_1__3_,
         mid_pipe_exp_prod_q_1__2_, mid_pipe_exp_prod_q_1__1_,
         mid_pipe_exp_prod_q_1__0_, mid_pipe_sum_q_1__24_,
         mid_pipe_sum_q_1__23_, mid_pipe_sum_q_1__22_, mid_pipe_sum_q_1__21_,
         mid_pipe_sum_q_1__20_, mid_pipe_sum_q_1__19_, mid_pipe_sum_q_1__18_,
         mid_pipe_sum_q_1__17_, mid_pipe_sum_q_1__16_, mid_pipe_sum_q_1__15_,
         mid_pipe_sum_q_1__14_, mid_pipe_sum_q_1__13_, mid_pipe_sum_q_1__12_,
         mid_pipe_sum_q_1__11_, mid_pipe_sum_q_1__10_, mid_pipe_sum_q_1__9_,
         mid_pipe_sum_q_1__8_, mid_pipe_sum_q_1__7_, mid_pipe_sum_q_1__6_,
         mid_pipe_sum_q_1__5_, mid_pipe_sum_q_1__4_, mid_pipe_sum_q_1__3_,
         mid_pipe_sum_q_1__2_, mid_pipe_sum_q_1__1_, mid_pipe_sum_q_1__0_,
         mid_pipe_final_sign_q_1_, mid_pipe_rnd_mode_q_1__2_,
         mid_pipe_rnd_mode_q_1__1_, mid_pipe_rnd_mode_q_1__0_, lzc_zeroes,
         N294, N295, N296, N297, N298, N299, N308, N309, N310, N311, N312,
         N313, N315, N316, N317, N318, N319, N333, N337, N338, N339, N340,
         N341, N342, N343, N345, N346, N347, N348, N349, N350, N351,
         of_before_round, regular_result_15_, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n443, n444, n445, n446, n447, n448, n449, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548,
         n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559,
         n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n570,
         n571, n572, n573, n574, n575, n576, n577, n578, n579, n580, n581,
         n582, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n653, n656, n680, n681, n682, n683,
         n684, n685, n686, product_9_, product_8_, product_7_, product_6_,
         product_5_, product_4_, product_3_, product_2_, product_21_,
         product_20_, product_1_, product_19_, product_18_, product_17_,
         product_16_, product_15_, product_14_, product_13_, product_12_,
         product_11_, product_10_, product_0_,
         dp_cluster_1_operand_a_mantissa__0_, N306, N305, N304, N303, N302,
         N301, N300, N281, N280, N279, N278, N277, N276, N275, N274,
         gte_587_A_5_, gte_587_A_3_, gte_587_A_2_, gte_587_A_1_, gte_587_A_0_,
         gt_558_A_6_, gt_558_A_5_, gt_558_A_4_, gt_558_A_3_, gt_558_A_2_,
         gt_558_A_1_, sub_560_A_0_, add_530_carry_2_, add_530_carry_3_,
         add_530_carry_4_, add_530_carry_5_, add_525_carry_2_,
         add_525_carry_3_, add_525_carry_4_, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n12, n13, n14, n15, n16, n17, n18, n19, n21, n23, n24, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
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
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n492, n507, n508, n509, n583, n584, n585, n586, n587, n588,
         n589, n601, n602, n603, n652, n654, n655, n657, n658, n659, n660,
         n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671,
         n672, n673, n674, n675, n676, n677, n678, n679, n687, n688, n689,
         n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n700,
         n701, n702, n703, n704, n705, n706, n707, n708, n709, n710, n711,
         n712, n713, n714, n715, n716, n717, n718, n719, n720, n721, n722,
         n723, n724, n725, n726, n727, n728, n729, n730, n731, n732, n733,
         n734, n735, n736, n737, n738, n739, n740, n741, n742, n743, n744,
         n745, n746, n747, n748, n749, n750, n751, n752, n753, n754, n755,
         n756, n757, n758, n759, n760, n761, n762, n763, n764, n765, n766,
         n767, n768, n769, n770, n771, n772, n773, n774, n775, n776, n777,
         n778, n779, n780, n781, n782, n783, n784, n785, n786, n787, n788,
         n789, n790, n791, n792, n793, n794, n795, n796, n797, n798, n799,
         n800, n801, n802, n803, n804, n805, n806, n807, n808, n809, n810,
         n811, n812, n813, n814, n815, n816, n817, n818, n819, n820, n821,
         n822, n823, n824, n825, n826, n827, n828, n829, n830, n831, n832,
         n833, n834, n835, n836, n837, n838, n839, n840, n841, n842, n843,
         n844, n845, n846, n847, n848, n849, n850, n851, n852, n853, n854,
         n855, n856, n857, n858, n859, n860, n861, n862, n863, n864, n865,
         n866, n867, n868, n869, n870, n871, n872, n873, n874, n875, n876,
         n877, n878, n879, n880, n881, n882, n883, n884, n885, n886, n887,
         n888, n889, n890, n891, n892, n893, n894, n895, n896, n897, n898,
         n899, n900, n901, n902, n903, n904, n905, n906, n907, n908, n909,
         n910, n911, n912, n913, n914, n915, n916, n917, n918, n919, n920,
         n921, n922, n923, n924, n925, n926, n927, n928, n929, n930, n931,
         n932, n933, n934, n935, n936, n937, n938, n939, n940, n941, n942,
         n943, n944, n945, n946, n947, n948, n949, n950, n951, n952, n953,
         n954, n955, n956, n957, n958, n959, n960, n961, n962, n963, n964,
         n965, n966, n967, n968, n969, n970, n971, n972, n973, n974, n975,
         n976, n977, n978, n979, n980, n981, n982, n983, n984, n985, n986,
         n987, n988, n989, n990, n991, n992, n993, n994, n995, n996, n997,
         n998, n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007,
         n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017,
         n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027,
         n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037,
         n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047,
         n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056, n1057,
         n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067,
         n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077,
         n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087,
         n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097,
         n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107,
         n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117,
         n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127,
         n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137,
         n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147,
         n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157,
         n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166, n1167,
         n1168, n1169, n1171, n1172, n1173, n1174, n1175, n1176, n1177, n1178,
         n1179, n1180, n1181, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9;
  wire   [15:0] info_q;
  wire   [8:0] operand_a;
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
  assign status_o_DZ_ = 1'b0;
  assign extension_bit_o = 1'b1;

  DFFR_X1 inp_pipe_operands_q_reg_1__2__15_ ( .D(n651), .CK(clk_i), .RN(n212), 
        .Q(inp_pipe_operands_q_1__2__15_) );
  DFFR_X1 inp_pipe_operands_q_reg_1__0__0_ ( .D(n650), .CK(clk_i), .RN(n212), 
        .Q(inp_pipe_operands_q_1__0__0_), .QN(n506) );
  DFFR_X1 inp_pipe_operands_q_reg_1__0__1_ ( .D(n649), .CK(clk_i), .RN(n212), 
        .Q(inp_pipe_operands_q_1__0__1_), .QN(n505) );
  DFFR_X1 inp_pipe_operands_q_reg_1__0__2_ ( .D(n648), .CK(clk_i), .RN(n212), 
        .Q(inp_pipe_operands_q_1__0__2_), .QN(n504) );
  DFFR_X1 inp_pipe_operands_q_reg_1__0__3_ ( .D(n647), .CK(clk_i), .RN(n212), 
        .Q(inp_pipe_operands_q_1__0__3_), .QN(n503) );
  DFFR_X1 inp_pipe_operands_q_reg_1__0__4_ ( .D(n646), .CK(clk_i), .RN(n212), 
        .Q(inp_pipe_operands_q_1__0__4_), .QN(n502) );
  DFFR_X1 inp_pipe_operands_q_reg_1__0__5_ ( .D(n645), .CK(clk_i), .RN(n212), 
        .Q(inp_pipe_operands_q_1__0__5_), .QN(n501) );
  DFFR_X1 inp_pipe_operands_q_reg_1__0__6_ ( .D(n644), .CK(clk_i), .RN(n212), 
        .Q(inp_pipe_operands_q_1__0__6_), .QN(n500) );
  DFFR_X1 inp_pipe_operands_q_reg_1__0__7_ ( .D(n643), .CK(clk_i), .RN(n212), 
        .Q(inp_pipe_operands_q_1__0__7_), .QN(n499) );
  DFFR_X1 inp_pipe_operands_q_reg_1__0__8_ ( .D(n642), .CK(clk_i), .RN(n212), 
        .Q(inp_pipe_operands_q_1__0__8_), .QN(n498) );
  DFFR_X1 inp_pipe_operands_q_reg_1__0__9_ ( .D(n641), .CK(clk_i), .RN(n211), 
        .Q(inp_pipe_operands_q_1__0__9_), .QN(n497) );
  DFFR_X1 inp_pipe_operands_q_reg_1__0__10_ ( .D(n640), .CK(clk_i), .RN(n211), 
        .Q(inp_pipe_operands_q_1__0__10_), .QN(n496) );
  DFFR_X1 inp_pipe_operands_q_reg_1__0__11_ ( .D(n639), .CK(clk_i), .RN(n211), 
        .Q(inp_pipe_operands_q_1__0__11_), .QN(n495) );
  DFFR_X1 inp_pipe_operands_q_reg_1__0__12_ ( .D(n638), .CK(clk_i), .RN(n211), 
        .Q(inp_pipe_operands_q_1__0__12_), .QN(n494) );
  DFFR_X1 inp_pipe_operands_q_reg_1__0__13_ ( .D(n637), .CK(clk_i), .RN(n211), 
        .Q(inp_pipe_operands_q_1__0__13_), .QN(n493) );
  DFFR_X1 inp_pipe_operands_q_reg_1__0__14_ ( .D(n636), .CK(clk_i), .RN(n211), 
        .Q(inp_pipe_operands_q_1__0__14_) );
  DFFR_X1 inp_pipe_operands_q_reg_1__0__15_ ( .D(n635), .CK(clk_i), .RN(n211), 
        .Q(inp_pipe_operands_q_1__0__15_), .QN(n491) );
  DFFR_X1 inp_pipe_operands_q_reg_1__1__0_ ( .D(n634), .CK(clk_i), .RN(n211), 
        .Q(inp_pipe_operands_q_1__1__0_), .QN(n490) );
  DFFR_X1 inp_pipe_operands_q_reg_1__1__1_ ( .D(n633), .CK(clk_i), .RN(n211), 
        .Q(inp_pipe_operands_q_1__1__1_), .QN(n489) );
  DFFR_X1 inp_pipe_operands_q_reg_1__1__2_ ( .D(n632), .CK(clk_i), .RN(n211), 
        .Q(inp_pipe_operands_q_1__1__2_), .QN(n488) );
  DFFR_X1 inp_pipe_operands_q_reg_1__1__3_ ( .D(n631), .CK(clk_i), .RN(n211), 
        .Q(inp_pipe_operands_q_1__1__3_), .QN(n487) );
  DFFR_X1 inp_pipe_operands_q_reg_1__1__4_ ( .D(n630), .CK(clk_i), .RN(n211), 
        .Q(inp_pipe_operands_q_1__1__4_), .QN(n486) );
  DFFR_X1 inp_pipe_operands_q_reg_1__1__5_ ( .D(n629), .CK(clk_i), .RN(n210), 
        .Q(inp_pipe_operands_q_1__1__5_), .QN(n485) );
  DFFR_X1 inp_pipe_operands_q_reg_1__1__6_ ( .D(n628), .CK(clk_i), .RN(n210), 
        .Q(inp_pipe_operands_q_1__1__6_), .QN(n484) );
  DFFR_X1 inp_pipe_operands_q_reg_1__1__7_ ( .D(n627), .CK(clk_i), .RN(n210), 
        .Q(inp_pipe_operands_q_1__1__7_), .QN(n483) );
  DFFR_X1 inp_pipe_operands_q_reg_1__1__8_ ( .D(n626), .CK(clk_i), .RN(n210), 
        .Q(inp_pipe_operands_q_1__1__8_), .QN(n482) );
  DFFR_X1 inp_pipe_operands_q_reg_1__1__9_ ( .D(n625), .CK(clk_i), .RN(n210), 
        .Q(inp_pipe_operands_q_1__1__9_), .QN(n481) );
  DFFR_X1 inp_pipe_operands_q_reg_1__1__10_ ( .D(n624), .CK(clk_i), .RN(n210), 
        .Q(inp_pipe_operands_q_1__1__10_), .QN(n480) );
  DFFR_X1 inp_pipe_operands_q_reg_1__1__11_ ( .D(n623), .CK(clk_i), .RN(n210), 
        .Q(inp_pipe_operands_q_1__1__11_), .QN(n479) );
  DFFR_X1 inp_pipe_operands_q_reg_1__1__12_ ( .D(n622), .CK(clk_i), .RN(n210), 
        .Q(inp_pipe_operands_q_1__1__12_), .QN(n478) );
  DFFR_X1 inp_pipe_operands_q_reg_1__1__13_ ( .D(n621), .CK(clk_i), .RN(n210), 
        .Q(inp_pipe_operands_q_1__1__13_), .QN(n477) );
  DFFR_X1 inp_pipe_operands_q_reg_1__1__14_ ( .D(n620), .CK(clk_i), .RN(n210), 
        .Q(inp_pipe_operands_q_1__1__14_), .QN(n476) );
  DFFR_X1 inp_pipe_operands_q_reg_1__1__15_ ( .D(n619), .CK(clk_i), .RN(n210), 
        .Q(inp_pipe_operands_q_1__1__15_), .QN(n475) );
  DFFR_X1 inp_pipe_operands_q_reg_1__2__0_ ( .D(n618), .CK(clk_i), .RN(n210), 
        .Q(inp_pipe_operands_q_1__2__0_), .QN(n474) );
  DFFR_X1 inp_pipe_operands_q_reg_1__2__1_ ( .D(n617), .CK(clk_i), .RN(n209), 
        .Q(inp_pipe_operands_q_1__2__1_), .QN(n473) );
  DFFR_X1 inp_pipe_operands_q_reg_1__2__2_ ( .D(n616), .CK(clk_i), .RN(n209), 
        .Q(inp_pipe_operands_q_1__2__2_), .QN(n472) );
  DFFR_X1 inp_pipe_operands_q_reg_1__2__3_ ( .D(n615), .CK(clk_i), .RN(n209), 
        .Q(inp_pipe_operands_q_1__2__3_), .QN(n471) );
  DFFR_X1 inp_pipe_operands_q_reg_1__2__4_ ( .D(n614), .CK(clk_i), .RN(n209), 
        .Q(inp_pipe_operands_q_1__2__4_), .QN(n470) );
  DFFR_X1 inp_pipe_operands_q_reg_1__2__5_ ( .D(n613), .CK(clk_i), .RN(n209), 
        .Q(inp_pipe_operands_q_1__2__5_), .QN(n469) );
  DFFR_X1 inp_pipe_operands_q_reg_1__2__6_ ( .D(n612), .CK(clk_i), .RN(n209), 
        .Q(inp_pipe_operands_q_1__2__6_), .QN(n468) );
  DFFR_X1 inp_pipe_operands_q_reg_1__2__7_ ( .D(n611), .CK(clk_i), .RN(n209), 
        .Q(inp_pipe_operands_q_1__2__7_), .QN(n467) );
  DFFR_X1 inp_pipe_operands_q_reg_1__2__8_ ( .D(n610), .CK(clk_i), .RN(n209), 
        .Q(inp_pipe_operands_q_1__2__8_), .QN(n466) );
  DFFR_X1 inp_pipe_operands_q_reg_1__2__9_ ( .D(n609), .CK(clk_i), .RN(n209), 
        .Q(inp_pipe_operands_q_1__2__9_), .QN(n465) );
  DFFR_X1 inp_pipe_operands_q_reg_1__2__10_ ( .D(n608), .CK(clk_i), .RN(n209), 
        .Q(inp_pipe_operands_q_1__2__10_), .QN(n464) );
  DFFR_X1 inp_pipe_operands_q_reg_1__2__11_ ( .D(n607), .CK(clk_i), .RN(n209), 
        .Q(inp_pipe_operands_q_1__2__11_) );
  DFFR_X1 inp_pipe_operands_q_reg_1__2__12_ ( .D(n606), .CK(clk_i), .RN(n209), 
        .Q(inp_pipe_operands_q_1__2__12_) );
  DFFR_X1 inp_pipe_operands_q_reg_1__2__13_ ( .D(n605), .CK(clk_i), .RN(n208), 
        .Q(inp_pipe_operands_q_1__2__13_) );
  DFFR_X1 inp_pipe_operands_q_reg_1__2__14_ ( .D(n604), .CK(clk_i), .RN(n208), 
        .Q(inp_pipe_operands_q_1__2__14_) );
  DFFR_X1 inp_pipe_is_boxed_q_reg_1__2_ ( .D(n1180), .CK(clk_i), .RN(n208), 
        .Q(inp_pipe_is_boxed_q_1__2_) );
  DFFR_X1 inp_pipe_is_boxed_q_reg_1__0_ ( .D(n1179), .CK(clk_i), .RN(n208), 
        .Q(inp_pipe_is_boxed_q_1__0_) );
  DFFR_X1 inp_pipe_is_boxed_q_reg_1__1_ ( .D(n1178), .CK(clk_i), .RN(n208), 
        .Q(inp_pipe_is_boxed_q_1__1_) );
  DFFR_X1 inp_pipe_rnd_mode_q_reg_1__2_ ( .D(n600), .CK(clk_i), .RN(n208), .Q(
        n1156) );
  DFFR_X1 inp_pipe_rnd_mode_q_reg_1__0_ ( .D(n599), .CK(clk_i), .RN(n208), .Q(
        n1155) );
  DFFR_X1 inp_pipe_rnd_mode_q_reg_1__1_ ( .D(n598), .CK(clk_i), .RN(n208), .Q(
        n1154) );
  DFFR_X1 inp_pipe_op_mod_q_reg_1_ ( .D(n593), .CK(clk_i), .RN(n207), .Q(n1152) );
  DFFR_X1 inp_pipe_tag_q_reg_1_ ( .D(n592), .CK(clk_i), .RN(n207), .Q(n1151)
         );
  DFFR_X1 inp_pipe_aux_q_reg_1_ ( .D(n591), .CK(clk_i), .RN(n207), .Q(n1150)
         );
  DFFR_X1 mid_pipe_eff_sub_q_reg_1_ ( .D(n590), .CK(clk_i), .RN(n207), .Q(
        mid_pipe_eff_sub_q_1_) );
  DFFR_X1 mid_pipe_exp_prod_q_reg_1__6_ ( .D(n1171), .CK(clk_i), .RN(n207), 
        .Q(mid_pipe_exp_prod_q_1__6_) );
  DFFR_X1 mid_pipe_exp_prod_q_reg_1__5_ ( .D(n1172), .CK(clk_i), .RN(n207), 
        .Q(mid_pipe_exp_prod_q_1__5_) );
  DFFR_X1 mid_pipe_exp_prod_q_reg_1__4_ ( .D(n1173), .CK(clk_i), .RN(n207), 
        .Q(mid_pipe_exp_prod_q_1__4_) );
  DFFR_X1 mid_pipe_exp_prod_q_reg_1__3_ ( .D(n1174), .CK(clk_i), .RN(n207), 
        .Q(mid_pipe_exp_prod_q_1__3_) );
  DFFR_X1 mid_pipe_exp_prod_q_reg_1__2_ ( .D(n1175), .CK(clk_i), .RN(n207), 
        .Q(mid_pipe_exp_prod_q_1__2_) );
  DFFR_X1 mid_pipe_exp_prod_q_reg_1__1_ ( .D(n1176), .CK(clk_i), .RN(n207), 
        .Q(mid_pipe_exp_prod_q_1__1_) );
  DFFR_X1 mid_pipe_exp_prod_q_reg_1__0_ ( .D(n1177), .CK(clk_i), .RN(n207), 
        .Q(mid_pipe_exp_prod_q_1__0_), .QN(n12) );
  DFFR_X1 mid_pipe_tent_exp_q_reg_1__6_ ( .D(n575), .CK(clk_i), .RN(n206), 
        .QN(n18) );
  DFFR_X1 mid_pipe_tent_exp_q_reg_1__5_ ( .D(n574), .CK(clk_i), .RN(n206), 
        .QN(n21) );
  DFFR_X1 mid_pipe_tent_exp_q_reg_1__4_ ( .D(n573), .CK(clk_i), .RN(n206), 
        .QN(n19) );
  DFFR_X1 mid_pipe_tent_exp_q_reg_1__3_ ( .D(n572), .CK(clk_i), .RN(n206), 
        .QN(n17) );
  DFFR_X1 mid_pipe_tent_exp_q_reg_1__2_ ( .D(n571), .CK(clk_i), .RN(n206), 
        .QN(n16) );
  DFFR_X1 mid_pipe_tent_exp_q_reg_1__1_ ( .D(n570), .CK(clk_i), .RN(n206), 
        .QN(n15) );
  DFFR_X1 mid_pipe_tent_exp_q_reg_1__0_ ( .D(n569), .CK(clk_i), .RN(n205), 
        .QN(n14) );
  DFFR_X1 mid_pipe_add_shamt_q_reg_1__5_ ( .D(n568), .CK(clk_i), .RN(n205), 
        .Q(n1162) );
  DFFR_X1 mid_pipe_add_shamt_q_reg_1__4_ ( .D(n567), .CK(clk_i), .RN(n205), 
        .Q(n1161) );
  DFFR_X1 mid_pipe_add_shamt_q_reg_1__3_ ( .D(n566), .CK(clk_i), .RN(n205), 
        .Q(n1160) );
  DFFR_X1 mid_pipe_add_shamt_q_reg_1__2_ ( .D(n565), .CK(clk_i), .RN(n205), 
        .Q(n1159) );
  DFFR_X1 mid_pipe_add_shamt_q_reg_1__1_ ( .D(n564), .CK(clk_i), .RN(n205), 
        .Q(n1158), .QN(n133) );
  DFFR_X1 mid_pipe_add_shamt_q_reg_1__0_ ( .D(n563), .CK(clk_i), .RN(n205), 
        .Q(n1157), .QN(n13) );
  DFFR_X1 mid_pipe_sticky_q_reg_1_ ( .D(n562), .CK(clk_i), .RN(n205), .Q(n1149) );
  DFFR_X1 mid_pipe_final_sign_q_reg_1_ ( .D(n524), .CK(clk_i), .RN(n202), .Q(
        mid_pipe_final_sign_q_1_), .QN(n391) );
  DFFR_X1 mid_pipe_rnd_mode_q_reg_1__2_ ( .D(n523), .CK(clk_i), .RN(n202), .Q(
        mid_pipe_rnd_mode_q_1__2_) );
  DFFR_X1 mid_pipe_rnd_mode_q_reg_1__1_ ( .D(n522), .CK(clk_i), .RN(n202), .Q(
        mid_pipe_rnd_mode_q_1__1_) );
  DFFR_X1 mid_pipe_rnd_mode_q_reg_1__0_ ( .D(n521), .CK(clk_i), .RN(n201), .Q(
        mid_pipe_rnd_mode_q_1__0_) );
  DFFR_X1 mid_pipe_res_is_spec_q_reg_1_ ( .D(n520), .CK(clk_i), .RN(n201), .Q(
        n1165), .QN(n24) );
  DFFR_X1 mid_pipe_spec_res_q_reg_1__sign_ ( .D(n519), .CK(clk_i), .RN(n201), 
        .Q(n1164) );
  DFFR_X1 mid_pipe_spec_res_q_reg_1__exponent__4_ ( .D(n518), .CK(clk_i), .RN(
        n201), .Q(n1148) );
  DFFR_X1 mid_pipe_spec_res_q_reg_1__exponent__3_ ( .D(n517), .CK(clk_i), .RN(
        n201), .Q(n1147) );
  DFFR_X1 mid_pipe_spec_res_q_reg_1__exponent__2_ ( .D(n516), .CK(clk_i), .RN(
        n201), .Q(n1146) );
  DFFR_X1 mid_pipe_spec_res_q_reg_1__exponent__1_ ( .D(n515), .CK(clk_i), .RN(
        n201), .Q(n1145) );
  DFFR_X1 mid_pipe_spec_res_q_reg_1__exponent__0_ ( .D(n514), .CK(clk_i), .RN(
        n201), .Q(n1144) );
  DFFR_X1 mid_pipe_spec_res_q_reg_1__mantissa__9_ ( .D(n513), .CK(clk_i), .RN(
        n201), .Q(n1163) );
  DFFR_X1 mid_pipe_spec_stat_q_reg_1__NV_ ( .D(n512), .CK(clk_i), .RN(n201), 
        .Q(n1143) );
  DFFR_X1 mid_pipe_tag_q_reg_1_ ( .D(n511), .CK(clk_i), .RN(n201), .Q(tag_o)
         );
  DFFR_X1 mid_pipe_aux_q_reg_1_ ( .D(n510), .CK(clk_i), .RN(n201), .Q(aux_o)
         );
  fpnew_classifier_2_3 i_class_inputs ( .operands_i({
        inp_pipe_operands_q_1__2__15_, inp_pipe_operands_q_1__2__14_, 
        inp_pipe_operands_q_1__2__13_, inp_pipe_operands_q_1__2__12_, 
        inp_pipe_operands_q_1__2__11_, inp_pipe_operands_q_1__2__10_, 
        inp_pipe_operands_q_1__2__9_, inp_pipe_operands_q_1__2__8_, 
        inp_pipe_operands_q_1__2__7_, inp_pipe_operands_q_1__2__6_, 
        inp_pipe_operands_q_1__2__5_, inp_pipe_operands_q_1__2__4_, 
        inp_pipe_operands_q_1__2__3_, inp_pipe_operands_q_1__2__2_, 
        inp_pipe_operands_q_1__2__1_, inp_pipe_operands_q_1__2__0_, 
        inp_pipe_operands_q_1__1__15_, inp_pipe_operands_q_1__1__14_, 
        inp_pipe_operands_q_1__1__13_, inp_pipe_operands_q_1__1__12_, 
        inp_pipe_operands_q_1__1__11_, inp_pipe_operands_q_1__1__10_, 
        inp_pipe_operands_q_1__1__9_, inp_pipe_operands_q_1__1__8_, 
        inp_pipe_operands_q_1__1__7_, inp_pipe_operands_q_1__1__6_, 
        inp_pipe_operands_q_1__1__5_, inp_pipe_operands_q_1__1__4_, 
        inp_pipe_operands_q_1__1__3_, inp_pipe_operands_q_1__1__2_, 
        inp_pipe_operands_q_1__1__1_, inp_pipe_operands_q_1__1__0_, 
        inp_pipe_operands_q_1__0__15_, inp_pipe_operands_q_1__0__14_, 
        inp_pipe_operands_q_1__0__13_, inp_pipe_operands_q_1__0__12_, 
        inp_pipe_operands_q_1__0__11_, inp_pipe_operands_q_1__0__10_, 
        inp_pipe_operands_q_1__0__9_, inp_pipe_operands_q_1__0__8_, 
        inp_pipe_operands_q_1__0__7_, inp_pipe_operands_q_1__0__6_, 
        inp_pipe_operands_q_1__0__5_, inp_pipe_operands_q_1__0__4_, 
        inp_pipe_operands_q_1__0__3_, inp_pipe_operands_q_1__0__2_, 
        inp_pipe_operands_q_1__0__1_, inp_pipe_operands_q_1__0__0_}), 
        .is_boxed_i({inp_pipe_is_boxed_q_1__2_, inp_pipe_is_boxed_q_1__1_, 
        inp_pipe_is_boxed_q_1__0_}), .info_o({info_q[15], 
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, info_q[14:12], 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, info_q[11:6], 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, info_q[5:0], 
        SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8}) );
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
        pre_round_mantissa}), .sign_i(mid_pipe_final_sign_q_1_), 
        .round_sticky_bits_i(round_sticky_bits), .rnd_mode_i({
        mid_pipe_rnd_mode_q_1__2_, mid_pipe_rnd_mode_q_1__1_, 
        mid_pipe_rnd_mode_q_1__0_}), .effective_subtraction_i(
        mid_pipe_eff_sub_q_1_), .abs_rounded_o(rounded_abs), .sign_o(
        regular_result_15_) );
  fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_inc_0 add_553 ( .A({
        gt_558_A_6_, gt_558_A_5_, gt_558_A_4_, gt_558_A_3_, gt_558_A_2_, 
        gt_558_A_1_, sub_560_A_0_}), .SUM({N343, N342, N341, N340, N339, N338, 
        N337}) );
  fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW_mult_uns_0 mult_335 ( 
        .a({info_a_is_normal_, operand_a, dp_cluster_1_operand_a_mantissa__0_}), .b({info_b_is_normal_, operand_b}), .product({product_21_, product_20_, 
        product_19_, product_18_, product_17_, product_16_, product_15_, 
        product_14_, product_13_, product_12_, product_11_, product_10_, 
        product_9_, product_8_, product_7_, product_6_, product_5_, product_4_, 
        product_3_, product_2_, product_1_, product_0_}) );
  fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_sub_5 sub_1_root_add_526 ( 
        .A({mid_pipe_exp_prod_q_1__6_, mid_pipe_exp_prod_q_1__5_, 
        mid_pipe_exp_prod_q_1__4_, mid_pipe_exp_prod_q_1__3_, 
        mid_pipe_exp_prod_q_1__2_, mid_pipe_exp_prod_q_1__1_, 
        mid_pipe_exp_prod_q_1__0_}), .B({1'b0, 1'b0, leading_zero_count[4:2], 
        n47, n75}), .CI(1'b0), .DIFF({N306, N305, N304, N303, N302, N301, N300}) );
  fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_inc_2 add_0_root_add_526 ( 
        .A({N306, N305, N304, N303, N302, N301, N300}), .SUM({N313, N312, N311, 
        N310, N309, N308, SYNOPSYS_UNCONNECTED_9}) );
  fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_sub_4 sub_1_root_add_523 ( 
        .A({mid_pipe_exp_prod_q_1__6_, mid_pipe_exp_prod_q_1__6_, 
        mid_pipe_exp_prod_q_1__5_, mid_pipe_exp_prod_q_1__4_, 
        mid_pipe_exp_prod_q_1__3_, mid_pipe_exp_prod_q_1__2_, 
        mid_pipe_exp_prod_q_1__1_, mid_pipe_exp_prod_q_1__0_}), .B({1'b0, 1'b0, 
        1'b0, leading_zero_count}), .CI(1'b0), .DIFF({N281, N280, N279, N278, 
        N277, N276, N275, N274}) );
  fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_sub_6 sub_303 ( .A({
        1'b0, exponent_addend[5:0]}), .B({n680, n681, n682, n683, n684, n685, 
        n686}), .CI(1'b0), .DIFF({exponent_difference, N140}) );
  fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_add_6 add_1_root_add_379_2 ( 
        .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, product_21_, product_20_, product_19_, product_18_, 
        product_17_, product_16_, product_15_, product_14_, product_13_, 
        product_12_, product_11_, product_10_, product_9_, product_8_, 
        product_7_, product_6_, product_5_, product_4_, product_3_, product_2_, 
        product_1_, product_0_, 1'b0, 1'b0}), .B({1'b0, addend_shifted}), .CI(
        inject_carry_in), .SUM(sum_raw) );
  fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB__DW01_sub_7 sub_383 ( .A({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .B(sum_raw[36:0]), .CI(1'b0), .DIFF({N262, N261, N260, N259, 
        N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, 
        N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, 
        N234, N233, N232, N231, N230, N229, N228, N227, N226}) );
  DFFR_X1 inp_pipe_op_q_reg_1__1_ ( .D(n595), .CK(clk_i), .RN(rst_ni), .Q(
        n1167), .QN(n363) );
  DFFR_X1 inp_pipe_op_q_reg_1__0_ ( .D(n596), .CK(clk_i), .RN(n208), .Q(n1153), 
        .QN(n362) );
  DFFR_X1 inp_pipe_op_q_reg_1__2_ ( .D(n594), .CK(clk_i), .RN(n208), .Q(n1169), 
        .QN(n220) );
  DFFR_X1 mid_pipe_sum_q_reg_1__11_ ( .D(n536), .CK(clk_i), .RN(rst_ni), .Q(
        mid_pipe_sum_q_1__11_), .QN(n403) );
  DFFR_X1 mid_pipe_sum_q_reg_1__19_ ( .D(n544), .CK(clk_i), .RN(n203), .Q(
        mid_pipe_sum_q_1__19_), .QN(n411) );
  DFFR_X1 mid_pipe_sum_q_reg_1__15_ ( .D(n540), .CK(clk_i), .RN(n203), .Q(
        mid_pipe_sum_q_1__15_), .QN(n407) );
  DFFR_X1 mid_pipe_sum_q_reg_1__13_ ( .D(n538), .CK(clk_i), .RN(n203), .Q(
        mid_pipe_sum_q_1__13_), .QN(n405) );
  DFFR_X1 mid_pipe_sum_q_reg_1__17_ ( .D(n542), .CK(clk_i), .RN(n203), .Q(
        mid_pipe_sum_q_1__17_), .QN(n409) );
  DFFR_X1 mid_pipe_sum_q_reg_1__9_ ( .D(n534), .CK(clk_i), .RN(n203), .Q(
        mid_pipe_sum_q_1__9_), .QN(n401) );
  DFFR_X1 mid_pipe_sum_q_reg_1__18_ ( .D(n543), .CK(clk_i), .RN(n203), .Q(
        mid_pipe_sum_q_1__18_), .QN(n410) );
  DFFR_X1 mid_pipe_sum_q_reg_1__12_ ( .D(n537), .CK(clk_i), .RN(n203), .Q(
        mid_pipe_sum_q_1__12_), .QN(n404) );
  DFFR_X1 mid_pipe_sum_q_reg_1__10_ ( .D(n535), .CK(clk_i), .RN(n203), .Q(
        mid_pipe_sum_q_1__10_), .QN(n402) );
  DFFR_X1 mid_pipe_sum_q_reg_1__16_ ( .D(n541), .CK(clk_i), .RN(n203), .Q(
        mid_pipe_sum_q_1__16_), .QN(n408) );
  DFFR_X1 mid_pipe_sum_q_reg_1__8_ ( .D(n533), .CK(clk_i), .RN(n202), .Q(
        mid_pipe_sum_q_1__8_), .QN(n400) );
  DFFR_X1 mid_pipe_sum_q_reg_1__0_ ( .D(n525), .CK(clk_i), .RN(n202), .Q(
        mid_pipe_sum_q_1__0_), .QN(n392) );
  DFFR_X1 mid_pipe_sum_q_reg_1__21_ ( .D(n546), .CK(clk_i), .RN(n204), .Q(
        mid_pipe_sum_q_1__21_), .QN(n413) );
  DFFR_X1 mid_pipe_sum_q_reg_1__3_ ( .D(n528), .CK(clk_i), .RN(n202), .Q(
        mid_pipe_sum_q_1__3_), .QN(n395) );
  DFFR_X1 mid_pipe_sum_q_reg_1__23_ ( .D(n548), .CK(clk_i), .RN(n204), .Q(
        mid_pipe_sum_q_1__23_), .QN(n415) );
  DFFR_X1 mid_pipe_sum_q_reg_1__5_ ( .D(n530), .CK(clk_i), .RN(n202), .Q(
        mid_pipe_sum_q_1__5_), .QN(n397) );
  DFFR_X1 mid_pipe_sum_q_reg_1__1_ ( .D(n526), .CK(clk_i), .RN(n202), .Q(
        mid_pipe_sum_q_1__1_), .QN(n393) );
  DFFR_X1 mid_pipe_sum_q_reg_1__24_ ( .D(n549), .CK(clk_i), .RN(n204), .Q(
        mid_pipe_sum_q_1__24_), .QN(n416) );
  DFFR_X1 mid_pipe_sum_q_reg_1__22_ ( .D(n547), .CK(clk_i), .RN(n204), .Q(
        mid_pipe_sum_q_1__22_), .QN(n414) );
  DFFR_X1 mid_pipe_sum_q_reg_1__20_ ( .D(n545), .CK(clk_i), .RN(n203), .Q(
        mid_pipe_sum_q_1__20_), .QN(n412) );
  DFFR_X1 mid_pipe_sum_q_reg_1__14_ ( .D(n539), .CK(clk_i), .RN(n203), .Q(
        mid_pipe_sum_q_1__14_), .QN(n406) );
  DFFR_X1 mid_pipe_sum_q_reg_1__4_ ( .D(n529), .CK(clk_i), .RN(n202), .Q(
        mid_pipe_sum_q_1__4_), .QN(n396) );
  DFFR_X1 mid_pipe_sum_q_reg_1__2_ ( .D(n527), .CK(clk_i), .RN(n202), .Q(
        mid_pipe_sum_q_1__2_), .QN(n394) );
  DFFR_X1 mid_pipe_sum_q_reg_1__6_ ( .D(n531), .CK(clk_i), .RN(n202), .Q(
        mid_pipe_sum_q_1__6_), .QN(n398) );
  DFFR_X1 mid_pipe_sum_q_reg_1__36_ ( .D(n561), .CK(clk_i), .RN(rst_ni), .Q(
        n788), .QN(n428) );
  DFFR_X1 mid_pipe_sum_q_reg_1__35_ ( .D(n560), .CK(clk_i), .RN(n205), .Q(n750), .QN(n427) );
  DFFR_X1 mid_pipe_sum_q_reg_1__33_ ( .D(n558), .CK(clk_i), .RN(n205), .Q(n765), .QN(n425) );
  DFFR_X1 mid_pipe_sum_q_reg_1__31_ ( .D(n556), .CK(clk_i), .RN(n204), .Q(n766), .QN(n423) );
  DFFR_X1 mid_pipe_sum_q_reg_1__29_ ( .D(n554), .CK(clk_i), .RN(n204), .Q(n774), .QN(n421) );
  DFFR_X1 mid_pipe_sum_q_reg_1__27_ ( .D(n552), .CK(clk_i), .RN(n204), .Q(n775), .QN(n419) );
  DFFR_X1 mid_pipe_sum_q_reg_1__32_ ( .D(n557), .CK(clk_i), .RN(n204), .Q(n777), .QN(n424) );
  DFFR_X1 mid_pipe_sum_q_reg_1__34_ ( .D(n559), .CK(clk_i), .RN(n205), .Q(n789), .QN(n426) );
  DFFR_X1 mid_pipe_sum_q_reg_1__25_ ( .D(n550), .CK(clk_i), .RN(n204), .Q(n760), .QN(n417) );
  DFFR_X1 mid_pipe_sum_q_reg_1__28_ ( .D(n553), .CK(clk_i), .RN(n204), .Q(n781), .QN(n420) );
  DFFR_X1 mid_pipe_sum_q_reg_1__26_ ( .D(n551), .CK(clk_i), .RN(n204), .Q(n782), .QN(n418) );
  DFFR_X1 mid_pipe_sum_q_reg_1__30_ ( .D(n555), .CK(clk_i), .RN(n204), .Q(n778), .QN(n422) );
  DFFR_X1 inp_pipe_op_q_reg_1__3_ ( .D(n597), .CK(clk_i), .RN(rst_ni), .Q(
        n1168), .QN(n219) );
  DFFR_X1 mid_pipe_sum_q_reg_1__7_ ( .D(n532), .CK(clk_i), .RN(n202), .Q(
        mid_pipe_sum_q_1__7_), .QN(n399) );
  SDFFR_X1 mid_pipe_valid_q_reg_1_ ( .D(1'b0), .SI(n1181), .SE(n656), .CK(
        clk_i), .RN(rst_ni), .Q(out_valid_o), .QN(n199) );
  SDFFR_X1 inp_pipe_valid_q_reg_1_ ( .D(1'b0), .SI(n1181), .SE(n653), .CK(
        clk_i), .RN(n212), .Q(n1166), .QN(n1141) );
  DFFR_X1 mid_pipe_exp_diff_q_reg_1__1_ ( .D(n577), .CK(clk_i), .RN(rst_ni), 
        .Q(n820), .QN(n444) );
  DFFR_X1 mid_pipe_exp_diff_q_reg_1__0_ ( .D(n576), .CK(clk_i), .RN(n206), .Q(
        n821), .QN(n443) );
  DFFR_X1 mid_pipe_exp_diff_q_reg_1__2_ ( .D(n578), .CK(clk_i), .RN(n206), .Q(
        n822), .QN(n445) );
  DFFR_X1 mid_pipe_exp_diff_q_reg_1__3_ ( .D(n579), .CK(clk_i), .RN(n206), .Q(
        n824), .QN(n446) );
  DFFR_X1 mid_pipe_exp_diff_q_reg_1__5_ ( .D(n581), .CK(clk_i), .RN(n206), .Q(
        n825), .QN(n448) );
  DFFR_X1 mid_pipe_exp_diff_q_reg_1__4_ ( .D(n580), .CK(clk_i), .RN(n206), .Q(
        n823), .QN(n447) );
  DFFR_X1 mid_pipe_exp_diff_q_reg_1__6_ ( .D(n582), .CK(clk_i), .RN(n207), .Q(
        n819), .QN(n449) );
  INV_X1 U3 ( .A(n981), .ZN(n935) );
  NOR2_X2 U4 ( .A1(n499), .A2(n360), .ZN(operand_a[6]) );
  AND2_X1 U5 ( .A1(n1070), .A2(n134), .ZN(n56) );
  INV_X1 U6 ( .A(n56), .ZN(n955) );
  AOI221_X1 U7 ( .B1(n1043), .B2(n940), .C1(n960), .C2(n1012), .A(n1082), .ZN(
        n954) );
  OAI221_X1 U8 ( .B1(n128), .B2(n936), .C1(n935), .C2(n1063), .A(n1064), .ZN(
        n969) );
  OAI221_X1 U9 ( .B1(n871), .B2(n936), .C1(n869), .C2(n935), .A(n1040), .ZN(
        n968) );
  NOR2_X2 U10 ( .A1(n505), .A2(n360), .ZN(operand_a[0]) );
  INV_X1 U11 ( .A(n794), .ZN(n375) );
  INV_X1 U12 ( .A(n331), .ZN(n726) );
  INV_X1 U13 ( .A(n453), .ZN(n795) );
  NAND2_X1 U14 ( .A1(n250), .A2(n1166), .ZN(n1122) );
  AOI22_X1 U15 ( .A1(n1110), .A2(N315), .B1(N295), .B2(n97), .ZN(n1) );
  CLKBUF_X1 U16 ( .A(n1042), .Z(n2) );
  CLKBUF_X1 U17 ( .A(n932), .Z(n3) );
  CLKBUF_X1 U18 ( .A(n65), .Z(n4) );
  NOR2_X1 U19 ( .A1(n36), .A2(n888), .ZN(n5) );
  CLKBUF_X1 U20 ( .A(n1065), .Z(n6) );
  AND2_X2 U21 ( .A1(n92), .A2(n91), .ZN(n36) );
  BUF_X1 U22 ( .A(of_before_round), .Z(n66) );
  INV_X1 U23 ( .A(gte_587_A_0_), .ZN(n7) );
  AND2_X1 U25 ( .A1(n27), .A2(n157), .ZN(n8) );
  AND4_X1 U26 ( .A1(N277), .A2(N276), .A3(N275), .A4(N274), .ZN(n9) );
  CLKBUF_X1 U27 ( .A(n785), .Z(n165) );
  AND2_X1 U28 ( .A1(n588), .A2(n795), .ZN(n10) );
  AND2_X1 U29 ( .A1(in_valid_i), .A2(in_ready_o), .ZN(n23) );
  AOI21_X2 U30 ( .B1(n1083), .B2(n910), .A(n4), .ZN(n908) );
  INV_X1 U31 ( .A(lzc_zeroes), .ZN(n91) );
  OR2_X1 U35 ( .A1(n983), .A2(n910), .ZN(n27) );
  OR2_X1 U36 ( .A1(n1121), .A2(n13), .ZN(n28) );
  NAND2_X1 U37 ( .A1(n28), .A2(n1113), .ZN(n791) );
  INV_X1 U38 ( .A(n54), .ZN(n29) );
  AND2_X2 U39 ( .A1(n158), .A2(n132), .ZN(n121) );
  AND2_X1 U40 ( .A1(n1053), .A2(n1004), .ZN(n30) );
  NOR2_X1 U41 ( .A1(n30), .A2(n129), .ZN(n1055) );
  CLKBUF_X1 U42 ( .A(n88), .Z(n183) );
  BUF_X2 U43 ( .A(n88), .Z(n123) );
  BUF_X2 U44 ( .A(n123), .Z(n182) );
  AOI222_X1 U45 ( .A1(n869), .A2(n120), .B1(n868), .B2(n124), .C1(n980), .C2(
        n125), .ZN(n976) );
  INV_X1 U46 ( .A(n979), .ZN(n936) );
  INV_X1 U47 ( .A(n1004), .ZN(n31) );
  CLKBUF_X1 U48 ( .A(n88), .Z(n141) );
  NOR2_X2 U49 ( .A1(n1106), .A2(n132), .ZN(n1031) );
  INV_X1 U50 ( .A(n743), .ZN(n32) );
  AND3_X1 U51 ( .A1(n1090), .A2(rounded_abs[13]), .A3(rounded_abs[14]), .ZN(
        n33) );
  MUX2_X1 U52 ( .A(n1093), .B(n1094), .S(n923), .Z(n34) );
  AND2_X1 U53 ( .A1(n1059), .A2(n1004), .ZN(n35) );
  NOR2_X1 U54 ( .A1(n35), .A2(n66), .ZN(n1061) );
  AND2_X1 U55 ( .A1(n92), .A2(n91), .ZN(n1120) );
  NOR2_X1 U56 ( .A1(n37), .A2(n38), .ZN(n1091) );
  AND2_X1 U57 ( .A1(N351), .A2(n86), .ZN(n37) );
  NAND2_X1 U58 ( .A1(n78), .A2(n77), .ZN(n38) );
  INV_X1 U59 ( .A(n399), .ZN(n39) );
  BUF_X1 U60 ( .A(n979), .Z(n124) );
  AND3_X2 U61 ( .A1(n34), .A2(n60), .A3(N333), .ZN(n49) );
  CLKBUF_X1 U62 ( .A(round_sticky_bits[0]), .Z(n40) );
  CLKBUF_X1 U63 ( .A(n860), .Z(n41) );
  NAND2_X1 U64 ( .A1(n1025), .A2(n45), .ZN(n42) );
  NAND2_X1 U65 ( .A1(n42), .A2(n43), .ZN(n1103) );
  OR2_X1 U66 ( .A1(n44), .A2(n62), .ZN(n43) );
  INV_X1 U67 ( .A(n93), .ZN(n44) );
  AND2_X1 U68 ( .A1(n140), .A2(n93), .ZN(n45) );
  CLKBUF_X1 U69 ( .A(n97), .Z(n46) );
  AND2_X2 U70 ( .A1(n1120), .A2(n1121), .ZN(n97) );
  OR3_X2 U71 ( .A1(n74), .A2(n73), .A3(n72), .ZN(n67) );
  CLKBUF_X1 U72 ( .A(leading_zero_count[1]), .Z(n47) );
  OAI21_X1 U73 ( .B1(n33), .B2(n54), .A(n24), .ZN(n48) );
  AND3_X1 U74 ( .A1(n84), .A2(n31), .A3(N333), .ZN(n83) );
  OR2_X1 U75 ( .A1(n68), .A2(mid_pipe_sum_q_1__5_), .ZN(n50) );
  OR2_X1 U76 ( .A1(n88), .A2(n39), .ZN(n51) );
  NAND3_X1 U77 ( .A1(n50), .A2(n51), .A3(n740), .ZN(n1071) );
  OR2_X1 U78 ( .A1(n68), .A2(mid_pipe_sum_q_1__17_), .ZN(n52) );
  OR2_X1 U79 ( .A1(n88), .A2(mid_pipe_sum_q_1__19_), .ZN(n53) );
  NAND3_X1 U80 ( .A1(n52), .A2(n53), .A3(n745), .ZN(n982) );
  INV_X1 U81 ( .A(n156), .ZN(n54) );
  INV_X1 U82 ( .A(n866), .ZN(n55) );
  CLKBUF_X1 U83 ( .A(n863), .Z(n57) );
  CLKBUF_X1 U84 ( .A(gte_587_A_5_), .Z(n58) );
  NOR2_X1 U85 ( .A1(n1004), .A2(n988), .ZN(n59) );
  INV_X1 U86 ( .A(n1004), .ZN(n60) );
  CLKBUF_X1 U87 ( .A(n180), .Z(n149) );
  NAND2_X1 U88 ( .A1(n1025), .A2(n140), .ZN(n61) );
  NAND2_X1 U89 ( .A1(n1031), .A2(n960), .ZN(n62) );
  NAND2_X1 U90 ( .A1(n61), .A2(n62), .ZN(n1105) );
  AND2_X1 U91 ( .A1(n158), .A2(n132), .ZN(n138) );
  AND2_X2 U92 ( .A1(n158), .A2(n132), .ZN(n139) );
  BUF_X1 U93 ( .A(of_before_round), .Z(n129) );
  OAI221_X1 U94 ( .B1(n179), .B2(mid_pipe_sum_q_1__22_), .C1(n141), .C2(
        mid_pipe_sum_q_1__24_), .A(n773), .ZN(n1029) );
  BUF_X1 U95 ( .A(n986), .Z(n127) );
  AND2_X1 U96 ( .A1(n86), .A2(n913), .ZN(n63) );
  NOR2_X1 U97 ( .A1(n66), .A2(n63), .ZN(n912) );
  AND2_X1 U98 ( .A1(n992), .A2(n1095), .ZN(n64) );
  NOR2_X1 U99 ( .A1(n1096), .A2(n64), .ZN(n1094) );
  NOR2_X1 U100 ( .A1(n84), .A2(n1004), .ZN(n65) );
  NOR2_X1 U101 ( .A1(n988), .A2(n1004), .ZN(n1084) );
  OAI22_X1 U102 ( .A1(n904), .A2(n903), .B1(n902), .B2(n905), .ZN(
        of_before_round) );
  BUF_X1 U103 ( .A(n138), .Z(n178) );
  BUF_X1 U104 ( .A(n121), .Z(n144) );
  OR2_X2 U105 ( .A1(n159), .A2(n875), .ZN(n68) );
  NOR2_X1 U106 ( .A1(n154), .A2(rounded_abs[10]), .ZN(n76) );
  CLKBUF_X1 U107 ( .A(n5), .Z(n95) );
  AND2_X1 U108 ( .A1(status_o_NX_), .A2(n69), .ZN(status_o_UF_) );
  AND2_X1 U109 ( .A1(n76), .A2(n85), .ZN(n69) );
  NOR2_X1 U110 ( .A1(n71), .A2(n70), .ZN(n889) );
  NAND2_X1 U111 ( .A1(N280), .A2(n81), .ZN(n70) );
  NAND2_X1 U112 ( .A1(N281), .A2(n9), .ZN(n71) );
  MUX2_X1 U113 ( .A(n1098), .B(n1097), .S(n1100), .Z(n1096) );
  AND2_X1 U114 ( .A1(N341), .A2(n1004), .ZN(n72) );
  AND2_X1 U115 ( .A1(n83), .A2(N349), .ZN(n73) );
  AND2_X1 U116 ( .A1(n1084), .A2(gt_558_A_4_), .ZN(n74) );
  CLKBUF_X1 U117 ( .A(leading_zero_count[0]), .Z(n75) );
  NAND2_X1 U118 ( .A1(N343), .A2(n1004), .ZN(n77) );
  NAND2_X1 U119 ( .A1(n65), .A2(gt_558_A_6_), .ZN(n78) );
  CLKBUF_X1 U120 ( .A(n982), .Z(n79) );
  OR3_X1 U121 ( .A1(n916), .A2(n915), .A3(n914), .ZN(n80) );
  OR2_X2 U122 ( .A1(n917), .A2(n80), .ZN(round_sticky_bits[0]) );
  BUF_X1 U123 ( .A(n68), .Z(n179) );
  AND2_X1 U124 ( .A1(N279), .A2(N278), .ZN(n81) );
  MUX2_X1 U125 ( .A(n1093), .B(n1094), .S(n923), .Z(n84) );
  CLKBUF_X1 U126 ( .A(n1098), .Z(n82) );
  MUX2_X1 U127 ( .A(n1093), .B(n1094), .S(n923), .Z(n988) );
  NOR3_X1 U128 ( .A1(rounded_abs[12]), .A2(rounded_abs[14]), .A3(
        rounded_abs[13]), .ZN(n85) );
  INV_X1 U129 ( .A(n986), .ZN(n86) );
  INV_X1 U130 ( .A(n82), .ZN(n87) );
  OR2_X1 U131 ( .A1(n902), .A2(n96), .ZN(n904) );
  OR2_X2 U132 ( .A1(n132), .A2(n875), .ZN(n88) );
  INV_X1 U133 ( .A(n416), .ZN(n89) );
  INV_X1 U134 ( .A(n413), .ZN(n90) );
  XNOR2_X1 U135 ( .A(n889), .B(n161), .ZN(n92) );
  OAI222_X4 U136 ( .A1(n428), .A2(n123), .B1(n426), .B2(n148), .C1(n427), .C2(
        n146), .ZN(n1104) );
  AND2_X1 U137 ( .A1(n134), .A2(n94), .ZN(n93) );
  INV_X1 U138 ( .A(n923), .ZN(n94) );
  NAND2_X1 U139 ( .A1(gte_587_A_1_), .A2(gte_587_A_0_), .ZN(n96) );
  CLKBUF_X1 U140 ( .A(n1025), .Z(n128) );
  NOR2_X2 U141 ( .A1(n497), .A2(n360), .ZN(operand_a[8]) );
  NAND2_X2 U142 ( .A1(n371), .A2(n844), .ZN(n360) );
  NOR2_X4 U143 ( .A1(n503), .A2(n360), .ZN(operand_a[2]) );
  NOR2_X2 U144 ( .A1(n501), .A2(n360), .ZN(operand_a[4]) );
  AND2_X1 U145 ( .A1(n795), .A2(n792), .ZN(n99) );
  BUF_X1 U146 ( .A(n785), .Z(n168) );
  AND2_X1 U147 ( .A1(n792), .A2(n453), .ZN(n100) );
  BUF_X2 U148 ( .A(n172), .Z(n170) );
  BUF_X1 U149 ( .A(n217), .Z(n216) );
  BUF_X1 U150 ( .A(n217), .Z(n215) );
  BUF_X1 U151 ( .A(n217), .Z(n214) );
  BUF_X1 U152 ( .A(n886), .Z(n191) );
  BUF_X1 U153 ( .A(n23), .Z(n198) );
  BUF_X1 U154 ( .A(n886), .Z(n190) );
  BUF_X1 U155 ( .A(n200), .Z(n217) );
  BUF_X1 U156 ( .A(n218), .Z(n213) );
  XOR2_X1 U157 ( .A(n257), .B(n258), .Z(n259) );
  XOR2_X1 U158 ( .A(n98), .B(n105), .Z(n814) );
  NAND2_X1 U159 ( .A1(n361), .A2(inp_pipe_operands_q_1__2__11_), .ZN(n98) );
  MUX2_X1 U160 ( .A(inp_pipe_operands_q_1__2__15_), .B(operands_i[47]), .S(
        n197), .Z(n651) );
  BUF_X1 U161 ( .A(n168), .Z(n166) );
  BUF_X1 U162 ( .A(n168), .Z(n167) );
  BUF_X1 U163 ( .A(n172), .Z(n171) );
  BUF_X1 U164 ( .A(n786), .Z(n172) );
  BUF_X1 U165 ( .A(n173), .Z(n169) );
  BUF_X1 U166 ( .A(n786), .Z(n173) );
  AND2_X1 U167 ( .A1(n286), .A2(n281), .ZN(n101) );
  AND2_X1 U168 ( .A1(n350), .A2(n104), .ZN(n102) );
  AND2_X1 U169 ( .A1(n271), .A2(exponent_difference[2]), .ZN(n103) );
  BUF_X1 U170 ( .A(n215), .Z(n204) );
  BUF_X1 U171 ( .A(n216), .Z(n201) );
  BUF_X1 U172 ( .A(n216), .Z(n202) );
  BUF_X1 U173 ( .A(n215), .Z(n206) );
  BUF_X1 U174 ( .A(n214), .Z(n207) );
  BUF_X1 U175 ( .A(n214), .Z(n209) );
  BUF_X1 U176 ( .A(n216), .Z(n203) );
  BUF_X1 U177 ( .A(n215), .Z(n205) );
  BUF_X1 U178 ( .A(n214), .Z(n208) );
  CLKBUF_X2 U179 ( .A(n178), .Z(n177) );
  CLKBUF_X1 U180 ( .A(n176), .Z(n174) );
  CLKBUF_X1 U181 ( .A(n176), .Z(n175) );
  BUF_X1 U182 ( .A(n191), .Z(n186) );
  BUF_X1 U183 ( .A(n191), .Z(n185) );
  NAND2_X1 U184 ( .A1(n361), .A2(n291), .ZN(n307) );
  NAND2_X1 U185 ( .A1(n442), .A2(n390), .ZN(addend_shifted[28]) );
  AND2_X1 U186 ( .A1(n291), .A2(n290), .ZN(n104) );
  BUF_X1 U187 ( .A(n197), .Z(n195) );
  BUF_X1 U188 ( .A(n198), .Z(n194) );
  BUF_X1 U189 ( .A(n197), .Z(n196) );
  BUF_X1 U190 ( .A(n198), .Z(n193) );
  BUF_X1 U191 ( .A(n198), .Z(n192) );
  BUF_X1 U192 ( .A(n191), .Z(n184) );
  BUF_X1 U193 ( .A(n190), .Z(n189) );
  BUF_X1 U194 ( .A(n190), .Z(n187) );
  BUF_X1 U195 ( .A(n190), .Z(n188) );
  BUF_X1 U196 ( .A(n698), .Z(n163) );
  BUF_X1 U197 ( .A(n698), .Z(n162) );
  BUF_X1 U198 ( .A(n698), .Z(n164) );
  BUF_X1 U199 ( .A(n213), .Z(n210) );
  BUF_X1 U200 ( .A(n213), .Z(n211) );
  BUF_X1 U201 ( .A(n213), .Z(n212) );
  OAI221_X1 U202 ( .B1(n908), .B2(n909), .C1(n910), .C2(n911), .A(n912), .ZN(
        round_sticky_bits[1]) );
  INV_X1 U203 ( .A(gt_558_A_2_), .ZN(n897) );
  INV_X1 U204 ( .A(gt_558_A_4_), .ZN(n898) );
  BUF_X1 U205 ( .A(n23), .Z(n197) );
  BUF_X1 U206 ( .A(n200), .Z(n218) );
  INV_X1 U207 ( .A(n890), .ZN(N346) );
  INV_X1 U208 ( .A(sub_560_A_0_), .ZN(N345) );
  INV_X1 U209 ( .A(n893), .ZN(N348) );
  OAI221_X1 U210 ( .B1(n908), .B2(n987), .C1(n127), .C2(n989), .A(n8), .ZN(
        pre_round_mantissa[8]) );
  INV_X1 U211 ( .A(gt_558_A_6_), .ZN(n901) );
  XNOR2_X1 U212 ( .A(n262), .B(n264), .ZN(n265) );
  XNOR2_X1 U213 ( .A(n255), .B(n254), .ZN(n256) );
  AND2_X1 U214 ( .A1(n292), .A2(n270), .ZN(n105) );
  NOR2_X1 U215 ( .A1(info_q[9]), .A2(n847), .ZN(n106) );
  AND2_X1 U216 ( .A1(n105), .A2(inp_pipe_operands_q_1__2__11_), .ZN(n107) );
  AND2_X1 U217 ( .A1(n107), .A2(inp_pipe_operands_q_1__2__12_), .ZN(n108) );
  AND2_X1 U218 ( .A1(n108), .A2(inp_pipe_operands_q_1__2__13_), .ZN(n109) );
  AND2_X1 U219 ( .A1(n230), .A2(inp_pipe_operands_q_1__0__14_), .ZN(n110) );
  NOR2_X1 U220 ( .A1(info_q[8]), .A2(n847), .ZN(n111) );
  AND2_X1 U221 ( .A1(info_q[14]), .A2(n842), .ZN(n112) );
  BUF_X1 U222 ( .A(rst_ni), .Z(n200) );
  AOI21_X1 U223 ( .B1(n888), .B2(n1159), .A(n1116), .ZN(n1044) );
  AND2_X1 U224 ( .A1(n142), .A2(mid_pipe_sum_q_1__0_), .ZN(n113) );
  XNOR2_X1 U225 ( .A(n115), .B(n241), .ZN(n114) );
  XNOR2_X1 U226 ( .A(n240), .B(n479), .ZN(n115) );
  XNOR2_X1 U227 ( .A(n116), .B(n236), .ZN(n254) );
  XNOR2_X1 U228 ( .A(n234), .B(n477), .ZN(n116) );
  XNOR2_X1 U229 ( .A(n117), .B(n110), .ZN(n247) );
  XNOR2_X1 U230 ( .A(n233), .B(n476), .ZN(n117) );
  XNOR2_X1 U231 ( .A(n239), .B(n238), .ZN(n257) );
  XOR2_X1 U232 ( .A(n243), .B(inp_pipe_operands_q_1__1__10_), .Z(n118) );
  OAI221_X2 U233 ( .B1(n1130), .B2(n1131), .C1(n1132), .C2(n1131), .A(n449), 
        .ZN(n1121) );
  CLKBUF_X1 U234 ( .A(n68), .Z(n130) );
  CLKBUF_X1 U235 ( .A(n978), .Z(n119) );
  BUF_X2 U236 ( .A(n978), .Z(n120) );
  NOR2_X1 U237 ( .A1(n941), .A2(n140), .ZN(n978) );
  BUF_X1 U238 ( .A(n130), .Z(n150) );
  CLKBUF_X1 U239 ( .A(n88), .Z(n122) );
  NOR2_X1 U240 ( .A1(n960), .A2(n941), .ZN(n979) );
  AND2_X2 U241 ( .A1(n158), .A2(n876), .ZN(n136) );
  BUF_X2 U242 ( .A(n981), .Z(n125) );
  NOR2_X1 U243 ( .A1(n1043), .A2(n140), .ZN(n981) );
  INV_X1 U244 ( .A(n1004), .ZN(n910) );
  AND2_X1 U245 ( .A1(n159), .A2(n875), .ZN(n126) );
  CLKBUF_X1 U246 ( .A(n68), .Z(n148) );
  CLKBUF_X1 U247 ( .A(n68), .Z(n147) );
  NAND3_X1 U248 ( .A1(n988), .A2(n60), .A3(N333), .ZN(n986) );
  INV_X1 U249 ( .A(n75), .ZN(N294) );
  OAI221_X1 U250 ( .B1(n151), .B2(mid_pipe_sum_q_1__10_), .C1(n182), .C2(
        mid_pipe_sum_q_1__12_), .A(n771), .ZN(n131) );
  OAI21_X1 U251 ( .B1(n133), .B2(n1121), .A(n1), .ZN(n132) );
  INV_X2 U252 ( .A(n1043), .ZN(n134) );
  AOI21_X2 U253 ( .B1(n888), .B2(n1160), .A(n1118), .ZN(n941) );
  AND2_X2 U254 ( .A1(n876), .A2(n875), .ZN(n135) );
  AOI21_X1 U255 ( .B1(n1158), .B2(n888), .A(n1114), .ZN(n876) );
  AND2_X1 U256 ( .A1(n941), .A2(n1044), .ZN(n943) );
  INV_X1 U257 ( .A(n947), .ZN(n137) );
  AOI21_X2 U258 ( .B1(n888), .B2(n1159), .A(n1116), .ZN(n140) );
  CLKBUF_X1 U259 ( .A(n135), .Z(n142) );
  INV_X1 U260 ( .A(n142), .ZN(n143) );
  CLKBUF_X1 U261 ( .A(n135), .Z(n176) );
  CLKBUF_X1 U262 ( .A(n121), .Z(n145) );
  INV_X1 U263 ( .A(n144), .ZN(n146) );
  BUF_X1 U264 ( .A(n181), .Z(n151) );
  BUF_X1 U265 ( .A(n179), .Z(n152) );
  BUF_X1 U266 ( .A(n147), .Z(n153) );
  CLKBUF_X1 U267 ( .A(n68), .Z(n181) );
  CLKBUF_X1 U268 ( .A(rounded_abs[11]), .Z(n154) );
  INV_X1 U269 ( .A(n67), .ZN(n155) );
  INV_X1 U270 ( .A(n58), .ZN(n905) );
  CLKBUF_X1 U271 ( .A(n68), .Z(n180) );
  INV_X1 U272 ( .A(n129), .ZN(n156) );
  INV_X1 U273 ( .A(n66), .ZN(n157) );
  INV_X1 U274 ( .A(n791), .ZN(n158) );
  INV_X1 U275 ( .A(n791), .ZN(n875) );
  AOI21_X1 U276 ( .B1(n1158), .B2(n888), .A(n1114), .ZN(n159) );
  INV_X1 U277 ( .A(n158), .ZN(n160) );
  CLKBUF_X1 U278 ( .A(N281), .Z(n161) );
  NAND2_X2 U279 ( .A1(n1167), .A2(n362), .ZN(n844) );
  NAND2_X2 U280 ( .A1(n220), .A2(n219), .ZN(n847) );
  OAI221_X4 U281 ( .B1(n1101), .B2(n950), .C1(n932), .C2(n919), .A(n1102), 
        .ZN(n1004) );
  AOI21_X2 U282 ( .B1(n888), .B2(n1162), .A(n1111), .ZN(n923) );
  INV_X1 U283 ( .A(flush_i), .ZN(n1181) );
  OR2_X1 U284 ( .A1(out_ready_i), .A2(n199), .ZN(n250) );
  INV_X1 U285 ( .A(n250), .ZN(n887) );
  NAND2_X1 U286 ( .A1(n887), .A2(n1166), .ZN(in_ready_o) );
  MUX2_X1 U287 ( .A(inp_pipe_is_boxed_q_1__0_), .B(is_boxed_i[0]), .S(n192), 
        .Z(n1179) );
  MUX2_X1 U288 ( .A(inp_pipe_is_boxed_q_1__1_), .B(is_boxed_i[1]), .S(n192), 
        .Z(n1178) );
  MUX2_X1 U289 ( .A(inp_pipe_is_boxed_q_1__2_), .B(is_boxed_i[2]), .S(n192), 
        .Z(n1180) );
  MUX2_X1 U290 ( .A(inp_pipe_operands_q_1__0__0_), .B(operands_i[0]), .S(n192), 
        .Z(n650) );
  MUX2_X1 U291 ( .A(inp_pipe_operands_q_1__0__1_), .B(operands_i[1]), .S(n192), 
        .Z(n649) );
  MUX2_X1 U292 ( .A(inp_pipe_operands_q_1__0__2_), .B(operands_i[2]), .S(n192), 
        .Z(n648) );
  MUX2_X1 U293 ( .A(inp_pipe_operands_q_1__0__3_), .B(operands_i[3]), .S(n192), 
        .Z(n647) );
  MUX2_X1 U294 ( .A(inp_pipe_operands_q_1__0__4_), .B(operands_i[4]), .S(n192), 
        .Z(n646) );
  MUX2_X1 U295 ( .A(inp_pipe_operands_q_1__0__5_), .B(operands_i[5]), .S(n192), 
        .Z(n645) );
  MUX2_X1 U296 ( .A(inp_pipe_operands_q_1__0__6_), .B(operands_i[6]), .S(n192), 
        .Z(n644) );
  MUX2_X1 U297 ( .A(inp_pipe_operands_q_1__0__7_), .B(operands_i[7]), .S(n192), 
        .Z(n643) );
  MUX2_X1 U298 ( .A(inp_pipe_operands_q_1__0__8_), .B(operands_i[8]), .S(n192), 
        .Z(n642) );
  MUX2_X1 U299 ( .A(inp_pipe_operands_q_1__0__9_), .B(operands_i[9]), .S(n193), 
        .Z(n641) );
  MUX2_X1 U300 ( .A(inp_pipe_operands_q_1__0__10_), .B(operands_i[10]), .S(
        n193), .Z(n640) );
  MUX2_X1 U301 ( .A(inp_pipe_operands_q_1__0__11_), .B(operands_i[11]), .S(
        n193), .Z(n639) );
  MUX2_X1 U302 ( .A(inp_pipe_operands_q_1__0__12_), .B(operands_i[12]), .S(
        n193), .Z(n638) );
  MUX2_X1 U303 ( .A(inp_pipe_operands_q_1__0__13_), .B(operands_i[13]), .S(
        n193), .Z(n637) );
  MUX2_X1 U304 ( .A(inp_pipe_operands_q_1__0__14_), .B(operands_i[14]), .S(
        n193), .Z(n636) );
  MUX2_X1 U305 ( .A(inp_pipe_operands_q_1__1__0_), .B(operands_i[16]), .S(n193), .Z(n634) );
  MUX2_X1 U306 ( .A(inp_pipe_operands_q_1__1__1_), .B(operands_i[17]), .S(n193), .Z(n633) );
  MUX2_X1 U307 ( .A(inp_pipe_operands_q_1__1__2_), .B(operands_i[18]), .S(n193), .Z(n632) );
  MUX2_X1 U308 ( .A(inp_pipe_operands_q_1__1__3_), .B(operands_i[19]), .S(n193), .Z(n631) );
  MUX2_X1 U309 ( .A(inp_pipe_operands_q_1__1__4_), .B(operands_i[20]), .S(n193), .Z(n630) );
  MUX2_X1 U310 ( .A(inp_pipe_operands_q_1__1__5_), .B(operands_i[21]), .S(n193), .Z(n629) );
  MUX2_X1 U311 ( .A(inp_pipe_operands_q_1__1__6_), .B(operands_i[22]), .S(n194), .Z(n628) );
  MUX2_X1 U312 ( .A(inp_pipe_operands_q_1__1__7_), .B(operands_i[23]), .S(n194), .Z(n627) );
  MUX2_X1 U313 ( .A(inp_pipe_operands_q_1__1__8_), .B(operands_i[24]), .S(n194), .Z(n626) );
  MUX2_X1 U314 ( .A(inp_pipe_operands_q_1__1__9_), .B(operands_i[25]), .S(n194), .Z(n625) );
  MUX2_X1 U315 ( .A(inp_pipe_operands_q_1__1__10_), .B(operands_i[26]), .S(
        n194), .Z(n624) );
  MUX2_X1 U316 ( .A(inp_pipe_operands_q_1__1__11_), .B(operands_i[27]), .S(
        n194), .Z(n623) );
  MUX2_X1 U317 ( .A(inp_pipe_operands_q_1__1__12_), .B(operands_i[28]), .S(
        n194), .Z(n622) );
  MUX2_X1 U318 ( .A(inp_pipe_operands_q_1__1__13_), .B(operands_i[29]), .S(
        n194), .Z(n621) );
  MUX2_X1 U319 ( .A(inp_pipe_operands_q_1__1__14_), .B(operands_i[30]), .S(
        n194), .Z(n620) );
  MUX2_X1 U320 ( .A(inp_pipe_operands_q_1__2__0_), .B(operands_i[32]), .S(n194), .Z(n618) );
  MUX2_X1 U321 ( .A(inp_pipe_operands_q_1__2__1_), .B(operands_i[33]), .S(n194), .Z(n617) );
  MUX2_X1 U322 ( .A(inp_pipe_operands_q_1__2__2_), .B(operands_i[34]), .S(n194), .Z(n616) );
  MUX2_X1 U323 ( .A(inp_pipe_operands_q_1__2__3_), .B(operands_i[35]), .S(n195), .Z(n615) );
  MUX2_X1 U324 ( .A(inp_pipe_operands_q_1__2__4_), .B(operands_i[36]), .S(n195), .Z(n614) );
  MUX2_X1 U325 ( .A(inp_pipe_operands_q_1__2__5_), .B(operands_i[37]), .S(n195), .Z(n613) );
  MUX2_X1 U326 ( .A(inp_pipe_operands_q_1__2__6_), .B(operands_i[38]), .S(n195), .Z(n612) );
  MUX2_X1 U327 ( .A(inp_pipe_operands_q_1__2__7_), .B(operands_i[39]), .S(n195), .Z(n611) );
  MUX2_X1 U328 ( .A(inp_pipe_operands_q_1__2__8_), .B(operands_i[40]), .S(n195), .Z(n610) );
  MUX2_X1 U329 ( .A(inp_pipe_operands_q_1__2__9_), .B(operands_i[41]), .S(n195), .Z(n609) );
  MUX2_X1 U330 ( .A(inp_pipe_operands_q_1__2__10_), .B(operands_i[42]), .S(
        n195), .Z(n608) );
  MUX2_X1 U331 ( .A(inp_pipe_operands_q_1__2__11_), .B(operands_i[43]), .S(
        n195), .Z(n607) );
  MUX2_X1 U332 ( .A(inp_pipe_operands_q_1__2__12_), .B(operands_i[44]), .S(
        n195), .Z(n606) );
  MUX2_X1 U333 ( .A(inp_pipe_operands_q_1__2__13_), .B(operands_i[45]), .S(
        n195), .Z(n605) );
  MUX2_X1 U334 ( .A(inp_pipe_operands_q_1__2__14_), .B(operands_i[46]), .S(
        n195), .Z(n604) );
  MUX2_X1 U335 ( .A(n1169), .B(op_i[2]), .S(n196), .Z(n594) );
  MUX2_X1 U336 ( .A(n1168), .B(op_i[3]), .S(n196), .Z(n597) );
  MUX2_X1 U337 ( .A(n1167), .B(op_i[1]), .S(n196), .Z(n595) );
  MUX2_X1 U338 ( .A(n1153), .B(op_i[0]), .S(n196), .Z(n596) );
  INV_X1 U339 ( .A(n844), .ZN(n840) );
  INV_X1 U340 ( .A(info_q[3]), .ZN(n826) );
  OAI21_X1 U341 ( .B1(n840), .B2(n826), .A(n106), .ZN(n221) );
  INV_X1 U342 ( .A(n221), .ZN(n266) );
  INV_X1 U343 ( .A(n847), .ZN(n371) );
  INV_X1 U344 ( .A(n360), .ZN(n230) );
  NAND2_X1 U345 ( .A1(n230), .A2(n496), .ZN(n242) );
  INV_X1 U346 ( .A(n242), .ZN(n223) );
  OAI21_X1 U347 ( .B1(inp_pipe_operands_q_1__1__10_), .B2(n242), .A(info_q[10]), .ZN(n222) );
  OAI21_X1 U348 ( .B1(n480), .B2(n223), .A(n222), .ZN(n240) );
  INV_X1 U349 ( .A(n240), .ZN(n225) );
  NAND2_X1 U350 ( .A1(n495), .A2(n844), .ZN(n241) );
  OAI21_X1 U351 ( .B1(inp_pipe_operands_q_1__1__11_), .B2(n240), .A(n241), 
        .ZN(n224) );
  OAI21_X1 U352 ( .B1(n479), .B2(n225), .A(n224), .ZN(n237) );
  INV_X1 U353 ( .A(n237), .ZN(n227) );
  NAND2_X1 U354 ( .A1(n494), .A2(n844), .ZN(n238) );
  OAI21_X1 U355 ( .B1(inp_pipe_operands_q_1__1__12_), .B2(n237), .A(n238), 
        .ZN(n226) );
  OAI21_X1 U356 ( .B1(n478), .B2(n227), .A(n226), .ZN(n234) );
  INV_X1 U357 ( .A(n234), .ZN(n229) );
  NAND2_X1 U358 ( .A1(n493), .A2(n844), .ZN(n235) );
  OAI21_X1 U359 ( .B1(inp_pipe_operands_q_1__1__13_), .B2(n234), .A(n235), 
        .ZN(n228) );
  OAI21_X1 U360 ( .B1(n477), .B2(n229), .A(n228), .ZN(n233) );
  INV_X1 U361 ( .A(n233), .ZN(n232) );
  OAI21_X1 U362 ( .B1(inp_pipe_operands_q_1__1__14_), .B2(n233), .A(n110), 
        .ZN(n231) );
  OAI21_X1 U363 ( .B1(n476), .B2(n232), .A(n231), .ZN(n248) );
  INV_X1 U364 ( .A(n248), .ZN(n244) );
  INV_X1 U365 ( .A(n235), .ZN(n236) );
  XOR2_X1 U366 ( .A(n237), .B(n478), .Z(n239) );
  NAND2_X1 U367 ( .A1(info_q[4]), .A2(n844), .ZN(n260) );
  XOR2_X1 U368 ( .A(n242), .B(info_q[10]), .Z(n243) );
  NAND2_X1 U369 ( .A1(n118), .A2(n260), .ZN(n262) );
  OAI22_X1 U370 ( .A1(n114), .A2(n260), .B1(n114), .B2(n262), .ZN(n258) );
  NAND3_X1 U371 ( .A1(n254), .A2(n257), .A3(n258), .ZN(n246) );
  NAND3_X1 U372 ( .A1(n244), .A2(n247), .A3(n246), .ZN(n245) );
  NAND2_X1 U373 ( .A1(n266), .A2(n245), .ZN(n680) );
  INV_X1 U374 ( .A(n246), .ZN(n251) );
  INV_X1 U375 ( .A(n247), .ZN(n252) );
  OAI21_X1 U376 ( .B1(n251), .B2(n252), .A(n248), .ZN(n249) );
  INV_X1 U377 ( .A(n680), .ZN(n802) );
  NAND2_X1 U378 ( .A1(n249), .A2(n802), .ZN(n681) );
  INV_X1 U379 ( .A(n1122), .ZN(n886) );
  MUX2_X1 U380 ( .A(mid_pipe_exp_prod_q_1__5_), .B(n681), .S(n184), .Z(n1172)
         );
  XOR2_X1 U381 ( .A(n252), .B(n251), .Z(n253) );
  NAND2_X1 U382 ( .A1(n266), .A2(n253), .ZN(n682) );
  MUX2_X1 U383 ( .A(mid_pipe_exp_prod_q_1__4_), .B(n682), .S(n184), .Z(n1173)
         );
  NAND2_X1 U384 ( .A1(n257), .A2(n258), .ZN(n255) );
  NAND2_X1 U385 ( .A1(n266), .A2(n256), .ZN(n809) );
  INV_X1 U386 ( .A(n809), .ZN(n683) );
  MUX2_X1 U387 ( .A(mid_pipe_exp_prod_q_1__3_), .B(n683), .S(n184), .Z(n1174)
         );
  NAND2_X1 U388 ( .A1(n266), .A2(n259), .ZN(n811) );
  INV_X1 U389 ( .A(n811), .ZN(n684) );
  MUX2_X1 U390 ( .A(mid_pipe_exp_prod_q_1__2_), .B(n684), .S(n184), .Z(n1175)
         );
  INV_X1 U391 ( .A(n260), .ZN(n263) );
  XOR2_X1 U392 ( .A(n263), .B(n118), .Z(n261) );
  NAND2_X1 U393 ( .A1(n266), .A2(n261), .ZN(n686) );
  MUX2_X1 U394 ( .A(mid_pipe_exp_prod_q_1__0_), .B(n686), .S(n184), .Z(n1177)
         );
  XOR2_X1 U395 ( .A(n263), .B(n114), .Z(n264) );
  NAND2_X1 U396 ( .A1(n266), .A2(n265), .ZN(n685) );
  MUX2_X1 U397 ( .A(mid_pipe_exp_prod_q_1__1_), .B(n685), .S(n184), .Z(n1176)
         );
  NAND2_X1 U398 ( .A1(n1153), .A2(n1167), .ZN(n842) );
  AOI21_X1 U399 ( .B1(info_q[15]), .B2(n842), .A(n847), .ZN(n292) );
  INV_X1 U400 ( .A(n842), .ZN(n828) );
  OAI21_X1 U401 ( .B1(n464), .B2(n828), .A(n371), .ZN(n270) );
  NAND2_X1 U402 ( .A1(n109), .A2(inp_pipe_operands_q_1__2__14_), .ZN(n806) );
  INV_X1 U403 ( .A(n806), .ZN(exponent_addend[5]) );
  NAND2_X1 U404 ( .A1(n371), .A2(n842), .ZN(n279) );
  INV_X1 U405 ( .A(n279), .ZN(n361) );
  NAND2_X1 U406 ( .A1(n361), .A2(inp_pipe_operands_q_1__2__14_), .ZN(n267) );
  XOR2_X1 U407 ( .A(n267), .B(n109), .Z(n808) );
  INV_X1 U408 ( .A(n808), .ZN(exponent_addend[4]) );
  NAND2_X1 U409 ( .A1(n361), .A2(inp_pipe_operands_q_1__2__13_), .ZN(n268) );
  XOR2_X1 U410 ( .A(n268), .B(n108), .Z(n810) );
  INV_X1 U411 ( .A(n810), .ZN(exponent_addend[3]) );
  NAND2_X1 U412 ( .A1(n361), .A2(inp_pipe_operands_q_1__2__12_), .ZN(n269) );
  XOR2_X1 U413 ( .A(n269), .B(n107), .Z(n812) );
  INV_X1 U414 ( .A(n812), .ZN(exponent_addend[2]) );
  INV_X1 U415 ( .A(n814), .ZN(exponent_addend[1]) );
  XOR2_X1 U416 ( .A(n270), .B(n292), .Z(exponent_addend[0]) );
  NAND2_X1 U417 ( .A1(N140), .A2(exponent_difference[1]), .ZN(n285) );
  INV_X1 U418 ( .A(n285), .ZN(n271) );
  NAND2_X1 U419 ( .A1(n103), .A2(exponent_difference[3]), .ZN(n302) );
  INV_X1 U420 ( .A(exponent_difference[4]), .ZN(n301) );
  NAND2_X1 U421 ( .A1(n302), .A2(n301), .ZN(n300) );
  INV_X1 U422 ( .A(n300), .ZN(n274) );
  NAND3_X1 U423 ( .A1(exponent_difference[2]), .A2(exponent_difference[1]), 
        .A3(exponent_difference[3]), .ZN(n272) );
  INV_X1 U424 ( .A(exponent_difference[5]), .ZN(n276) );
  NAND3_X1 U425 ( .A1(n272), .A2(n276), .A3(n301), .ZN(n273) );
  INV_X1 U426 ( .A(exponent_difference[6]), .ZN(n800) );
  NAND2_X1 U427 ( .A1(n273), .A2(n800), .ZN(n281) );
  NAND3_X1 U428 ( .A1(n274), .A2(exponent_difference[5]), .A3(n281), .ZN(n278)
         );
  INV_X1 U429 ( .A(exponent_difference[1]), .ZN(n275) );
  INV_X1 U430 ( .A(exponent_difference[2]), .ZN(n284) );
  NAND2_X1 U431 ( .A1(n275), .A2(n284), .ZN(n796) );
  AOI21_X1 U432 ( .B1(exponent_difference[3]), .B2(n796), .A(
        exponent_difference[4]), .ZN(n277) );
  OAI21_X1 U433 ( .B1(n277), .B2(n276), .A(exponent_difference[6]), .ZN(n286)
         );
  NAND2_X1 U434 ( .A1(n278), .A2(n286), .ZN(n793) );
  INV_X1 U435 ( .A(n793), .ZN(n388) );
  INV_X1 U436 ( .A(n292), .ZN(n290) );
  NOR2_X1 U437 ( .A1(n465), .A2(n279), .ZN(n280) );
  INV_X1 U438 ( .A(n281), .ZN(n288) );
  INV_X1 U439 ( .A(N140), .ZN(n798) );
  OAI21_X1 U440 ( .B1(n288), .B2(n798), .A(n286), .ZN(n728) );
  INV_X1 U441 ( .A(n728), .ZN(n291) );
  MUX2_X1 U442 ( .A(n290), .B(n280), .S(n291), .Z(n283) );
  OAI21_X1 U443 ( .B1(N140), .B2(exponent_difference[1]), .A(n285), .ZN(n282)
         );
  NAND2_X1 U444 ( .A1(n101), .A2(n282), .ZN(n331) );
  NAND2_X1 U445 ( .A1(n283), .A2(n331), .ZN(n321) );
  NAND2_X1 U446 ( .A1(n361), .A2(n728), .ZN(n308) );
  OAI22_X1 U447 ( .A1(n468), .A2(n308), .B1(n469), .B2(n307), .ZN(n295) );
  OAI22_X1 U448 ( .A1(n466), .A2(n308), .B1(n467), .B2(n307), .ZN(n294) );
  MUX2_X1 U449 ( .A(n295), .B(n294), .S(n726), .Z(n320) );
  INV_X1 U450 ( .A(n320), .ZN(n289) );
  AOI21_X1 U451 ( .B1(n285), .B2(n284), .A(n103), .ZN(n287) );
  OAI21_X1 U452 ( .B1(n288), .B2(n287), .A(n286), .ZN(n794) );
  MUX2_X1 U453 ( .A(n321), .B(n289), .S(n375), .Z(n324) );
  INV_X1 U454 ( .A(n324), .ZN(n664) );
  NAND2_X1 U455 ( .A1(n726), .A2(n375), .ZN(n318) );
  OAI22_X1 U456 ( .A1(n467), .A2(n308), .B1(n468), .B2(n307), .ZN(n347) );
  OAI22_X1 U457 ( .A1(n465), .A2(n308), .B1(n466), .B2(n307), .ZN(n345) );
  MUX2_X1 U458 ( .A(n345), .B(n104), .S(n726), .Z(n378) );
  NAND2_X1 U459 ( .A1(n375), .A2(n331), .ZN(n333) );
  OAI22_X1 U460 ( .A1(n469), .A2(n308), .B1(n470), .B2(n307), .ZN(n334) );
  OAI222_X1 U461 ( .A1(n318), .A2(n347), .B1(n375), .B2(n378), .C1(n333), .C2(
        n334), .ZN(n326) );
  INV_X1 U462 ( .A(n326), .ZN(n667) );
  OAI22_X1 U463 ( .A1(n465), .A2(n307), .B1(n292), .B2(n291), .ZN(n293) );
  MUX2_X1 U464 ( .A(n294), .B(n293), .S(n726), .Z(n380) );
  INV_X1 U465 ( .A(n380), .ZN(n297) );
  OAI22_X1 U466 ( .A1(n470), .A2(n308), .B1(n471), .B2(n307), .ZN(n319) );
  MUX2_X1 U467 ( .A(n319), .B(n295), .S(n726), .Z(n296) );
  INV_X1 U468 ( .A(n296), .ZN(n310) );
  MUX2_X1 U469 ( .A(n297), .B(n310), .S(n375), .Z(n298) );
  INV_X1 U470 ( .A(n298), .ZN(n589) );
  NOR3_X1 U471 ( .A1(n664), .A2(n667), .A3(n589), .ZN(n359) );
  OAI21_X1 U472 ( .B1(exponent_difference[3]), .B2(n103), .A(n302), .ZN(n299)
         );
  NAND2_X1 U473 ( .A1(n101), .A2(n299), .ZN(n453) );
  OAI211_X1 U474 ( .C1(n302), .C2(n301), .A(n101), .B(n300), .ZN(n658) );
  INV_X1 U475 ( .A(n658), .ZN(n792) );
  NAND2_X1 U476 ( .A1(n726), .A2(n794), .ZN(n346) );
  INV_X1 U477 ( .A(n346), .ZN(n305) );
  OAI21_X1 U478 ( .B1(n474), .B2(n828), .A(n371), .ZN(n303) );
  NAND2_X1 U479 ( .A1(n303), .A2(n728), .ZN(n314) );
  INV_X1 U480 ( .A(n314), .ZN(n353) );
  NAND2_X1 U481 ( .A1(n305), .A2(n353), .ZN(n652) );
  INV_X1 U482 ( .A(n303), .ZN(n304) );
  OAI22_X1 U483 ( .A1(n473), .A2(n308), .B1(n304), .B2(n728), .ZN(n329) );
  NAND2_X1 U484 ( .A1(n305), .A2(n329), .ZN(n602) );
  OAI22_X1 U485 ( .A1(n471), .A2(n308), .B1(n472), .B2(n307), .ZN(n328) );
  MUX2_X1 U486 ( .A(n329), .B(n328), .S(n726), .Z(n306) );
  NAND2_X1 U487 ( .A1(n306), .A2(n794), .ZN(n584) );
  OAI22_X1 U488 ( .A1(n472), .A2(n308), .B1(n473), .B2(n307), .ZN(n352) );
  INV_X1 U489 ( .A(n352), .ZN(n315) );
  AOI22_X1 U490 ( .A1(n375), .A2(n314), .B1(n315), .B2(n331), .ZN(n309) );
  OAI211_X1 U491 ( .C1(n346), .C2(n319), .A(n333), .B(n309), .ZN(n509) );
  NAND4_X1 U492 ( .A1(n652), .A2(n602), .A3(n584), .A4(n509), .ZN(n323) );
  OAI222_X1 U493 ( .A1(n315), .A2(n318), .B1(n314), .B2(n333), .C1(n375), .C2(
        n310), .ZN(n690) );
  INV_X1 U494 ( .A(n690), .ZN(n311) );
  NAND2_X1 U495 ( .A1(n380), .A2(n375), .ZN(n463) );
  MUX2_X1 U496 ( .A(n311), .B(n463), .S(n795), .Z(n433) );
  INV_X1 U497 ( .A(n334), .ZN(n343) );
  NAND2_X1 U498 ( .A1(n331), .A2(n794), .ZN(n348) );
  INV_X1 U499 ( .A(n347), .ZN(n335) );
  INV_X1 U500 ( .A(n333), .ZN(n350) );
  INV_X1 U501 ( .A(n318), .ZN(n342) );
  AOI22_X1 U502 ( .A1(n350), .A2(n329), .B1(n342), .B2(n328), .ZN(n312) );
  OAI221_X1 U503 ( .B1(n343), .B2(n348), .C1(n335), .C2(n346), .A(n312), .ZN(
        n687) );
  INV_X1 U504 ( .A(n687), .ZN(n313) );
  NAND2_X1 U505 ( .A1(n375), .A2(n378), .ZN(n461) );
  MUX2_X1 U506 ( .A(n313), .B(n461), .S(n795), .Z(n431) );
  OAI22_X1 U507 ( .A1(n315), .A2(n346), .B1(n314), .B2(n348), .ZN(n316) );
  MUX2_X1 U508 ( .A(n316), .B(n589), .S(n795), .Z(n317) );
  INV_X1 U509 ( .A(n317), .ZN(n670) );
  OAI222_X1 U510 ( .A1(n352), .A2(n333), .B1(n375), .B2(n320), .C1(n319), .C2(
        n318), .ZN(n458) );
  INV_X1 U511 ( .A(n321), .ZN(n377) );
  NAND2_X1 U512 ( .A1(n377), .A2(n375), .ZN(n457) );
  MUX2_X1 U513 ( .A(n458), .B(n457), .S(n795), .Z(n429) );
  NAND4_X1 U514 ( .A1(n433), .A2(n431), .A3(n670), .A4(n429), .ZN(n322) );
  AOI22_X1 U515 ( .A1(n99), .A2(n323), .B1(n322), .B2(n793), .ZN(n358) );
  NAND2_X1 U516 ( .A1(n658), .A2(n453), .ZN(n339) );
  NAND2_X1 U517 ( .A1(n795), .A2(n658), .ZN(n338) );
  OAI22_X1 U518 ( .A1(n339), .A2(n509), .B1(n324), .B2(n338), .ZN(n325) );
  INV_X1 U519 ( .A(n325), .ZN(n437) );
  OAI22_X1 U520 ( .A1(n339), .A2(n584), .B1(n338), .B2(n326), .ZN(n327) );
  INV_X1 U521 ( .A(n327), .ZN(n439) );
  INV_X1 U522 ( .A(n328), .ZN(n341) );
  INV_X1 U523 ( .A(n329), .ZN(n330) );
  AOI22_X1 U524 ( .A1(n341), .A2(n331), .B1(n330), .B2(n375), .ZN(n332) );
  OAI211_X1 U525 ( .C1(n346), .C2(n334), .A(n333), .B(n332), .ZN(n507) );
  INV_X1 U526 ( .A(n345), .ZN(n336) );
  AOI22_X1 U527 ( .A1(n336), .A2(n726), .B1(n335), .B2(n350), .ZN(n337) );
  OAI211_X1 U528 ( .C1(n375), .C2(n104), .A(n346), .B(n337), .ZN(n381) );
  OAI22_X1 U529 ( .A1(n339), .A2(n507), .B1(n338), .B2(n381), .ZN(n340) );
  INV_X1 U530 ( .A(n340), .ZN(n435) );
  NAND3_X1 U531 ( .A1(n437), .A2(n439), .A3(n435), .ZN(n356) );
  AOI22_X1 U532 ( .A1(n343), .A2(n342), .B1(n341), .B2(n350), .ZN(n344) );
  OAI221_X1 U533 ( .B1(n348), .B2(n347), .C1(n346), .C2(n345), .A(n344), .ZN(
        n349) );
  INV_X1 U534 ( .A(n349), .ZN(n674) );
  MUX2_X1 U535 ( .A(n674), .B(n102), .S(n795), .Z(n351) );
  NAND2_X1 U536 ( .A1(n351), .A2(n658), .ZN(n389) );
  MUX2_X1 U537 ( .A(n353), .B(n352), .S(n726), .Z(n354) );
  NAND3_X1 U538 ( .A1(n795), .A2(n794), .A3(n354), .ZN(n586) );
  OAI22_X1 U539 ( .A1(n388), .A2(n389), .B1(n658), .B2(n586), .ZN(n355) );
  AOI21_X1 U540 ( .B1(n356), .B2(n793), .A(n355), .ZN(n357) );
  OAI211_X1 U541 ( .C1(n388), .C2(n359), .A(n358), .B(n357), .ZN(n696) );
  MUX2_X1 U542 ( .A(n1149), .B(n696), .S(n184), .Z(n562) );
  OR2_X1 U543 ( .A1(n360), .A2(info_q[5]), .ZN(info_a_is_normal_) );
  NOR2_X1 U544 ( .A1(n498), .A2(n360), .ZN(operand_a[7]) );
  NOR2_X1 U545 ( .A1(n500), .A2(n360), .ZN(operand_a[5]) );
  NOR2_X1 U546 ( .A1(n502), .A2(n360), .ZN(operand_a[3]) );
  NOR2_X1 U547 ( .A1(n504), .A2(n360), .ZN(operand_a[1]) );
  OAI21_X1 U548 ( .B1(n506), .B2(n840), .A(n371), .ZN(
        dp_cluster_1_operand_a_mantissa__0_) );
  OR2_X1 U549 ( .A1(n847), .A2(info_q[11]), .ZN(info_b_is_normal_) );
  NOR2_X1 U550 ( .A1(n481), .A2(n847), .ZN(operand_b[9]) );
  NOR2_X1 U551 ( .A1(n482), .A2(n847), .ZN(operand_b[8]) );
  NOR2_X1 U552 ( .A1(n483), .A2(n847), .ZN(operand_b[7]) );
  NOR2_X1 U553 ( .A1(n484), .A2(n847), .ZN(operand_b[6]) );
  NOR2_X1 U554 ( .A1(n485), .A2(n847), .ZN(operand_b[5]) );
  NOR2_X1 U555 ( .A1(n486), .A2(n847), .ZN(operand_b[4]) );
  NOR2_X1 U556 ( .A1(n487), .A2(n847), .ZN(operand_b[3]) );
  NOR2_X1 U557 ( .A1(n488), .A2(n847), .ZN(operand_b[2]) );
  NOR2_X1 U558 ( .A1(n489), .A2(n847), .ZN(operand_b[1]) );
  NAND2_X1 U559 ( .A1(n490), .A2(n371), .ZN(operand_b[0]) );
  NAND2_X1 U560 ( .A1(n1142), .A2(n361), .ZN(n831) );
  AOI21_X1 U561 ( .B1(n363), .B2(n362), .A(n828), .ZN(n364) );
  NAND2_X1 U562 ( .A1(n1153), .A2(n363), .ZN(n365) );
  MUX2_X1 U563 ( .A(n364), .B(n365), .S(n491), .Z(n369) );
  INV_X1 U564 ( .A(n365), .ZN(n366) );
  XOR2_X1 U565 ( .A(n491), .B(n366), .Z(n367) );
  NOR2_X1 U566 ( .A1(n840), .A2(n367), .ZN(n368) );
  MUX2_X1 U567 ( .A(n369), .B(n368), .S(n475), .Z(n370) );
  NAND2_X1 U568 ( .A1(n371), .A2(n370), .ZN(n834) );
  INV_X1 U569 ( .A(n834), .ZN(n855) );
  XOR2_X1 U570 ( .A(n831), .B(n855), .Z(n885) );
  INV_X1 U571 ( .A(n885), .ZN(n698) );
  NAND2_X1 U572 ( .A1(n388), .A2(n658), .ZN(n454) );
  NAND2_X1 U573 ( .A1(n885), .A2(n454), .ZN(n452) );
  OAI21_X1 U574 ( .B1(n163), .B2(n453), .A(n452), .ZN(n372) );
  INV_X1 U575 ( .A(n372), .ZN(n387) );
  INV_X1 U576 ( .A(n454), .ZN(n588) );
  NAND2_X1 U577 ( .A1(n588), .A2(n163), .ZN(n450) );
  INV_X1 U578 ( .A(n450), .ZN(n373) );
  NAND2_X1 U579 ( .A1(n373), .A2(n453), .ZN(n385) );
  MUX2_X1 U580 ( .A(n164), .B(n385), .S(n102), .Z(n374) );
  NAND2_X1 U581 ( .A1(n387), .A2(n374), .ZN(addend_shifted[36]) );
  OAI21_X1 U582 ( .B1(n375), .B2(n164), .A(n387), .ZN(n376) );
  INV_X1 U583 ( .A(n376), .ZN(n379) );
  OAI221_X1 U584 ( .B1(n457), .B2(n385), .C1(n377), .C2(n163), .A(n379), .ZN(
        addend_shifted[35]) );
  OAI221_X1 U585 ( .B1(n461), .B2(n385), .C1(n164), .C2(n378), .A(n379), .ZN(
        addend_shifted[34]) );
  OAI221_X1 U586 ( .B1(n463), .B2(n385), .C1(n380), .C2(n163), .A(n379), .ZN(
        addend_shifted[33]) );
  INV_X1 U587 ( .A(n381), .ZN(n693) );
  MUX2_X1 U588 ( .A(n164), .B(n385), .S(n693), .Z(n382) );
  NAND2_X1 U589 ( .A1(n387), .A2(n382), .ZN(addend_shifted[32]) );
  MUX2_X1 U590 ( .A(n164), .B(n385), .S(n664), .Z(n383) );
  NAND2_X1 U591 ( .A1(n387), .A2(n383), .ZN(addend_shifted[31]) );
  MUX2_X1 U592 ( .A(n164), .B(n385), .S(n667), .Z(n384) );
  NAND2_X1 U593 ( .A1(n387), .A2(n384), .ZN(addend_shifted[30]) );
  MUX2_X1 U594 ( .A(n164), .B(n385), .S(n589), .Z(n386) );
  NAND2_X1 U595 ( .A1(n387), .A2(n386), .ZN(addend_shifted[29]) );
  NAND2_X1 U596 ( .A1(n885), .A2(n793), .ZN(n442) );
  NAND2_X1 U597 ( .A1(n163), .A2(n388), .ZN(n440) );
  MUX2_X1 U598 ( .A(n440), .B(n164), .S(n389), .Z(n390) );
  INV_X1 U599 ( .A(n429), .ZN(n654) );
  MUX2_X1 U600 ( .A(n164), .B(n450), .S(n654), .Z(n430) );
  NAND2_X1 U601 ( .A1(n452), .A2(n430), .ZN(addend_shifted[27]) );
  INV_X1 U602 ( .A(n431), .ZN(n659) );
  MUX2_X1 U603 ( .A(n164), .B(n450), .S(n659), .Z(n432) );
  NAND2_X1 U604 ( .A1(n452), .A2(n432), .ZN(addend_shifted[26]) );
  INV_X1 U605 ( .A(n433), .ZN(n661) );
  MUX2_X1 U606 ( .A(n164), .B(n450), .S(n661), .Z(n434) );
  NAND2_X1 U607 ( .A1(n452), .A2(n434), .ZN(addend_shifted[25]) );
  MUX2_X1 U608 ( .A(n440), .B(n164), .S(n435), .Z(n436) );
  NAND2_X1 U609 ( .A1(n442), .A2(n436), .ZN(addend_shifted[24]) );
  MUX2_X1 U610 ( .A(n440), .B(n164), .S(n437), .Z(n438) );
  NAND2_X1 U611 ( .A1(n442), .A2(n438), .ZN(addend_shifted[23]) );
  MUX2_X1 U612 ( .A(n440), .B(n164), .S(n439), .Z(n441) );
  NAND2_X1 U613 ( .A1(n442), .A2(n441), .ZN(addend_shifted[22]) );
  MUX2_X1 U614 ( .A(n450), .B(n164), .S(n670), .Z(n451) );
  NAND2_X1 U615 ( .A1(n452), .A2(n451), .ZN(addend_shifted[21]) );
  NOR3_X1 U616 ( .A1(n795), .A2(n602), .A3(n454), .ZN(n455) );
  AOI221_X1 U617 ( .B1(n102), .B2(n100), .C1(n10), .C2(n674), .A(n455), .ZN(
        n456) );
  XOR2_X1 U618 ( .A(n163), .B(n456), .Z(addend_shifted[20]) );
  INV_X1 U619 ( .A(n457), .ZN(n678) );
  MUX2_X1 U620 ( .A(n652), .B(n458), .S(n795), .Z(n459) );
  INV_X1 U621 ( .A(n459), .ZN(n677) );
  AOI22_X1 U622 ( .A1(n100), .A2(n678), .B1(n588), .B2(n677), .ZN(n460) );
  XOR2_X1 U623 ( .A(n163), .B(n460), .Z(addend_shifted[19]) );
  INV_X1 U624 ( .A(n461), .ZN(n688) );
  AOI22_X1 U625 ( .A1(n100), .A2(n688), .B1(n10), .B2(n687), .ZN(n462) );
  XOR2_X1 U627 ( .A(n163), .B(n462), .Z(addend_shifted[18]) );
  INV_X1 U628 ( .A(n463), .ZN(n691) );
  AOI22_X1 U629 ( .A1(n100), .A2(n691), .B1(n10), .B2(n690), .ZN(n492) );
  XOR2_X1 U630 ( .A(n163), .B(n492), .Z(addend_shifted[17]) );
  INV_X1 U631 ( .A(n507), .ZN(n694) );
  AOI22_X1 U632 ( .A1(n10), .A2(n694), .B1(n100), .B2(n693), .ZN(n508) );
  XOR2_X1 U633 ( .A(n163), .B(n508), .Z(addend_shifted[16]) );
  INV_X1 U634 ( .A(n509), .ZN(n665) );
  AOI22_X1 U635 ( .A1(n10), .A2(n665), .B1(n100), .B2(n664), .ZN(n583) );
  XOR2_X1 U636 ( .A(n163), .B(n583), .Z(addend_shifted[15]) );
  INV_X1 U637 ( .A(n584), .ZN(n668) );
  AOI22_X1 U638 ( .A1(n10), .A2(n668), .B1(n100), .B2(n667), .ZN(n585) );
  XOR2_X1 U639 ( .A(n162), .B(n585), .Z(addend_shifted[14]) );
  INV_X1 U640 ( .A(n586), .ZN(n587) );
  AOI22_X1 U641 ( .A1(n100), .A2(n589), .B1(n588), .B2(n587), .ZN(n601) );
  XOR2_X1 U642 ( .A(n162), .B(n601), .Z(addend_shifted[13]) );
  INV_X1 U643 ( .A(n602), .ZN(n675) );
  AOI222_X1 U644 ( .A1(n102), .A2(n99), .B1(n10), .B2(n675), .C1(n674), .C2(
        n100), .ZN(n603) );
  XOR2_X1 U645 ( .A(n162), .B(n603), .Z(addend_shifted[12]) );
  INV_X1 U646 ( .A(n652), .ZN(n655) );
  AOI22_X1 U647 ( .A1(n655), .A2(n10), .B1(n792), .B2(n654), .ZN(n657) );
  XOR2_X1 U648 ( .A(n162), .B(n657), .Z(addend_shifted[11]) );
  NAND2_X1 U649 ( .A1(n885), .A2(n658), .ZN(n673) );
  NAND2_X1 U650 ( .A1(n792), .A2(n163), .ZN(n671) );
  MUX2_X1 U651 ( .A(n164), .B(n671), .S(n659), .Z(n660) );
  NAND2_X1 U652 ( .A1(n673), .A2(n660), .ZN(addend_shifted[10]) );
  MUX2_X1 U653 ( .A(n164), .B(n671), .S(n661), .Z(n662) );
  NAND2_X1 U654 ( .A1(n673), .A2(n662), .ZN(addend_shifted[9]) );
  AOI22_X1 U655 ( .A1(n100), .A2(n694), .B1(n693), .B2(n99), .ZN(n663) );
  XOR2_X1 U656 ( .A(n162), .B(n663), .Z(addend_shifted[8]) );
  AOI22_X1 U657 ( .A1(n100), .A2(n665), .B1(n99), .B2(n664), .ZN(n666) );
  XOR2_X1 U658 ( .A(n162), .B(n666), .Z(addend_shifted[7]) );
  AOI22_X1 U659 ( .A1(n100), .A2(n668), .B1(n667), .B2(n99), .ZN(n669) );
  XOR2_X1 U660 ( .A(n162), .B(n669), .Z(addend_shifted[6]) );
  MUX2_X1 U661 ( .A(n671), .B(n164), .S(n670), .Z(n672) );
  NAND2_X1 U662 ( .A1(n673), .A2(n672), .ZN(addend_shifted[5]) );
  AOI222_X1 U663 ( .A1(n102), .A2(n793), .B1(n675), .B2(n100), .C1(n674), .C2(
        n99), .ZN(n676) );
  XOR2_X1 U664 ( .A(n162), .B(n676), .Z(addend_shifted[4]) );
  AOI22_X1 U665 ( .A1(n678), .A2(n793), .B1(n792), .B2(n677), .ZN(n679) );
  XOR2_X1 U666 ( .A(n162), .B(n679), .Z(addend_shifted[3]) );
  AOI22_X1 U667 ( .A1(n688), .A2(n793), .B1(n99), .B2(n687), .ZN(n689) );
  XOR2_X1 U668 ( .A(n162), .B(n689), .Z(addend_shifted[2]) );
  AOI22_X1 U669 ( .A1(n691), .A2(n793), .B1(n99), .B2(n690), .ZN(n692) );
  XOR2_X1 U670 ( .A(n162), .B(n692), .Z(addend_shifted[1]) );
  AOI22_X1 U671 ( .A1(n694), .A2(n99), .B1(n693), .B2(n793), .ZN(n695) );
  XOR2_X1 U672 ( .A(n162), .B(n695), .Z(addend_shifted[0]) );
  NOR2_X1 U673 ( .A1(n696), .A2(n163), .ZN(inject_carry_in) );
  INV_X1 U674 ( .A(sum_raw[37]), .ZN(n697) );
  NAND3_X1 U675 ( .A1(n885), .A2(n186), .A3(n697), .ZN(n857) );
  INV_X1 U676 ( .A(n857), .ZN(n786) );
  OAI21_X1 U677 ( .B1(sum_raw[37]), .B2(n164), .A(n185), .ZN(n856) );
  INV_X1 U678 ( .A(n856), .ZN(n785) );
  AOI22_X1 U679 ( .A1(N234), .A2(n169), .B1(sum_raw[8]), .B2(n165), .ZN(n699)
         );
  OAI21_X1 U680 ( .B1(n400), .B2(n186), .A(n699), .ZN(n533) );
  AOI22_X1 U681 ( .A1(N236), .A2(n169), .B1(sum_raw[10]), .B2(n165), .ZN(n700)
         );
  OAI21_X1 U682 ( .B1(n402), .B2(n188), .A(n700), .ZN(n535) );
  AOI22_X1 U683 ( .A1(N235), .A2(n169), .B1(sum_raw[9]), .B2(n165), .ZN(n701)
         );
  OAI21_X1 U684 ( .B1(n401), .B2(n189), .A(n701), .ZN(n534) );
  AOI22_X1 U685 ( .A1(N237), .A2(n169), .B1(sum_raw[11]), .B2(n165), .ZN(n702)
         );
  OAI21_X1 U686 ( .B1(n403), .B2(n188), .A(n702), .ZN(n536) );
  AOI22_X1 U687 ( .A1(mid_pipe_sum_q_1__9_), .A2(n177), .B1(
        mid_pipe_sum_q_1__11_), .B2(n174), .ZN(n703) );
  OAI221_X1 U688 ( .B1(n400), .B2(n151), .C1(n402), .C2(n182), .A(n703), .ZN(
        n933) );
  AOI22_X1 U689 ( .A1(N233), .A2(n169), .B1(sum_raw[7]), .B2(n165), .ZN(n704)
         );
  OAI21_X1 U690 ( .B1(n399), .B2(n188), .A(n704), .ZN(n532) );
  AOI22_X1 U691 ( .A1(n400), .A2(n177), .B1(n402), .B2(n174), .ZN(n705) );
  OAI221_X1 U692 ( .B1(n153), .B2(n39), .C1(n182), .C2(mid_pipe_sum_q_1__9_), 
        .A(n705), .ZN(n706) );
  INV_X1 U693 ( .A(n706), .ZN(n883) );
  AOI22_X1 U694 ( .A1(N241), .A2(n169), .B1(sum_raw[15]), .B2(n165), .ZN(n707)
         );
  OAI21_X1 U695 ( .B1(n407), .B2(n188), .A(n707), .ZN(n540) );
  AOI22_X1 U696 ( .A1(N243), .A2(n169), .B1(sum_raw[17]), .B2(n165), .ZN(n708)
         );
  OAI21_X1 U697 ( .B1(n409), .B2(n188), .A(n708), .ZN(n542) );
  AOI22_X1 U698 ( .A1(N242), .A2(n169), .B1(sum_raw[16]), .B2(n165), .ZN(n709)
         );
  OAI21_X1 U699 ( .B1(n408), .B2(n188), .A(n709), .ZN(n541) );
  AOI22_X1 U700 ( .A1(N244), .A2(n169), .B1(sum_raw[18]), .B2(n165), .ZN(n710)
         );
  OAI21_X1 U701 ( .B1(n410), .B2(n188), .A(n710), .ZN(n543) );
  AOI22_X1 U702 ( .A1(n408), .A2(n177), .B1(n410), .B2(n174), .ZN(n711) );
  OAI221_X1 U703 ( .B1(n149), .B2(mid_pipe_sum_q_1__15_), .C1(n182), .C2(
        mid_pipe_sum_q_1__17_), .A(n711), .ZN(n1013) );
  INV_X1 U704 ( .A(n1013), .ZN(n882) );
  AOI22_X1 U705 ( .A1(N245), .A2(n169), .B1(sum_raw[19]), .B2(n165), .ZN(n712)
         );
  OAI21_X1 U706 ( .B1(n411), .B2(n187), .A(n712), .ZN(n544) );
  AOI22_X1 U707 ( .A1(n409), .A2(n177), .B1(n411), .B2(n175), .ZN(n713) );
  OAI221_X1 U708 ( .B1(n152), .B2(mid_pipe_sum_q_1__16_), .C1(n182), .C2(
        mid_pipe_sum_q_1__18_), .A(n713), .ZN(n1051) );
  INV_X1 U709 ( .A(n1051), .ZN(n881) );
  AOI22_X1 U710 ( .A1(N239), .A2(n169), .B1(sum_raw[13]), .B2(n165), .ZN(n714)
         );
  OAI21_X1 U711 ( .B1(n405), .B2(n188), .A(n714), .ZN(n538) );
  AOI22_X1 U712 ( .A1(N238), .A2(n169), .B1(sum_raw[12]), .B2(n165), .ZN(n715)
         );
  OAI21_X1 U713 ( .B1(n404), .B2(n188), .A(n715), .ZN(n537) );
  AOI22_X1 U714 ( .A1(N240), .A2(n170), .B1(sum_raw[14]), .B2(n166), .ZN(n716)
         );
  OAI21_X1 U715 ( .B1(n406), .B2(n188), .A(n716), .ZN(n539) );
  AOI22_X1 U716 ( .A1(n404), .A2(n177), .B1(n406), .B2(n175), .ZN(n717) );
  OAI221_X1 U717 ( .B1(n150), .B2(mid_pipe_sum_q_1__11_), .C1(n182), .C2(
        mid_pipe_sum_q_1__13_), .A(n717), .ZN(n1014) );
  INV_X1 U718 ( .A(n1014), .ZN(n880) );
  AOI22_X1 U719 ( .A1(n405), .A2(n177), .B1(n407), .B2(n175), .ZN(n718) );
  OAI221_X1 U720 ( .B1(n153), .B2(mid_pipe_sum_q_1__12_), .C1(n182), .C2(
        mid_pipe_sum_q_1__14_), .A(n718), .ZN(n998) );
  INV_X1 U721 ( .A(n998), .ZN(n879) );
  AOI22_X1 U722 ( .A1(N246), .A2(n170), .B1(sum_raw[20]), .B2(n166), .ZN(n719)
         );
  OAI21_X1 U723 ( .B1(n412), .B2(n188), .A(n719), .ZN(n545) );
  AOI22_X1 U724 ( .A1(N248), .A2(n170), .B1(sum_raw[22]), .B2(n166), .ZN(n720)
         );
  OAI21_X1 U725 ( .B1(n414), .B2(n188), .A(n720), .ZN(n547) );
  AOI22_X1 U726 ( .A1(N247), .A2(n170), .B1(sum_raw[21]), .B2(n166), .ZN(n721)
         );
  OAI21_X1 U727 ( .B1(n413), .B2(n188), .A(n721), .ZN(n546) );
  AOI22_X1 U728 ( .A1(N249), .A2(n170), .B1(sum_raw[23]), .B2(n166), .ZN(n722)
         );
  OAI21_X1 U729 ( .B1(n415), .B2(n187), .A(n722), .ZN(n548) );
  AOI22_X1 U730 ( .A1(n413), .A2(n177), .B1(n415), .B2(n175), .ZN(n723) );
  OAI221_X1 U731 ( .B1(n153), .B2(mid_pipe_sum_q_1__20_), .C1(
        mid_pipe_sum_q_1__22_), .C2(n182), .A(n723), .ZN(n1052) );
  INV_X1 U732 ( .A(n1052), .ZN(n878) );
  AOI22_X1 U733 ( .A1(n412), .A2(n177), .B1(n414), .B2(n174), .ZN(n724) );
  OAI221_X1 U734 ( .B1(n151), .B2(mid_pipe_sum_q_1__19_), .C1(n182), .C2(n90), 
        .A(n724), .ZN(n939) );
  AOI22_X1 U735 ( .A1(N226), .A2(n170), .B1(sum_raw[0]), .B2(n166), .ZN(n725)
         );
  OAI21_X1 U736 ( .B1(n392), .B2(n187), .A(n725), .ZN(n525) );
  MUX2_X1 U737 ( .A(n1158), .B(n726), .S(n185), .Z(n564) );
  INV_X1 U738 ( .A(n1121), .ZN(n888) );
  AOI22_X1 U739 ( .A1(N227), .A2(n170), .B1(sum_raw[1]), .B2(n166), .ZN(n727)
         );
  OAI21_X1 U740 ( .B1(n393), .B2(n187), .A(n727), .ZN(n526) );
  MUX2_X1 U741 ( .A(n1157), .B(n728), .S(n185), .Z(n563) );
  AOI22_X1 U742 ( .A1(N228), .A2(n170), .B1(sum_raw[2]), .B2(n166), .ZN(n729)
         );
  OAI21_X1 U743 ( .B1(n394), .B2(n187), .A(n729), .ZN(n527) );
  AOI22_X1 U744 ( .A1(n392), .A2(n132), .B1(n393), .B2(n160), .ZN(n730) );
  OAI211_X1 U745 ( .C1(n143), .C2(mid_pipe_sum_q_1__2_), .A(n150), .B(n730), 
        .ZN(n940) );
  AOI22_X1 U746 ( .A1(N229), .A2(n170), .B1(sum_raw[3]), .B2(n166), .ZN(n731)
         );
  OAI21_X1 U747 ( .B1(n395), .B2(n187), .A(n731), .ZN(n528) );
  AOI22_X1 U748 ( .A1(n177), .A2(mid_pipe_sum_q_1__1_), .B1(n175), .B2(
        mid_pipe_sum_q_1__3_), .ZN(n732) );
  OAI221_X1 U749 ( .B1(n392), .B2(n149), .C1(n394), .C2(n182), .A(n732), .ZN(
        n963) );
  INV_X1 U750 ( .A(n963), .ZN(n873) );
  AOI22_X1 U751 ( .A1(N231), .A2(n170), .B1(sum_raw[5]), .B2(n166), .ZN(n733)
         );
  OAI21_X1 U752 ( .B1(n397), .B2(n187), .A(n733), .ZN(n530) );
  AOI22_X1 U753 ( .A1(N230), .A2(n170), .B1(sum_raw[4]), .B2(n166), .ZN(n734)
         );
  OAI21_X1 U754 ( .B1(n396), .B2(n187), .A(n734), .ZN(n529) );
  AOI22_X1 U755 ( .A1(N232), .A2(n170), .B1(sum_raw[6]), .B2(n166), .ZN(n735)
         );
  OAI21_X1 U756 ( .B1(n398), .B2(n187), .A(n735), .ZN(n531) );
  AOI22_X1 U757 ( .A1(n396), .A2(n177), .B1(n398), .B2(n174), .ZN(n736) );
  OAI221_X1 U758 ( .B1(n149), .B2(mid_pipe_sum_q_1__3_), .C1(n182), .C2(
        mid_pipe_sum_q_1__5_), .A(n736), .ZN(n1012) );
  INV_X1 U759 ( .A(n1012), .ZN(n872) );
  INV_X1 U760 ( .A(n940), .ZN(n874) );
  AOI22_X1 U761 ( .A1(n177), .A2(mid_pipe_sum_q_1__5_), .B1(n174), .B2(n39), 
        .ZN(n737) );
  OAI221_X1 U762 ( .B1(n396), .B2(n152), .C1(n398), .C2(n182), .A(n737), .ZN(
        n962) );
  AOI22_X1 U763 ( .A1(N250), .A2(n171), .B1(sum_raw[24]), .B2(n167), .ZN(n738)
         );
  OAI21_X1 U764 ( .B1(n416), .B2(n187), .A(n738), .ZN(n549) );
  AOI22_X1 U765 ( .A1(n414), .A2(n121), .B1(n416), .B2(n136), .ZN(n739) );
  OAI221_X1 U766 ( .B1(n68), .B2(mid_pipe_sum_q_1__21_), .C1(n122), .C2(
        mid_pipe_sum_q_1__23_), .A(n739), .ZN(n975) );
  AOI22_X1 U767 ( .A1(n398), .A2(n139), .B1(n135), .B2(n400), .ZN(n740) );
  INV_X1 U768 ( .A(n1071), .ZN(n871) );
  AOI22_X1 U769 ( .A1(n394), .A2(n139), .B1(n136), .B2(n396), .ZN(n741) );
  OAI221_X1 U770 ( .B1(n180), .B2(mid_pipe_sum_q_1__1_), .C1(n141), .C2(
        mid_pipe_sum_q_1__3_), .A(n741), .ZN(n1041) );
  INV_X1 U771 ( .A(n1041), .ZN(n870) );
  AOI22_X1 U772 ( .A1(n402), .A2(n139), .B1(n404), .B2(n135), .ZN(n742) );
  OAI221_X1 U773 ( .B1(n68), .B2(mid_pipe_sum_q_1__9_), .C1(n183), .C2(
        mid_pipe_sum_q_1__11_), .A(n742), .ZN(n743) );
  INV_X1 U774 ( .A(n743), .ZN(n869) );
  AOI22_X1 U775 ( .A1(n406), .A2(n121), .B1(n408), .B2(n135), .ZN(n744) );
  OAI221_X1 U776 ( .B1(n68), .B2(mid_pipe_sum_q_1__13_), .C1(n88), .C2(
        mid_pipe_sum_q_1__15_), .A(n744), .ZN(n1042) );
  INV_X1 U777 ( .A(n1042), .ZN(n868) );
  AOI22_X1 U778 ( .A1(n138), .A2(n410), .B1(n412), .B2(n126), .ZN(n745) );
  INV_X1 U779 ( .A(n982), .ZN(n980) );
  AOI22_X1 U780 ( .A1(N258), .A2(n171), .B1(sum_raw[32]), .B2(n167), .ZN(n746)
         );
  OAI21_X1 U781 ( .B1(n424), .B2(n187), .A(n746), .ZN(n557) );
  AOI22_X1 U782 ( .A1(N260), .A2(n171), .B1(sum_raw[34]), .B2(n167), .ZN(n747)
         );
  OAI21_X1 U783 ( .B1(n426), .B2(n187), .A(n747), .ZN(n559) );
  AOI22_X1 U784 ( .A1(N259), .A2(n171), .B1(sum_raw[33]), .B2(n167), .ZN(n748)
         );
  OAI21_X1 U785 ( .B1(n425), .B2(n187), .A(n748), .ZN(n558) );
  AOI22_X1 U786 ( .A1(N261), .A2(n171), .B1(sum_raw[35]), .B2(n167), .ZN(n749)
         );
  OAI21_X1 U787 ( .B1(n427), .B2(n186), .A(n749), .ZN(n560) );
  AOI22_X1 U788 ( .A1(n177), .A2(n765), .B1(n174), .B2(n750), .ZN(n751) );
  OAI221_X1 U789 ( .B1(n424), .B2(n152), .C1(n426), .C2(n182), .A(n751), .ZN(
        n993) );
  INV_X1 U790 ( .A(n933), .ZN(n884) );
  AOI22_X1 U791 ( .A1(N254), .A2(n171), .B1(sum_raw[28]), .B2(n167), .ZN(n752)
         );
  OAI21_X1 U792 ( .B1(n420), .B2(n186), .A(n752), .ZN(n553) );
  AOI22_X1 U793 ( .A1(N256), .A2(n171), .B1(sum_raw[30]), .B2(n167), .ZN(n753)
         );
  OAI21_X1 U794 ( .B1(n422), .B2(n186), .A(n753), .ZN(n555) );
  AOI22_X1 U795 ( .A1(N255), .A2(n171), .B1(sum_raw[29]), .B2(n167), .ZN(n754)
         );
  OAI21_X1 U796 ( .B1(n421), .B2(n186), .A(n754), .ZN(n554) );
  AOI22_X1 U797 ( .A1(N257), .A2(n171), .B1(sum_raw[31]), .B2(n167), .ZN(n755)
         );
  OAI21_X1 U798 ( .B1(n423), .B2(n186), .A(n755), .ZN(n556) );
  AOI22_X1 U799 ( .A1(n177), .A2(n774), .B1(n174), .B2(n766), .ZN(n756) );
  OAI221_X1 U800 ( .B1(n420), .B2(n151), .C1(n422), .C2(n182), .A(n756), .ZN(
        n999) );
  AOI22_X1 U801 ( .A1(N252), .A2(n171), .B1(sum_raw[26]), .B2(n167), .ZN(n757)
         );
  OAI21_X1 U802 ( .B1(n418), .B2(n186), .A(n757), .ZN(n551) );
  AOI22_X1 U803 ( .A1(N251), .A2(n171), .B1(sum_raw[25]), .B2(n167), .ZN(n758)
         );
  OAI21_X1 U804 ( .B1(n417), .B2(n186), .A(n758), .ZN(n550) );
  AOI22_X1 U805 ( .A1(N253), .A2(n171), .B1(sum_raw[27]), .B2(n167), .ZN(n759)
         );
  OAI21_X1 U806 ( .B1(n419), .B2(n186), .A(n759), .ZN(n552) );
  AOI22_X1 U807 ( .A1(n177), .A2(n760), .B1(n175), .B2(n775), .ZN(n761) );
  OAI221_X1 U808 ( .B1(n416), .B2(n150), .C1(n418), .C2(n182), .A(n761), .ZN(
        n1000) );
  AOI22_X1 U809 ( .A1(n177), .A2(n777), .B1(n174), .B2(n789), .ZN(n762) );
  OAI221_X1 U810 ( .B1(n423), .B2(n153), .C1(n425), .C2(n182), .A(n762), .ZN(
        n1007) );
  AOI22_X1 U811 ( .A1(n177), .A2(n781), .B1(n175), .B2(n778), .ZN(n763) );
  OAI221_X1 U812 ( .B1(n419), .B2(n149), .C1(n421), .C2(n182), .A(n763), .ZN(
        n1015) );
  AOI22_X1 U813 ( .A1(n177), .A2(n89), .B1(n174), .B2(n782), .ZN(n764) );
  OAI221_X1 U814 ( .B1(n415), .B2(n153), .C1(n417), .C2(n182), .A(n764), .ZN(
        n1016) );
  INV_X1 U815 ( .A(n939), .ZN(n877) );
  AOI22_X1 U816 ( .A1(n178), .A2(n766), .B1(n136), .B2(n765), .ZN(n767) );
  OAI221_X1 U817 ( .B1(n422), .B2(n148), .C1(n424), .C2(n123), .A(n767), .ZN(
        n1020) );
  AOI22_X1 U818 ( .A1(n138), .A2(mid_pipe_sum_q_1__3_), .B1(n136), .B2(
        mid_pipe_sum_q_1__5_), .ZN(n768) );
  OAI221_X1 U819 ( .B1(n394), .B2(n68), .C1(n396), .C2(n123), .A(n768), .ZN(
        n1025) );
  AOI22_X1 U820 ( .A1(n407), .A2(n121), .B1(n409), .B2(n135), .ZN(n769) );
  OAI221_X1 U821 ( .B1(n179), .B2(mid_pipe_sum_q_1__14_), .C1(n141), .C2(
        mid_pipe_sum_q_1__16_), .A(n769), .ZN(n1065) );
  INV_X1 U822 ( .A(n6), .ZN(n866) );
  AOI22_X1 U823 ( .A1(n139), .A2(n39), .B1(mid_pipe_sum_q_1__9_), .B2(n136), 
        .ZN(n770) );
  OAI221_X1 U824 ( .B1(n398), .B2(n180), .C1(n400), .C2(n141), .A(n770), .ZN(
        n1063) );
  INV_X1 U825 ( .A(n1063), .ZN(n865) );
  AOI22_X1 U826 ( .A1(n403), .A2(n139), .B1(n405), .B2(n135), .ZN(n771) );
  OAI221_X1 U827 ( .B1(n130), .B2(mid_pipe_sum_q_1__10_), .C1(n123), .C2(
        mid_pipe_sum_q_1__12_), .A(n771), .ZN(n1027) );
  AOI22_X1 U828 ( .A1(n411), .A2(n144), .B1(n413), .B2(n135), .ZN(n772) );
  OAI221_X1 U829 ( .B1(n147), .B2(mid_pipe_sum_q_1__18_), .C1(n123), .C2(
        mid_pipe_sum_q_1__20_), .A(n772), .ZN(n1028) );
  AOI22_X1 U830 ( .A1(n415), .A2(n145), .B1(n417), .B2(n136), .ZN(n773) );
  AOI22_X1 U831 ( .A1(n121), .A2(n775), .B1(n136), .B2(n774), .ZN(n776) );
  OAI221_X1 U832 ( .B1(n418), .B2(n179), .C1(n420), .C2(n122), .A(n776), .ZN(
        n1066) );
  INV_X1 U833 ( .A(n1066), .ZN(n862) );
  AOI22_X1 U834 ( .A1(n178), .A2(n778), .B1(n136), .B2(n777), .ZN(n779) );
  OAI221_X1 U835 ( .B1(n421), .B2(n181), .C1(n423), .C2(n141), .A(n779), .ZN(
        n780) );
  INV_X1 U836 ( .A(n780), .ZN(n861) );
  AOI22_X1 U837 ( .A1(n139), .A2(n782), .B1(n136), .B2(n781), .ZN(n783) );
  OAI221_X1 U838 ( .B1(n417), .B2(n181), .C1(n419), .C2(n123), .A(n783), .ZN(
        n784) );
  INV_X1 U839 ( .A(n784), .ZN(n860) );
  INV_X1 U840 ( .A(n1000), .ZN(n867) );
  INV_X1 U841 ( .A(n1015), .ZN(n1056) );
  INV_X1 U842 ( .A(n1028), .ZN(n864) );
  INV_X1 U843 ( .A(n1029), .ZN(n863) );
  AOI22_X1 U844 ( .A1(N262), .A2(n170), .B1(sum_raw[36]), .B2(n165), .ZN(n787)
         );
  OAI21_X1 U845 ( .B1(n428), .B2(n186), .A(n787), .ZN(n561) );
  AOI22_X1 U846 ( .A1(n145), .A2(n789), .B1(n176), .B2(n788), .ZN(n790) );
  OAI221_X1 U847 ( .B1(n425), .B2(n150), .C1(n427), .C2(n182), .A(n790), .ZN(
        n1095) );
  MUX2_X1 U848 ( .A(n392), .B(n393), .S(n158), .Z(n1106) );
  MUX2_X1 U849 ( .A(n1161), .B(n792), .S(n185), .Z(n567) );
  MUX2_X1 U850 ( .A(n1162), .B(n793), .S(n185), .Z(n568) );
  MUX2_X1 U851 ( .A(n1159), .B(n794), .S(n184), .Z(n565) );
  MUX2_X1 U852 ( .A(n1160), .B(n795), .S(n185), .Z(n566) );
  INV_X1 U853 ( .A(exponent_difference[3]), .ZN(n799) );
  NOR3_X1 U854 ( .A1(exponent_difference[4]), .A2(exponent_difference[5]), 
        .A3(n796), .ZN(n797) );
  NAND3_X1 U855 ( .A1(n799), .A2(n798), .A3(n797), .ZN(n801) );
  NAND2_X1 U856 ( .A1(n801), .A2(n800), .ZN(n803) );
  NAND2_X1 U857 ( .A1(n803), .A2(n185), .ZN(n815) );
  OAI22_X1 U858 ( .A1(n802), .A2(n815), .B1(n18), .B2(n186), .ZN(n575) );
  INV_X1 U859 ( .A(n803), .ZN(n804) );
  NAND2_X1 U860 ( .A1(n804), .A2(n185), .ZN(n817) );
  INV_X1 U861 ( .A(n681), .ZN(n805) );
  OAI222_X1 U862 ( .A1(n817), .A2(n806), .B1(n805), .B2(n815), .C1(n21), .C2(
        n189), .ZN(n574) );
  INV_X1 U863 ( .A(n682), .ZN(n807) );
  OAI222_X1 U864 ( .A1(n808), .A2(n817), .B1(n807), .B2(n815), .C1(n19), .C2(
        n189), .ZN(n573) );
  OAI222_X1 U865 ( .A1(n810), .A2(n817), .B1(n815), .B2(n809), .C1(n17), .C2(
        n189), .ZN(n572) );
  OAI222_X1 U866 ( .A1(n812), .A2(n817), .B1(n815), .B2(n811), .C1(n16), .C2(
        n189), .ZN(n571) );
  INV_X1 U867 ( .A(n685), .ZN(n813) );
  OAI222_X1 U868 ( .A1(n814), .A2(n817), .B1(n813), .B2(n815), .C1(n15), .C2(
        n189), .ZN(n570) );
  INV_X1 U869 ( .A(exponent_addend[0]), .ZN(n818) );
  INV_X1 U870 ( .A(n686), .ZN(n816) );
  OAI222_X1 U871 ( .A1(n818), .A2(n817), .B1(n816), .B2(n815), .C1(n14), .C2(
        n189), .ZN(n569) );
  MUX2_X1 U872 ( .A(n819), .B(exponent_difference[6]), .S(n185), .Z(n582) );
  MUX2_X1 U873 ( .A(n820), .B(exponent_difference[1]), .S(n185), .Z(n577) );
  MUX2_X1 U874 ( .A(n821), .B(N140), .S(n184), .Z(n576) );
  MUX2_X1 U875 ( .A(n822), .B(exponent_difference[2]), .S(n185), .Z(n578) );
  MUX2_X1 U876 ( .A(n823), .B(exponent_difference[4]), .S(n185), .Z(n580) );
  MUX2_X1 U877 ( .A(n824), .B(exponent_difference[3]), .S(n184), .Z(n579) );
  MUX2_X1 U878 ( .A(n825), .B(exponent_difference[5]), .S(n184), .Z(n581) );
  OAI22_X1 U879 ( .A1(n1140), .A2(n106), .B1(n111), .B2(n826), .ZN(n827) );
  NAND2_X1 U880 ( .A1(n827), .A2(n844), .ZN(n848) );
  INV_X1 U881 ( .A(info_q[13]), .ZN(n837) );
  INV_X1 U882 ( .A(info_q[7]), .ZN(n838) );
  OAI21_X1 U883 ( .B1(n828), .B2(n837), .A(n838), .ZN(n830) );
  INV_X1 U884 ( .A(n830), .ZN(n829) );
  INV_X1 U885 ( .A(info_q[1]), .ZN(n839) );
  NAND2_X1 U886 ( .A1(n829), .A2(n839), .ZN(n843) );
  OAI21_X1 U887 ( .B1(n830), .B2(n844), .A(n843), .ZN(n845) );
  OAI21_X1 U888 ( .B1(n1140), .B2(n840), .A(n111), .ZN(n836) );
  OAI211_X1 U889 ( .C1(n112), .C2(n836), .A(n845), .B(n848), .ZN(n835) );
  NAND3_X1 U890 ( .A1(n848), .A2(n845), .A3(n835), .ZN(n1134) );
  INV_X1 U891 ( .A(n831), .ZN(n833) );
  INV_X1 U892 ( .A(n836), .ZN(n832) );
  MUX2_X1 U893 ( .A(n834), .B(n833), .S(n832), .Z(n1136) );
  INV_X1 U894 ( .A(n835), .ZN(n859) );
  OAI211_X1 U895 ( .C1(n112), .C2(n847), .A(n885), .B(n836), .ZN(n1138) );
  OAI211_X1 U896 ( .C1(n840), .C2(n839), .A(n838), .B(n837), .ZN(n841) );
  NAND3_X1 U897 ( .A1(info_q[12]), .A2(n842), .A3(n841), .ZN(n854) );
  NAND3_X1 U898 ( .A1(info_q[0]), .A2(n844), .A3(n843), .ZN(n853) );
  INV_X1 U899 ( .A(n845), .ZN(n846) );
  OAI21_X1 U900 ( .B1(info_q[6]), .B2(n847), .A(n846), .ZN(n852) );
  INV_X1 U901 ( .A(n1138), .ZN(n850) );
  INV_X1 U902 ( .A(n848), .ZN(n849) );
  AOI21_X1 U903 ( .B1(n859), .B2(n850), .A(n849), .ZN(n851) );
  NAND4_X1 U904 ( .A1(n854), .A2(n853), .A3(n852), .A4(n851), .ZN(n1139) );
  MUX2_X1 U905 ( .A(mid_pipe_exp_prod_q_1__6_), .B(n680), .S(n184), .Z(n1171)
         );
  MUX2_X1 U906 ( .A(n857), .B(n856), .S(n855), .Z(n858) );
  OAI21_X1 U907 ( .B1(n391), .B2(n186), .A(n858), .ZN(n524) );
  AND2_X1 U908 ( .A1(add_525_carry_4_), .A2(leading_zero_count[4]), .ZN(N299)
         );
  XOR2_X1 U909 ( .A(leading_zero_count[4]), .B(add_525_carry_4_), .Z(N298) );
  XOR2_X1 U910 ( .A(mid_pipe_exp_prod_q_1__5_), .B(add_530_carry_5_), .Z(N319)
         );
  AND2_X1 U911 ( .A1(add_530_carry_4_), .A2(mid_pipe_exp_prod_q_1__4_), .ZN(
        add_530_carry_5_) );
  XOR2_X1 U912 ( .A(mid_pipe_exp_prod_q_1__4_), .B(add_530_carry_4_), .Z(N318)
         );
  OR2_X1 U913 ( .A1(leading_zero_count[3]), .A2(add_525_carry_3_), .ZN(
        add_525_carry_4_) );
  XNOR2_X1 U914 ( .A(add_525_carry_3_), .B(leading_zero_count[3]), .ZN(N297)
         );
  OR2_X1 U915 ( .A1(leading_zero_count[2]), .A2(add_525_carry_2_), .ZN(
        add_525_carry_3_) );
  XNOR2_X1 U916 ( .A(add_525_carry_2_), .B(leading_zero_count[2]), .ZN(N296)
         );
  AND2_X1 U917 ( .A1(n75), .A2(n47), .ZN(add_525_carry_2_) );
  XOR2_X1 U918 ( .A(n47), .B(n75), .Z(N295) );
  OR2_X1 U919 ( .A1(mid_pipe_exp_prod_q_1__3_), .A2(add_530_carry_3_), .ZN(
        add_530_carry_4_) );
  XNOR2_X1 U920 ( .A(add_530_carry_3_), .B(mid_pipe_exp_prod_q_1__3_), .ZN(
        N317) );
  OR2_X1 U921 ( .A1(mid_pipe_exp_prod_q_1__2_), .A2(add_530_carry_2_), .ZN(
        add_530_carry_3_) );
  XNOR2_X1 U922 ( .A(add_530_carry_2_), .B(mid_pipe_exp_prod_q_1__2_), .ZN(
        N316) );
  AND2_X1 U923 ( .A1(mid_pipe_exp_prod_q_1__0_), .A2(mid_pipe_exp_prod_q_1__1_), .ZN(add_530_carry_2_) );
  XOR2_X1 U924 ( .A(mid_pipe_exp_prod_q_1__1_), .B(mid_pipe_exp_prod_q_1__0_), 
        .Z(N315) );
  NOR2_X1 U925 ( .A1(gt_558_A_1_), .A2(sub_560_A_0_), .ZN(n891) );
  AOI21_X1 U926 ( .B1(sub_560_A_0_), .B2(gt_558_A_1_), .A(n891), .ZN(n890) );
  NAND2_X1 U927 ( .A1(n891), .A2(n897), .ZN(n892) );
  OAI21_X1 U928 ( .B1(n891), .B2(n897), .A(n892), .ZN(N347) );
  NOR2_X1 U929 ( .A1(n892), .A2(gt_558_A_3_), .ZN(n894) );
  AOI21_X1 U930 ( .B1(n892), .B2(gt_558_A_3_), .A(n894), .ZN(n893) );
  NAND2_X1 U931 ( .A1(n894), .A2(n898), .ZN(n895) );
  OAI21_X1 U932 ( .B1(n894), .B2(n898), .A(n895), .ZN(N349) );
  XNOR2_X1 U933 ( .A(gt_558_A_5_), .B(n895), .ZN(N350) );
  NOR2_X1 U934 ( .A1(gt_558_A_5_), .A2(n895), .ZN(n896) );
  XOR2_X1 U935 ( .A(gt_558_A_6_), .B(n896), .Z(N351) );
  NOR4_X1 U936 ( .A1(gt_558_A_4_), .A2(gt_558_A_3_), .A3(gt_558_A_2_), .A4(
        gt_558_A_1_), .ZN(n900) );
  NAND2_X1 U937 ( .A1(gt_558_A_5_), .A2(n901), .ZN(n899) );
  OAI21_X1 U938 ( .B1(gt_558_A_6_), .B2(n900), .A(n899), .ZN(N333) );
  OAI21_X1 U939 ( .B1(gte_587_A_5_), .B2(n67), .A(n1091), .ZN(n902) );
  NAND2_X1 U940 ( .A1(gte_587_A_3_), .A2(gte_587_A_2_), .ZN(n903) );
  NAND2_X1 U941 ( .A1(n906), .A2(n907), .ZN(status_o_NX_) );
  OAI21_X1 U942 ( .B1(n40), .B2(round_sticky_bits[1]), .A(n24), .ZN(n907) );
  AND2_X1 U943 ( .A1(n1165), .A2(n1143), .ZN(status_o_NV_) );
  OAI211_X1 U944 ( .C1(n918), .C2(n919), .A(n920), .B(n921), .ZN(n917) );
  AOI211_X1 U945 ( .C1(n922), .C2(n923), .A(n1149), .B(of_before_round), .ZN(
        n921) );
  MUX2_X1 U946 ( .A(n924), .B(n925), .S(n926), .Z(n922) );
  NAND3_X1 U947 ( .A1(n927), .A2(n928), .A3(n929), .ZN(n925) );
  OAI21_X1 U948 ( .B1(n930), .B2(n931), .A(n3), .ZN(n924) );
  OAI33_X1 U949 ( .A1(n933), .A2(n883), .A3(n934), .B1(n935), .B2(n882), .B3(
        n881), .ZN(n931) );
  OAI33_X1 U950 ( .A1(n936), .A2(n880), .A3(n879), .B1(n937), .B2(n878), .B3(
        n938), .ZN(n930) );
  NAND2_X1 U951 ( .A1(n939), .A2(n940), .ZN(n937) );
  NAND3_X1 U952 ( .A1(n923), .A2(n134), .A3(n942), .ZN(n920) );
  AOI21_X1 U953 ( .B1(n943), .B2(n944), .A(n56), .ZN(n918) );
  NAND3_X1 U954 ( .A1(n940), .A2(n945), .A3(n873), .ZN(n944) );
  OAI22_X1 U955 ( .A1(n908), .A2(n946), .B1(n947), .B2(n945), .ZN(n916) );
  AOI21_X1 U956 ( .B1(n948), .B2(n949), .A(n950), .ZN(n915) );
  NOR4_X1 U957 ( .A1(n951), .A2(n952), .A3(n953), .A4(n954), .ZN(n949) );
  NAND3_X1 U958 ( .A1(n928), .A2(n955), .A3(n87), .ZN(n952) );
  NAND4_X1 U959 ( .A1(n957), .A2(n929), .A3(n927), .A4(n958), .ZN(n951) );
  NAND2_X1 U960 ( .A1(n959), .A2(n134), .ZN(n927) );
  MUX2_X1 U961 ( .A(n872), .B(n874), .S(n960), .Z(n959) );
  NAND2_X1 U962 ( .A1(n961), .A2(n134), .ZN(n929) );
  MUX2_X1 U963 ( .A(n962), .B(n963), .S(n960), .Z(n961) );
  NOR4_X1 U964 ( .A1(n964), .A2(n965), .A3(n966), .A4(n967), .ZN(n948) );
  INV_X1 U965 ( .A(n968), .ZN(n967) );
  NAND3_X1 U966 ( .A1(n969), .A2(n970), .A3(n971), .ZN(n965) );
  NAND4_X1 U967 ( .A1(n873), .A2(n972), .A3(n973), .A4(n974), .ZN(n964) );
  AOI21_X1 U968 ( .B1(n909), .B2(n946), .A(n910), .ZN(n914) );
  INV_X1 U969 ( .A(n913), .ZN(n946) );
  OAI222_X1 U970 ( .A1(n947), .A2(n975), .B1(n976), .B2(n950), .C1(n919), .C2(
        n958), .ZN(n913) );
  OAI222_X1 U971 ( .A1(n871), .A2(n938), .B1(n870), .B2(n935), .C1(n134), .C2(
        n942), .ZN(n958) );
  INV_X1 U972 ( .A(n977), .ZN(n942) );
  MUX2_X1 U973 ( .A(n1163), .B(rounded_abs[9]), .S(n24), .Z(result_o[9]) );
  AND2_X1 U974 ( .A1(rounded_abs[8]), .A2(n24), .ZN(result_o[8]) );
  AND2_X1 U975 ( .A1(rounded_abs[7]), .A2(n24), .ZN(result_o[7]) );
  AND2_X1 U976 ( .A1(rounded_abs[6]), .A2(n24), .ZN(result_o[6]) );
  AND2_X1 U977 ( .A1(rounded_abs[5]), .A2(n24), .ZN(result_o[5]) );
  AND2_X1 U978 ( .A1(rounded_abs[4]), .A2(n24), .ZN(result_o[4]) );
  AND2_X1 U979 ( .A1(rounded_abs[3]), .A2(n24), .ZN(result_o[3]) );
  AND2_X1 U980 ( .A1(rounded_abs[2]), .A2(n24), .ZN(result_o[2]) );
  AND2_X1 U981 ( .A1(rounded_abs[1]), .A2(n24), .ZN(result_o[1]) );
  MUX2_X1 U982 ( .A(n1164), .B(regular_result_15_), .S(n24), .Z(result_o[15])
         );
  MUX2_X1 U983 ( .A(n1148), .B(rounded_abs[14]), .S(n24), .Z(result_o[14]) );
  MUX2_X1 U984 ( .A(n1147), .B(rounded_abs[13]), .S(n24), .Z(result_o[13]) );
  MUX2_X1 U985 ( .A(n1146), .B(rounded_abs[12]), .S(n24), .Z(result_o[12]) );
  MUX2_X1 U986 ( .A(n1145), .B(n154), .S(n24), .Z(result_o[11]) );
  MUX2_X1 U987 ( .A(n1144), .B(rounded_abs[10]), .S(n24), .Z(result_o[10]) );
  AND2_X1 U988 ( .A1(rounded_abs[0]), .A2(n24), .ZN(result_o[0]) );
  OAI211_X1 U989 ( .C1(n908), .C2(n983), .A(n157), .B(n984), .ZN(
        pre_round_mantissa[9]) );
  INV_X1 U990 ( .A(n985), .ZN(n984) );
  OAI22_X1 U991 ( .A1(n127), .A2(n987), .B1(n34), .B2(n910), .ZN(n985) );
  MUX2_X1 U992 ( .A(n990), .B(n991), .S(n923), .Z(n983) );
  AOI21_X1 U993 ( .B1(n992), .B2(n993), .A(n994), .ZN(n991) );
  INV_X1 U994 ( .A(n995), .ZN(n994) );
  MUX2_X1 U995 ( .A(n996), .B(n972), .S(n926), .Z(n995) );
  OAI221_X1 U996 ( .B1(n934), .B2(n962), .C1(n881), .C2(n938), .A(n997), .ZN(
        n972) );
  AOI22_X1 U997 ( .A1(n884), .A2(n124), .B1(n125), .B2(n998), .ZN(n997) );
  AOI222_X1 U998 ( .A1(n999), .A2(n125), .B1(n1000), .B2(n124), .C1(n120), 
        .C2(n878), .ZN(n996) );
  NAND2_X1 U999 ( .A1(n992), .A2(n963), .ZN(n990) );
  OAI221_X1 U1000 ( .B1(n908), .B2(n989), .C1(n127), .C2(n1001), .A(n1002), 
        .ZN(pre_round_mantissa[7]) );
  AOI21_X1 U1001 ( .B1(n1003), .B2(n1004), .A(n54), .ZN(n1002) );
  INV_X1 U1002 ( .A(n987), .ZN(n1003) );
  MUX2_X1 U1003 ( .A(n1005), .B(n1006), .S(n923), .Z(n987) );
  AOI21_X1 U1004 ( .B1(n992), .B2(n1007), .A(n1008), .ZN(n1006) );
  INV_X1 U1005 ( .A(n1009), .ZN(n1008) );
  MUX2_X1 U1006 ( .A(n1010), .B(n973), .S(n926), .Z(n1009) );
  OAI221_X1 U1007 ( .B1(n883), .B2(n936), .C1(n880), .C2(n935), .A(n1011), 
        .ZN(n973) );
  AOI22_X1 U1008 ( .A1(n120), .A2(n1012), .B1(n943), .B2(n1013), .ZN(n1011) );
  AOI222_X1 U1009 ( .A1(n1015), .A2(n125), .B1(n1016), .B2(n124), .C1(n120), 
        .C2(n877), .ZN(n1010) );
  NAND2_X1 U1010 ( .A1(n874), .A2(n992), .ZN(n1005) );
  OAI221_X1 U1011 ( .B1(n908), .B2(n1001), .C1(n1017), .C2(n127), .A(n1018), 
        .ZN(pre_round_mantissa[6]) );
  INV_X1 U1012 ( .A(n1019), .ZN(n1018) );
  OAI21_X1 U1013 ( .B1(n989), .B2(n910), .A(n157), .ZN(n1019) );
  OAI211_X1 U1014 ( .C1(n947), .C2(n1020), .A(n1021), .B(n1022), .ZN(n989) );
  MUX2_X1 U1015 ( .A(n1023), .B(n1024), .S(n926), .Z(n1022) );
  INV_X1 U1016 ( .A(n974), .ZN(n1024) );
  OAI221_X1 U1017 ( .B1(n128), .B2(n934), .C1(n866), .C2(n938), .A(n1026), 
        .ZN(n974) );
  AOI22_X1 U1018 ( .A1(n865), .A2(n124), .B1(n125), .B2(n131), .ZN(n1026) );
  AOI222_X1 U1019 ( .A1(n120), .A2(n1028), .B1(n124), .B2(n1029), .C1(n862), 
        .C2(n125), .ZN(n1023) );
  INV_X1 U1020 ( .A(n1030), .ZN(n1021) );
  AOI21_X1 U1021 ( .B1(n992), .B2(n1031), .A(n923), .ZN(n1030) );
  OAI221_X1 U1022 ( .B1(n908), .B2(n1017), .C1(n1032), .C2(n127), .A(n1033), 
        .ZN(pre_round_mantissa[5]) );
  INV_X1 U1023 ( .A(n1034), .ZN(n1033) );
  OAI21_X1 U1024 ( .B1(n1001), .B2(n910), .A(n157), .ZN(n1034) );
  OAI221_X1 U1025 ( .B1(n1035), .B2(n950), .C1(n923), .C2(n1036), .A(n1037), 
        .ZN(n1001) );
  AOI22_X1 U1026 ( .A1(n861), .A2(n137), .B1(n1039), .B2(n968), .ZN(n1037) );
  AOI22_X1 U1027 ( .A1(n120), .A2(n1041), .B1(n943), .B2(n2), .ZN(n1040) );
  NOR3_X1 U1028 ( .A1(n977), .A2(n1043), .A3(n926), .ZN(n1036) );
  NAND2_X1 U1029 ( .A1(n113), .A2(n140), .ZN(n977) );
  AOI222_X1 U1030 ( .A1(n120), .A2(n79), .B1(n124), .B2(n975), .C1(n41), .C2(
        n125), .ZN(n1035) );
  OAI221_X1 U1031 ( .B1(n908), .B2(n1032), .C1(n1045), .C2(n127), .A(n1046), 
        .ZN(pre_round_mantissa[4]) );
  INV_X1 U1032 ( .A(n1047), .ZN(n1046) );
  OAI21_X1 U1033 ( .B1(n1017), .B2(n910), .A(n157), .ZN(n1047) );
  AOI222_X1 U1034 ( .A1(n999), .A2(n137), .B1(n1048), .B2(n1049), .C1(n1039), 
        .C2(n966), .ZN(n1017) );
  AOI221_X1 U1035 ( .B1(n120), .B2(n873), .C1(n998), .C2(n943), .A(n1050), 
        .ZN(n966) );
  OAI22_X1 U1036 ( .A1(n962), .A2(n936), .B1(n933), .B2(n935), .ZN(n1050) );
  OAI222_X1 U1037 ( .A1(n1051), .A2(n934), .B1(n1052), .B2(n936), .C1(n935), 
        .C2(n867), .ZN(n1048) );
  INV_X1 U1038 ( .A(n1053), .ZN(n1032) );
  OAI221_X1 U1039 ( .B1(n908), .B2(n1045), .C1(n1054), .C2(n127), .A(n1055), 
        .ZN(pre_round_mantissa[3]) );
  OAI222_X1 U1040 ( .A1(n1056), .A2(n947), .B1(n1057), .B2(n950), .C1(n919), 
        .C2(n971), .ZN(n1053) );
  OAI221_X1 U1041 ( .B1(n872), .B2(n936), .C1(n883), .C2(n935), .A(n1058), 
        .ZN(n971) );
  AOI22_X1 U1042 ( .A1(n120), .A2(n940), .B1(n943), .B2(n1014), .ZN(n1058) );
  AOI222_X1 U1043 ( .A1(n882), .A2(n120), .B1(n877), .B2(n124), .C1(n125), 
        .C2(n1016), .ZN(n1057) );
  INV_X1 U1044 ( .A(n1059), .ZN(n1045) );
  OAI221_X1 U1045 ( .B1(n908), .B2(n1054), .C1(n1060), .C2(n127), .A(n1061), 
        .ZN(pre_round_mantissa[2]) );
  OAI222_X1 U1046 ( .A1(n862), .A2(n947), .B1(n1062), .B2(n950), .C1(n919), 
        .C2(n969), .ZN(n1059) );
  AOI22_X1 U1047 ( .A1(n120), .A2(n945), .B1(n943), .B2(n131), .ZN(n1064) );
  INV_X1 U1048 ( .A(n1031), .ZN(n945) );
  AOI222_X1 U1049 ( .A1(n866), .A2(n120), .B1(n864), .B2(n124), .C1(n57), .C2(
        n125), .ZN(n1062) );
  INV_X1 U1050 ( .A(n1067), .ZN(n1054) );
  OAI221_X1 U1051 ( .B1(n908), .B2(n1060), .C1(n911), .C2(n127), .A(n1068), 
        .ZN(pre_round_mantissa[1]) );
  AOI21_X1 U1052 ( .B1(n1067), .B2(n1004), .A(n129), .ZN(n1068) );
  OAI222_X1 U1053 ( .A1(n41), .A2(n947), .B1(n1069), .B2(n950), .C1(n919), 
        .C2(n970), .ZN(n1067) );
  OAI222_X1 U1054 ( .A1(n869), .A2(n938), .B1(n871), .B2(n935), .C1(n134), 
        .C2(n1070), .ZN(n970) );
  INV_X1 U1055 ( .A(n1072), .ZN(n1069) );
  OAI222_X1 U1056 ( .A1(n2), .A2(n934), .B1(n79), .B2(n936), .C1(n975), .C2(
        n935), .ZN(n1072) );
  OAI211_X1 U1057 ( .C1(n908), .C2(n911), .A(n156), .B(n1073), .ZN(
        pre_round_mantissa[0]) );
  INV_X1 U1058 ( .A(n1074), .ZN(n1073) );
  OAI22_X1 U1059 ( .A1(n1060), .A2(n910), .B1(n127), .B2(n909), .ZN(n1074) );
  AOI222_X1 U1060 ( .A1(n137), .A2(n57), .B1(n1075), .B2(n1049), .C1(n1039), 
        .C2(n953), .ZN(n909) );
  INV_X1 U1061 ( .A(n1076), .ZN(n953) );
  OAI221_X1 U1062 ( .B1(n134), .B2(n1031), .C1(n140), .C2(n128), .A(n1077), 
        .ZN(n1076) );
  AOI21_X1 U1063 ( .B1(n865), .B2(n943), .A(n120), .ZN(n1077) );
  OAI222_X1 U1064 ( .A1(n131), .A2(n934), .B1(n55), .B2(n936), .C1(n1028), 
        .C2(n935), .ZN(n1075) );
  INV_X1 U1065 ( .A(n1078), .ZN(n1060) );
  OAI222_X1 U1066 ( .A1(n867), .A2(n947), .B1(n1079), .B2(n950), .C1(n919), 
        .C2(n957), .ZN(n1078) );
  OAI221_X1 U1067 ( .B1(n134), .B2(n963), .C1(n140), .C2(n962), .A(n1080), 
        .ZN(n957) );
  AOI21_X1 U1068 ( .B1(n884), .B2(n943), .A(n120), .ZN(n1080) );
  AOI222_X1 U1069 ( .A1(n879), .A2(n120), .B1(n881), .B2(n124), .C1(n878), 
        .C2(n125), .ZN(n1079) );
  INV_X1 U1070 ( .A(n1038), .ZN(n947) );
  AOI222_X1 U1071 ( .A1(n1016), .A2(n137), .B1(n1081), .B2(n1049), .C1(n1039), 
        .C2(n954), .ZN(n911) );
  OAI21_X1 U1072 ( .B1(n938), .B2(n883), .A(n934), .ZN(n1082) );
  INV_X1 U1073 ( .A(n919), .ZN(n1039) );
  INV_X1 U1074 ( .A(n950), .ZN(n1049) );
  OAI222_X1 U1075 ( .A1(n1014), .A2(n934), .B1(n1013), .B2(n936), .C1(n939), 
        .C2(n935), .ZN(n1081) );
  INV_X1 U1076 ( .A(N333), .ZN(n1083) );
  NAND2_X1 U1077 ( .A1(n155), .A2(n29), .ZN(pre_round_exponent[4]) );
  NAND2_X1 U1078 ( .A1(n1085), .A2(n29), .ZN(pre_round_exponent[3]) );
  NAND2_X1 U1079 ( .A1(n1086), .A2(n157), .ZN(pre_round_exponent[2]) );
  NAND2_X1 U1080 ( .A1(n1087), .A2(n157), .ZN(pre_round_exponent[1]) );
  NOR2_X1 U1081 ( .A1(n54), .A2(n7), .ZN(pre_round_exponent[0]) );
  INV_X1 U1082 ( .A(n48), .ZN(status_o_OF_) );
  OAI21_X1 U1083 ( .B1(n1089), .B2(n54), .A(n24), .ZN(n906) );
  AND3_X1 U1084 ( .A1(n1090), .A2(rounded_abs[13]), .A3(rounded_abs[14]), .ZN(
        n1089) );
  AND3_X1 U1085 ( .A1(rounded_abs[11]), .A2(rounded_abs[12]), .A3(
        rounded_abs[10]), .ZN(n1090) );
  INV_X1 U1086 ( .A(n1088), .ZN(gte_587_A_0_) );
  AOI222_X1 U1087 ( .A1(N337), .A2(n1004), .B1(N345), .B2(n49), .C1(n59), .C2(
        sub_560_A_0_), .ZN(n1088) );
  INV_X1 U1088 ( .A(n1092), .ZN(gte_587_A_5_) );
  AOI222_X1 U1089 ( .A1(N342), .A2(n1004), .B1(N350), .B2(n83), .C1(n65), .C2(
        gt_558_A_5_), .ZN(n1092) );
  INV_X1 U1090 ( .A(n1085), .ZN(gte_587_A_3_) );
  AOI222_X1 U1091 ( .A1(N340), .A2(n1004), .B1(N348), .B2(n49), .C1(n1084), 
        .C2(gt_558_A_3_), .ZN(n1085) );
  INV_X1 U1092 ( .A(n1086), .ZN(gte_587_A_2_) );
  AOI222_X1 U1093 ( .A1(N339), .A2(n1004), .B1(N347), .B2(n49), .C1(n59), .C2(
        gt_558_A_2_), .ZN(n1086) );
  INV_X1 U1094 ( .A(n1087), .ZN(gte_587_A_1_) );
  AOI222_X1 U1095 ( .A1(N338), .A2(n1004), .B1(N346), .B2(n49), .C1(n1084), 
        .C2(gt_558_A_1_), .ZN(n1087) );
  INV_X1 U1096 ( .A(n956), .ZN(n1098) );
  OAI221_X1 U1097 ( .B1(n32), .B2(n936), .C1(n868), .C2(n935), .A(n1099), .ZN(
        n956) );
  AOI22_X1 U1098 ( .A1(n1071), .A2(n120), .B1(n982), .B2(n943), .ZN(n1099) );
  OAI222_X1 U1099 ( .A1(n861), .A2(n935), .B1(n860), .B2(n936), .C1(n934), 
        .C2(n975), .ZN(n1097) );
  NOR2_X1 U1100 ( .A1(n938), .A2(n926), .ZN(n992) );
  NAND2_X1 U1101 ( .A1(n56), .A2(n1100), .ZN(n1093) );
  MUX2_X1 U1102 ( .A(n870), .B(n113), .S(n960), .Z(n1070) );
  AOI22_X1 U1103 ( .A1(n1103), .A2(n1100), .B1(n1038), .B2(n1104), .ZN(n1102)
         );
  NOR2_X1 U1104 ( .A1(n950), .A2(n938), .ZN(n1038) );
  NAND2_X1 U1105 ( .A1(n1105), .A2(n134), .ZN(n928) );
  NAND2_X1 U1106 ( .A1(n923), .A2(n926), .ZN(n919) );
  INV_X1 U1107 ( .A(n1100), .ZN(n926) );
  OAI221_X1 U1108 ( .B1(n934), .B2(n1063), .C1(n864), .C2(n938), .A(n1107), 
        .ZN(n932) );
  AOI22_X1 U1109 ( .A1(n1027), .A2(n124), .B1(n1065), .B2(n125), .ZN(n1107) );
  INV_X1 U1110 ( .A(n943), .ZN(n938) );
  INV_X1 U1111 ( .A(n119), .ZN(n934) );
  NAND2_X1 U1112 ( .A1(n923), .A2(n1100), .ZN(n950) );
  AOI21_X1 U1113 ( .B1(n888), .B2(n1161), .A(n1108), .ZN(n1100) );
  INV_X1 U1114 ( .A(n1109), .ZN(n1108) );
  AOI22_X1 U1115 ( .A1(N318), .A2(n95), .B1(N298), .B2(n97), .ZN(n1109) );
  INV_X1 U1116 ( .A(n1112), .ZN(n1111) );
  AOI22_X1 U1117 ( .A1(N319), .A2(n1110), .B1(N299), .B2(n97), .ZN(n1112) );
  AOI222_X1 U1118 ( .A1(n120), .A2(n863), .B1(n124), .B2(n1066), .C1(n1020), 
        .C2(n125), .ZN(n1101) );
  INV_X1 U1119 ( .A(n941), .ZN(n1043) );
  INV_X1 U1120 ( .A(n1044), .ZN(n960) );
  AOI22_X1 U1121 ( .A1(n12), .A2(n5), .B1(N294), .B2(n97), .ZN(n1113) );
  INV_X1 U1122 ( .A(n1115), .ZN(n1114) );
  AOI22_X1 U1123 ( .A1(n1110), .A2(N315), .B1(N295), .B2(n97), .ZN(n1115) );
  INV_X1 U1124 ( .A(n1117), .ZN(n1116) );
  AOI22_X1 U1125 ( .A1(N316), .A2(n1110), .B1(N296), .B2(n97), .ZN(n1117) );
  INV_X1 U1126 ( .A(n1119), .ZN(n1118) );
  AOI22_X1 U1127 ( .A1(N317), .A2(n5), .B1(N297), .B2(n97), .ZN(n1119) );
  NOR2_X1 U1128 ( .A1(n36), .A2(n888), .ZN(n1110) );
  OAI21_X1 U1129 ( .B1(n1121), .B2(n18), .A(n1123), .ZN(gt_558_A_6_) );
  NAND2_X1 U1130 ( .A1(N313), .A2(n46), .ZN(n1123) );
  OAI21_X1 U1131 ( .B1(n1121), .B2(n21), .A(n1124), .ZN(gt_558_A_5_) );
  NAND2_X1 U1132 ( .A1(N312), .A2(n46), .ZN(n1124) );
  OAI21_X1 U1133 ( .B1(n1121), .B2(n19), .A(n1125), .ZN(gt_558_A_4_) );
  NAND2_X1 U1134 ( .A1(N311), .A2(n46), .ZN(n1125) );
  OAI21_X1 U1135 ( .B1(n1121), .B2(n17), .A(n1126), .ZN(gt_558_A_3_) );
  NAND2_X1 U1136 ( .A1(N310), .A2(n46), .ZN(n1126) );
  OAI21_X1 U1137 ( .B1(n1121), .B2(n16), .A(n1127), .ZN(gt_558_A_2_) );
  NAND2_X1 U1138 ( .A1(N309), .A2(n46), .ZN(n1127) );
  OAI21_X1 U1139 ( .B1(n1121), .B2(n15), .A(n1128), .ZN(gt_558_A_1_) );
  NAND2_X1 U1140 ( .A1(n97), .A2(N308), .ZN(n1128) );
  OAI22_X1 U1141 ( .A1(n1121), .A2(n14), .B1(N300), .B2(n1129), .ZN(
        sub_560_A_0_) );
  NAND2_X1 U1142 ( .A1(n36), .A2(n1121), .ZN(n1129) );
  OAI211_X1 U1143 ( .C1(n444), .C2(n443), .A(mid_pipe_eff_sub_q_1_), .B(n445), 
        .ZN(n1132) );
  NAND3_X1 U1144 ( .A1(n447), .A2(n446), .A3(n448), .ZN(n1131) );
  NAND3_X1 U1145 ( .A1(n444), .A2(n443), .A3(n445), .ZN(n1130) );
  OR2_X1 U1146 ( .A1(n1166), .A2(n887), .ZN(n656) );
  NAND2_X1 U1147 ( .A1(n1133), .A2(in_ready_o), .ZN(n653) );
  MUX2_X1 U1148 ( .A(inp_pipe_operands_q_1__0__15_), .B(operands_i[15]), .S(
        n196), .Z(n635) );
  MUX2_X1 U1149 ( .A(inp_pipe_operands_q_1__1__15_), .B(operands_i[31]), .S(
        n196), .Z(n619) );
  MUX2_X1 U1150 ( .A(n1156), .B(rnd_mode_i[2]), .S(n196), .Z(n600) );
  MUX2_X1 U1151 ( .A(n1155), .B(rnd_mode_i[0]), .S(n196), .Z(n599) );
  MUX2_X1 U1152 ( .A(n1154), .B(rnd_mode_i[1]), .S(n196), .Z(n598) );
  MUX2_X1 U1153 ( .A(n1152), .B(op_mod_i), .S(n196), .Z(n593) );
  MUX2_X1 U1154 ( .A(n1151), .B(tag_i), .S(n196), .Z(n592) );
  MUX2_X1 U1155 ( .A(n1150), .B(aux_i), .S(n196), .Z(n591) );
  MUX2_X1 U1156 ( .A(n885), .B(mid_pipe_eff_sub_q_1_), .S(n1122), .Z(n590) );
  MUX2_X1 U1157 ( .A(n1156), .B(mid_pipe_rnd_mode_q_1__2_), .S(n1122), .Z(n523) );
  MUX2_X1 U1158 ( .A(n1154), .B(mid_pipe_rnd_mode_q_1__1_), .S(n1122), .Z(n522) );
  MUX2_X1 U1159 ( .A(n1155), .B(mid_pipe_rnd_mode_q_1__0_), .S(n1122), .Z(n521) );
  MUX2_X1 U1160 ( .A(n1134), .B(n1165), .S(n1122), .Z(n520) );
  MUX2_X1 U1161 ( .A(n1135), .B(n1164), .S(n1122), .Z(n519) );
  NOR2_X1 U1162 ( .A1(n1136), .A2(n1137), .ZN(n1135) );
  OR2_X1 U1163 ( .A1(n1148), .A2(n189), .ZN(n518) );
  OR2_X1 U1164 ( .A1(n1147), .A2(n189), .ZN(n517) );
  OR2_X1 U1165 ( .A1(n1146), .A2(n189), .ZN(n516) );
  OR2_X1 U1166 ( .A1(n1145), .A2(n189), .ZN(n515) );
  OR2_X1 U1167 ( .A1(n1144), .A2(n189), .ZN(n514) );
  MUX2_X1 U1168 ( .A(n1137), .B(n1163), .S(n1122), .Z(n513) );
  NAND2_X1 U1169 ( .A1(n859), .A2(n1138), .ZN(n1137) );
  MUX2_X1 U1170 ( .A(n1139), .B(n1143), .S(n1122), .Z(n512) );
  INV_X1 U1171 ( .A(info_q[2]), .ZN(n1140) );
  MUX2_X1 U1172 ( .A(n1151), .B(tag_o), .S(n1122), .Z(n511) );
  MUX2_X1 U1173 ( .A(n1150), .B(aux_o), .S(n1122), .Z(n510) );
  NAND3_X1 U1174 ( .A1(n1141), .A2(n199), .A3(n1133), .ZN(busy_o) );
  INV_X1 U1175 ( .A(in_valid_i), .ZN(n1133) );
  XNOR2_X1 U1176 ( .A(n1152), .B(inp_pipe_operands_q_1__2__15_), .ZN(n1142) );
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
  wire   n19, gen_num_lanes_0__active_lane_op_status_NV_,
         gen_num_lanes_0__active_lane_op_status_OF_,
         gen_num_lanes_0__active_lane_op_status_UF_,
         gen_num_lanes_0__active_lane_op_status_NX_, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;
  wire   [15:0] gen_num_lanes_0__active_lane_op_result;
  assign extension_bit_o = 1'b1;
  assign status_o_DZ_ = 1'b0;

  fpnew_fma_2_00000002_3__logic_Z_1yB___logic_Z_1yB_ gen_num_lanes_0__active_lane_lane_instance_i_fma ( 
        .clk_i(clk_i), .rst_ni(rst_ni), .operands_i(operands_i), .is_boxed_i(
        is_boxed_i), .rnd_mode_i(rnd_mode_i), .op_i(op_i), .op_mod_i(op_mod_i), 
        .tag_i(tag_i), .aux_i(1'b0), .in_valid_i(in_valid_i), .in_ready_o(
        in_ready_o), .flush_i(flush_i), .result_o(
        gen_num_lanes_0__active_lane_op_result), .tag_o(tag_o), .out_valid_o(
        n19), .out_ready_i(out_ready_i), .busy_o(busy_o), .status_o_NV_(
        gen_num_lanes_0__active_lane_op_status_NV_), .status_o_OF_(
        gen_num_lanes_0__active_lane_op_status_OF_), .status_o_UF_(
        gen_num_lanes_0__active_lane_op_status_UF_), .status_o_NX_(
        gen_num_lanes_0__active_lane_op_status_NX_) );
  BUF_X2 U3 ( .A(n19), .Z(out_valid_o) );
  NAND2_X1 U4 ( .A1(gen_num_lanes_0__active_lane_op_result[8]), .A2(
        out_valid_o), .ZN(n4) );
  NAND2_X1 U5 ( .A1(gen_num_lanes_0__active_lane_op_result[6]), .A2(
        out_valid_o), .ZN(n6) );
  NAND2_X1 U6 ( .A1(gen_num_lanes_0__active_lane_op_result[7]), .A2(
        out_valid_o), .ZN(n5) );
  NAND2_X1 U7 ( .A1(gen_num_lanes_0__active_lane_op_result[5]), .A2(
        out_valid_o), .ZN(n7) );
  NAND2_X1 U8 ( .A1(gen_num_lanes_0__active_lane_op_result[4]), .A2(
        out_valid_o), .ZN(n8) );
  NAND2_X1 U9 ( .A1(gen_num_lanes_0__active_lane_op_result[3]), .A2(
        out_valid_o), .ZN(n9) );
  NAND2_X1 U10 ( .A1(gen_num_lanes_0__active_lane_op_result[2]), .A2(
        out_valid_o), .ZN(n10) );
  NAND2_X1 U11 ( .A1(gen_num_lanes_0__active_lane_op_result[1]), .A2(
        out_valid_o), .ZN(n11) );
  NAND2_X1 U12 ( .A1(gen_num_lanes_0__active_lane_op_result[0]), .A2(
        out_valid_o), .ZN(n18) );
  AND2_X1 U13 ( .A1(gen_num_lanes_0__active_lane_op_status_OF_), .A2(
        out_valid_o), .ZN(status_o_OF_) );
  NAND2_X1 U14 ( .A1(gen_num_lanes_0__active_lane_op_result[11]), .A2(
        out_valid_o), .ZN(n16) );
  NAND2_X1 U15 ( .A1(out_valid_o), .A2(n16), .ZN(result_o[11]) );
  NAND2_X1 U16 ( .A1(gen_num_lanes_0__active_lane_op_result[12]), .A2(
        out_valid_o), .ZN(n15) );
  NAND2_X1 U17 ( .A1(out_valid_o), .A2(n15), .ZN(result_o[12]) );
  NAND2_X1 U18 ( .A1(gen_num_lanes_0__active_lane_op_result[13]), .A2(
        out_valid_o), .ZN(n14) );
  NAND2_X1 U19 ( .A1(out_valid_o), .A2(n14), .ZN(result_o[13]) );
  NAND2_X1 U20 ( .A1(gen_num_lanes_0__active_lane_op_result[14]), .A2(
        out_valid_o), .ZN(n13) );
  NAND2_X1 U21 ( .A1(out_valid_o), .A2(n13), .ZN(result_o[14]) );
  NAND2_X1 U22 ( .A1(gen_num_lanes_0__active_lane_op_result[9]), .A2(
        out_valid_o), .ZN(n3) );
  NAND2_X1 U23 ( .A1(out_valid_o), .A2(n3), .ZN(result_o[9]) );
  NAND2_X1 U24 ( .A1(gen_num_lanes_0__active_lane_op_result[10]), .A2(
        out_valid_o), .ZN(n17) );
  NAND2_X1 U25 ( .A1(out_valid_o), .A2(n17), .ZN(result_o[10]) );
  NAND2_X1 U26 ( .A1(out_valid_o), .A2(n4), .ZN(result_o[8]) );
  NAND2_X1 U27 ( .A1(out_valid_o), .A2(n6), .ZN(result_o[6]) );
  NAND2_X1 U28 ( .A1(out_valid_o), .A2(n5), .ZN(result_o[7]) );
  NAND2_X1 U29 ( .A1(out_valid_o), .A2(n7), .ZN(result_o[5]) );
  NAND2_X1 U30 ( .A1(out_valid_o), .A2(n8), .ZN(result_o[4]) );
  NAND2_X1 U31 ( .A1(gen_num_lanes_0__active_lane_op_result[15]), .A2(
        out_valid_o), .ZN(n12) );
  NAND2_X1 U32 ( .A1(out_valid_o), .A2(n12), .ZN(result_o[15]) );
  NAND2_X1 U33 ( .A1(out_valid_o), .A2(n9), .ZN(result_o[3]) );
  NAND2_X1 U34 ( .A1(out_valid_o), .A2(n10), .ZN(result_o[2]) );
  NAND2_X1 U35 ( .A1(out_valid_o), .A2(n11), .ZN(result_o[1]) );
  NAND2_X1 U36 ( .A1(out_valid_o), .A2(n18), .ZN(result_o[0]) );
  AND2_X1 U37 ( .A1(gen_num_lanes_0__active_lane_op_status_NV_), .A2(
        out_valid_o), .ZN(status_o_NV_) );
  AND2_X1 U38 ( .A1(gen_num_lanes_0__active_lane_op_status_NX_), .A2(
        out_valid_o), .ZN(status_o_NX_) );
  AND2_X1 U39 ( .A1(gen_num_lanes_0__active_lane_op_status_UF_), .A2(
        out_valid_o), .ZN(status_o_UF_) );
endmodule


module lzc_00000005_0_0 ( in_i, cnt_o, empty_o );
  input [4:0] in_i;
  output [2:0] cnt_o;
  output empty_o;
  wire   n3, n1, n2;

  NOR2_X1 U2 ( .A1(in_i[4]), .A2(n1), .ZN(empty_o) );
  INV_X1 U3 ( .A(n3), .ZN(n1) );
  INV_X1 U4 ( .A(in_i[1]), .ZN(n2) );
  NOR4_X1 U5 ( .A1(in_i[1]), .A2(in_i[0]), .A3(in_i[3]), .A4(in_i[2]), .ZN(n3)
         );
  AOI211_X1 U6 ( .C1(in_i[2]), .C2(n2), .A(in_i[0]), .B(n3), .ZN(cnt_o[0]) );
  NOR3_X1 U7 ( .A1(n3), .A2(in_i[1]), .A3(in_i[0]), .ZN(cnt_o[1]) );
  AND2_X1 U8 ( .A1(n3), .A2(in_i[4]), .ZN(cnt_o[2]) );
endmodule


module lzc_00000005_0_7 ( in_i, cnt_o, empty_o );
  input [4:0] in_i;
  output [2:0] cnt_o;
  output empty_o;
  wire   n1, n2, n5;

  NOR4_X1 U2 ( .A1(in_i[1]), .A2(in_i[0]), .A3(in_i[3]), .A4(in_i[2]), .ZN(n5)
         );
  INV_X1 U3 ( .A(n5), .ZN(n1) );
  INV_X1 U4 ( .A(in_i[1]), .ZN(n2) );
  NOR2_X1 U5 ( .A1(in_i[4]), .A2(n1), .ZN(empty_o) );
  AOI211_X1 U6 ( .C1(in_i[2]), .C2(n2), .A(in_i[0]), .B(n5), .ZN(cnt_o[0]) );
  NOR3_X1 U7 ( .A1(n5), .A2(in_i[1]), .A3(in_i[0]), .ZN(cnt_o[1]) );
  AND2_X1 U8 ( .A1(n5), .A2(in_i[4]), .ZN(cnt_o[2]) );
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
  wire   gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty, n10, n11, n14, n22,
         n23, n24, n25, n26, n27, n28, n29, n32, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n12, n13, n15, n16, n17, n18, n19, n20, n21, n31, n33, n90,
         n91, n92, n93, n94, n95, n96;
  wire   [2:0] gen_arbiter_rr_q;
  wire   [4:1] gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask;
  wire   [4:1] gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask;
  wire   [2:0] gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx;
  wire   [2:0] gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx;

  DFFR_X1 gen_arbiter_rr_q_reg_0_ ( .D(n89), .CK(clk_i), .RN(rst_ni), .Q(
        gen_arbiter_rr_q[0]), .QN(n14) );
  DFFR_X1 gen_arbiter_rr_q_reg_2_ ( .D(n87), .CK(clk_i), .RN(rst_ni), .Q(
        gen_arbiter_rr_q[2]), .QN(n10) );
  DFFR_X1 gen_arbiter_rr_q_reg_1_ ( .D(n88), .CK(clk_i), .RN(rst_ni), .Q(
        gen_arbiter_rr_q[1]), .QN(n11) );
  lzc_00000005_0_0 gen_arbiter_gen_int_rr_gen_fair_arb_i_lzc_upper ( .in_i({
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask, 1'b0}), .cnt_o(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx), .empty_o(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty) );
  lzc_00000005_0_7 gen_arbiter_gen_int_rr_gen_fair_arb_i_lzc_lower ( .in_i({
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask, req_i[0]}), .cnt_o(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx) );
  BUF_X1 U3 ( .A(n1), .Z(n18) );
  BUF_X1 U4 ( .A(n2), .Z(n12) );
  OR2_X1 U5 ( .A1(n29), .A2(n90), .ZN(n1) );
  OR3_X1 U6 ( .A1(n91), .A2(idx_o[2]), .A3(n84), .ZN(n2) );
  NOR2_X1 U7 ( .A1(n96), .A2(n28), .ZN(n3) );
  INV_X1 U8 ( .A(n4), .ZN(n5) );
  BUF_X1 U9 ( .A(req_i[2]), .Z(n4) );
  BUF_X1 U10 ( .A(n16), .Z(n15) );
  INV_X1 U11 ( .A(n18), .ZN(n17) );
  BUF_X1 U12 ( .A(n16), .Z(n13) );
  NOR2_X1 U13 ( .A1(n5), .A2(n92), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask[2]) );
  INV_X1 U14 ( .A(gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .ZN(n21)
         );
  INV_X1 U15 ( .A(n28), .ZN(idx_o[2]) );
  OAI21_X1 U16 ( .B1(req_i[4]), .B2(n28), .A(n29), .ZN(idx_o[1]) );
  INV_X1 U17 ( .A(gnt_i), .ZN(n31) );
  NOR2_X1 U18 ( .A1(n31), .A2(n12), .ZN(gnt_o[1]) );
  NOR2_X1 U19 ( .A1(n31), .A2(n18), .ZN(gnt_o[3]) );
  BUF_X1 U20 ( .A(n8), .Z(n6) );
  BUF_X1 U21 ( .A(n8), .Z(n7) );
  BUF_X1 U22 ( .A(n3), .Z(n19) );
  BUF_X1 U23 ( .A(n3), .Z(n20) );
  INV_X1 U24 ( .A(n12), .ZN(n9) );
  AND2_X1 U25 ( .A1(gnt_i), .A2(n7), .ZN(gnt_o[0]) );
  AND2_X1 U26 ( .A1(gnt_i), .A2(n20), .ZN(gnt_o[4]) );
  NAND2_X1 U27 ( .A1(n12), .A2(n18), .ZN(idx_o[0]) );
  BUF_X1 U28 ( .A(n32), .Z(n16) );
  NOR2_X1 U29 ( .A1(n83), .A2(n29), .ZN(n32) );
  NAND2_X1 U30 ( .A1(n84), .A2(n28), .ZN(n29) );
  AND2_X1 U31 ( .A1(gnt_i), .A2(n15), .ZN(gnt_o[2]) );
  NOR2_X1 U32 ( .A1(gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[4]), .A2(
        n86), .ZN(n28) );
  AND3_X1 U33 ( .A1(n93), .A2(n94), .A3(n27), .ZN(n86) );
  NAND4_X1 U34 ( .A1(n27), .A2(n93), .A3(n94), .A4(n96), .ZN(req_o) );
  INV_X1 U35 ( .A(n83), .ZN(n90) );
  NOR2_X1 U36 ( .A1(n36), .A2(n5), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[2]) );
  INV_X1 U37 ( .A(n26), .ZN(n33) );
  INV_X1 U38 ( .A(n36), .ZN(n92) );
  INV_X1 U39 ( .A(n85), .ZN(n91) );
  BUF_X1 U40 ( .A(n34), .Z(n8) );
  NOR3_X1 U41 ( .A1(n84), .A2(idx_o[2]), .A3(n85), .ZN(n34) );
  NAND2_X1 U42 ( .A1(n81), .A2(n82), .ZN(data_o[1]) );
  AOI22_X1 U43 ( .A1(data_i[3]), .A2(n7), .B1(data_i[26]), .B2(n9), .ZN(n39)
         );
  NAND2_X1 U44 ( .A1(n44), .A2(n43), .ZN(data_o[2]) );
  AOI22_X1 U45 ( .A1(data_i[2]), .A2(n7), .B1(data_i[25]), .B2(n9), .ZN(n43)
         );
  AOI222_X1 U46 ( .A1(data_i[71]), .A2(n17), .B1(data_i[48]), .B2(n15), .C1(
        data_i[94]), .C2(n20), .ZN(n44) );
  NAND2_X1 U47 ( .A1(n41), .A2(n42), .ZN(data_o[4]) );
  AOI22_X1 U48 ( .A1(data_i[4]), .A2(n7), .B1(data_i[27]), .B2(n9), .ZN(n41)
         );
  AOI222_X1 U49 ( .A1(data_i[73]), .A2(n17), .B1(data_i[50]), .B2(n15), .C1(
        data_i[96]), .C2(n20), .ZN(n42) );
  NAND2_X1 U50 ( .A1(n75), .A2(n76), .ZN(data_o[18]) );
  AOI22_X1 U51 ( .A1(data_i[18]), .A2(n6), .B1(data_i[41]), .B2(n9), .ZN(n75)
         );
  AOI222_X1 U52 ( .A1(data_i[87]), .A2(n17), .B1(data_i[64]), .B2(n13), .C1(
        data_i[110]), .C2(n19), .ZN(n76) );
  NAND2_X1 U53 ( .A1(n73), .A2(n74), .ZN(data_o[19]) );
  AOI22_X1 U54 ( .A1(data_i[19]), .A2(n6), .B1(data_i[42]), .B2(n9), .ZN(n73)
         );
  AOI222_X1 U55 ( .A1(data_i[88]), .A2(n17), .B1(data_i[65]), .B2(n13), .C1(
        data_i[111]), .C2(n19), .ZN(n74) );
  NAND2_X1 U56 ( .A1(n71), .A2(n72), .ZN(data_o[20]) );
  AOI22_X1 U57 ( .A1(data_i[20]), .A2(n6), .B1(data_i[43]), .B2(n9), .ZN(n71)
         );
  AOI222_X1 U58 ( .A1(data_i[89]), .A2(n17), .B1(data_i[66]), .B2(n13), .C1(
        data_i[112]), .C2(n19), .ZN(n72) );
  NAND2_X1 U59 ( .A1(n69), .A2(n70), .ZN(data_o[21]) );
  AOI22_X1 U60 ( .A1(data_i[21]), .A2(n6), .B1(data_i[44]), .B2(n9), .ZN(n69)
         );
  AOI222_X1 U61 ( .A1(data_i[90]), .A2(n17), .B1(data_i[67]), .B2(n13), .C1(
        data_i[113]), .C2(n19), .ZN(n70) );
  NAND2_X1 U62 ( .A1(n49), .A2(n50), .ZN(data_o[16]) );
  AOI22_X1 U63 ( .A1(data_i[16]), .A2(n7), .B1(data_i[39]), .B2(n9), .ZN(n49)
         );
  AOI222_X1 U64 ( .A1(data_i[85]), .A2(n17), .B1(data_i[62]), .B2(n15), .C1(
        data_i[108]), .C2(n20), .ZN(n50) );
  NAND2_X1 U65 ( .A1(n77), .A2(n78), .ZN(data_o[17]) );
  AOI22_X1 U66 ( .A1(data_i[17]), .A2(n6), .B1(data_i[40]), .B2(n9), .ZN(n77)
         );
  AOI222_X1 U67 ( .A1(data_i[86]), .A2(n17), .B1(data_i[63]), .B2(n13), .C1(
        data_i[109]), .C2(n19), .ZN(n78) );
  NAND2_X1 U68 ( .A1(n51), .A2(n52), .ZN(data_o[15]) );
  AOI22_X1 U69 ( .A1(data_i[15]), .A2(n7), .B1(data_i[38]), .B2(n9), .ZN(n51)
         );
  AOI222_X1 U70 ( .A1(data_i[84]), .A2(n17), .B1(data_i[61]), .B2(n15), .C1(
        data_i[107]), .C2(n20), .ZN(n52) );
  NAND2_X1 U71 ( .A1(n55), .A2(n56), .ZN(data_o[13]) );
  AOI22_X1 U72 ( .A1(data_i[13]), .A2(n7), .B1(data_i[36]), .B2(n9), .ZN(n55)
         );
  AOI222_X1 U73 ( .A1(data_i[82]), .A2(n17), .B1(data_i[59]), .B2(n15), .C1(
        data_i[105]), .C2(n20), .ZN(n56) );
  NAND2_X1 U74 ( .A1(n53), .A2(n54), .ZN(data_o[14]) );
  AOI22_X1 U75 ( .A1(data_i[14]), .A2(n7), .B1(data_i[37]), .B2(n9), .ZN(n53)
         );
  AOI222_X1 U76 ( .A1(data_i[83]), .A2(n17), .B1(data_i[60]), .B2(n15), .C1(
        data_i[106]), .C2(n20), .ZN(n54) );
  NAND2_X1 U77 ( .A1(n57), .A2(n58), .ZN(data_o[12]) );
  AOI22_X1 U78 ( .A1(data_i[12]), .A2(n7), .B1(data_i[35]), .B2(n9), .ZN(n57)
         );
  AOI222_X1 U79 ( .A1(data_i[81]), .A2(n17), .B1(data_i[58]), .B2(n15), .C1(
        data_i[104]), .C2(n20), .ZN(n58) );
  NAND2_X1 U80 ( .A1(n59), .A2(n60), .ZN(data_o[11]) );
  AOI22_X1 U81 ( .A1(data_i[11]), .A2(n6), .B1(data_i[34]), .B2(n9), .ZN(n59)
         );
  AOI222_X1 U82 ( .A1(data_i[80]), .A2(n17), .B1(data_i[57]), .B2(n13), .C1(
        data_i[103]), .C2(n19), .ZN(n60) );
  NAND2_X1 U83 ( .A1(n67), .A2(n68), .ZN(data_o[22]) );
  AOI22_X1 U84 ( .A1(data_i[22]), .A2(n6), .B1(data_i[45]), .B2(n9), .ZN(n67)
         );
  AOI222_X1 U85 ( .A1(data_i[91]), .A2(n17), .B1(data_i[68]), .B2(n13), .C1(
        data_i[114]), .C2(n19), .ZN(n68) );
  NAND2_X1 U86 ( .A1(n61), .A2(n62), .ZN(data_o[10]) );
  AOI22_X1 U87 ( .A1(data_i[10]), .A2(n6), .B1(data_i[33]), .B2(n9), .ZN(n61)
         );
  AOI222_X1 U88 ( .A1(data_i[79]), .A2(n17), .B1(data_i[56]), .B2(n13), .C1(
        data_i[102]), .C2(n19), .ZN(n62) );
  NAND2_X1 U89 ( .A1(n63), .A2(n64), .ZN(data_o[9]) );
  AOI22_X1 U90 ( .A1(data_i[9]), .A2(n6), .B1(data_i[32]), .B2(n9), .ZN(n63)
         );
  AOI222_X1 U91 ( .A1(data_i[78]), .A2(n17), .B1(data_i[55]), .B2(n13), .C1(
        data_i[101]), .C2(n19), .ZN(n64) );
  NAND2_X1 U92 ( .A1(n65), .A2(n66), .ZN(data_o[8]) );
  AOI22_X1 U93 ( .A1(data_i[8]), .A2(n6), .B1(data_i[31]), .B2(n9), .ZN(n65)
         );
  AOI222_X1 U94 ( .A1(data_i[77]), .A2(n17), .B1(data_i[54]), .B2(n13), .C1(
        data_i[100]), .C2(n19), .ZN(n66) );
  NAND2_X1 U95 ( .A1(n79), .A2(n80), .ZN(data_o[7]) );
  AOI22_X1 U96 ( .A1(data_i[7]), .A2(n6), .B1(data_i[30]), .B2(n9), .ZN(n79)
         );
  AOI222_X1 U97 ( .A1(data_i[76]), .A2(n17), .B1(data_i[53]), .B2(n13), .C1(
        data_i[99]), .C2(n19), .ZN(n80) );
  NOR2_X1 U98 ( .A1(req_i[3]), .A2(n4), .ZN(n27) );
  OAI21_X1 U99 ( .B1(n14), .B2(n95), .A(n4), .ZN(n83) );
  NAND2_X1 U100 ( .A1(n37), .A2(n38), .ZN(data_o[0]) );
  AOI22_X1 U101 ( .A1(data_i[0]), .A2(n7), .B1(data_i[23]), .B2(n9), .ZN(n37)
         );
  AOI222_X1 U102 ( .A1(data_i[69]), .A2(n17), .B1(data_i[46]), .B2(n15), .C1(
        data_i[92]), .C2(n20), .ZN(n38) );
  NAND2_X1 U103 ( .A1(n45), .A2(n46), .ZN(data_o[6]) );
  AOI22_X1 U104 ( .A1(data_i[6]), .A2(n7), .B1(data_i[29]), .B2(n9), .ZN(n45)
         );
  AOI222_X1 U105 ( .A1(data_i[75]), .A2(n17), .B1(data_i[52]), .B2(n15), .C1(
        data_i[98]), .C2(n20), .ZN(n46) );
  NAND2_X1 U106 ( .A1(n47), .A2(n48), .ZN(data_o[5]) );
  AOI22_X1 U107 ( .A1(data_i[5]), .A2(n7), .B1(data_i[28]), .B2(n9), .ZN(n47)
         );
  AOI222_X1 U108 ( .A1(data_i[74]), .A2(n17), .B1(data_i[51]), .B2(n15), .C1(
        data_i[97]), .C2(n20), .ZN(n48) );
  AND3_X1 U109 ( .A1(req_i[3]), .A2(n10), .A3(n35), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask[3]) );
  OAI22_X1 U110 ( .A1(n33), .A2(n14), .B1(n25), .B2(n23), .ZN(n89) );
  AOI22_X1 U111 ( .A1(gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx[0]), .A2(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .B1(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx[0]), .B2(n21), .ZN(n25)
         );
  OAI22_X1 U112 ( .A1(n33), .A2(n11), .B1(n24), .B2(n23), .ZN(n88) );
  AOI22_X1 U113 ( .A1(gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx[1]), .A2(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .B1(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx[1]), .B2(n21), .ZN(n24)
         );
  AOI21_X1 U114 ( .B1(n10), .B2(n35), .A(n95), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[3]) );
  AOI21_X1 U115 ( .B1(req_o), .B2(gnt_i), .A(flush_i), .ZN(n26) );
  OR2_X1 U116 ( .A1(n26), .A2(flush_i), .ZN(n23) );
  OAI22_X1 U117 ( .A1(n33), .A2(n10), .B1(n22), .B2(n23), .ZN(n87) );
  AOI22_X1 U118 ( .A1(gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .A2(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx[2]), .B1(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx[2]), .B2(n21), .ZN(n22)
         );
  NOR2_X1 U119 ( .A1(gen_arbiter_rr_q[2]), .A2(gen_arbiter_rr_q[1]), .ZN(n36)
         );
  NOR3_X1 U120 ( .A1(n92), .A2(gen_arbiter_rr_q[0]), .A3(n94), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask[1]) );
  AOI222_X1 U121 ( .A1(data_i[70]), .A2(n17), .B1(data_i[47]), .B2(n13), .C1(
        data_i[93]), .C2(n19), .ZN(n82) );
  AOI21_X1 U122 ( .B1(n36), .B2(n14), .A(n94), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[1]) );
  NOR2_X1 U123 ( .A1(n96), .A2(n10), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[4]) );
  OAI21_X1 U124 ( .B1(n14), .B2(n94), .A(req_i[0]), .ZN(n85) );
  AOI22_X1 U125 ( .A1(data_i[1]), .A2(n6), .B1(data_i[24]), .B2(n9), .ZN(n81)
         );
  NOR2_X1 U126 ( .A1(gen_arbiter_rr_q[2]), .A2(n96), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask[4]) );
  NAND2_X1 U127 ( .A1(gen_arbiter_rr_q[0]), .A2(gen_arbiter_rr_q[1]), .ZN(n35)
         );
  INV_X1 U128 ( .A(req_i[1]), .ZN(n94) );
  INV_X1 U129 ( .A(req_i[4]), .ZN(n96) );
  OAI22_X1 U130 ( .A1(req_i[1]), .A2(req_i[0]), .B1(n27), .B2(n11), .ZN(n84)
         );
  INV_X1 U131 ( .A(req_i[3]), .ZN(n95) );
  INV_X1 U132 ( .A(req_i[0]), .ZN(n93) );
  AOI222_X1 U133 ( .A1(data_i[72]), .A2(n17), .B1(data_i[49]), .B2(n15), .C1(
        data_i[95]), .C2(n20), .ZN(n40) );
  NAND2_X1 U134 ( .A1(n40), .A2(n39), .ZN(data_o[3]) );
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
         gen_parallel_slices_2__active_format_in_valid, fmt_out_ready_2_, n3,
         n4, n5, n6, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7;

  fpnew_opgroup_fmt_slice_0_2_00000010_0_00000002_3__logic_Z_1yB_ gen_parallel_slices_2__active_format_i_fmt_slice ( 
        .clk_i(clk_i), .rst_ni(n3), .operands_i(operands_i), .is_boxed_i(
        is_boxed_i[8:6]), .rnd_mode_i(rnd_mode_i), .op_i(op_i), .op_mod_i(
        op_mod_i), .vectorial_op_i(vectorial_op_i), .tag_i(tag_i), 
        .in_valid_i(gen_parallel_slices_2__active_format_in_valid), 
        .in_ready_o(fmt_in_ready_2_), .flush_i(flush_i), .result_o({
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
  rr_arb_tree_00000005_1_346242 i_arbiter ( .clk_i(clk_i), .rst_ni(n3), 
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
        .gnt_i(out_ready_i), .data_o({result_o, status_o_NV_, status_o_DZ_, 
        status_o_OF_, status_o_UF_, status_o_NX_, extension_bit_o, tag_o}), 
        .idx_o({SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, 
        SYNOPSYS_UNCONNECTED_7}) );
  NOR4_X1 U3 ( .A1(n5), .A2(n4), .A3(n6), .A4(dst_fmt_i[0]), .ZN(in_ready_o)
         );
  INV_X1 U4 ( .A(fmt_in_ready_2_), .ZN(n4) );
  NOR4_X1 U5 ( .A1(dst_fmt_i[2]), .A2(dst_fmt_i[0]), .A3(n6), .A4(n5), .ZN(
        gen_parallel_slices_2__active_format_in_valid) );
  INV_X1 U6 ( .A(in_valid_i), .ZN(n5) );
  INV_X1 U7 ( .A(dst_fmt_i[1]), .ZN(n6) );
  BUF_X1 U8 ( .A(rst_ni), .Z(n3) );
endmodule


module lzc_00000005_0_6 ( in_i, cnt_o, empty_o );
  input [4:0] in_i;
  output [2:0] cnt_o;
  output empty_o;
  wire   n1, n2, n5;

  NOR4_X1 U2 ( .A1(in_i[1]), .A2(in_i[0]), .A3(in_i[3]), .A4(in_i[2]), .ZN(n5)
         );
  NOR2_X1 U3 ( .A1(in_i[4]), .A2(n1), .ZN(empty_o) );
  INV_X1 U4 ( .A(n5), .ZN(n1) );
  INV_X1 U5 ( .A(in_i[1]), .ZN(n2) );
  AOI211_X1 U6 ( .C1(in_i[2]), .C2(n2), .A(in_i[0]), .B(n5), .ZN(cnt_o[0]) );
  AND2_X1 U7 ( .A1(n5), .A2(in_i[4]), .ZN(cnt_o[2]) );
  NOR3_X1 U8 ( .A1(n5), .A2(in_i[1]), .A3(in_i[0]), .ZN(cnt_o[1]) );
endmodule


module lzc_00000005_0_5 ( in_i, cnt_o, empty_o );
  input [4:0] in_i;
  output [2:0] cnt_o;
  output empty_o;
  wire   n1, n2, n5;

  NOR4_X1 U2 ( .A1(in_i[1]), .A2(in_i[0]), .A3(in_i[3]), .A4(in_i[2]), .ZN(n5)
         );
  INV_X1 U3 ( .A(n5), .ZN(n2) );
  INV_X1 U4 ( .A(in_i[1]), .ZN(n1) );
  NOR2_X1 U5 ( .A1(in_i[4]), .A2(n2), .ZN(empty_o) );
  AOI211_X1 U6 ( .C1(in_i[2]), .C2(n1), .A(in_i[0]), .B(n5), .ZN(cnt_o[0]) );
  AND2_X1 U7 ( .A1(n5), .A2(in_i[4]), .ZN(cnt_o[2]) );
  NOR3_X1 U8 ( .A1(n5), .A2(in_i[1]), .A3(in_i[0]), .ZN(cnt_o[1]) );
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
  wire   gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty, n10, n11, n14, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n32, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n12, n13, n15, n16, n17, n18, n19, n20, n21, n31, n33,
         n91, n92, n93, n94, n95, n96;
  wire   [2:0] gen_arbiter_rr_q;
  wire   [4:1] gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask;
  wire   [4:1] gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask;
  wire   [2:0] gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx;
  wire   [2:0] gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx;

  DFFR_X1 gen_arbiter_rr_q_reg_0_ ( .D(n89), .CK(clk_i), .RN(rst_ni), .Q(
        gen_arbiter_rr_q[0]), .QN(n14) );
  DFFR_X1 gen_arbiter_rr_q_reg_2_ ( .D(n87), .CK(clk_i), .RN(rst_ni), .Q(
        gen_arbiter_rr_q[2]), .QN(n10) );
  DFFR_X1 gen_arbiter_rr_q_reg_1_ ( .D(n88), .CK(clk_i), .RN(rst_ni), .Q(
        gen_arbiter_rr_q[1]), .QN(n11) );
  lzc_00000005_0_6 gen_arbiter_gen_int_rr_gen_fair_arb_i_lzc_upper ( .in_i({
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask, 1'b0}), .cnt_o(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx), .empty_o(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty) );
  lzc_00000005_0_5 gen_arbiter_gen_int_rr_gen_fair_arb_i_lzc_lower ( .in_i({
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask, req_i[0]}), .cnt_o(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx) );
  BUF_X1 U3 ( .A(n1), .Z(n15) );
  BUF_X1 U4 ( .A(n2), .Z(n7) );
  OR2_X1 U5 ( .A1(n29), .A2(n33), .ZN(n1) );
  OR3_X1 U6 ( .A1(n31), .A2(idx_o[2]), .A3(n84), .ZN(n2) );
  INV_X1 U7 ( .A(gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .ZN(n21) );
  INV_X1 U8 ( .A(n28), .ZN(idx_o[2]) );
  OAI21_X1 U9 ( .B1(req_i[4]), .B2(n28), .A(n29), .ZN(idx_o[1]) );
  INV_X1 U10 ( .A(gnt_i), .ZN(n19) );
  NOR2_X1 U11 ( .A1(n19), .A2(n7), .ZN(gnt_o[1]) );
  NOR2_X1 U12 ( .A1(n19), .A2(n15), .ZN(gnt_o[3]) );
  BUF_X1 U13 ( .A(n5), .Z(n3) );
  BUF_X1 U14 ( .A(n12), .Z(n8) );
  BUF_X1 U15 ( .A(n5), .Z(n4) );
  BUF_X1 U16 ( .A(n18), .Z(n16) );
  BUF_X1 U17 ( .A(n12), .Z(n9) );
  BUF_X1 U18 ( .A(n18), .Z(n17) );
  INV_X1 U19 ( .A(n7), .ZN(n6) );
  INV_X1 U20 ( .A(n15), .ZN(n13) );
  AND2_X1 U21 ( .A1(gnt_i), .A2(n4), .ZN(gnt_o[0]) );
  AND2_X1 U22 ( .A1(gnt_i), .A2(n9), .ZN(gnt_o[2]) );
  AND2_X1 U23 ( .A1(gnt_i), .A2(n17), .ZN(gnt_o[4]) );
  NAND2_X1 U24 ( .A1(n7), .A2(n15), .ZN(idx_o[0]) );
  NAND2_X1 U25 ( .A1(n39), .A2(n40), .ZN(data_o[3]) );
  NAND2_X1 U26 ( .A1(n43), .A2(n44), .ZN(data_o[2]) );
  NAND2_X1 U27 ( .A1(n41), .A2(n42), .ZN(data_o[4]) );
  NAND2_X1 U28 ( .A1(n75), .A2(n76), .ZN(data_o[18]) );
  NAND2_X1 U29 ( .A1(n73), .A2(n74), .ZN(data_o[19]) );
  NAND2_X1 U30 ( .A1(n71), .A2(n72), .ZN(data_o[20]) );
  NAND2_X1 U31 ( .A1(n69), .A2(n70), .ZN(data_o[21]) );
  NAND2_X1 U32 ( .A1(n49), .A2(n50), .ZN(data_o[16]) );
  NAND2_X1 U33 ( .A1(n77), .A2(n78), .ZN(data_o[17]) );
  NAND2_X1 U34 ( .A1(n51), .A2(n52), .ZN(data_o[15]) );
  NAND2_X1 U35 ( .A1(n55), .A2(n56), .ZN(data_o[13]) );
  NAND2_X1 U36 ( .A1(n53), .A2(n54), .ZN(data_o[14]) );
  NAND2_X1 U37 ( .A1(n57), .A2(n58), .ZN(data_o[12]) );
  NAND2_X1 U38 ( .A1(n59), .A2(n60), .ZN(data_o[11]) );
  NAND2_X1 U39 ( .A1(n67), .A2(n68), .ZN(data_o[22]) );
  NAND2_X1 U40 ( .A1(n61), .A2(n62), .ZN(data_o[10]) );
  NAND2_X1 U41 ( .A1(n63), .A2(n64), .ZN(data_o[9]) );
  NAND2_X1 U42 ( .A1(n65), .A2(n66), .ZN(data_o[8]) );
  NAND2_X1 U43 ( .A1(n79), .A2(n80), .ZN(data_o[7]) );
  NAND2_X1 U44 ( .A1(n37), .A2(n38), .ZN(data_o[0]) );
  NAND2_X1 U45 ( .A1(n45), .A2(n46), .ZN(data_o[6]) );
  NAND2_X1 U46 ( .A1(n47), .A2(n48), .ZN(data_o[5]) );
  INV_X1 U47 ( .A(n26), .ZN(n20) );
  NOR2_X1 U48 ( .A1(gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[4]), .A2(
        n86), .ZN(n28) );
  AND3_X1 U49 ( .A1(n92), .A2(n93), .A3(n27), .ZN(n86) );
  NAND4_X1 U50 ( .A1(n27), .A2(n92), .A3(n93), .A4(n96), .ZN(req_o) );
  NOR2_X1 U51 ( .A1(n36), .A2(n94), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[2]) );
  NOR2_X1 U52 ( .A1(n94), .A2(n91), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask[2]) );
  NAND2_X1 U53 ( .A1(n84), .A2(n28), .ZN(n29) );
  INV_X1 U54 ( .A(n36), .ZN(n91) );
  INV_X1 U55 ( .A(n83), .ZN(n33) );
  INV_X1 U56 ( .A(n85), .ZN(n31) );
  BUF_X1 U57 ( .A(n34), .Z(n5) );
  NOR3_X1 U58 ( .A1(n84), .A2(idx_o[2]), .A3(n85), .ZN(n34) );
  BUF_X1 U59 ( .A(n32), .Z(n12) );
  NOR2_X1 U60 ( .A1(n83), .A2(n29), .ZN(n32) );
  BUF_X1 U61 ( .A(n30), .Z(n18) );
  NOR2_X1 U62 ( .A1(n96), .A2(n28), .ZN(n30) );
  NAND2_X1 U63 ( .A1(n81), .A2(n82), .ZN(data_o[1]) );
  AOI21_X1 U64 ( .B1(req_o), .B2(gnt_i), .A(flush_i), .ZN(n26) );
  OAI22_X1 U65 ( .A1(n20), .A2(n14), .B1(n25), .B2(n23), .ZN(n89) );
  AOI22_X1 U66 ( .A1(gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx[0]), .A2(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .B1(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx[0]), .B2(n21), .ZN(n25)
         );
  OAI22_X1 U67 ( .A1(n20), .A2(n10), .B1(n22), .B2(n23), .ZN(n87) );
  AOI22_X1 U68 ( .A1(gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .A2(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx[2]), .B1(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx[2]), .B2(n21), .ZN(n22)
         );
  OAI22_X1 U69 ( .A1(n20), .A2(n11), .B1(n24), .B2(n23), .ZN(n88) );
  AOI22_X1 U70 ( .A1(gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx[1]), .A2(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .B1(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx[1]), .B2(n21), .ZN(n24)
         );
  AND3_X1 U71 ( .A1(req_i[3]), .A2(n10), .A3(n35), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask[3]) );
  AOI21_X1 U72 ( .B1(n10), .B2(n35), .A(n95), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[3]) );
  NOR3_X1 U73 ( .A1(n91), .A2(gen_arbiter_rr_q[0]), .A3(n93), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask[1]) );
  AOI222_X1 U74 ( .A1(data_i[69]), .A2(n13), .B1(data_i[46]), .B2(n9), .C1(
        data_i[92]), .C2(n17), .ZN(n38) );
  AOI222_X1 U75 ( .A1(data_i[71]), .A2(n13), .B1(data_i[48]), .B2(n9), .C1(
        data_i[94]), .C2(n17), .ZN(n44) );
  AOI222_X1 U76 ( .A1(data_i[72]), .A2(n13), .B1(data_i[49]), .B2(n9), .C1(
        data_i[95]), .C2(n17), .ZN(n40) );
  AOI222_X1 U77 ( .A1(data_i[73]), .A2(n13), .B1(data_i[50]), .B2(n9), .C1(
        data_i[96]), .C2(n17), .ZN(n42) );
  AOI222_X1 U78 ( .A1(data_i[74]), .A2(n13), .B1(data_i[51]), .B2(n9), .C1(
        data_i[97]), .C2(n17), .ZN(n48) );
  AOI222_X1 U79 ( .A1(data_i[75]), .A2(n13), .B1(data_i[52]), .B2(n9), .C1(
        data_i[98]), .C2(n17), .ZN(n46) );
  AOI222_X1 U80 ( .A1(data_i[76]), .A2(n13), .B1(data_i[53]), .B2(n8), .C1(
        data_i[99]), .C2(n16), .ZN(n80) );
  AOI222_X1 U81 ( .A1(data_i[77]), .A2(n13), .B1(data_i[54]), .B2(n8), .C1(
        data_i[100]), .C2(n16), .ZN(n66) );
  AOI222_X1 U82 ( .A1(data_i[78]), .A2(n13), .B1(data_i[55]), .B2(n8), .C1(
        data_i[101]), .C2(n16), .ZN(n64) );
  AOI222_X1 U83 ( .A1(data_i[79]), .A2(n13), .B1(data_i[56]), .B2(n8), .C1(
        data_i[102]), .C2(n16), .ZN(n62) );
  AOI222_X1 U84 ( .A1(data_i[80]), .A2(n13), .B1(data_i[57]), .B2(n8), .C1(
        data_i[103]), .C2(n16), .ZN(n60) );
  AOI222_X1 U85 ( .A1(data_i[81]), .A2(n13), .B1(data_i[58]), .B2(n9), .C1(
        data_i[104]), .C2(n17), .ZN(n58) );
  AOI222_X1 U86 ( .A1(data_i[82]), .A2(n13), .B1(data_i[59]), .B2(n9), .C1(
        data_i[105]), .C2(n17), .ZN(n56) );
  AOI222_X1 U87 ( .A1(data_i[83]), .A2(n13), .B1(data_i[60]), .B2(n9), .C1(
        data_i[106]), .C2(n17), .ZN(n54) );
  AOI222_X1 U88 ( .A1(data_i[84]), .A2(n13), .B1(data_i[61]), .B2(n9), .C1(
        data_i[107]), .C2(n17), .ZN(n52) );
  AOI222_X1 U89 ( .A1(data_i[85]), .A2(n13), .B1(data_i[62]), .B2(n9), .C1(
        data_i[108]), .C2(n17), .ZN(n50) );
  AOI222_X1 U90 ( .A1(data_i[86]), .A2(n13), .B1(data_i[63]), .B2(n8), .C1(
        data_i[109]), .C2(n16), .ZN(n78) );
  AOI222_X1 U91 ( .A1(data_i[87]), .A2(n13), .B1(data_i[64]), .B2(n8), .C1(
        data_i[110]), .C2(n16), .ZN(n76) );
  AOI222_X1 U92 ( .A1(data_i[88]), .A2(n13), .B1(data_i[65]), .B2(n8), .C1(
        data_i[111]), .C2(n16), .ZN(n74) );
  AOI222_X1 U93 ( .A1(data_i[89]), .A2(n13), .B1(data_i[66]), .B2(n8), .C1(
        data_i[112]), .C2(n16), .ZN(n72) );
  AOI222_X1 U94 ( .A1(data_i[90]), .A2(n13), .B1(data_i[67]), .B2(n8), .C1(
        data_i[113]), .C2(n16), .ZN(n70) );
  AOI222_X1 U95 ( .A1(data_i[91]), .A2(n13), .B1(data_i[68]), .B2(n8), .C1(
        data_i[114]), .C2(n16), .ZN(n68) );
  AOI222_X1 U96 ( .A1(data_i[70]), .A2(n13), .B1(data_i[47]), .B2(n8), .C1(
        data_i[93]), .C2(n16), .ZN(n82) );
  AOI21_X1 U97 ( .B1(n36), .B2(n14), .A(n93), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[1]) );
  NOR2_X1 U98 ( .A1(gen_arbiter_rr_q[2]), .A2(gen_arbiter_rr_q[1]), .ZN(n36)
         );
  NOR2_X1 U99 ( .A1(n96), .A2(n10), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[4]) );
  OAI21_X1 U100 ( .B1(n14), .B2(n93), .A(req_i[0]), .ZN(n85) );
  OAI21_X1 U101 ( .B1(n14), .B2(n95), .A(req_i[2]), .ZN(n83) );
  AOI22_X1 U102 ( .A1(data_i[0]), .A2(n4), .B1(data_i[23]), .B2(n6), .ZN(n37)
         );
  AOI22_X1 U103 ( .A1(data_i[2]), .A2(n4), .B1(data_i[25]), .B2(n6), .ZN(n43)
         );
  AOI22_X1 U104 ( .A1(data_i[3]), .A2(n4), .B1(data_i[26]), .B2(n6), .ZN(n39)
         );
  AOI22_X1 U105 ( .A1(data_i[4]), .A2(n4), .B1(data_i[27]), .B2(n6), .ZN(n41)
         );
  AOI22_X1 U106 ( .A1(data_i[5]), .A2(n4), .B1(data_i[28]), .B2(n6), .ZN(n47)
         );
  AOI22_X1 U107 ( .A1(data_i[6]), .A2(n4), .B1(data_i[29]), .B2(n6), .ZN(n45)
         );
  AOI22_X1 U108 ( .A1(data_i[7]), .A2(n3), .B1(data_i[30]), .B2(n6), .ZN(n79)
         );
  AOI22_X1 U109 ( .A1(data_i[8]), .A2(n3), .B1(data_i[31]), .B2(n6), .ZN(n65)
         );
  AOI22_X1 U110 ( .A1(data_i[9]), .A2(n3), .B1(data_i[32]), .B2(n6), .ZN(n63)
         );
  AOI22_X1 U111 ( .A1(data_i[10]), .A2(n3), .B1(data_i[33]), .B2(n6), .ZN(n61)
         );
  AOI22_X1 U112 ( .A1(data_i[11]), .A2(n3), .B1(data_i[34]), .B2(n6), .ZN(n59)
         );
  AOI22_X1 U113 ( .A1(data_i[12]), .A2(n4), .B1(data_i[35]), .B2(n6), .ZN(n57)
         );
  AOI22_X1 U114 ( .A1(data_i[13]), .A2(n4), .B1(data_i[36]), .B2(n6), .ZN(n55)
         );
  AOI22_X1 U115 ( .A1(data_i[14]), .A2(n4), .B1(data_i[37]), .B2(n6), .ZN(n53)
         );
  AOI22_X1 U116 ( .A1(data_i[15]), .A2(n4), .B1(data_i[38]), .B2(n6), .ZN(n51)
         );
  AOI22_X1 U117 ( .A1(data_i[16]), .A2(n4), .B1(data_i[39]), .B2(n6), .ZN(n49)
         );
  AOI22_X1 U118 ( .A1(data_i[17]), .A2(n3), .B1(data_i[40]), .B2(n6), .ZN(n77)
         );
  AOI22_X1 U119 ( .A1(data_i[18]), .A2(n3), .B1(data_i[41]), .B2(n6), .ZN(n75)
         );
  AOI22_X1 U120 ( .A1(data_i[19]), .A2(n3), .B1(data_i[42]), .B2(n6), .ZN(n73)
         );
  AOI22_X1 U121 ( .A1(data_i[20]), .A2(n3), .B1(data_i[43]), .B2(n6), .ZN(n71)
         );
  AOI22_X1 U122 ( .A1(data_i[21]), .A2(n3), .B1(data_i[44]), .B2(n6), .ZN(n69)
         );
  AOI22_X1 U123 ( .A1(data_i[22]), .A2(n3), .B1(data_i[45]), .B2(n6), .ZN(n67)
         );
  AOI22_X1 U124 ( .A1(data_i[1]), .A2(n3), .B1(data_i[24]), .B2(n6), .ZN(n81)
         );
  NOR2_X1 U125 ( .A1(gen_arbiter_rr_q[2]), .A2(n96), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask[4]) );
  OR2_X1 U126 ( .A1(n26), .A2(flush_i), .ZN(n23) );
  NAND2_X1 U127 ( .A1(gen_arbiter_rr_q[0]), .A2(gen_arbiter_rr_q[1]), .ZN(n35)
         );
  INV_X1 U128 ( .A(req_i[1]), .ZN(n93) );
  INV_X1 U129 ( .A(req_i[4]), .ZN(n96) );
  OAI22_X1 U130 ( .A1(req_i[1]), .A2(req_i[0]), .B1(n27), .B2(n11), .ZN(n84)
         );
  NOR2_X1 U131 ( .A1(req_i[3]), .A2(req_i[2]), .ZN(n27) );
  INV_X1 U132 ( .A(req_i[2]), .ZN(n94) );
  INV_X1 U133 ( .A(req_i[3]), .ZN(n95) );
  INV_X1 U134 ( .A(req_i[0]), .ZN(n92) );
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
  wire   SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8;
  assign busy_o = 1'b0;
  assign in_ready_o = 1'b0;

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
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .req_o(out_valid_o), 
        .gnt_i(out_ready_i), .data_o({result_o, status_o_NV_, status_o_DZ_, 
        status_o_OF_, status_o_UF_, status_o_NX_, extension_bit_o, tag_o}), 
        .idx_o({SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8}) );
endmodule


module lzc_00000005_0_4 ( in_i, cnt_o, empty_o );
  input [4:0] in_i;
  output [2:0] cnt_o;
  output empty_o;
  wire   n1, n2, n5;

  NOR4_X1 U2 ( .A1(in_i[1]), .A2(in_i[0]), .A3(in_i[3]), .A4(in_i[2]), .ZN(n5)
         );
  NOR2_X1 U3 ( .A1(in_i[4]), .A2(n1), .ZN(empty_o) );
  INV_X1 U4 ( .A(n5), .ZN(n1) );
  INV_X1 U5 ( .A(in_i[1]), .ZN(n2) );
  AOI211_X1 U6 ( .C1(in_i[2]), .C2(n2), .A(in_i[0]), .B(n5), .ZN(cnt_o[0]) );
  AND2_X1 U7 ( .A1(n5), .A2(in_i[4]), .ZN(cnt_o[2]) );
  NOR3_X1 U8 ( .A1(n5), .A2(in_i[1]), .A3(in_i[0]), .ZN(cnt_o[1]) );
endmodule


module lzc_00000005_0_3 ( in_i, cnt_o, empty_o );
  input [4:0] in_i;
  output [2:0] cnt_o;
  output empty_o;
  wire   n1, n2, n5;

  NOR4_X1 U2 ( .A1(in_i[1]), .A2(in_i[0]), .A3(in_i[3]), .A4(in_i[2]), .ZN(n5)
         );
  INV_X1 U3 ( .A(n5), .ZN(n2) );
  INV_X1 U4 ( .A(in_i[1]), .ZN(n1) );
  NOR2_X1 U5 ( .A1(in_i[4]), .A2(n2), .ZN(empty_o) );
  AOI211_X1 U6 ( .C1(in_i[2]), .C2(n1), .A(in_i[0]), .B(n5), .ZN(cnt_o[0]) );
  AND2_X1 U7 ( .A1(n5), .A2(in_i[4]), .ZN(cnt_o[2]) );
  NOR3_X1 U8 ( .A1(n5), .A2(in_i[1]), .A3(in_i[0]), .ZN(cnt_o[1]) );
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
  wire   gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty, n10, n11, n14, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n32, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n12, n13, n15, n16, n17, n18, n19, n20, n21, n31, n33,
         n91, n92, n93, n94, n95, n96;
  wire   [2:0] gen_arbiter_rr_q;
  wire   [4:1] gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask;
  wire   [4:1] gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask;
  wire   [2:0] gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx;
  wire   [2:0] gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx;

  DFFR_X1 gen_arbiter_rr_q_reg_0_ ( .D(n89), .CK(clk_i), .RN(rst_ni), .Q(
        gen_arbiter_rr_q[0]), .QN(n14) );
  DFFR_X1 gen_arbiter_rr_q_reg_2_ ( .D(n87), .CK(clk_i), .RN(rst_ni), .Q(
        gen_arbiter_rr_q[2]), .QN(n10) );
  DFFR_X1 gen_arbiter_rr_q_reg_1_ ( .D(n88), .CK(clk_i), .RN(rst_ni), .Q(
        gen_arbiter_rr_q[1]), .QN(n11) );
  lzc_00000005_0_4 gen_arbiter_gen_int_rr_gen_fair_arb_i_lzc_upper ( .in_i({
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask, 1'b0}), .cnt_o(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx), .empty_o(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty) );
  lzc_00000005_0_3 gen_arbiter_gen_int_rr_gen_fair_arb_i_lzc_lower ( .in_i({
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask, req_i[0]}), .cnt_o(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx) );
  BUF_X1 U3 ( .A(n1), .Z(n15) );
  BUF_X1 U4 ( .A(n2), .Z(n7) );
  OR2_X1 U5 ( .A1(n29), .A2(n33), .ZN(n1) );
  OR3_X1 U6 ( .A1(n31), .A2(idx_o[2]), .A3(n84), .ZN(n2) );
  INV_X1 U7 ( .A(gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .ZN(n21) );
  INV_X1 U8 ( .A(n28), .ZN(idx_o[2]) );
  OAI21_X1 U9 ( .B1(req_i[4]), .B2(n28), .A(n29), .ZN(idx_o[1]) );
  INV_X1 U10 ( .A(gnt_i), .ZN(n19) );
  NOR2_X1 U11 ( .A1(n19), .A2(n7), .ZN(gnt_o[1]) );
  NOR2_X1 U12 ( .A1(n19), .A2(n15), .ZN(gnt_o[3]) );
  BUF_X1 U13 ( .A(n5), .Z(n3) );
  BUF_X1 U14 ( .A(n12), .Z(n8) );
  BUF_X1 U15 ( .A(n5), .Z(n4) );
  BUF_X1 U16 ( .A(n18), .Z(n16) );
  BUF_X1 U17 ( .A(n12), .Z(n9) );
  BUF_X1 U18 ( .A(n18), .Z(n17) );
  INV_X1 U19 ( .A(n7), .ZN(n6) );
  INV_X1 U20 ( .A(n15), .ZN(n13) );
  AND2_X1 U21 ( .A1(gnt_i), .A2(n4), .ZN(gnt_o[0]) );
  AND2_X1 U22 ( .A1(gnt_i), .A2(n9), .ZN(gnt_o[2]) );
  AND2_X1 U23 ( .A1(gnt_i), .A2(n17), .ZN(gnt_o[4]) );
  NAND2_X1 U24 ( .A1(n7), .A2(n15), .ZN(idx_o[0]) );
  INV_X1 U25 ( .A(n26), .ZN(n20) );
  NOR2_X1 U26 ( .A1(gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[4]), .A2(
        n86), .ZN(n28) );
  AND3_X1 U27 ( .A1(n92), .A2(n93), .A3(n27), .ZN(n86) );
  NOR2_X1 U28 ( .A1(n36), .A2(n94), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[2]) );
  NOR2_X1 U29 ( .A1(n94), .A2(n91), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask[2]) );
  NAND4_X1 U30 ( .A1(n27), .A2(n92), .A3(n93), .A4(n96), .ZN(req_o) );
  NAND2_X1 U31 ( .A1(n84), .A2(n28), .ZN(n29) );
  INV_X1 U32 ( .A(n36), .ZN(n91) );
  INV_X1 U33 ( .A(n83), .ZN(n33) );
  INV_X1 U34 ( .A(n85), .ZN(n31) );
  BUF_X1 U35 ( .A(n34), .Z(n5) );
  NOR3_X1 U36 ( .A1(n84), .A2(idx_o[2]), .A3(n85), .ZN(n34) );
  BUF_X1 U37 ( .A(n32), .Z(n12) );
  NOR2_X1 U38 ( .A1(n83), .A2(n29), .ZN(n32) );
  BUF_X1 U39 ( .A(n30), .Z(n18) );
  NOR2_X1 U40 ( .A1(n96), .A2(n28), .ZN(n30) );
  NAND2_X1 U41 ( .A1(n81), .A2(n82), .ZN(data_o[1]) );
  AOI21_X1 U42 ( .B1(req_o), .B2(gnt_i), .A(flush_i), .ZN(n26) );
  OAI22_X1 U43 ( .A1(n20), .A2(n14), .B1(n25), .B2(n23), .ZN(n89) );
  AOI22_X1 U44 ( .A1(gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx[0]), .A2(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .B1(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx[0]), .B2(n21), .ZN(n25)
         );
  OAI22_X1 U45 ( .A1(n20), .A2(n10), .B1(n22), .B2(n23), .ZN(n87) );
  AOI22_X1 U46 ( .A1(gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .A2(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx[2]), .B1(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx[2]), .B2(n21), .ZN(n22)
         );
  OAI22_X1 U47 ( .A1(n20), .A2(n11), .B1(n24), .B2(n23), .ZN(n88) );
  AOI22_X1 U48 ( .A1(gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx[1]), .A2(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .B1(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx[1]), .B2(n21), .ZN(n24)
         );
  AND3_X1 U49 ( .A1(req_i[3]), .A2(n10), .A3(n35), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask[3]) );
  AOI21_X1 U50 ( .B1(n10), .B2(n35), .A(n95), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[3]) );
  NOR3_X1 U51 ( .A1(n91), .A2(gen_arbiter_rr_q[0]), .A3(n93), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask[1]) );
  AOI222_X1 U52 ( .A1(data_i[70]), .A2(n13), .B1(data_i[47]), .B2(n8), .C1(
        data_i[93]), .C2(n16), .ZN(n82) );
  AOI21_X1 U53 ( .B1(n36), .B2(n14), .A(n93), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[1]) );
  NOR2_X1 U54 ( .A1(gen_arbiter_rr_q[2]), .A2(gen_arbiter_rr_q[1]), .ZN(n36)
         );
  NOR2_X1 U55 ( .A1(n96), .A2(n10), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[4]) );
  OAI21_X1 U56 ( .B1(n14), .B2(n93), .A(req_i[0]), .ZN(n85) );
  OAI21_X1 U57 ( .B1(n14), .B2(n95), .A(req_i[2]), .ZN(n83) );
  AOI22_X1 U58 ( .A1(data_i[1]), .A2(n3), .B1(data_i[24]), .B2(n6), .ZN(n81)
         );
  NOR2_X1 U59 ( .A1(gen_arbiter_rr_q[2]), .A2(n96), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask[4]) );
  OR2_X1 U60 ( .A1(n26), .A2(flush_i), .ZN(n23) );
  NAND2_X1 U61 ( .A1(gen_arbiter_rr_q[0]), .A2(gen_arbiter_rr_q[1]), .ZN(n35)
         );
  NAND2_X1 U62 ( .A1(n37), .A2(n38), .ZN(data_o[0]) );
  AOI22_X1 U63 ( .A1(data_i[0]), .A2(n4), .B1(data_i[23]), .B2(n6), .ZN(n37)
         );
  AOI222_X1 U64 ( .A1(data_i[69]), .A2(n13), .B1(data_i[46]), .B2(n9), .C1(
        data_i[92]), .C2(n17), .ZN(n38) );
  NAND2_X1 U65 ( .A1(n43), .A2(n44), .ZN(data_o[2]) );
  AOI22_X1 U66 ( .A1(data_i[2]), .A2(n4), .B1(data_i[25]), .B2(n6), .ZN(n43)
         );
  AOI222_X1 U67 ( .A1(data_i[71]), .A2(n13), .B1(data_i[48]), .B2(n9), .C1(
        data_i[94]), .C2(n17), .ZN(n44) );
  NAND2_X1 U68 ( .A1(n41), .A2(n42), .ZN(data_o[4]) );
  AOI22_X1 U69 ( .A1(data_i[4]), .A2(n4), .B1(data_i[27]), .B2(n6), .ZN(n41)
         );
  AOI222_X1 U70 ( .A1(data_i[73]), .A2(n13), .B1(data_i[50]), .B2(n9), .C1(
        data_i[96]), .C2(n17), .ZN(n42) );
  NAND2_X1 U71 ( .A1(n47), .A2(n48), .ZN(data_o[5]) );
  AOI22_X1 U72 ( .A1(data_i[5]), .A2(n4), .B1(data_i[28]), .B2(n6), .ZN(n47)
         );
  AOI222_X1 U73 ( .A1(data_i[74]), .A2(n13), .B1(data_i[51]), .B2(n9), .C1(
        data_i[97]), .C2(n17), .ZN(n48) );
  NAND2_X1 U74 ( .A1(n45), .A2(n46), .ZN(data_o[6]) );
  AOI22_X1 U75 ( .A1(data_i[6]), .A2(n4), .B1(data_i[29]), .B2(n6), .ZN(n45)
         );
  AOI222_X1 U76 ( .A1(data_i[75]), .A2(n13), .B1(data_i[52]), .B2(n9), .C1(
        data_i[98]), .C2(n17), .ZN(n46) );
  NAND2_X1 U77 ( .A1(n79), .A2(n80), .ZN(data_o[7]) );
  AOI22_X1 U78 ( .A1(data_i[7]), .A2(n3), .B1(data_i[30]), .B2(n6), .ZN(n79)
         );
  AOI222_X1 U79 ( .A1(data_i[76]), .A2(n13), .B1(data_i[53]), .B2(n8), .C1(
        data_i[99]), .C2(n16), .ZN(n80) );
  NAND2_X1 U80 ( .A1(n65), .A2(n66), .ZN(data_o[8]) );
  AOI22_X1 U81 ( .A1(data_i[8]), .A2(n3), .B1(data_i[31]), .B2(n6), .ZN(n65)
         );
  AOI222_X1 U82 ( .A1(data_i[77]), .A2(n13), .B1(data_i[54]), .B2(n8), .C1(
        data_i[100]), .C2(n16), .ZN(n66) );
  NAND2_X1 U83 ( .A1(n63), .A2(n64), .ZN(data_o[9]) );
  AOI22_X1 U84 ( .A1(data_i[9]), .A2(n3), .B1(data_i[32]), .B2(n6), .ZN(n63)
         );
  AOI222_X1 U85 ( .A1(data_i[78]), .A2(n13), .B1(data_i[55]), .B2(n8), .C1(
        data_i[101]), .C2(n16), .ZN(n64) );
  NAND2_X1 U86 ( .A1(n61), .A2(n62), .ZN(data_o[10]) );
  AOI22_X1 U87 ( .A1(data_i[10]), .A2(n3), .B1(data_i[33]), .B2(n6), .ZN(n61)
         );
  AOI222_X1 U88 ( .A1(data_i[79]), .A2(n13), .B1(data_i[56]), .B2(n8), .C1(
        data_i[102]), .C2(n16), .ZN(n62) );
  NAND2_X1 U89 ( .A1(n59), .A2(n60), .ZN(data_o[11]) );
  AOI22_X1 U90 ( .A1(data_i[11]), .A2(n3), .B1(data_i[34]), .B2(n6), .ZN(n59)
         );
  AOI222_X1 U91 ( .A1(data_i[80]), .A2(n13), .B1(data_i[57]), .B2(n8), .C1(
        data_i[103]), .C2(n16), .ZN(n60) );
  NAND2_X1 U92 ( .A1(n57), .A2(n58), .ZN(data_o[12]) );
  AOI22_X1 U93 ( .A1(data_i[12]), .A2(n4), .B1(data_i[35]), .B2(n6), .ZN(n57)
         );
  AOI222_X1 U94 ( .A1(data_i[81]), .A2(n13), .B1(data_i[58]), .B2(n9), .C1(
        data_i[104]), .C2(n17), .ZN(n58) );
  NAND2_X1 U95 ( .A1(n55), .A2(n56), .ZN(data_o[13]) );
  AOI22_X1 U96 ( .A1(data_i[13]), .A2(n4), .B1(data_i[36]), .B2(n6), .ZN(n55)
         );
  AOI222_X1 U97 ( .A1(data_i[82]), .A2(n13), .B1(data_i[59]), .B2(n9), .C1(
        data_i[105]), .C2(n17), .ZN(n56) );
  NAND2_X1 U98 ( .A1(n53), .A2(n54), .ZN(data_o[14]) );
  AOI22_X1 U99 ( .A1(data_i[14]), .A2(n4), .B1(data_i[37]), .B2(n6), .ZN(n53)
         );
  AOI222_X1 U100 ( .A1(data_i[83]), .A2(n13), .B1(data_i[60]), .B2(n9), .C1(
        data_i[106]), .C2(n17), .ZN(n54) );
  NAND2_X1 U101 ( .A1(n51), .A2(n52), .ZN(data_o[15]) );
  AOI22_X1 U102 ( .A1(data_i[15]), .A2(n4), .B1(data_i[38]), .B2(n6), .ZN(n51)
         );
  AOI222_X1 U103 ( .A1(data_i[84]), .A2(n13), .B1(data_i[61]), .B2(n9), .C1(
        data_i[107]), .C2(n17), .ZN(n52) );
  NAND2_X1 U104 ( .A1(n49), .A2(n50), .ZN(data_o[16]) );
  AOI22_X1 U105 ( .A1(data_i[16]), .A2(n4), .B1(data_i[39]), .B2(n6), .ZN(n49)
         );
  AOI222_X1 U106 ( .A1(data_i[85]), .A2(n13), .B1(data_i[62]), .B2(n9), .C1(
        data_i[108]), .C2(n17), .ZN(n50) );
  NAND2_X1 U107 ( .A1(n77), .A2(n78), .ZN(data_o[17]) );
  AOI22_X1 U108 ( .A1(data_i[17]), .A2(n3), .B1(data_i[40]), .B2(n6), .ZN(n77)
         );
  AOI222_X1 U109 ( .A1(data_i[86]), .A2(n13), .B1(data_i[63]), .B2(n8), .C1(
        data_i[109]), .C2(n16), .ZN(n78) );
  NAND2_X1 U110 ( .A1(n75), .A2(n76), .ZN(data_o[18]) );
  AOI22_X1 U111 ( .A1(data_i[18]), .A2(n3), .B1(data_i[41]), .B2(n6), .ZN(n75)
         );
  AOI222_X1 U112 ( .A1(data_i[87]), .A2(n13), .B1(data_i[64]), .B2(n8), .C1(
        data_i[110]), .C2(n16), .ZN(n76) );
  NAND2_X1 U113 ( .A1(n73), .A2(n74), .ZN(data_o[19]) );
  AOI22_X1 U114 ( .A1(data_i[19]), .A2(n3), .B1(data_i[42]), .B2(n6), .ZN(n73)
         );
  AOI222_X1 U115 ( .A1(data_i[88]), .A2(n13), .B1(data_i[65]), .B2(n8), .C1(
        data_i[111]), .C2(n16), .ZN(n74) );
  NAND2_X1 U116 ( .A1(n71), .A2(n72), .ZN(data_o[20]) );
  AOI22_X1 U117 ( .A1(data_i[20]), .A2(n3), .B1(data_i[43]), .B2(n6), .ZN(n71)
         );
  AOI222_X1 U118 ( .A1(data_i[89]), .A2(n13), .B1(data_i[66]), .B2(n8), .C1(
        data_i[112]), .C2(n16), .ZN(n72) );
  NAND2_X1 U119 ( .A1(n69), .A2(n70), .ZN(data_o[21]) );
  AOI22_X1 U120 ( .A1(data_i[21]), .A2(n3), .B1(data_i[44]), .B2(n6), .ZN(n69)
         );
  AOI222_X1 U121 ( .A1(data_i[90]), .A2(n13), .B1(data_i[67]), .B2(n8), .C1(
        data_i[113]), .C2(n16), .ZN(n70) );
  NAND2_X1 U122 ( .A1(n67), .A2(n68), .ZN(data_o[22]) );
  AOI22_X1 U123 ( .A1(data_i[22]), .A2(n3), .B1(data_i[45]), .B2(n6), .ZN(n67)
         );
  AOI222_X1 U124 ( .A1(data_i[91]), .A2(n13), .B1(data_i[68]), .B2(n8), .C1(
        data_i[114]), .C2(n16), .ZN(n68) );
  NAND2_X1 U125 ( .A1(n39), .A2(n40), .ZN(data_o[3]) );
  AOI22_X1 U126 ( .A1(data_i[3]), .A2(n4), .B1(data_i[26]), .B2(n6), .ZN(n39)
         );
  AOI222_X1 U127 ( .A1(data_i[72]), .A2(n13), .B1(data_i[49]), .B2(n9), .C1(
        data_i[95]), .C2(n17), .ZN(n40) );
  INV_X1 U128 ( .A(req_i[1]), .ZN(n93) );
  INV_X1 U129 ( .A(req_i[4]), .ZN(n96) );
  OAI22_X1 U130 ( .A1(req_i[1]), .A2(req_i[0]), .B1(n27), .B2(n11), .ZN(n84)
         );
  NOR2_X1 U131 ( .A1(req_i[3]), .A2(req_i[2]), .ZN(n27) );
  INV_X1 U132 ( .A(req_i[2]), .ZN(n94) );
  INV_X1 U133 ( .A(req_i[3]), .ZN(n95) );
  INV_X1 U134 ( .A(req_i[0]), .ZN(n92) );
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
  wire   SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8;
  assign busy_o = 1'b0;
  assign in_ready_o = 1'b0;

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
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .req_o(out_valid_o), 
        .gnt_i(out_ready_i), .data_o({result_o, status_o_NV_, status_o_DZ_, 
        status_o_OF_, status_o_UF_, status_o_NX_, extension_bit_o, tag_o}), 
        .idx_o({SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8}) );
endmodule


module lzc_00000005_0_2 ( in_i, cnt_o, empty_o );
  input [4:0] in_i;
  output [2:0] cnt_o;
  output empty_o;
  wire   n1, n2, n5;

  NOR4_X1 U2 ( .A1(in_i[1]), .A2(in_i[0]), .A3(in_i[3]), .A4(in_i[2]), .ZN(n5)
         );
  NOR2_X1 U3 ( .A1(in_i[4]), .A2(n1), .ZN(empty_o) );
  INV_X1 U4 ( .A(n5), .ZN(n1) );
  INV_X1 U5 ( .A(in_i[1]), .ZN(n2) );
  AOI211_X1 U6 ( .C1(in_i[2]), .C2(n2), .A(in_i[0]), .B(n5), .ZN(cnt_o[0]) );
  AND2_X1 U7 ( .A1(n5), .A2(in_i[4]), .ZN(cnt_o[2]) );
  NOR3_X1 U8 ( .A1(n5), .A2(in_i[1]), .A3(in_i[0]), .ZN(cnt_o[1]) );
endmodule


module lzc_00000005_0_1 ( in_i, cnt_o, empty_o );
  input [4:0] in_i;
  output [2:0] cnt_o;
  output empty_o;
  wire   n1, n2, n5;

  NOR4_X1 U2 ( .A1(in_i[1]), .A2(in_i[0]), .A3(in_i[3]), .A4(in_i[2]), .ZN(n5)
         );
  INV_X1 U3 ( .A(n5), .ZN(n2) );
  INV_X1 U4 ( .A(in_i[1]), .ZN(n1) );
  NOR2_X1 U5 ( .A1(in_i[4]), .A2(n2), .ZN(empty_o) );
  AOI211_X1 U6 ( .C1(in_i[2]), .C2(n1), .A(in_i[0]), .B(n5), .ZN(cnt_o[0]) );
  AND2_X1 U7 ( .A1(n5), .A2(in_i[4]), .ZN(cnt_o[2]) );
  NOR3_X1 U8 ( .A1(n5), .A2(in_i[1]), .A3(in_i[0]), .ZN(cnt_o[1]) );
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
  wire   gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty, n10, n11, n14, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n32, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n12, n13, n15, n16, n17, n18, n19, n20, n21, n31, n33,
         n91, n92, n93, n94, n95, n96;
  wire   [2:0] gen_arbiter_rr_q;
  wire   [4:1] gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask;
  wire   [4:1] gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask;
  wire   [2:0] gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx;
  wire   [2:0] gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx;

  DFFR_X1 gen_arbiter_rr_q_reg_0_ ( .D(n89), .CK(clk_i), .RN(rst_ni), .Q(
        gen_arbiter_rr_q[0]), .QN(n14) );
  DFFR_X1 gen_arbiter_rr_q_reg_2_ ( .D(n87), .CK(clk_i), .RN(rst_ni), .Q(
        gen_arbiter_rr_q[2]), .QN(n10) );
  DFFR_X1 gen_arbiter_rr_q_reg_1_ ( .D(n88), .CK(clk_i), .RN(rst_ni), .Q(
        gen_arbiter_rr_q[1]), .QN(n11) );
  lzc_00000005_0_2 gen_arbiter_gen_int_rr_gen_fair_arb_i_lzc_upper ( .in_i({
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask, 1'b0}), .cnt_o(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx), .empty_o(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty) );
  lzc_00000005_0_1 gen_arbiter_gen_int_rr_gen_fair_arb_i_lzc_lower ( .in_i({
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask, req_i[0]}), .cnt_o(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx) );
  BUF_X1 U3 ( .A(n1), .Z(n15) );
  BUF_X1 U4 ( .A(n2), .Z(n7) );
  OR2_X1 U5 ( .A1(n29), .A2(n33), .ZN(n1) );
  OR3_X1 U6 ( .A1(n31), .A2(idx_o[2]), .A3(n84), .ZN(n2) );
  INV_X1 U7 ( .A(gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .ZN(n21) );
  INV_X1 U8 ( .A(n28), .ZN(idx_o[2]) );
  OAI21_X1 U9 ( .B1(req_i[4]), .B2(n28), .A(n29), .ZN(idx_o[1]) );
  INV_X1 U10 ( .A(gnt_i), .ZN(n19) );
  NOR2_X1 U11 ( .A1(n19), .A2(n7), .ZN(gnt_o[1]) );
  NOR2_X1 U12 ( .A1(n19), .A2(n15), .ZN(gnt_o[3]) );
  BUF_X1 U13 ( .A(n5), .Z(n3) );
  BUF_X1 U14 ( .A(n12), .Z(n8) );
  BUF_X1 U15 ( .A(n5), .Z(n4) );
  BUF_X1 U16 ( .A(n18), .Z(n16) );
  BUF_X1 U17 ( .A(n12), .Z(n9) );
  BUF_X1 U18 ( .A(n18), .Z(n17) );
  INV_X1 U19 ( .A(n7), .ZN(n6) );
  INV_X1 U20 ( .A(n15), .ZN(n13) );
  AND2_X1 U21 ( .A1(gnt_i), .A2(n4), .ZN(gnt_o[0]) );
  AND2_X1 U22 ( .A1(gnt_i), .A2(n9), .ZN(gnt_o[2]) );
  AND2_X1 U23 ( .A1(gnt_i), .A2(n17), .ZN(gnt_o[4]) );
  NAND2_X1 U24 ( .A1(n7), .A2(n15), .ZN(idx_o[0]) );
  INV_X1 U25 ( .A(n26), .ZN(n20) );
  NOR2_X1 U26 ( .A1(gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[4]), .A2(
        n86), .ZN(n28) );
  AND3_X1 U27 ( .A1(n92), .A2(n93), .A3(n27), .ZN(n86) );
  NAND4_X1 U28 ( .A1(n27), .A2(n92), .A3(n93), .A4(n96), .ZN(req_o) );
  NOR2_X1 U29 ( .A1(n36), .A2(n94), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[2]) );
  NOR2_X1 U30 ( .A1(n94), .A2(n91), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask[2]) );
  NAND2_X1 U31 ( .A1(n84), .A2(n28), .ZN(n29) );
  INV_X1 U32 ( .A(n36), .ZN(n91) );
  INV_X1 U33 ( .A(n83), .ZN(n33) );
  INV_X1 U34 ( .A(n85), .ZN(n31) );
  BUF_X1 U35 ( .A(n34), .Z(n5) );
  NOR3_X1 U36 ( .A1(n84), .A2(idx_o[2]), .A3(n85), .ZN(n34) );
  BUF_X1 U37 ( .A(n32), .Z(n12) );
  NOR2_X1 U38 ( .A1(n83), .A2(n29), .ZN(n32) );
  BUF_X1 U39 ( .A(n30), .Z(n18) );
  NOR2_X1 U40 ( .A1(n96), .A2(n28), .ZN(n30) );
  NAND2_X1 U41 ( .A1(n81), .A2(n82), .ZN(data_o[1]) );
  AOI21_X1 U42 ( .B1(req_o), .B2(gnt_i), .A(flush_i), .ZN(n26) );
  OAI22_X1 U43 ( .A1(n20), .A2(n14), .B1(n25), .B2(n23), .ZN(n89) );
  AOI22_X1 U44 ( .A1(gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx[0]), .A2(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .B1(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx[0]), .B2(n21), .ZN(n25)
         );
  OAI22_X1 U45 ( .A1(n20), .A2(n10), .B1(n22), .B2(n23), .ZN(n87) );
  AOI22_X1 U46 ( .A1(gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .A2(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx[2]), .B1(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx[2]), .B2(n21), .ZN(n22)
         );
  OAI22_X1 U47 ( .A1(n20), .A2(n11), .B1(n24), .B2(n23), .ZN(n88) );
  AOI22_X1 U48 ( .A1(gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx[1]), .A2(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .B1(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx[1]), .B2(n21), .ZN(n24)
         );
  AND3_X1 U49 ( .A1(req_i[3]), .A2(n10), .A3(n35), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask[3]) );
  AOI21_X1 U50 ( .B1(n10), .B2(n35), .A(n95), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[3]) );
  NOR3_X1 U51 ( .A1(n91), .A2(gen_arbiter_rr_q[0]), .A3(n93), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask[1]) );
  AOI222_X1 U52 ( .A1(data_i[70]), .A2(n13), .B1(data_i[47]), .B2(n8), .C1(
        data_i[93]), .C2(n16), .ZN(n82) );
  AOI21_X1 U53 ( .B1(n36), .B2(n14), .A(n93), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[1]) );
  NOR2_X1 U54 ( .A1(gen_arbiter_rr_q[2]), .A2(gen_arbiter_rr_q[1]), .ZN(n36)
         );
  NOR2_X1 U55 ( .A1(n96), .A2(n10), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[4]) );
  OAI21_X1 U56 ( .B1(n14), .B2(n93), .A(req_i[0]), .ZN(n85) );
  OAI21_X1 U57 ( .B1(n14), .B2(n95), .A(req_i[2]), .ZN(n83) );
  AOI22_X1 U58 ( .A1(data_i[1]), .A2(n3), .B1(data_i[24]), .B2(n6), .ZN(n81)
         );
  NOR2_X1 U59 ( .A1(gen_arbiter_rr_q[2]), .A2(n96), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask[4]) );
  OR2_X1 U60 ( .A1(n26), .A2(flush_i), .ZN(n23) );
  NAND2_X1 U61 ( .A1(gen_arbiter_rr_q[0]), .A2(gen_arbiter_rr_q[1]), .ZN(n35)
         );
  NAND2_X1 U62 ( .A1(n37), .A2(n38), .ZN(data_o[0]) );
  AOI22_X1 U63 ( .A1(data_i[0]), .A2(n4), .B1(data_i[23]), .B2(n6), .ZN(n37)
         );
  AOI222_X1 U64 ( .A1(data_i[69]), .A2(n13), .B1(data_i[46]), .B2(n9), .C1(
        data_i[92]), .C2(n17), .ZN(n38) );
  NAND2_X1 U65 ( .A1(n43), .A2(n44), .ZN(data_o[2]) );
  AOI22_X1 U66 ( .A1(data_i[2]), .A2(n4), .B1(data_i[25]), .B2(n6), .ZN(n43)
         );
  AOI222_X1 U67 ( .A1(data_i[71]), .A2(n13), .B1(data_i[48]), .B2(n9), .C1(
        data_i[94]), .C2(n17), .ZN(n44) );
  NAND2_X1 U68 ( .A1(n39), .A2(n40), .ZN(data_o[3]) );
  AOI22_X1 U69 ( .A1(data_i[3]), .A2(n4), .B1(data_i[26]), .B2(n6), .ZN(n39)
         );
  AOI222_X1 U70 ( .A1(data_i[72]), .A2(n13), .B1(data_i[49]), .B2(n9), .C1(
        data_i[95]), .C2(n17), .ZN(n40) );
  NAND2_X1 U71 ( .A1(n41), .A2(n42), .ZN(data_o[4]) );
  AOI22_X1 U72 ( .A1(data_i[4]), .A2(n4), .B1(data_i[27]), .B2(n6), .ZN(n41)
         );
  AOI222_X1 U73 ( .A1(data_i[73]), .A2(n13), .B1(data_i[50]), .B2(n9), .C1(
        data_i[96]), .C2(n17), .ZN(n42) );
  NAND2_X1 U74 ( .A1(n47), .A2(n48), .ZN(data_o[5]) );
  AOI22_X1 U75 ( .A1(data_i[5]), .A2(n4), .B1(data_i[28]), .B2(n6), .ZN(n47)
         );
  AOI222_X1 U76 ( .A1(data_i[74]), .A2(n13), .B1(data_i[51]), .B2(n9), .C1(
        data_i[97]), .C2(n17), .ZN(n48) );
  NAND2_X1 U77 ( .A1(n45), .A2(n46), .ZN(data_o[6]) );
  AOI22_X1 U78 ( .A1(data_i[6]), .A2(n4), .B1(data_i[29]), .B2(n6), .ZN(n45)
         );
  AOI222_X1 U79 ( .A1(data_i[75]), .A2(n13), .B1(data_i[52]), .B2(n9), .C1(
        data_i[98]), .C2(n17), .ZN(n46) );
  NAND2_X1 U80 ( .A1(n79), .A2(n80), .ZN(data_o[7]) );
  AOI22_X1 U81 ( .A1(data_i[7]), .A2(n3), .B1(data_i[30]), .B2(n6), .ZN(n79)
         );
  AOI222_X1 U82 ( .A1(data_i[76]), .A2(n13), .B1(data_i[53]), .B2(n8), .C1(
        data_i[99]), .C2(n16), .ZN(n80) );
  NAND2_X1 U83 ( .A1(n65), .A2(n66), .ZN(data_o[8]) );
  AOI22_X1 U84 ( .A1(data_i[8]), .A2(n3), .B1(data_i[31]), .B2(n6), .ZN(n65)
         );
  AOI222_X1 U85 ( .A1(data_i[77]), .A2(n13), .B1(data_i[54]), .B2(n8), .C1(
        data_i[100]), .C2(n16), .ZN(n66) );
  NAND2_X1 U86 ( .A1(n63), .A2(n64), .ZN(data_o[9]) );
  AOI22_X1 U87 ( .A1(data_i[9]), .A2(n3), .B1(data_i[32]), .B2(n6), .ZN(n63)
         );
  AOI222_X1 U88 ( .A1(data_i[78]), .A2(n13), .B1(data_i[55]), .B2(n8), .C1(
        data_i[101]), .C2(n16), .ZN(n64) );
  NAND2_X1 U89 ( .A1(n61), .A2(n62), .ZN(data_o[10]) );
  AOI22_X1 U90 ( .A1(data_i[10]), .A2(n3), .B1(data_i[33]), .B2(n6), .ZN(n61)
         );
  AOI222_X1 U91 ( .A1(data_i[79]), .A2(n13), .B1(data_i[56]), .B2(n8), .C1(
        data_i[102]), .C2(n16), .ZN(n62) );
  NAND2_X1 U92 ( .A1(n59), .A2(n60), .ZN(data_o[11]) );
  AOI22_X1 U93 ( .A1(data_i[11]), .A2(n3), .B1(data_i[34]), .B2(n6), .ZN(n59)
         );
  AOI222_X1 U94 ( .A1(data_i[80]), .A2(n13), .B1(data_i[57]), .B2(n8), .C1(
        data_i[103]), .C2(n16), .ZN(n60) );
  NAND2_X1 U95 ( .A1(n57), .A2(n58), .ZN(data_o[12]) );
  AOI22_X1 U96 ( .A1(data_i[12]), .A2(n4), .B1(data_i[35]), .B2(n6), .ZN(n57)
         );
  AOI222_X1 U97 ( .A1(data_i[81]), .A2(n13), .B1(data_i[58]), .B2(n9), .C1(
        data_i[104]), .C2(n17), .ZN(n58) );
  NAND2_X1 U98 ( .A1(n55), .A2(n56), .ZN(data_o[13]) );
  AOI22_X1 U99 ( .A1(data_i[13]), .A2(n4), .B1(data_i[36]), .B2(n6), .ZN(n55)
         );
  AOI222_X1 U100 ( .A1(data_i[82]), .A2(n13), .B1(data_i[59]), .B2(n9), .C1(
        data_i[105]), .C2(n17), .ZN(n56) );
  NAND2_X1 U101 ( .A1(n53), .A2(n54), .ZN(data_o[14]) );
  AOI22_X1 U102 ( .A1(data_i[14]), .A2(n4), .B1(data_i[37]), .B2(n6), .ZN(n53)
         );
  AOI222_X1 U103 ( .A1(data_i[83]), .A2(n13), .B1(data_i[60]), .B2(n9), .C1(
        data_i[106]), .C2(n17), .ZN(n54) );
  NAND2_X1 U104 ( .A1(n51), .A2(n52), .ZN(data_o[15]) );
  AOI22_X1 U105 ( .A1(data_i[15]), .A2(n4), .B1(data_i[38]), .B2(n6), .ZN(n51)
         );
  AOI222_X1 U106 ( .A1(data_i[84]), .A2(n13), .B1(data_i[61]), .B2(n9), .C1(
        data_i[107]), .C2(n17), .ZN(n52) );
  NAND2_X1 U107 ( .A1(n49), .A2(n50), .ZN(data_o[16]) );
  AOI22_X1 U108 ( .A1(data_i[16]), .A2(n4), .B1(data_i[39]), .B2(n6), .ZN(n49)
         );
  AOI222_X1 U109 ( .A1(data_i[85]), .A2(n13), .B1(data_i[62]), .B2(n9), .C1(
        data_i[108]), .C2(n17), .ZN(n50) );
  NAND2_X1 U110 ( .A1(n77), .A2(n78), .ZN(data_o[17]) );
  AOI22_X1 U111 ( .A1(data_i[17]), .A2(n3), .B1(data_i[40]), .B2(n6), .ZN(n77)
         );
  AOI222_X1 U112 ( .A1(data_i[86]), .A2(n13), .B1(data_i[63]), .B2(n8), .C1(
        data_i[109]), .C2(n16), .ZN(n78) );
  NAND2_X1 U113 ( .A1(n75), .A2(n76), .ZN(data_o[18]) );
  AOI22_X1 U114 ( .A1(data_i[18]), .A2(n3), .B1(data_i[41]), .B2(n6), .ZN(n75)
         );
  AOI222_X1 U115 ( .A1(data_i[87]), .A2(n13), .B1(data_i[64]), .B2(n8), .C1(
        data_i[110]), .C2(n16), .ZN(n76) );
  NAND2_X1 U116 ( .A1(n73), .A2(n74), .ZN(data_o[19]) );
  AOI22_X1 U117 ( .A1(data_i[19]), .A2(n3), .B1(data_i[42]), .B2(n6), .ZN(n73)
         );
  AOI222_X1 U118 ( .A1(data_i[88]), .A2(n13), .B1(data_i[65]), .B2(n8), .C1(
        data_i[111]), .C2(n16), .ZN(n74) );
  NAND2_X1 U119 ( .A1(n71), .A2(n72), .ZN(data_o[20]) );
  AOI22_X1 U120 ( .A1(data_i[20]), .A2(n3), .B1(data_i[43]), .B2(n6), .ZN(n71)
         );
  AOI222_X1 U121 ( .A1(data_i[89]), .A2(n13), .B1(data_i[66]), .B2(n8), .C1(
        data_i[112]), .C2(n16), .ZN(n72) );
  NAND2_X1 U122 ( .A1(n69), .A2(n70), .ZN(data_o[21]) );
  AOI22_X1 U123 ( .A1(data_i[21]), .A2(n3), .B1(data_i[44]), .B2(n6), .ZN(n69)
         );
  AOI222_X1 U124 ( .A1(data_i[90]), .A2(n13), .B1(data_i[67]), .B2(n8), .C1(
        data_i[113]), .C2(n16), .ZN(n70) );
  NAND2_X1 U125 ( .A1(n67), .A2(n68), .ZN(data_o[22]) );
  AOI22_X1 U126 ( .A1(data_i[22]), .A2(n3), .B1(data_i[45]), .B2(n6), .ZN(n67)
         );
  AOI222_X1 U127 ( .A1(data_i[91]), .A2(n13), .B1(data_i[68]), .B2(n8), .C1(
        data_i[114]), .C2(n16), .ZN(n68) );
  INV_X1 U128 ( .A(req_i[1]), .ZN(n93) );
  INV_X1 U129 ( .A(req_i[4]), .ZN(n96) );
  OAI22_X1 U130 ( .A1(req_i[1]), .A2(req_i[0]), .B1(n27), .B2(n11), .ZN(n84)
         );
  NOR2_X1 U131 ( .A1(req_i[3]), .A2(req_i[2]), .ZN(n27) );
  INV_X1 U132 ( .A(req_i[2]), .ZN(n94) );
  INV_X1 U133 ( .A(req_i[3]), .ZN(n95) );
  INV_X1 U134 ( .A(req_i[0]), .ZN(n92) );
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
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8;
  assign busy_o = 1'b0;
  assign in_ready_o = 1'b0;

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
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .req_o(out_valid_o), 
        .gnt_i(out_ready_i), .data_o({result_o, status_o_NV_, status_o_DZ_, 
        status_o_OF_, status_o_UF_, status_o_NX_, extension_bit_o, tag_o}), 
        .idx_o({SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8}) );
endmodule


module lzc_00000004_0_0 ( in_i, cnt_o, empty_o );
  input [3:0] in_i;
  output [1:0] cnt_o;
  output empty_o;
  wire   n1, n2;

  INV_X1 U1 ( .A(in_i[1]), .ZN(n2) );
  AOI21_X1 U2 ( .B1(in_i[2]), .B2(n2), .A(in_i[0]), .ZN(cnt_o[0]) );
  NOR3_X1 U3 ( .A1(n1), .A2(in_i[3]), .A3(in_i[2]), .ZN(empty_o) );
  INV_X1 U4 ( .A(cnt_o[1]), .ZN(n1) );
  NOR2_X1 U5 ( .A1(in_i[0]), .A2(in_i[1]), .ZN(cnt_o[1]) );
endmodule


module lzc_00000004_0_1 ( in_i, cnt_o, empty_o );
  input [3:0] in_i;
  output [1:0] cnt_o;
  output empty_o;
  wire   n1, n2;

  INV_X1 U1 ( .A(cnt_o[1]), .ZN(n1) );
  NOR2_X1 U2 ( .A1(in_i[0]), .A2(in_i[1]), .ZN(cnt_o[1]) );
  NOR3_X1 U3 ( .A1(n1), .A2(in_i[3]), .A3(in_i[2]), .ZN(empty_o) );
  INV_X1 U4 ( .A(in_i[1]), .ZN(n2) );
  AOI21_X1 U5 ( .B1(in_i[2]), .B2(n2), .A(in_i[0]), .ZN(cnt_o[0]) );
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
  wire   gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty, n11, n12, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n1,
         n2, n3, n4, n5, n6, n7, n8, n10, n13, n14, n15, n16, n17, n18, n19,
         n77;
  wire   [1:0] gen_arbiter_rr_q;
  wire   [3:1] gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask;
  wire   [3:1] gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask;
  wire   [1:0] gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx;
  wire   [1:0] gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx;

  DFFR_X1 gen_arbiter_rr_q_reg_0_ ( .D(n76), .CK(clk_i), .RN(rst_ni), .Q(
        gen_arbiter_rr_q[0]), .QN(n12) );
  DFFR_X1 gen_arbiter_rr_q_reg_1_ ( .D(n75), .CK(clk_i), .RN(rst_ni), .Q(
        gen_arbiter_rr_q[1]), .QN(n11) );
  lzc_00000004_0_0 gen_arbiter_gen_int_rr_gen_fair_arb_i_lzc_upper ( .in_i({
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask, 1'b0}), .cnt_o(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx), .empty_o(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty) );
  lzc_00000004_0_1 gen_arbiter_gen_int_rr_gen_fair_arb_i_lzc_lower ( .in_i({
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask, req_i[0]}), .cnt_o(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx) );
  AOI221_X1 U3 ( .B1(gen_arbiter_rr_q[1]), .B2(req_i[3]), .C1(n18), .C2(n14), 
        .A(gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[2]), .ZN(n74) );
  NOR2_X1 U4 ( .A1(n72), .A2(n74), .ZN(n5) );
  NOR2_X1 U5 ( .A1(n72), .A2(n74), .ZN(n24) );
  NAND4_X1 U6 ( .A1(n14), .A2(n18), .A3(n17), .A4(n16), .ZN(req_o) );
  NAND2_X1 U7 ( .A1(n10), .A2(n8), .ZN(idx_o[0]) );
  INV_X1 U8 ( .A(req_i[0]), .ZN(n14) );
  INV_X1 U9 ( .A(n27), .ZN(n13) );
  INV_X1 U10 ( .A(n25), .ZN(n7) );
  INV_X1 U11 ( .A(n24), .ZN(n10) );
  BUF_X1 U12 ( .A(n26), .Z(n1) );
  BUF_X1 U13 ( .A(n26), .Z(n2) );
  INV_X1 U14 ( .A(req_i[1]), .ZN(n18) );
  INV_X1 U15 ( .A(req_i[2]), .ZN(n17) );
  INV_X1 U16 ( .A(req_i[3]), .ZN(n16) );
  BUF_X1 U17 ( .A(n26), .Z(n4) );
  BUF_X1 U18 ( .A(n26), .Z(n3) );
  INV_X1 U19 ( .A(n26), .ZN(n8) );
  AOI22_X1 U20 ( .A1(data_i[24]), .A2(n3), .B1(data_i[68]), .B2(n5), .ZN(n30)
         );
  NAND2_X1 U21 ( .A1(n35), .A2(n34), .ZN(data_o[1]) );
  AOI22_X1 U22 ( .A1(data_i[23]), .A2(n1), .B1(data_i[67]), .B2(n5), .ZN(n34)
         );
  AOI22_X1 U23 ( .A1(data_i[1]), .A2(n13), .B1(data_i[45]), .B2(n7), .ZN(n35)
         );
  NAND2_X1 U24 ( .A1(n32), .A2(n33), .ZN(data_o[3]) );
  AOI22_X1 U25 ( .A1(data_i[25]), .A2(n2), .B1(data_i[69]), .B2(n24), .ZN(n32)
         );
  AOI22_X1 U26 ( .A1(data_i[3]), .A2(n13), .B1(data_i[47]), .B2(n7), .ZN(n33)
         );
  NAND2_X1 U27 ( .A1(n66), .A2(n67), .ZN(data_o[17]) );
  AOI22_X1 U28 ( .A1(data_i[39]), .A2(n1), .B1(data_i[83]), .B2(n5), .ZN(n66)
         );
  AOI22_X1 U29 ( .A1(data_i[17]), .A2(n13), .B1(data_i[61]), .B2(n7), .ZN(n67)
         );
  NAND2_X1 U30 ( .A1(n64), .A2(n65), .ZN(data_o[18]) );
  AOI22_X1 U31 ( .A1(data_i[40]), .A2(n2), .B1(data_i[84]), .B2(n24), .ZN(n64)
         );
  AOI22_X1 U32 ( .A1(data_i[18]), .A2(n13), .B1(data_i[62]), .B2(n7), .ZN(n65)
         );
  NAND2_X1 U33 ( .A1(n62), .A2(n63), .ZN(data_o[19]) );
  AOI22_X1 U34 ( .A1(data_i[41]), .A2(n3), .B1(data_i[85]), .B2(n5), .ZN(n62)
         );
  AOI22_X1 U35 ( .A1(data_i[19]), .A2(n13), .B1(data_i[63]), .B2(n7), .ZN(n63)
         );
  NAND2_X1 U36 ( .A1(n60), .A2(n61), .ZN(data_o[20]) );
  AOI22_X1 U37 ( .A1(data_i[42]), .A2(n4), .B1(data_i[86]), .B2(n24), .ZN(n60)
         );
  AOI22_X1 U38 ( .A1(data_i[20]), .A2(n13), .B1(data_i[64]), .B2(n7), .ZN(n61)
         );
  NAND2_X1 U39 ( .A1(n40), .A2(n41), .ZN(data_o[15]) );
  AOI22_X1 U40 ( .A1(data_i[37]), .A2(n4), .B1(data_i[81]), .B2(n24), .ZN(n40)
         );
  AOI22_X1 U41 ( .A1(data_i[15]), .A2(n13), .B1(data_i[59]), .B2(n7), .ZN(n41)
         );
  NAND2_X1 U42 ( .A1(n68), .A2(n69), .ZN(data_o[16]) );
  AOI22_X1 U43 ( .A1(data_i[38]), .A2(n2), .B1(data_i[82]), .B2(n24), .ZN(n68)
         );
  AOI22_X1 U44 ( .A1(data_i[16]), .A2(n13), .B1(data_i[60]), .B2(n7), .ZN(n69)
         );
  NAND2_X1 U45 ( .A1(n42), .A2(n43), .ZN(data_o[14]) );
  AOI22_X1 U46 ( .A1(data_i[36]), .A2(n3), .B1(data_i[80]), .B2(n5), .ZN(n42)
         );
  AOI22_X1 U47 ( .A1(data_i[14]), .A2(n13), .B1(data_i[58]), .B2(n7), .ZN(n43)
         );
  NAND2_X1 U48 ( .A1(n46), .A2(n47), .ZN(data_o[12]) );
  AOI22_X1 U49 ( .A1(data_i[34]), .A2(n3), .B1(data_i[78]), .B2(n5), .ZN(n46)
         );
  AOI22_X1 U50 ( .A1(data_i[12]), .A2(n13), .B1(data_i[56]), .B2(n7), .ZN(n47)
         );
  NAND2_X1 U51 ( .A1(n44), .A2(n45), .ZN(data_o[13]) );
  AOI22_X1 U52 ( .A1(data_i[35]), .A2(n4), .B1(data_i[79]), .B2(n24), .ZN(n44)
         );
  AOI22_X1 U53 ( .A1(data_i[13]), .A2(n13), .B1(data_i[57]), .B2(n7), .ZN(n45)
         );
  NAND2_X1 U54 ( .A1(n48), .A2(n49), .ZN(data_o[11]) );
  AOI22_X1 U55 ( .A1(data_i[33]), .A2(n2), .B1(data_i[77]), .B2(n24), .ZN(n48)
         );
  AOI22_X1 U56 ( .A1(data_i[11]), .A2(n13), .B1(data_i[55]), .B2(n7), .ZN(n49)
         );
  NAND2_X1 U57 ( .A1(n50), .A2(n51), .ZN(data_o[10]) );
  AOI22_X1 U58 ( .A1(data_i[32]), .A2(n1), .B1(data_i[76]), .B2(n5), .ZN(n50)
         );
  AOI22_X1 U59 ( .A1(data_i[10]), .A2(n13), .B1(data_i[54]), .B2(n7), .ZN(n51)
         );
  NAND2_X1 U60 ( .A1(n58), .A2(n59), .ZN(data_o[21]) );
  AOI22_X1 U61 ( .A1(data_i[43]), .A2(n3), .B1(data_i[87]), .B2(n5), .ZN(n58)
         );
  AOI22_X1 U62 ( .A1(data_i[21]), .A2(n13), .B1(data_i[65]), .B2(n7), .ZN(n59)
         );
  NAND2_X1 U63 ( .A1(n52), .A2(n53), .ZN(data_o[9]) );
  AOI22_X1 U64 ( .A1(data_i[31]), .A2(n2), .B1(data_i[75]), .B2(n24), .ZN(n52)
         );
  AOI22_X1 U65 ( .A1(data_i[9]), .A2(n13), .B1(data_i[53]), .B2(n7), .ZN(n53)
         );
  NAND2_X1 U66 ( .A1(n54), .A2(n55), .ZN(data_o[8]) );
  AOI22_X1 U67 ( .A1(data_i[30]), .A2(n1), .B1(data_i[74]), .B2(n5), .ZN(n54)
         );
  AOI22_X1 U68 ( .A1(data_i[8]), .A2(n13), .B1(data_i[52]), .B2(n7), .ZN(n55)
         );
  NAND2_X1 U69 ( .A1(n56), .A2(n57), .ZN(data_o[7]) );
  AOI22_X1 U70 ( .A1(data_i[29]), .A2(n4), .B1(data_i[73]), .B2(n24), .ZN(n56)
         );
  AOI22_X1 U71 ( .A1(data_i[7]), .A2(n13), .B1(data_i[51]), .B2(n7), .ZN(n57)
         );
  NAND2_X1 U72 ( .A1(n70), .A2(n71), .ZN(data_o[6]) );
  AOI22_X1 U73 ( .A1(data_i[28]), .A2(n1), .B1(data_i[72]), .B2(n5), .ZN(n70)
         );
  AOI22_X1 U74 ( .A1(data_i[6]), .A2(n13), .B1(data_i[50]), .B2(n7), .ZN(n71)
         );
  NOR2_X1 U75 ( .A1(n77), .A2(n27), .ZN(gnt_o[0]) );
  NAND2_X1 U76 ( .A1(n73), .A2(n74), .ZN(n27) );
  NAND2_X1 U77 ( .A1(n28), .A2(n29), .ZN(data_o[0]) );
  AOI22_X1 U78 ( .A1(data_i[22]), .A2(n4), .B1(data_i[66]), .B2(n24), .ZN(n28)
         );
  AOI22_X1 U79 ( .A1(data_i[0]), .A2(n13), .B1(data_i[44]), .B2(n7), .ZN(n29)
         );
  NAND2_X1 U80 ( .A1(n36), .A2(n37), .ZN(data_o[5]) );
  AOI22_X1 U81 ( .A1(data_i[27]), .A2(n2), .B1(data_i[71]), .B2(n5), .ZN(n36)
         );
  AOI22_X1 U82 ( .A1(data_i[5]), .A2(n13), .B1(data_i[49]), .B2(n7), .ZN(n37)
         );
  NAND2_X1 U83 ( .A1(n38), .A2(n39), .ZN(data_o[4]) );
  AOI22_X1 U84 ( .A1(data_i[26]), .A2(n1), .B1(data_i[70]), .B2(n24), .ZN(n38)
         );
  AOI22_X1 U85 ( .A1(data_i[4]), .A2(n13), .B1(data_i[48]), .B2(n7), .ZN(n39)
         );
  NAND2_X1 U86 ( .A1(n20), .A2(n19), .ZN(n22) );
  OAI21_X1 U87 ( .B1(n6), .B2(n77), .A(n19), .ZN(n20) );
  INV_X1 U88 ( .A(req_o), .ZN(n6) );
  NOR2_X1 U89 ( .A1(n77), .A2(n10), .ZN(gnt_o[3]) );
  NOR2_X1 U90 ( .A1(n77), .A2(n25), .ZN(gnt_o[2]) );
  NOR2_X1 U91 ( .A1(n77), .A2(n8), .ZN(gnt_o[1]) );
  NOR2_X1 U92 ( .A1(n73), .A2(idx_o[1]), .ZN(n26) );
  INV_X1 U93 ( .A(n74), .ZN(idx_o[1]) );
  NAND2_X1 U94 ( .A1(n72), .A2(idx_o[1]), .ZN(n25) );
  INV_X1 U95 ( .A(gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .ZN(n15)
         );
  AOI21_X1 U96 ( .B1(gen_arbiter_rr_q[0]), .B2(req_i[1]), .A(n14), .ZN(n73) );
  INV_X1 U97 ( .A(gnt_i), .ZN(n77) );
  OAI22_X1 U98 ( .A1(n20), .A2(n11), .B1(n21), .B2(n22), .ZN(n75) );
  AOI22_X1 U99 ( .A1(gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .A2(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx[1]), .B1(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx[1]), .B2(n15), .ZN(n21)
         );
  OAI22_X1 U100 ( .A1(n20), .A2(n12), .B1(n23), .B2(n22), .ZN(n76) );
  AOI22_X1 U101 ( .A1(gen_arbiter_gen_int_rr_gen_fair_arb_lower_idx[0]), .A2(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_empty), .B1(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_idx[0]), .B2(n15), .ZN(n23)
         );
  INV_X1 U102 ( .A(flush_i), .ZN(n19) );
  AOI21_X1 U103 ( .B1(gen_arbiter_rr_q[0]), .B2(gen_arbiter_rr_q[1]), .A(n16), 
        .ZN(gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask[3]) );
  NOR3_X1 U104 ( .A1(n18), .A2(gen_arbiter_rr_q[1]), .A3(gen_arbiter_rr_q[0]), 
        .ZN(gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask[1]) );
  AOI21_X1 U105 ( .B1(gen_arbiter_rr_q[0]), .B2(req_i[3]), .A(n17), .ZN(n72)
         );
  NOR2_X1 U106 ( .A1(n17), .A2(n11), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[2]) );
  AOI21_X1 U107 ( .B1(n11), .B2(n12), .A(n18), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[1]) );
  NOR3_X1 U108 ( .A1(n16), .A2(n11), .A3(n12), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_lower_mask[3]) );
  NOR2_X1 U109 ( .A1(gen_arbiter_rr_q[1]), .A2(n17), .ZN(
        gen_arbiter_gen_int_rr_gen_fair_arb_upper_mask[2]) );
  AOI22_X1 U110 ( .A1(data_i[2]), .A2(n13), .B1(data_i[46]), .B2(n7), .ZN(n31)
         );
  NAND2_X1 U111 ( .A1(n31), .A2(n30), .ZN(data_o[2]) );
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
  wire   N32, opgrp_in_ready_0_, N119, is_boxed_3__2_, is_boxed_3__1_,
         is_boxed_3__0_, gen_operation_groups_0__in_valid,
         gen_operation_groups_1__in_valid, gen_operation_groups_2__in_valid,
         gen_operation_groups_3__in_valid, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2;
  wire   [3:0] opgrp_out_valid;
  wire   [3:0] opgrp_out_ready;
  wire   [87:0] opgrp_outputs;

  OAI33_X1 U30 ( .A1(n22), .A2(op_i[2]), .A3(op_i[1]), .B1(n24), .B2(n16), 
        .B3(n23), .ZN(n15) );
  NAND3_X1 U31 ( .A1(n24), .A2(n22), .A3(op_i[2]), .ZN(n14) );
  fpnew_opgroup_block_0_00000010_0_04_4_155_3__logic_Z_1yB__395949 gen_operation_groups_0__i_opgroup_block ( 
        .clk_i(clk_i), .rst_ni(rst_ni), .operands_i(operands_i), .is_boxed_i({
        1'b1, 1'b1, 1'b1, is_boxed_3__2_, is_boxed_3__1_, is_boxed_3__0_, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .rnd_mode_i(
        rnd_mode_i), .op_i(op_i), .op_mod_i(op_mod_i), .src_fmt_i(src_fmt_i), 
        .dst_fmt_i(dst_fmt_i), .int_fmt_i(int_fmt_i), .vectorial_op_i(
        vectorial_op_i), .tag_i(tag_i), .in_valid_i(
        gen_operation_groups_0__in_valid), .in_ready_o(opgrp_in_ready_0_), 
        .flush_i(flush_i), .result_o(opgrp_outputs[21:6]), .tag_o(
        opgrp_outputs[0]), .out_valid_o(opgrp_out_valid[0]), .out_ready_i(
        opgrp_out_ready[0]), .busy_o(busy_o), .status_o_NV_(opgrp_outputs[5]), 
        .status_o_DZ_(opgrp_outputs[4]), .status_o_OF_(opgrp_outputs[3]), 
        .status_o_UF_(opgrp_outputs[2]), .status_o_NX_(opgrp_outputs[1]) );
  fpnew_opgroup_block_1_00000010_0_04_4_000_3__logic_Z_1yB__395949 gen_operation_groups_1__i_opgroup_block ( 
        .clk_i(clk_i), .rst_ni(rst_ni), .operands_i(operands_i[31:0]), 
        .is_boxed_i({1'b1, 1'b1, is_boxed_3__1_, is_boxed_3__0_, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1}), .rnd_mode_i(rnd_mode_i), .op_i(op_i), 
        .op_mod_i(op_mod_i), .src_fmt_i(src_fmt_i), .dst_fmt_i(dst_fmt_i), 
        .int_fmt_i(int_fmt_i), .vectorial_op_i(vectorial_op_i), .tag_i(tag_i), 
        .in_valid_i(gen_operation_groups_1__in_valid), .flush_i(flush_i), 
        .result_o(opgrp_outputs[43:28]), .tag_o(opgrp_outputs[22]), 
        .out_valid_o(opgrp_out_valid[1]), .out_ready_i(opgrp_out_ready[1]), 
        .status_o_NV_(opgrp_outputs[27]), .status_o_DZ_(opgrp_outputs[26]), 
        .status_o_OF_(opgrp_outputs[25]), .status_o_UF_(opgrp_outputs[24]), 
        .status_o_NX_(opgrp_outputs[23]) );
  fpnew_opgroup_block_2_00000010_0_04_4_000_3__logic_Z_1yB__395949 gen_operation_groups_2__i_opgroup_block ( 
        .clk_i(clk_i), .rst_ni(rst_ni), .operands_i(operands_i[31:0]), 
        .is_boxed_i({1'b1, 1'b1, is_boxed_3__1_, is_boxed_3__0_, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1}), .rnd_mode_i(rnd_mode_i), .op_i(op_i), 
        .op_mod_i(op_mod_i), .src_fmt_i(src_fmt_i), .dst_fmt_i(dst_fmt_i), 
        .int_fmt_i(int_fmt_i), .vectorial_op_i(vectorial_op_i), .tag_i(tag_i), 
        .in_valid_i(gen_operation_groups_2__in_valid), .flush_i(flush_i), 
        .result_o(opgrp_outputs[65:50]), .tag_o(opgrp_outputs[44]), 
        .out_valid_o(opgrp_out_valid[2]), .out_ready_i(opgrp_out_ready[2]), 
        .status_o_NV_(opgrp_outputs[49]), .status_o_DZ_(opgrp_outputs[48]), 
        .status_o_OF_(opgrp_outputs[47]), .status_o_UF_(opgrp_outputs[46]), 
        .status_o_NX_(opgrp_outputs[45]) );
  fpnew_opgroup_block_3_00000010_0_04_4_000_3__logic_Z_1yB__395949 gen_operation_groups_3__i_opgroup_block ( 
        .clk_i(clk_i), .rst_ni(rst_ni), .operands_i(operands_i), .is_boxed_i({
        1'b1, 1'b1, 1'b1, is_boxed_3__2_, is_boxed_3__1_, is_boxed_3__0_, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .rnd_mode_i(
        rnd_mode_i), .op_i(op_i), .op_mod_i(op_mod_i), .src_fmt_i(src_fmt_i), 
        .dst_fmt_i(dst_fmt_i), .int_fmt_i(int_fmt_i), .vectorial_op_i(
        vectorial_op_i), .tag_i(tag_i), .in_valid_i(
        gen_operation_groups_3__in_valid), .flush_i(flush_i), .result_o(
        opgrp_outputs[87:72]), .tag_o(opgrp_outputs[66]), .out_valid_o(
        opgrp_out_valid[3]), .out_ready_i(opgrp_out_ready[3]), .status_o_NV_(
        opgrp_outputs[71]), .status_o_DZ_(opgrp_outputs[70]), .status_o_OF_(
        opgrp_outputs[69]), .status_o_UF_(opgrp_outputs[68]), .status_o_NX_(
        opgrp_outputs[67]) );
  rr_arb_tree_00000004_1_532242 i_arbiter ( .clk_i(clk_i), .rst_ni(rst_ni), 
        .flush_i(flush_i), .rr_i({1'b0, 1'b0}), .req_i(opgrp_out_valid), 
        .gnt_o(opgrp_out_ready), .data_i(opgrp_outputs), .req_o(out_valid_o), 
        .gnt_i(out_ready_i), .data_o({result_o, status_o_NV_, status_o_DZ_, 
        status_o_OF_, status_o_UF_, status_o_NX_, tag_o}), .idx_o({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2}) );
  AND2_X1 U32 ( .A1(n13), .A2(n14), .ZN(n19) );
  OAI21_X1 U33 ( .B1(n11), .B2(n12), .A(n25), .ZN(is_boxed_3__0_) );
  OAI21_X1 U34 ( .B1(n9), .B2(n10), .A(n25), .ZN(is_boxed_3__1_) );
  OAI21_X1 U35 ( .B1(n7), .B2(n8), .A(n25), .ZN(is_boxed_3__2_) );
  NOR2_X1 U36 ( .A1(n21), .A2(n26), .ZN(gen_operation_groups_2__in_valid) );
  NOR2_X1 U37 ( .A1(n26), .A2(n14), .ZN(gen_operation_groups_1__in_valid) );
  NOR2_X1 U38 ( .A1(n26), .A2(n13), .ZN(gen_operation_groups_3__in_valid) );
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
  NAND4_X1 U53 ( .A1(operands_i[9]), .A2(operands_i[8]), .A3(operands_i[15]), 
        .A4(operands_i[14]), .ZN(n12) );
  NAND4_X1 U54 ( .A1(operands_i[25]), .A2(operands_i[24]), .A3(operands_i[31]), 
        .A4(operands_i[30]), .ZN(n10) );
  NAND4_X1 U55 ( .A1(operands_i[44]), .A2(operands_i[43]), .A3(operands_i[41]), 
        .A4(operands_i[40]), .ZN(n8) );
  NAND4_X1 U56 ( .A1(operands_i[13]), .A2(operands_i[12]), .A3(operands_i[11]), 
        .A4(operands_i[10]), .ZN(n11) );
  NAND4_X1 U57 ( .A1(operands_i[29]), .A2(operands_i[28]), .A3(operands_i[27]), 
        .A4(operands_i[26]), .ZN(n9) );
  NAND4_X1 U58 ( .A1(operands_i[45]), .A2(operands_i[42]), .A3(operands_i[47]), 
        .A4(operands_i[46]), .ZN(n7) );
  INV_X1 U59 ( .A(vectorial_op_i), .ZN(n25) );
endmodule

