<%-- 
    Document   : index
    Created on : 30/03/2019, 22:00:04
    Author     : Rafael Sousa
--%>

<%@page import="br.com.fatecpg.cadastros.BD"%>
<%@page import="br.com.fatecpg.cadastros.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@include file="WEB-INF/jspf/header.jspf" %>
         
        <title>Index - Clientes</title>
           
        

        
    </head>
    
    <body style="background-image: url('index.jpeg');">
       <br/>
       <div class="corpo" align="center">
           <br/>
           <br/>
           <br/>
          
           <ul style='background-color: greenyellow'>
               <br/><ul style="color:greenyellow;"> .</ul>
           <h1>Bem-vindo ao nosso site! <br/>
               Aqui você pode cadastrar seus clientes e fornecedores!  </h1>
           <br/><ul style="color:greenyellow;"> .</ul>
           </ul>
           
           
           <br/> 
           <br/>
           <br/>
           <br/>
           <h4 style="position: fixed; bottom: 10%; margin-left: 37%;  color: blue;">-- Desenvolvido por Alex Sandro , Daianne  e Rafael --</h4>
       </div>
       
        
    </body>
    <%@include file="WEB-INF/jspf/footer.jspf" %>
</html>
