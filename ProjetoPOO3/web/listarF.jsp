<%-- 
    Document   : listarF
    Created on : 31/03/2019, 21:55:49
    Author     : Rafael Sousa
--%>

<%@page import="br.com.fatecpg.cadastros.BD"%>
<%@page import="br.com.fatecpg.cadastros.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

           if (request.getParameter("adicionar") != null) 
           {
                  if (request.getParameter("adicionar").equals("Sim"))
                  {
                    Fornecedor f = new Fornecedor();
                    f.setNome(request.getParameter("nome"));
                    f.setRazao_social(request.getParameter("razao_social"));
                    f.setCnpj(request.getParameter("cnpj"));
                    f.setEmail(request.getParameter("email"));
                    f.setFone(request.getParameter("fone"));
                    f.setEndereco(request.getParameter("endereco"));
                    BD.getFornecedores().add(f);                    
                          
                  }
                   response.sendRedirect(request.getRequestURI());
            }
           
               if (request.getParameter("alterar") !=null)
               {
                  if (request.getParameter("alterar").equals("Sim"))
                  {
                     int index = Integer.parseInt(request.getParameter("listarF"));
                    Fornecedor f = new Fornecedor( );
                    f.setNome(request.getParameter("nome"));
                    f.setRazao_social(request.getParameter("razao_social"));
                    f.setCnpj(request.getParameter("cnpj"));
                    f.setEmail(request.getParameter("email"));
                    f.setFone(request.getParameter("fone"));
                    f.setEndereco(request.getParameter("endereco"));
                    BD.getFornecedores( ).set(index, f);
                          
                 }
                   response.sendRedirect(request.getRequestURI());
               }
           
                if (request.getParameter("excluir") != null) 
                {
                  if (request.getParameter("excluir").equals("Sim"))
                  {
                  int index = Integer.parseInt(request.getParameter("listarF"));
                  BD.getFornecedores().remove(index); 
                  }
                  response.sendRedirect(request.getRequestURI());
                }
%>

<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <title>Listar - Fornecedores</title>
        
    </head>
    
    <body>
        
        <h1>Fornecedores</h1>      
        <h2><a href="adicionarF.jsp">Adicionar Fornecedor</a></h2>
        <h2>Lista</h2>
        
        <table border="1">
            <tr>
                <th>Índice</th>
                 <th>Nome</th>
                 <th>Razão Social</th>
                 <th>CNPJ</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Editar</th>
            </tr>
            
            <%for (Fornecedor f: BD.getFornecedores()) {%>
                    <%int index = BD.getFornecedores().indexOf(f);%>
                    
                    <tr>
                        <td><%=index%></td>
                        <td><%=f.getNome() %></td>
                        <td><%=f.getRazao_social() %></td>
                        <td><%=f.getCnpj() %></td>
                        <td><%=f.getEmail() %></td>
                        <td><%=f.getFone() %></td>
                        <td><%=f.getEndereco() %></td>
                        <td>
                            <a href="alterarF.jsp?index=<%=index%>">Alterar</a>
                            <a href="excluirF.jsp?index=<%=index%>">Excluir</a>
                        </td>                  
                                                
                    </tr>
                    <%}%>              
           
        </table>
                    
                     <br/>
        
        <h2><a href="index.jsp">HOME</a></h2>
        
    </body>
    
</html>
