module gates ( I0, I1, I2, Y);
	input I0, I1, I2;
	output Y;
	wire n1;
	nor2s1 U1 ( .DIN1(I0), .DIN2(I1), .Q(n1) );
	nnd2s1 U2 ( .DIN1(n1), .DIN2(I2), .Q(Y) );
endmodule
