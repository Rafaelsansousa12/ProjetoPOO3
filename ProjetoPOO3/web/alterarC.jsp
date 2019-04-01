<%-- 
    Document   : alterar
    Created on : 31/03/2019, 21:11:53
    Author     : Rafael Sousa
--%>

<%@page import="br.com.fatecpg.cadastros.BD"%>
<%@page import="br.com.fatecpg.cadastros.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar - Cliente</title>
            
    </head>
    
    <body>
        
        <h1>Clientes</h1>
        <h2>Alterar</h2>
        
         <%int index = Integer.parseInt(request.getParameter("index"));%>
        <%Cliente c = BD.getClientes().get(index);%>
        <form action="listarC.jsp" >
            
            <b>Índice: <u><%=index%></u></b>
            <br/>Nome:
            <br/><input type="text" name="nome" value="<%=c.getNome()%>" /> 
            <br/>CPF:
            <br/><input type="text" name="cpf" value="<%=c.getCpf()%>" /> 
            <br/>RG:
            <br/><input type="text" name="rg" value="<%=c.getRg()%>" /> 
            <br/>E-mail:
            <br/><input type="text" name="email" value="<%=c.getEmail()%>" /> 
            <br/>Telefone:
            <br/><input type="text" name="email" value="<%=c.getFone()%>" /> 
            <br/>Endereço:
            <br/><input type="text" name="endereco" value="<%=c.getEndereco()%>" /> 
            <hr/>
            
            <h2>Deseja alterar o cliente?</h2>
            <input type="submit" name="alterar" value="Sim"/>
            <input type="submit" name="alterar" value="Não"/>
            <input type="hidden" name="listarC" value="<%=index%>" />
        
        </form>
            
        
          
        
    </body>
    
</html>

