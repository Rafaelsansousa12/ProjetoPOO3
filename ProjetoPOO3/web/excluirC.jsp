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
        
    </head>
    
    <body>
        
        <h1>Clientes</h1>
        <h2>Excluir</h2>
        
        <%int index = Integer.parseInt(request.getParameter("index"));%>
        <%Cliente c = BD.getClientes().get(index);%>
        <form action="listarC.jsp" >
            
            <b>Índice:  <u><%=index%></u></b><br/>
            <b>Nome:  <u><%=c.getNome()%></u></b><br/>
            <b>CPF:  <u><%=c.getCpf()%></u></b><br/>
            <b>RG:  <u><%=c.getRg()%></u></b><br/>
            <b>E-mail:  <u><%=c.getEmail()%></u></b><br/>
            <b>Telefone: <u><%=c.getFone()%></u></b><br/>
            <b>Endereço:  <u><%=c.getEndereco()%></u></b><br/>
            <hr/>
            
            <h2>Deseja excluir o cliente?</h2>
            <input type="submit" name="excluir" value="Sim"/>
            <input type="submit" name="excluir" value="Não"/>
            <input type="hidden" name="listarC" value="<%=index%>" />
            
        </form>
        
    </body>
    
</html>
