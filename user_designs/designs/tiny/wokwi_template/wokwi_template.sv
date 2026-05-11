// SPDX-FileCopyrightText: © 2026 FABulous Contributors
// SPDX-License-Identifier: Apache-2.0

`default_nettype none

module wokwi_template (
    input  wire [7:0] ui,       // Dedicated inputs
    output wire [7:0] uo,       // Dedicated outputs
    inout  wire [7:0] uio,      // IOs
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    wire [7:0] ui_in;
    wire [7:0] uo_out;
    wire [7:0] uio_in;
    wire [7:0] uio_out;
    wire [7:0] uio_oe;

    // Instantiate your wokwi design here
    // Note: to get the Verilog for your design, use the API: 
    // https://wokwi.com/api/projects/<wokwi_id>/verilog

    /*tt02_1bit_alu tt02_1bit_alu (
        .io_in  (ui_in),
        .io_out (uo_out)
    );
    assign uio_out = '0;
    assign uio_oe = '0;*/

    tt_um_wokwi_370722051572189185 tt_um_wokwi_370722051572189185 (
        .ui_in    (ui_in),
        .uo_out   (uo_out),
        .uio_in   (uio_in),
        .uio_out  (uio_out),
        .uio_oe   (uio_oe),
        .ena      (1'b1),
        .clk      (clk),
        .rst_n    (rst_n)
    );

    assign ui_in = ui;
    assign uo = uo_out;
    assign uio_in = uio;
    assign uio = uio_oe ? uio_out : 8'bz;

endmodule
