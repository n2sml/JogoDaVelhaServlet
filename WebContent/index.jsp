<%@page import="jogo.Jogo"%>
<%@page import="jogo.Regra"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Jogo da velha</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet">
		<style>
			.tg {
				border-collapse: collapse;
				border-spacing: 0;
			}
			
			.tg td {
				border-color: black;
				border-style: solid;
				border-width: 1px;
				font-family: Arial, sans-serif;
				font-size: 35px;	
				overflow: hidden;
				padding: 10px 5px;
				word-break: normal;
			}
			
			.tg th {
				border-color: black;
				border-style: solid;
				border-width: 1px;
				font-family: Arial, sans-serif;
				font-size: 35px;
				font-weight: normal;
				overflow: hidden;
				padding: 10px 5px;
				word-break: normal;
			}
			
			.tg .tg-0lax {
				text-align: left;
				vertical-align: top;
				border: 3px solid black;
				padding: 25px;
				font: bold 11px Arial;
				text-decoration: none;
				background-color: #EEEEEE;
				color: #333333;
				padding: 2px 6px 2px 6px;
				border-top: 1px solid #CCCCCC;
				border-right: 1px solid #333333;
				border-bottom: 1px solid #333333;
				border-left: 1px solid #CCCCCC;
			}
			
			button {
				height: 35px;
				width: 35px;
			}
			
			a {
				font-size: 20px;
			}
		</style>
	</head>
	<body>
		<div class="container">
			<div>
				<h1 class="text-center">Jogo da Velha</h1>
				<% if(!Jogo.regra.getAcabou()) { %>				 			
				<table class="tg position-absolute top-50 start-50 translate-middle">			
					  <tr>
					    <th class="tg-0lax">
					    	<a href="/JogoDaVelha/jogo?botao=1">
					    		<button <% if(!Jogo.regra.getBotao(0).getJogador().equals("")) { %> disabled <% } %> >
					    			<%= Jogo.regra.getBotao(0).getJogador() %>
					    		</button>
					    	</a>
					    </th>
					    <th class="tg-0lax">
					    	<a href="/JogoDaVelha/jogo?botao=2">
					    		<button <% if(!Jogo.regra.getBotao(1).getJogador().equals("")) { %> disabled <% } %> >
					    			<%= Jogo.regra.getBotao(1).getJogador() %>
					    		</button>
					    	</a>
					    </th>
					    <th class="tg-0lax">
					    	<a href="/JogoDaVelha/jogo?botao=3">
					    		<button <% if(!Jogo.regra.getBotao(2).getJogador().equals("")) { %> disabled <% } %> >
					    			<%= Jogo.regra.getBotao(2).getJogador() %>
					    		</button>
					    	</a>
					    </th>
					  </tr>
					  <tr>
					    <td class="tg-0lax">
					    	<a href="/JogoDaVelha/jogo?botao=4">
					    		<button <% if(!Jogo.regra.getBotao(3).getJogador().equals("")) { %> disabled <% } %> >
					    			<%= Jogo.regra.getBotao(3).getJogador() %>
					    		</button>
					    	</a>
					    </td>
					    <td class="tg-0lax">
					    	<a href="/JogoDaVelha/jogo?botao=5">
					    		<button <% if(!Jogo.regra.getBotao(4).getJogador().equals("")) { %> disabled <% } %> >
					    			<%= Jogo.regra.getBotao(4).getJogador() %>
					    		</button>
					    	</a>
					    </td>
					    <td class="tg-0lax">
					    	<a href="/JogoDaVelha/jogo?botao=6">
					    		<button <% if(!Jogo.regra.getBotao(5).getJogador().equals("")) { %> disabled <% } %> >
					    			<%= Jogo.regra.getBotao(5).getJogador() %>
					    		</button>
					    	</a>
					    </td>
					  </tr>
					  <tr>
					    <td class="tg-0lax">
					    	<a href="/JogoDaVelha/jogo?botao=7">
					    		<button <% if(!Jogo.regra.getBotao(6).getJogador().equals("")) { %> disabled <% } %> >
					    			<%= Jogo.regra.getBotao(6).getJogador() %>
					    		</button>
					    	</a>
					    </td>
					    <td class="tg-0lax">
					    	<a href="/JogoDaVelha/jogo?botao=8">
					    		<button <% if(!Jogo.regra.getBotao(7).getJogador().equals("")) { %> disabled <% } %> >
					    			<%= Jogo.regra.getBotao(7).getJogador() %>
					    		</button>
					    	</a>
					    </td>
					    <td class="tg-0lax">
					    	<a href="/JogoDaVelha/jogo?botao=9">
					    		<button <% if(!Jogo.regra.getBotao(8).getJogador().equals("")) { %> disabled <% } %> >
					    			<%= Jogo.regra.getBotao(8).getJogador() %>
					    		</button>
					    	</a>
					    </td>
					  </tr>			
				</table>
				<h3 class="text-center">O jogador atual é <%= Jogo.regra.getJogadorAtual() %></h3>
				
				
				
				<% } else { %>
					<% if (Jogo.regra.getVencedor().equals("")) { %>
						<h2 class="text-center" style="color: red; font-weight: bold">Deu Velha!</h2>	
				    <% } else { %>
						<h2 class="text-center" style="color: red; font-weight: bold">O vencedor foi <%= Jogo.regra.getVencedor() %>!</h2>	
					<% } 
				} %>
				
				<form action="/JogoDaVelha/jogo" method="post">
				   <input style="top: 75%!important" class="position-absolute start-50 translate-middle" type="submit" value="Tentar novamente."> 
				</form>	
			</div>
		</div>
	</body>
</html>