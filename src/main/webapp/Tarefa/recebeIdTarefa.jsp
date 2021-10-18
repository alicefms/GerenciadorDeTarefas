<%@page import="java.util.List"%>
<%@page import="model.Tarefa"%>
<%@page import="dao.DaoTarefa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CONTROLE DE TAREFAS - CAPGEMINI</title>
        <link rel="stylesheet" href="../Styles/padraotelagrid.css">
        <!-- bootstrap -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet"/>        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <!-- Fontawesome' -->
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    </head>
    <body>
        <%
       
        int idTarefa = Integer.parseInt(request.getParameter("idTarefa"));
    	DaoTarefa daoT = new DaoTarefa();
    	Tarefa t = daoT.consultarTarefa(idTarefa);
   
   		if (t==null){
   		out.write("Não tem nenhuma Tarefa com esse ID"); }
   		else {
 
        %>
        <table id="consulta">
            <!-- cabecalho da tabela -->
            <thead>
			<th>Id</th>
			<th>Colaborador</th>
			<th>Descricao</th>
			<th>Inicio</th>
			<th>Fim</th>
			<th>Status</th>
			<th>Prioridade</th>
			<th>Editar</th>
			<th>Excluir</th>

            </thead>
            <!-- corpo da tabela -->
            <tbody>      
                <tr>
				<td>
					<% out.write(Integer.toString(t.getIdTarefa())); %>
				</td>
				<td>
					<% out.write(Integer.toString(t.getIdColaborador())); %>
				</td>
				<td>
					<% out.write(t.getDescrTarefa()); %>
				</td>
						
				<td>
					<% out.write(String.valueOf(t.getDataHoraInicio())); %>
				</td>
				<td>
					<% out.write(String.valueOf(t.getDataHoraFim())); %>
				</td>
				<td>
					<% out.write(t.getStatusTarefa()); %>
				</td>
				<td>
					<% out.write(t.getPrioridadeTarefa()); %>
				</td>

				<td><i class="far fa-edit" ;style="color: blue"></i></td>
				<td><i class="far fa-trash-alt"></i></td>
			</tr>
               
            </tbody>
        </table>
        <%} %>
    </body>
</html>

