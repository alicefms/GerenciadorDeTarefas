<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="javax.print.attribute.standard.DateTimeAtCreation"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.Timestamp"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Tarefa"%>
<%@page import="dao.DaoTarefa"%>

<%
int idColaborador = Integer.parseInt(request.getParameter("idcolaborador"));
String descricao = request.getParameter("descricao");
Timestamp inicio = Timestamp.valueOf(request.getParameter("inicio"));
Timestamp fim = Timestamp.valueOf(request.getParameter("fim"));
String status = request.getParameter("status");
String prioridade = request.getParameter("prioridade");

DaoTarefa daoT = new DaoTarefa();
Tarefa tarefa = new Tarefa(idColaborador,descricao,inicio,fim,status,prioridade);
daoT.incluirTarefa(tarefa);

out.write("Tarefa adicionada");
%>