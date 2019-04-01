<%-- 
    Document   : adicionar
    Created on : 31/03/2019, 20:30:57
    Author     : Rafael Sousa
--%>

<%@page import="br.com.fatecpg.cadastros.BD"%>
<%@page import="br.com.fatecpg.cadastros.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <title>Adicionar  - Fornecedor</title>
        <style>p.alinha{padding-left: 1.8em }
           
        </style>
    </head>
    
    <body>
        <br/>
        <br/>
        <br/>
        <hr/>
        <h1><ul style="background-color:greenyellow"><p class="alinha">Adicionar Fornecedor</p></ul></h1>
        <h3><p class="alinha"> Preencha os campos :</p></h3>
        <form action="listarF.jsp">
            
            <table >
                
                <tr><td><p class="alinha">Nome:</p></td>
                    <td><input type="text" name="nome"/></td>
                </tr>
                <tr><td><p class="alinha">Razão Social:</p></td>
                    <td><input type="text" name="razao_social"/></td>
                </tr>
                <tr><td><p class="alinha">CNPJ:</p></td>
                    <td><input type="text" name="cnpj"/></td>
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
            <h3><div aling="center">Cadastrar novo fornecedor?
                    &emsp;<input type="submit" name="adicionar" value="Sim"/>
                    <input type="submit" name="adicionar" value="Não"/>  </h3>         
            </div>
            <br/>
        </form> 
    </body>
    <%@include file="WEB-INF/jspf/footer.jspf" %>
</html>