<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CONTROLE DE TAREFAS - CAPGEMINI</title>
        <link   rel ="stylesheet" href="../Styles/padraotelacadastro.css">
        <script src ="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src ="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
    </head>
    
    <body> 
        <div class="container">
            <form id="matchtech" action="recebeidcolaborador.jsp" method="POST">
                <h3>Busca Colaboradores por Id</h3>
                <p></p>
                
                <label class="mensagem" id="msg">
                   
                </label>
                
                <fieldset> 
                    <label>ID</label>
                    <div class="nomecolaborador">
                        <input id="idcolaborador" name="idcolaborador" type="text" maxlength="4">
                    </div>
                </fieldset>
                <br>
                
                <div>
                    <div class="form-group col-md-2 h-8">
                        <input type="submit" value="Buscar" class="btn btn-success "/>
                    </div>
                    <div class="form-group col-md-2 h-8">                                 
                        <input type="reset"  value="Cancelar" class="btn btn-danger"/>                        
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
