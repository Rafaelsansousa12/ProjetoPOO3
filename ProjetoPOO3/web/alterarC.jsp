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
        <%@include file="WEB-INF/jspf/header.jspf" %> 
        <style>p.alinha{padding-left: 1.8em }
            
         body {background-color: #BDBDBD};
         
        </style>
    </head>
    
    <body>
        <br/>
        <br/>
        <br/>
        <hr/>
        <h1><ul style="background-color:greenyellow"><p class="alinha">Alterar Clientes</p></ul></h1>
        
        <br/>
        
         <%int index = Integer.parseInt(request.getParameter("index"));%>
        <%Cliente c = BD.getClientes().get(index);%>
        <form action="listarC.jsp" >
            <table>
                <tr><td><p class="alinha"><b>Índice: </p></td>
                    <td><u><%=index%></u></b><br/></td>
                </tr>
                
                <tr><td><p class="alinha">Nome:</p></td>
                    <td><input type="text"  required="" name="nome" value="<%=c.getNome()%>" /></td>
                </tr>
                <tr><td><p class="alinha">CPF:</p></td>
                    <td><input type="number" required=""  name="cpf" value="<%=c.getCpf()%>" /></td>
                </tr>
                <tr><td><p class="alinha">RG:</p></td>
                    <td><input type="number" name="rg" value="<%=c.getRg()%>" /></td>
                </tr>
                <tr><td><p class="alinha">E-mail:</p></td>
                    <td><input type="email" name="email" value="<%=c.getEmail()%>" /></td> 
                </tr>
                <tr><td><p class="alinha">Telefone:</p></td>
                    <td><input pattern="\d{4}-\d{4}$" type="tel" name="fone" value="<%=c.getFone()%>" /></td>
                </tr>
                <tr><td><p class="alinha">Endereço:</p></td>
                <td><input type="text" required=""  name="endereco" value="<%=c.getEndereco()%>" /></td
                </tr>
               
            </table>
            <br/>
            <br/>
            <hr/>
            <br/>
            <h3><div><p class="alinha">Deseja alterar o cliente?
                <input type="submit" name="alterar" value="Sim"/>
                <input type="submit" name="alterar" value="Não"/>
                <input type="hidden" name="listarC" value="<%=index%>" /></h3></p>
            </div>
            <br/>
        </form>
            
        
          
        
    </body>
    <%@include file="WEB-INF/jspf/footer.jspf" %>
</html>

