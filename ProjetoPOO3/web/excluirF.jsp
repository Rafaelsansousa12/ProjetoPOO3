<%-- 
    Document   : excluirF
    Created on : 31/03/2019, 21:56:43
    Author     : Rafael Sousa
--%>

<%@page import="br.com.fatecpg.cadastros.BD"%>
<%@page import="br.com.fatecpg.cadastros.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir - Fornecedor</title>
         <%@include file="WEB-INF/jspf/header.jspf" %>
         <style>p.alinha{padding-left: 1.8em }
           
        </style>
    </head>
    </head>
    
    <body>
        <br/>
        <br/>
        <br/>
        <hr/>
        <h1><ul style="background-color:greenyellow"><p class="alinha">Excluir Fornecedor</p></ul></h1>
        <br/>
        
        <%int index = Integer.parseInt(request.getParameter("index"));%>
        <%Fornecedor c = BD.getFornecedores().get(index);%>
        <form action="listarF.jsp" >
        <table>    
            <tr><td><p class="alinha"><b>Índice: </b> </td>
                <td><u></b><%=index%></u></b><br/></tr>
            <tr><td><p class="alinha"><b>Nome: </td> 
                <td><u><%=c.getNome()%></u></tr>
            <tr><td><p class="alinha"><b>CPF: </td>
                <td><u><%=c.getRazao_social()%></u></tr>
            <tr><td><p class="alinha"><b>RG:  </td>
                <td><u><%=c.getCnpj()%></u></tr>
            <tr><td><p class="alinha"><b>E-mail: </td>
                <td><u><%=c.getEmail()%></u></tr>
            <tr><td><p class="alinha"><b>Telefone: </td>
                <td><u><%=c.getFone()%></u></tr>
            <tr><td><p class="alinha"><b>Endereço:  </td>
                <td><u><%=c.getEndereco()%></u></tr>            
        </table>
        <br/>
        <br/>
        <hr/>
        <br/>
        <h3>Deseja excluir o Fornecedor?
            <input type="submit" name="excluir" value="Sim"/>
            <input type="submit" name="excluir" value="Não"/>
            <input type="hidden" name="listarF" value="<%=index%>" /></h3>
        <br/>    
        </form>
        
    </body>
    <%@include file="WEB-INF/jspf/footer.jspf" %>
</html>
