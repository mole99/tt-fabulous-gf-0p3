// SPDX-FileCopyrightText: © 2026 FABulous Contributors
// SPDX-License-Identifier: Apache-2.0

`default_nettype none

module top_addition (
    input  wire [7:0] ui,
    input  wire [7:0] uio,
    output wire [7:0] uo
);

    assign uo = ui + uio;

endmodule
