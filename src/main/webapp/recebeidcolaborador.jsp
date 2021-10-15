<%@page import="java.util.List"%>
<%@page import="model.Colaborador"%>
<%@page import="dao.DaoColaborador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CONTROLE DE TAREFAS - CAPGEMINI</title>
        <link rel="stylesheet" href="Styles/padraotelagrid.css">
        <!-- bootstrap -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet"/>        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <!-- Fontawesome' -->
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    </head>
    <body>
        <%
        Colaborador c = null;
        String idColaborador = request.getParameter("idcolaborador");
    	DaoColaborador daocolab = new DaoColaborador();
    	c = daocolab.consultarColaborador(parseInt(idColaborador));
   
   		if (c==null){
   		out.write("Não tem nenhum Colaborador com esse ID"); }
   		else {
 
        %>
        <table id="consulta">
            <!-- cabecalho da tabela -->
            <thead>
            	<th> Id </th>
                <th> Colaborador </th>
                <th> Alterar </th>
                <th> Excluir </th>
            </thead>
            <!-- corpo da tabela -->
            <tbody>      
                <tr>
                	<td><% out.write(c.getIdColaborador() + ""); %></td>
                    <td><% out.write(c.getNomeColaborador()); %></td>
                    <td> <i class="far fa-edit"     ;style="color:blue"></i></td>
                    <td> <i class="far fa-trash-alt";style="color:red"></i></td>
                </tr>
               
            </tbody>
        </table>
    </body>
</html>

