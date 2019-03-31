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
        
        <title>Adicionar  - Cliente</title>
        
    </head>
    
    <body>
        
        <h1>Clientes</h1>
        <h2>Adicionar</h2>
        <form action="listar.jsp">
            
            Nome:
            <br/><input type="text" name="nome"/>
            <br/>CPF:
            <br/><input type="text" name="cpf"/>
            <br/>RG:
            <br/><input type="text" name="rg"/>
            <br/>E-mail:
            <br/><input type="text" name="email"/>
            <br/>Telefone:
            <br/><input type="text" name="fone"/>
            <br/>Endereço:
            <br/><input type="text" name="endereco"/>
            <hr/>
            
            <h2>Deseja incluir o novo cliente?</h2>
            <input type="submit" name="adicionar" value="Sim"/>
            <input type="submit" name="adicionar" value="Não"/>           
            
        </form>
        
       
        </table>
        
    </body>
</html>