<%-- 
    Document   : excluir
    Created on : 31/03/2019, 20:42:50
    Author     : Rafael Sousa
--%>

<%@page import="br.com.fatecpg.cadastros.BD"%>
<%@page import="br.com.fatecpg.cadastros.Cliente"%>
<%@page import="br.com.fatecpg.cadastros.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir - Clientes</title>
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
        <h1><ul style="background-color:greenyellow"><p class="alinha">Excluir Cliente</p></ul></h1>
        <br/>
        
        <%int index = Integer.parseInt(request.getParameter("index"));%>
        <%Cliente c = BD.getClientes().get(index);%>
        <form action="listarC.jsp" >
        <table >
                
            <tr><td><p class="alinha"><b>Índice: </td>
                <td><u><%=index%></u></b></p></td></tr>
            <tr><td><p class="alinha"><b>Nome:</td>
                <td><u><%=c.getNome()%></u></b></p></td></tr>
            <tr><td><p class="alinha"><b>CPF: </td>
                <td><u><%=c.getCpf()%></u></b></p></td></tr>
            <tr><td><p class="alinha"><b>RG: </td>
                <td><u><%=c.getRg()%></u></b></p></td></tr>
            <tr><td><p class="alinha"><b>E-mail: </td>
                <td><u><%=c.getEmail()%></u></b></p></td></tr>
            <tr><td><p class="alinha"><b>Telefone:</td>
                <td><u><%=c.getFone()%></u></b></p></td></tr>
            <tr><td><p class="alinha"><b>Endereço: </td>
                <td><u><%=c.getEndereco()%></u></b></p></td></tr>
            
        </table>
        <br/>
            <br/>
            <hr/>
            <br/>
            <h3>Deseja excluir o cliente?
            <input type="submit" name="excluir" value="Sim"/>
            <input type="submit" name="excluir" value="Não"/>
            <input type="hidden" name="listarC" value="<%=index%>" /></h3>
            <br/>
        </form>
        
    </body>
    <%@include file="WEB-INF/jspf/footer.jspf" %>
</html>
