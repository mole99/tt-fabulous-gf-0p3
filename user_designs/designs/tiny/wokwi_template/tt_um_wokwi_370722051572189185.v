/* Automatically generated from https://wokwi.com/projects/370722051572189185 */

`default_nettype none

// verilator lint_off UNUSEDSIGNAL
// verilator lint_off PINCONNECTEMPTY

module tt_um_wokwi_370722051572189185(
  input  wire [7:0] ui_in,    // Dedicated inputs
  output wire [7:0] uo_out,    // Dedicated outputs
  input  wire [7:0] uio_in,    // IOs: Input path
  output wire [7:0] uio_out,    // IOs: Output path
  output wire [7:0] uio_oe,    // IOs: Enable path (active high: 0=input, 1=output)
  input ena,
  input clk,
  input rst_n
);
  wire net1 = clk;
  wire net2 = ui_in[0];
  wire net3;
  wire net4;
  wire net5;
  wire net6;
  wire net7;
  wire net8;
  wire net9;
  wire net10 = 1'b0;
  wire net11 = 1'b1;
  wire net12 = 1'b1;
  wire net13 = 1'b0;
  wire net14;
  wire net15;
  wire net16;
  wire net17;
  wire net18;
  wire net19;
  wire net20;
  wire net21;
  wire net22;
  wire net23;
  wire net24;
  wire net25;
  wire net26;
  wire net27;
  wire net28;
  wire net29;
  wire net30;
  wire net31;
  wire net32;
  wire net33;
  wire net34;
  wire net35;
  wire net36;
  wire net37;
  wire net38;
  wire net39;
  wire net40;
  wire net41;
  wire net42;
  wire net43;
  wire net44;
  wire net45;
  wire net46;
  wire net47;
  wire net48;
  wire net49;
  wire net50;
  wire net51;
  wire net52;
  wire net53;
  wire net54;
  wire net55;
  wire net56;
  wire net57;
  wire net58;
  wire net59;
  wire net60;
  wire net61;
  wire net62;
  wire net63;
  wire net64;
  wire net65;
  wire net66;
  wire net67;
  wire net68;
  wire net69;
  wire net70;
  wire net71;
  wire net72;
  wire net73;
  wire net74;
  wire net75;
  wire net76;
  wire net77;
  wire net78;
  wire net79;
  wire net80;
  wire net81;
  wire net82;
  wire net83;
  wire net84;
  wire net85;
  wire net86;
  wire net87;
  wire net88;
  wire net89;
  wire net90;
  wire net91;
  wire net92;
  wire net93;
  wire net94;

  assign uo_out[0] = net3;
  assign uo_out[1] = net4;
  assign uo_out[2] = net5;
  assign uo_out[3] = net6;
  assign uo_out[4] = net7;
  assign uo_out[5] = net8;
  assign uo_out[6] = net9;
  assign uo_out[7] = net2;
  assign uio_out[0] = 0;
  assign uio_oe[0] = 0;
  assign uio_out[1] = 0;
  assign uio_oe[1] = 0;
  assign uio_out[2] = 0;
  assign uio_oe[2] = 0;
  assign uio_out[3] = 0;
  assign uio_oe[3] = 0;
  assign uio_out[4] = 0;
  assign uio_oe[4] = 0;
  assign uio_out[5] = 0;
  assign uio_oe[5] = 0;
  assign uio_out[6] = 0;
  assign uio_oe[6] = 0;
  assign uio_out[7] = 0;
  assign uio_oe[7] = 0;

  and_cell and1 (
    .a (net14),
    .b (net15),
    .out (net16)
  );
  dff_cell flop1 (
    .d (net17),
    .clk (net1),
    .q (net18),
    .notq (net19)
  );
  dff_cell flop2 (
    .d (net20),
    .clk (net1),
    .q (net14),
    .notq (net21)
  );
  dff_cell flop3 (
    .d (net22),
    .clk (net1),
    .q (net15),
    .notq (net23)
  );
  dff_cell flop4 (
    .d (net24),
    .clk (net1),
    .q (net25),
    .notq (net24)
  );
  xor_cell xor1 (
    .a (net18),
    .b (net26),
    .out (net17)
  );
  and_cell and2 (
    .a (net16),
    .b (net25),
    .out (net26)
  );
  xor_cell xor2 (
    .a (net14),
    .b (net27),
    .out (net20)
  );
  and_cell and3 (
    .a (net15),
    .b (net25),
    .out (net27)
  );
  xor_cell xor3 (
    .a (net15),
    .b (net25),
    .out (net22)
  );
  and_cell and4 (
    .a (net23),
    .b (net28),
    .out (net29)
  );
  and_cell and5 (
    .a (net18),
    .b (net21),
    .out (net28)
  );
  or_cell or1 (
    .a (net30),
    .b (net29),
    .out (net31)
  );
  and_cell and6 (
    .a (net19),
    .b (net14),
    .out (net32)
  );
  and_cell and7 (
    .a (net32),
    .b (net25),
    .out (net30)
  );
  or_cell or2 (
    .a (net31),
    .b (net33),
    .out (net34)
  );
  and_cell and8 (
    .a (net18),
    .b (net24),
    .out (net33)
  );
  or_cell or3 (
    .a (net34),
    .b (net35),
    .out (net36)
  );
  and_cell and9 (
    .a (net19),
    .b (net15),
    .out (net35)
  );
  or_cell or4 (
    .a (net36),
    .b (net37),
    .out (net38)
  );
  and_cell and10 (
    .a (net14),
    .b (net15),
    .out (net37)
  );
  or_cell or5 (
    .a (net38),
    .b (net39),
    .out (net3)
  );
  and_cell and11 (
    .a (net21),
    .b (net24),
    .out (net39)
  );
  and_cell and12 (
    .a (net19),
    .b (net23),
    .out (net40)
  );
  and_cell and13 (
    .a (net40),
    .b (net24),
    .out (net41)
  );
  or_cell or6 (
    .a (net41),
    .b (net42),
    .out (net43)
  );
  and_cell and14 (
    .a (net19),
    .b (net15),
    .out (net44)
  );
  and_cell and15 (
    .a (net44),
    .b (net25),
    .out (net42)
  );
  or_cell or7 (
    .a (net43),
    .b (net45),
    .out (net46)
  );
  and_cell and16 (
    .a (net18),
    .b (net23),
    .out (net47)
  );
  and_cell and17 (
    .a (net47),
    .b (net25),
    .out (net45)
  );
  or_cell or8 (
    .a (net46),
    .b (net48),
    .out (net49)
  );
  and_cell and18 (
    .a (net21),
    .b (net23),
    .out (net48)
  );
  or_cell or9 (
    .a (net49),
    .b (net50),
    .out (net4)
  );
  and_cell and19 (
    .a (net21),
    .b (net24),
    .out (net50)
  );
  and_cell and20 (
    .a (net19),
    .b (net23),
    .out (net51)
  );
  or_cell or10 (
    .a (net51),
    .b (net52),
    .out (net53)
  );
  and_cell and21 (
    .a (net19),
    .b (net25),
    .out (net52)
  );
  or_cell or11 (
    .a (net53),
    .b (net54),
    .out (net55)
  );
  and_cell and22 (
    .a (net23),
    .b (net25),
    .out (net54)
  );
  or_cell or12 (
    .a (net55),
    .b (net56),
    .out (net57)
  );
  and_cell and23 (
    .a (net19),
    .b (net14),
    .out (net56)
  );
  or_cell or13 (
    .a (net57),
    .b (net58),
    .out (net5)
  );
  and_cell and24 (
    .a (net18),
    .b (net21),
    .out (net58)
  );
  and_cell and25 (
    .a (net19),
    .b (net21),
    .out (net59)
  );
  or_cell or14 (
    .a (net60),
    .b (net61),
    .out (net62)
  );
  and_cell and26 (
    .a (net24),
    .b (net59),
    .out (net61)
  );
  and_cell and27 (
    .a (net21),
    .b (net15),
    .out (net63)
  );
  and_cell and28 (
    .a (net63),
    .b (net25),
    .out (net60)
  );
  or_cell or15 (
    .a (net62),
    .b (net64),
    .out (net65)
  );
  and_cell and29 (
    .a (net14),
    .b (net23),
    .out (net66)
  );
  and_cell and30 (
    .a (net66),
    .b (net25),
    .out (net64)
  );
  or_cell or16 (
    .a (net65),
    .b (net67),
    .out (net68)
  );
  and_cell and31 (
    .a (net14),
    .b (net15),
    .out (net69)
  );
  and_cell and32 (
    .a (net69),
    .b (net24),
    .out (net67)
  );
  or_cell or17 (
    .a (net68),
    .b (net70),
    .out (net6)
  );
  and_cell and33 (
    .a (net18),
    .b (net23),
    .out (net70)
  );
  and_cell and34 (
    .a (net21),
    .b (net24),
    .out (net71)
  );
  or_cell or18 (
    .a (net71),
    .b (net72),
    .out (net73)
  );
  and_cell and35 (
    .a (net15),
    .b (net24),
    .out (net72)
  );
  or_cell or19 (
    .a (net73),
    .b (net74),
    .out (net75)
  );
  and_cell and36 (
    .a (net18),
    .b (net15),
    .out (net74)
  );
  or_cell or20 (
    .a (net75),
    .b (net76),
    .out (net7)
  );
  and_cell and37 (
    .a (net18),
    .b (net14),
    .out (net76)
  );
  and_cell and38 (
    .a (net19),
    .b (net14),
    .out (net77)
  );
  or_cell or21 (
    .a (net78),
    .b (net79),
    .out (net80)
  );
  and_cell and39 (
    .a (net77),
    .b (net23),
    .out (net78)
  );
  and_cell and40 (
    .a (net23),
    .b (net24),
    .out (net79)
  );
  and_cell and41 (
    .a (net14),
    .b (net24),
    .out (net81)
  );
  or_cell or22 (
    .a (net80),
    .b (net81),
    .out (net82)
  );
  or_cell or23 (
    .a (net82),
    .b (net83),
    .out (net84)
  );
  and_cell and42 (
    .a (net18),
    .b (net21),
    .out (net83)
  );
  or_cell or24 (
    .a (net84),
    .b (net85),
    .out (net8)
  );
  and_cell and43 (
    .a (net18),
    .b (net15),
    .out (net85)
  );
  and_cell and44 (
    .a (net19),
    .b (net14),
    .out (net86)
  );
  or_cell or25 (
    .a (net87),
    .b (net88),
    .out (net89)
  );
  and_cell and45 (
    .a (net86),
    .b (net23),
    .out (net87)
  );
  and_cell and46 (
    .a (net21),
    .b (net15),
    .out (net88)
  );
  or_cell or26 (
    .a (net89),
    .b (net90),
    .out (net91)
  );
  and_cell and47 (
    .a (net15),
    .b (net24),
    .out (net90)
  );
  or_cell or27 (
    .a (net91),
    .b (net92),
    .out (net93)
  );
  and_cell and48 (
    .a (net18),
    .b (net21),
    .out (net92)
  );
  or_cell or28 (
    .a (net93),
    .b (net94),
    .out (net9)
  );
  and_cell and49 (
    .a (net18),
    .b (net25),
    .out (net94)
  );
endmodule
