<%-- 
    Document   : adicionar
    Created on : 31/03/2019, 20:30:57
    Author     : Rafael Sousa
--%>

<%@page import="br.com.fatecpg.cadastros.BD"%>
<%@page import="br.com.fatecpg.cadastros.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <title>Adicionar  - Cliente</title>
        <style>p.alinha{padding-left: 1.8em }</style>
    </head>
    
    <body>
        <br/>
        <br/>
        <br/>
        <hr/>
        <h1><p class="alinha">Adicionar Clientes</p></h1>
        <h2> Preencha os campos :</h2>
        <form action="listarC.jsp">
            
            <table>
                <p class="alinha">
                <tr><td>Nome:</td>
                    <td><input type="text" name="nome"/></td>
                </tr>
                <tr><td>CPF:</td>
                    <td><input type="text" name="cpf"/></td>
                </tr>
                <tr><td>RG:</td>
                    <td><input type="text" name="rg"/></td>
                </tr>
                <tr><td>E-mail:</td>
                    <td><input type="text" name="email"/></td>
                </tr>
                <tr><td>Telefone:</td>
                    <td><input type="text" name="fone"/></td>
                <tr><td>Endereço:</td>
                    <td><input type="text" name="endereco"/></td>
                </p>
            </table>
            <h2>Deseja incluir o novo cliente?</h2>
            <input type="submit" name="adicionar" value="Sim"/>
            <input type="submit" name="adicionar" value="Não"/>           
            
        </form> 
    </body>
    <%@include file="WEB-INF/jspf/footer.jspf" %>
</html>