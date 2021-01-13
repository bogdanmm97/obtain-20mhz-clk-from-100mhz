
module obtain_20mhz_sclk(
	input clk,
	output s_clk
    );
	 
	 reg [2:0] count= 3'b0;
	 reg clk_pos=0;
	 reg clk_ox=0;
	 reg clk_zz=0;
	 
	 always @(posedge clk) begin
		if ( count == 3'b100)  begin
			count <= 3'b0;
			clk_pos <= 1'b1;
		end else begin
			count <= count+1'b1;
			clk_pos <= 1'b0;
		end
		clk_ox <= clk_pos;
	end
	
	always @(negedge clk) begin
		clk_zz <= clk_ox;
	end
	
	assign s_clk = (count == 3'b010) ? clk_zz : (clk_pos ^ clk_ox) ;
	
	
endmodule

