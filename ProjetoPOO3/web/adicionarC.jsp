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
        <style>p.alinha{padding-left: 1.8em }
           
        </style>
    </head>
    
    <body>
        <br/>
        <br/>
        <br/>
        <hr/>
        <h1><ul style="background-color:greenyellow"><p class="alinha">Adicionar Clientes</p></ul></h1>
        <h3><p class="alinha"> Preencha os campos :</p></h3>
        <form action="listarC.jsp">
            
            <table >
                
                <tr><td><p class="alinha">Nome:</p></td>
                    <td><input type="text" name="nome"/></td>
                </tr>
                <tr><td><p class="alinha">CPF:</p></td>
                    <td><input type="text" name="cpf"/></td>
                </tr>
                <tr><td><p class="alinha">RG:</p></td>
                    <td><input type="text" name="rg"/></td>
                </tr>
                <tr><td><p class="alinha">E-mail:</p></td>
                    <td><input type="text" name="email"/></td>
                </tr>
                <tr><td><p class="alinha">Telefone:</p></td>
                    <td><input type="text" name="fone"/></td>
                <tr><td><p class="alinha">Endereço:</p></td>
                    <td><input type="text" name="endereco"/></td>
                </p>
            </table>
            <br/>
            <br/>
            <hr/>
            <br/>
            <h3><div aling="center">Cadastrar novo cliente?
                    &emsp;<input type="submit" name="adicionar" value="Sim"/>
                    <input type="submit" name="adicionar" value="Não"/>  </h3>         
            </div>
            <br/>
        </form> 
    </body>
    <%@include file="WEB-INF/jspf/footer.jspf" %>
</html>