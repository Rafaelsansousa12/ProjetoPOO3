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
        <style>
            p.alinha{padding-left: 1.8em }
           
        </style>
    </head>
    
    <body>
        <br/>
        <br/>
        <br/>
        <hr/>
        <h1><ul style="background-color:greenyellow"><p class="alinha">Lista de Clientes</p></ul></h1>
        <br/>
        
        <h6><table border='1' style='text-align:center' align='center' cellspacing='0' cellpadding='2'>
            <tr>
                <th>Código</th>
                 <th width='150px'>Nome</th>
                 <th width='75px'>CPF</th>
                 <th width='75px'>RG</th>
                <th width='120px'>E-mail</th>
                <th width='60px'>Telefone</th>
                <th width='120px'>Endereço</th>
                <th width='50px'>Editar</th>
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
                        
                        <td padding='5px'>
                            <button><a href="alterarC.jsp?index=<%=index%>">Alterar</a></button>
                            &ensp; <button><a href="excluirC.jsp?index=<%=index%>">Excluir</a></button>
                        </td>                  
                                                 
                    </tr>
                    <%}%>              
           
            </table></h6>
                    
                    <br/>
        
        <h4><a href="index.jsp"><-- Volta para Página Principal</a></h4>
        
    </body>
     <%@include file="WEB-INF/jspf/footer.jspf" %>
</html>
