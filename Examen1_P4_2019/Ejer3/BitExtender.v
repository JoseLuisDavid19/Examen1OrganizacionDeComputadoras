module BitExtender(
    input extend,
    input [15:0] in,
    output [31:0] out
);
wire bms={in[15]};
assign out=(extend)?{{bms},{bms},{bms},{bms},{bms},{bms},{bms},{bms},{bms},{bms},{bms},{bms},{bms},{bms},{bms},{bms},{in}}:{{1'b0},{1'b0},{1'b0},{1'b0},{1'b0},{1'b0},{1'b0},{1'b0},{1'b0},{1'b0},{1'b0},{1'b0},{1'b0},{1'b0},{1'b0},{1'b0},{in}};
endmodule // 