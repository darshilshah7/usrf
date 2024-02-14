module usrf(input clk,input[1:0]mode,input [3:0]data,output reg [3:0]register);

always @(posedge clk)begin
case(mode)
2'b00: register<=data;//load the input
2'b01: register<=register<<1; //left shift
2'b10: register<=register>>1;//right shift
2'b11: begin//rotate //right shift
		register[0]<=register[1];
		register[1]<=register[2];
		register[2]<=register[3];
		register[3]<=register[0];
		end
		
endcase
end
endmodule

 
