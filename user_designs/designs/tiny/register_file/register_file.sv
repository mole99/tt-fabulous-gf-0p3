// SPDX-FileCopyrightText: © 2026 FABulous Contributors
// SPDX-License-Identifier: Apache-2.0

`default_nettype none

module register_file #(
    parameter WORD_BITS = 3,
    parameter ADDR_BITS = 3
)(
    input  wire       clk1,
    input  wire       clk2,
    input  wire       rst,
    input  wire       ena,
    
    input  wire [ADDR_BITS-1:0] addr_a,
    
    // Input word
    input  wire [WORD_BITS-1:0] word_a,
    
    // Output words
    output wire [WORD_BITS-1:0] word_b
);

    /*wire rst, rst_buf;

    SYS_RESET SYS_RESET (
        .RESET(rst)
    );
    
    GBUF rst_buf_i (
      .IN   (rst),
      .OUT  (rst_buf)
    );*/

    logic [WORD_BITS-1:0] mem [2**ADDR_BITS];

    // Port A
    always_ff @(posedge clk1) begin
        if (rst) begin
            for (int i=0; i<2**ADDR_BITS; i++) begin
                mem[i] <= '0;
            end
        end else begin
            if (ena) begin
                mem[addr_a] <= word_a;
            end
        end
    end

    // Port C
    assign word_b = mem[addr_a];

endmodule
