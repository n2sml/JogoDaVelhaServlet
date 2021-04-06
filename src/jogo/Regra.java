package jogo;

import java.util.ArrayList;

/* 
 * 1 2 3
 * 4 5 6
 * 7 8 9
 */

public class Regra {
	private String jogadorAtual = "";
	private String vencedor = "";
	private boolean acabou = false;
	private ArrayList<Botao> botoes = null;
	private int jogadas;
	
	public Regra() {
		botoes = new ArrayList();
		
		for(int index = 0; index <= 9; index++) {
			botoes.add(new Botao(index, ""));
		}
		
		jogadorAtual = "x";
		jogadas = 0;	
	}
	
	public void jogar(int botao) {
		Botao botaoAtual = botoes.get(botao);
		botaoAtual.setJogador(jogadorAtual);
		botaoAtual.setPosicao(botao);
		
		jogadas++;
	}
	
	public void analisar() {
		//1 - 2 - 3
		if(botoes.get(0).getJogador() == botoes.get(1).getJogador() && botoes.get(1).getJogador() == botoes.get(2).getJogador() && botoes.get(2).getJogador() != "") {
			acabou = true;
			vencedor = botoes.get(0).getJogador();
		}
		//4 - 5 - 6
		if(botoes.get(3).getJogador() == botoes.get(4).getJogador() && botoes.get(4).getJogador() == botoes.get(5).getJogador() && botoes.get(5).getJogador() != "") {
			acabou = true;
			vencedor = botoes.get(3).getJogador();
		}
		//7 - 8 - 9
		if(botoes.get(6).getJogador() == botoes.get(7).getJogador() && botoes.get(7).getJogador() == botoes.get(8).getJogador() && botoes.get(8).getJogador() != "") {
			acabou = true;
			vencedor = botoes.get(6).getJogador();
		}	
		//1 - 4 - 7
		if(botoes.get(0).getJogador() == botoes.get(3).getJogador() && botoes.get(3).getJogador() == botoes.get(6).getJogador() && botoes.get(6).getJogador() != "") {
			acabou = true;
			vencedor = botoes.get(0).getJogador();
		}
		//2 - 5 - 8
		if(botoes.get(1).getJogador() == botoes.get(4).getJogador() && botoes.get(4).getJogador() == botoes.get(7).getJogador() && botoes.get(7).getJogador() != "") {
			acabou = true;
			vencedor = botoes.get(1).getJogador();
		}
		//3 - 6 - 9
		if(botoes.get(2).getJogador() == botoes.get(5).getJogador() && botoes.get(5).getJogador() == botoes.get(8).getJogador() && botoes.get(8).getJogador() != "") {
			acabou = true;
			vencedor = botoes.get(2).getJogador();
		}		
		//3 - 5 - 7
		if(botoes.get(2).getJogador() == botoes.get(4).getJogador() && botoes.get(4).getJogador() == botoes.get(6).getJogador() && botoes.get(6).getJogador() != "") {
			acabou = true;
			vencedor = botoes.get(2).getJogador();
		}
		//1 - 5 - 9
		if(botoes.get(0).getJogador() == botoes.get(4).getJogador() && botoes.get(4).getJogador() == botoes.get(8).getJogador() && botoes.get(8).getJogador() != "") {
			acabou = true;
			vencedor = botoes.get(0).getJogador();
		}		
		
		if(jogadas == 9) {
			acabou = true;
		}
		
		if(!acabou) {			
			if(jogadorAtual == "x") {
				jogadorAtual = "o";
			}
			else if(jogadorAtual == "o") {
				jogadorAtual = "x";
			}
		}		
	}
	
	public boolean getAcabou () {
		return acabou;
	}
	
	public String vencedor() {
		return vencedor;
	}
	
	public String getJogadorAtual () {
		return jogadorAtual;
	}
	
	public Botao getBotao(int posicao) {
		return botoes.get(posicao);
	}
	
	public String getVencedor() {
		return vencedor;
	}
}
