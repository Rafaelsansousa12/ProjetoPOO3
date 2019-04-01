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
         <%@include file="WEB-INF/jspf/header.jspf" %>
        <title>Alterar - Fornecedor</title>
         <style>
            p.alinha{padding-left: 1.8em }
           
        </style>   
    </head>
    
    <body>
        <br/>
        <br/>
        <br/>
        <hr/>
        <h1><ul style="background-color:greenyellow"><p class="alinha">Alterar Fornecedor</p></ul></h1>
        <br/>
        
         <%int index = Integer.parseInt(request.getParameter("index"));%>
        <%Fornecedor c = BD.getFornecedores().get(index);%>
        <form action="listarF.jsp" >
            <table>
                <tr><td><p class="alinha"><b>Índice:</p></td>
                    <td> <u><%=index%></u></b><br/></td>
                </tr>
                <tr><td><p class="alinha">Nome:</td>
                    <td><input type="text" name="nome" value="<%=c.getNome()%>" /></td>
            <tr><td><p class="alinha">Razão Social:</td>
                <td><input type="text" name="razao_social" value="<%=c.getRazao_social()%>" /> </td>
            </tr>
            <tr><td><p class="alinha">CNPJ:</td>
                <td><input type="text" name="cnpj" value="<%=c.getCnpj()%>" /> </td>
             </tr>    
            <tr><td><p class="alinha">E-mail:</td>
                <td><input type="text" name="email" value="<%=c.getEmail()%>" /> </td>
             </tr>    
            <tr><td><p class="alinha">Telefone:</td>
                <td><input type="text" name="email" value="<%=c.getFone()%>" /> </td>
             </tr>    
            <tr><td><p class="alinha">Endereço:</td>
                <td><input type="text" name="endereco" value="<%=c.getEndereco()%>" /></td> 
                
            </table>
            <br/>
            <br/>
            <hr/>
            <br/>
            <h3><div><p class="alinha">Deseja alterar o fornecedor?
                <input type="submit" name="alterar" value="Sim"/>
                <input type="submit" name="alterar" value="Não"/>
                <input type="hidden" name="listarF" value="<%=index%>" /></h3>
                </div>    
             <br/>
        </form>
        
    </body>
    <%@include file="WEB-INF/jspf/footer.jspf" %>
</html>
