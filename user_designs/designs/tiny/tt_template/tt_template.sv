// SPDX-FileCopyrightText: © 2026 FABulous Contributors
// SPDX-License-Identifier: Apache-2.0

`default_nettype none

module tt_template (
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

    // Instantiate your TT design here
    tt_um_example tt_um_example (
        .ui_in   (ui_in),   // Dedicated inputs
        .uo_out  (uo_out),  // Dedicated outputs
        .uio_in  (uio_in),  // IOs: Input path
        .uio_out (uio_out), // IOs: Output path
        .uio_oe  (uio_oe),  // IOs: Enable path (active high: 0=input, 1=output)
        .ena     (1'b1),    // always 1 when the design is powered, so you can ignore it
        .clk     (clk),     // clock
        .rst_n   (rst_n)    // reset_n - low to reset
    );

    assign ui_in = ui;
    assign uo = uo_out;
    assign uio_in = uio;
    assign uio = uio_oe ? uio_out : 8'bz;

endmodule
