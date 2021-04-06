package jogo;

public class Botao {
	private String jogador = "";
	private int posicao;
	
	public Botao(int posicao, String jogador) {
		this.posicao = posicao;
		this.jogador = jogador;
	}
	
	public int getPosicao() {
		return posicao;
	}
	public void setPosicao(int posicao) {
		this.posicao = posicao;
	}
	public String getJogador() {
		return jogador;
	}
	public void setJogador(String jogador) {
		this.jogador = jogador;
	}	
}
