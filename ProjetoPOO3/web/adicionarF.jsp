<%-- 
    Document   : adicionarF
    Created on : 31/03/2019, 21:56:02
    Author     : Rafael Sousa
--%>

<%@page import="br.com.fatecpg.cadastros.BD"%>
<%@page import="br.com.fatecpg.cadastros.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Adicionar  - Fornecedor</title>
        
    </head>
    
    <body>
        
        <h1>Fornecedores</h1>
        <h2>Adicionar</h2>
        <form action="listarF.jsp">
            
            Nome:
            <br/><input type="text" name="nome"/>
            <br/>Razão Social:
            <br/><input type="text" name="razao_social"/>
            <br/>CNPJ:
            <br/><input type="text" name="cnpj"/>
            <br/>E-mail:
            <br/><input type="text" name="email"/>
            <br/>Telefone:
            <br/><input type="text" name="fone"/>
            <br/>Endereço:
            <br/><input type="text" name="endereco"/>
            <hr/>
            
            <h2>Deseja incluir o novo fornecedor?</h2>
            <input type="submit" name="adicionar" value="Sim"/>
            <input type="submit" name="adicionar" value="Não"/>           
            
        </form>
        
       
        </table>
        
    </body>
</html>