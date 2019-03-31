<%-- 
    Document   : index
    Created on : 30/03/2019, 22:00:04
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
                    c.setFone(request.getParameter("fone"));
                    c.setEmail(request.getParameter("email"));
                    BD.getClientes().add(c);                    
                          
                  }
                   response.sendRedirect(request.getRequestURI());
            }
           
               if (request.getParameter("alterar") !=null)
               {
                  if (request.getParameter("alterar").equals("Sim"))
                  {
                     int index = Integer.parseInt(request.getParameter("index"));
                    Cliente c = new Cliente( );
                    c.setNome(request.getParameter("nome"));
                    c.setFone(request.getParameter("fone"));
                    c.setEmail(request.getParameter("email"));
                    BD.getClientes( ).set(index, c);
                          
                 }
                   response.sendRedirect(request.getRequestURI());
               }
           
                if (request.getParameter("excluir") != null) 
                {
                  if (request.getParameter("excluir").equals("Sim"))
                  {
                  int index = Integer.parseInt(request.getParameter("index"));
                  BD.getClientes().remove(index); 
                  }
                  response.sendRedirect(request.getRequestURI());
                }
%>

<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index - Clientes</title>
        
    </head>
    
    <body>
        
        <h1>Clientes</h1>      
        <h2><a href="adicionar.jsp">Adicionar Contato</a></h2>
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
                            <a href="alterar.jsp?index=<%=index%>">Alterar</a>
                            <a href="excluir.jsp?index=<%=index%>">Excluir</a>
                        </td>                  
                                                
                    </tr>
                    <%}%>              
           
        </table>
        
    </body>
    
</html>
