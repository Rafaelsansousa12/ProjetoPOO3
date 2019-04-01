<%-- 
    Document   : alterarF
    Created on : 31/03/2019, 21:56:31
    Author     : Rafael Sousa
--%>

<%@page import="br.com.fatecpg.cadastros.BD"%>
<%@page import="br.com.fatecpg.cadastros.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>Alterar - Fornecedor</title>
            
    </head>
    
    <body>
        
        <h1>Fornecedores</h1>
        <h2>Alterar</h2>
        
         <%int index = Integer.parseInt(request.getParameter("index"));%>
        <%Fornecedor c = BD.getFornecedores().get(index);%>
        <form action="listarF.jsp" >
            
            <b>Índice: <u><%=index%></u></b><br/>
            <br/>Nome:
            <br/><input type="text" name="nome" value="<%=c.getNome()%>" /> 
            <br/>Razão Social:
            <br/><input type="text" name="razao_social" value="<%=c.getRazao_social()%>" /> 
            <br/>CNPJ:
            <br/><input type="text" name="cnpj" value="<%=c.getCnpj()%>" /> 
            <br/>E-mail:
            <br/><input type="text" name="email" value="<%=c.getEmail()%>" /> 
            <br/>Telefone:
            <br/><input type="text" name="email" value="<%=c.getFone()%>" /> 
            <br/>Endereço:
            <br/><input type="text" name="endereco" value="<%=c.getEndereco()%>" /> 
            <hr/>
            
            <h2>Deseja alterar o fornecedor?</h2>
            <input type="submit" name="alterar" value="Sim"/>
            <input type="submit" name="alterar" value="Não"/>
            <input type="hidden" name="listarF" value="<%=index%>" />
        
        </form>
        
    </body>
    
</html>
