module Priority_encoder_(i,out);
input [7:0] i;
output reg[2:0] out;
always@(*)
case(i)
8'b00000001:out=3'b000;
8'b0000001x:out=3'b001;
8'b000001xx:out=3'b010;
8'b00001xxx:out=3'b011;
8'b0001xxxx:out=3'b100;
8'b001xxxxx:out=3'b101;
8'b01xxxxxx:out=3'b110;
8'b1xxxxxxx:out=3'b111; 
default: out=3'bxxx;
endcase
endmodule

module Priority_encoder_tb();
reg [7:0]i;
wire [2:0]out;

Priority_encoder_ uut(.i(i),.out(out));

initial begin
// second method
i = 0;
// Wait 100 ns for global reset to finish
#100;
 #1600 $finish;
// Add stimulus here
end
always begin
#100 i = i+8'b00000001;
 end
endmodule

