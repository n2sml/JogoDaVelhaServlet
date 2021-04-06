package jogo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Jogo extends HttpServlet {
	private static final long serialVersionUID = 1L;       

	public static Regra regra;

	public Jogo() {
		super();      
	}

	@Override
	public void init() {
		regra = new Regra();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String botaoString = request.getParameter("botao");
		int botaoClicado;

		try {
			botaoClicado = Integer.parseInt(botaoString);
			regra.jogar(botaoClicado - 1);
			regra.analisar();					
			
		}
		
		catch (NumberFormatException exception) {
			System.out.println("Jogada Inicial");
		}
		
		finally {
			response.sendRedirect(request.getContextPath() + "/index.jsp");
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.regra = new Regra();
		response.sendRedirect(request.getContextPath() + "/index.jsp");
	}

}
