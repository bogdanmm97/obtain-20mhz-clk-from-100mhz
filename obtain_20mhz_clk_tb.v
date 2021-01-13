

module obtain_20mhz_clk_tb;

	// Inputs
	reg clk;

	// Outputs
	wire s_clk;

	// Instantiate the Unit Under Test (UUT)
	obtain_20mhz_sclk uut (
		.clk(clk), 
		.s_clk(s_clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	initial begin
	clk=0;
	forever #5 clk=~clk;
	end
      
endmodule

