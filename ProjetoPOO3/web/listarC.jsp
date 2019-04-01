<%-- 
    Document   : listar
    Created on : 31/03/2019, 20:25:20
    Author     : Rafael Sousa
--%>


<%@page import="br.com.fatecpg.cadastros.BD"%>
<%@page import="br.com.fatecpg.cadastros.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

           if (request.getParameter("adicionar") != null) 
           {
                  if (request.getParameter("adicionar").equals("Sim"))
                  {
                    Cliente c = new Cliente();
                    c.setNome(request.getParameter("nome"));
                    c.setCpf(request.getParameter("cpf"));
                    c.setRg(request.getParameter("rg"));
                    c.setEmail(request.getParameter("email"));
                    c.setFone(request.getParameter("fone"));
                    c.setEndereco(request.getParameter("endereco"));
                    BD.getClientes().add(c);                    
                          
                  }
                   response.sendRedirect(request.getRequestURI());
            }
           
               if (request.getParameter("alterar") !=null)
               {
                  if (request.getParameter("alterar").equals("Sim"))
                  {
                     int index = Integer.parseInt(request.getParameter("listarC"));
                    Cliente c = new Cliente( );
                    c.setNome(request.getParameter("nome"));
                    c.setCpf(request.getParameter("cpf"));
                    c.setRg(request.getParameter("rg"));
                    c.setEmail(request.getParameter("email"));
                    c.setFone(request.getParameter("fone"));
                    c.setEndereco(request.getParameter("endereco"));
                    BD.getClientes( ).set(index, c);
                          
                 }
                   response.sendRedirect(request.getRequestURI());
               }
           
                if (request.getParameter("excluir") != null) 
                {
                  if (request.getParameter("excluir").equals("Sim"))
                  {
                  int index = Integer.parseInt(request.getParameter("listarC"));
                  BD.getClientes().remove(index); 
                  }
                  response.sendRedirect(request.getRequestURI());
                }
%>

<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <title>Listar - Clientes</title>
        
    </head>
    
    <body>
        
        <h1>Clientes</h1>      
        <h2><a href="adicionarC.jsp">Adicionar Cliente</a></h2>
        <h2>Lista</h2>
        
        <table border="1">
            <tr>
                <th>Índice</th>
                 <th>Nome</th>
                 <th>CPF</th>
                 <th>RG</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Editar</th>
            </tr>
            
            <%for (Cliente c: BD.getClientes()) {%>
                    <%int index = BD.getClientes().indexOf(c);%>
                    
                    <tr>
                        <td><%=index%></td>
                        <td><%=c.getNome() %></td>
                        <td><%=c.getCpf() %></td>
                        <td><%=c.getRg() %></td>
                        <td><%=c.getEmail() %></td>
                        <td><%=c.getFone() %></td>
                        <td><%=c.getEndereco() %></td>
                        <td>
                            <a href="alterarC.jsp?index=<%=index%>">Alterar</a>
                            <a href="excluirC.jsp?index=<%=index%>">Excluir</a>
                        </td>                  
                                                
                    </tr>
                    <%}%>              
           
        </table>
                    
                    <br/>
        
        <h2><a href="index.jsp">HOME</a></h2>
        
    </body>
    
</html>
