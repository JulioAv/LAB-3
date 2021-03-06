module tabla01SOP();
	
	reg A, B, C;
	wire w1, w2, w3, w4, w5, w6, out;
	
	not N1(w1, A);
	not N2(w2, B);
	not N3(w3, C);
	or O1(w4, A, B, w3);
	or O2(w5, A, w2, w3);
	or O3(w6, w1, B, C);
	and (out, w4, w5, w6);
	
	initial begin
		
		$display("A B C | Y");
		$display("---------");
		$monitor("%b %b %b | %b", A, B, C, out);
		A=0; B=0; C=0;
		#1 C=1;
		#1 B=1; C=0;
		#1 C=1;
		#1 A=1; B=0; C=0;
		#1 C=1;
		#1 C=0; B=1;
		#1 C=1; A=1;
		#1 $finish;
	
	end 
	
	initial
		begin
			$dumpfile("tabla01SOP.vcd");
			$dumpvars(0, tabla01SOP);
		
		end


endmodule