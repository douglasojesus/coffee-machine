module interfaceESR (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	//ERSR: erro do sensor SR
	input saida1Contador, saida2Contador;
	output a, b, c, d, e, f, g;


	wire saida1a, saida2a, saida3a, saida4a,
	saida1b, saida2b, saida3b, saida4b,
	saida1c, saida2c, saida3c, saida4c,
	saida1d, saida2d, saida3d, saida4d,
	saida1e, saida2e, saida3e, saida4e,
	saida1f, saida2f, saida3f, saida4f,
	saida1g, saida2g, saida3g, saida4g,
	saida1h, saida2h, saida3h, saida4h;
	
	//a
	//como o segmento a � ativado 3 vezes nas letras CE0, ele fica nessa configura��o no multiplexador
	and(saida1a, ~saida1Contador, ~saida2Contador, 1);
	and(saida2a, ~saida1Contador, saida2Contador, 0);
	and(saida3a, saida1Contador, ~saida2Contador, 1);
	and(saida4a, saida1Contador, saida2Contador, 0);
	or(a, saida1a, saida2a, saida3a, saida4a);
	
	//b
	and(saida1b, ~saida1Contador, ~saida2Contador, 0);
	and(saida2b, ~saida1Contador, saida2Contador, 0);
	and(saida3b, saida1Contador, ~saida2Contador, 0);
	and(saida4b, saida1Contador, saida2Contador, 0);
	or(b, saida1b, saida2b, saida3b, saida4b);
	
	//c
	and(saida1c, ~saida1Contador, ~saida2Contador, 0);
	and(saida2c, ~saida1Contador, saida2Contador, 0);
	and(saida3c, saida1Contador, ~saida2Contador, 1);
	and(saida4c, saida1Contador, saida2Contador, 0);
	or(c, saida1c, saida2c, saida3c, saida4c);
	
	//d
	and(saida1d, ~saida1Contador, ~saida2Contador, 1);
	and(saida2d, ~saida1Contador, saida2Contador, 0);
	and(saida3d, saida1Contador, ~saida2Contador, 1);
	and(saida4d, saida1Contador, saida2Contador, 0);
	or(d, saida1d, saida2d, saida3d, saida4d);
	
	//e
	and(saida1e, ~saida1Contador, ~saida2Contador, 1);
	and(saida2e, ~saida1Contador, saida2Contador, 1);
	and(saida3e, saida1Contador, ~saida2Contador, 0);
	and(saida4e, saida1Contador, saida2Contador, 1);
	or(e, saida1e, saida2e, saida3e, saida4e);
	
	//f
	and(saida1f, ~saida1Contador, ~saida2Contador, 1);
	and(saida2f, ~saida1Contador, saida2Contador, 0);
	and(saida3f, saida1Contador, ~saida2Contador, 1);
	and(saida4f, saida1Contador, saida2Contador, 0);
	or(f, saida1f, saida2f, saida3f, saida4f);
	
	//g
	and(saida1g, ~saida1Contador, ~saida2Contador, 1);
	and(saida2g, ~saida1Contador, saida2Contador, 1);
	and(saida3g, saida1Contador, ~saida2Contador, 1);
	and(saida4g, saida1Contador, saida2Contador, 1);
	or(g, saida1g, saida2g, saida3g, saida4g);


endmodule