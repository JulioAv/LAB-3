module tabla04SOP();

	reg A, B, C, D;
	wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, out;
	
	not N1(w1, A);
	not N2(w2, B);
	not N3(w3, C);
	not N4(w4, D);
	and O1(w5, w1, w2, w3, w4);
	and O2(w6, w1, w2, C, w4);
	and O3(w7, w1, w2, C, D);
	and O4(w8, w1, B, w3, D);
	and O5(w9, w1, B, C, D);
	and O6(w10, A, w2, w3, w4);
	and O7(w11, A, w2, C, w4);
	or A1(out, w5, w6, w7, w8, w9, w10, w11);
	
	initial begin
		$display("A B C D| Y");
		$display("---------");
		$monitor("%b %b %b %b| %b", A, B, C, D, out);
		A=0; B=0; C=0; D=0;
		#1 D=1;
		#1 D=0; C=1;
		#1 D=1;
		#1 D=0; B=1;
		#1 D=1;
		#1 D=0; C=1;
		#1 D=1; 
		#1 D=0; B=0; C=0; A=1;
		#1 D=1;
		#1 D=0; C=1;
		#1 D=1;
		#1 D=0; B=1; C=0;
		#1 D=1;
		#1 D=0; C=1;
		#1 D=1;
		
	end 
	
	initial
		begin
			$dumpfile("tabla04SOP.vcd");
			$dumpvars(0, tabla04SOP);
		
		end	


endmodule