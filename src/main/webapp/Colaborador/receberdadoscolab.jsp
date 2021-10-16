<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Colaborador"%>
<%@page import="dao.DaoColaborador"%>

<%
    String vNomecolaborador = request.getParameter("nomecolaborador");
    DaoColaborador daocolab = new DaoColaborador();
    daocolab.incluirColaborador(vNomecolaborador);
    out.write("Colaborador adicionado");
   
%>