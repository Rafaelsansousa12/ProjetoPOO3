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
        
    </head>
    
    <body>
        
        <h1>CFornecedores</h1>
        <h2>Excluir</h2>
        
        <%int index = Integer.parseInt(request.getParameter("index"));%>
        <%Fornecedor c = BD.getFornecedores().get(index);%>
        <form action="listarF.jsp" >
            
            <b>Índice:  <u><%=index%></u></b>
            <b>Nome:  <u><%=c.getNome()%></u></b>
            <b>CPF:  <u><%=c.getRazao_social()%></u></b>
            <b>RG:  <u><%=c.getCnpj()%></u></b>
            <b>E-mail:  <u><%=c.getEmail()%></u></b>
            <b>Telefone: <u><%=c.getFone()%></u></b>
            <b>Endereço:  <u><%=c.getEndereco()%></u></b>
            <hr/>
            
            <h2>Deseja excluir o Fornecedor?</h2>
            <input type="submit" name="excluir" value="Sim"/>
            <input type="submit" name="excluir" value="Não"/>
            <input type="hidden" name="listarF" value="<%=index%>" />
            
        </form>
        
    </body>
    
</html>
