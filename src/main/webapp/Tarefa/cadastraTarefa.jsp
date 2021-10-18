<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Colaborador"%>
<%@page import="dao.DaoColaborador"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CONTROLE DE TAREFAS - CAPGEMINI</title>
<link rel="stylesheet" href="../Styles/padraotelacadastro.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" />
</head>

<body>
	<div class="container">
		<form id="matchtech" action="recebeDadosTarefa.jsp" method="POST">
			<h3>Cadastro de Tarefas</h3>
			<p></p>
			<%
			Colaborador col = new Colaborador();
			DaoColaborador daocolab = new DaoColaborador();

			List<Colaborador> listaColaboradores = daocolab.consultarColaboradores();
			%>
			<label class="mensagem" id="msg"> <%
 if (request.getParameter("pmensagem") != null)
 	out.write(request.getParameter("pmensagem"));
 %>
			</label>


			<fieldset>
				<div class="idcolaborador">
					<label>Colaborador</label> <select name="idcolaborador">
						<%
						for (Colaborador c : listaColaboradores) {
						%>
						<option value="<%out.write("" + c.getIdColaborador());%>">
							<%out.write(c.getNomeColaborador());%>
						</option>
						<%}%>
					</select>
				</div>
			</fieldset>
			
			<fieldset> 
                    <label>Descricao da Tarefa</label>
                    <div class="nomecolaborador">
                        <input id="descricao" name="descricao" type="text" maxlength="100" style="text-transform: uppercase">
                    </div>
                </fieldset>
			
				<fieldset> 
                    <label>Inicio (yyyy-MM-dd HH:mm:ss)</label>
                    <div class="nomecolaborador">
                        <input id="inicio" name="inicio" type="datetime" >
                    </div>
                </fieldset>
                
                	<fieldset> 
                    <label>Fim (yyyy-MM-dd HH:mm:ss)</label>
                    <div class="nomecolaborador">
                        <input id="fim" name="fim" type="datetime" >
                    </div>
                </fieldset>
                
                <fieldset>
                 <div class="nomecolaborador">
                 	<label>Status da Tarefa</label>
                 	<select name="status">
                 	<option value"I">Iniciada</option>
                 	<option value"C">Cancelada</option>
                 	<option value"E">Executada</option>
                 	</select>
                 </div>	
                </fieldset>
                
                <fieldset>
                 <div class="nomecolaborador">
                 	<label>Prioridade da Tarefa</label>
                 	<select name="prioridade">
                 	<option value"B">Baixa</option>
                 	<option value"M">Média</option>
                 	<option value"A">Alta</option>
                 	<option value"U">Urgente</option>
                 	</select>
                 </div>	
                </fieldset>
			<br>

			<div>
				<div class="form-group col-md-2 h-8">
					<input type="submit" value="Cadastrar" class="btn btn-success " />
				</div>
				<div class="form-group col-md-2 h-8">
					<input type="reset" value="Cancelar" class="btn btn-danger" />
				</div>
			</div>
		</form>
	</div>
</body>
</html>