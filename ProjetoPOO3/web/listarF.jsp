<%-- 
    Document   : listar
    Created on : 31/03/2019, 20:25:20
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
        <title>Listar - Fonecedores</title>
        <style>
            p.alinha{padding-left: 1.8em }
           
        </style>
    </head>
    
    <body>
        <br/>
        <br/>
        <br/>
        <hr/>
        <h1><ul style="background-color:greenyellow"><p class="alinha">Lista de Fornecedores</p></ul></h1>
        <br/>
        
        <h6><table border='1' style='text-align:center' align='center' cellspacing='0' cellpadding='2'>
            <tr style='background-color: lightgray'>
                <th width='40px'>Código</th>
                 <th width='150px'>Nome</th>
                 <th width='75px'>CPF</th>
                 <th width='75px'>RG</th>
                <th width='120px'>E-mail</th>
                <th width='60px'>Telefone</th>
                <th width='120px'>Endereço</th>
                <th width='100px'>Editar</th>
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
                                               
                        <td padding='5px'>
                            <button><a href="alterarF.jsp?index=<%=index%>">Alterar</a></button>
                            &emsp;<button> <a href="excluirF.jsp?index=<%=index%>">Excluir</a></button>
                        </td>                  
                                                 
                    </tr>
                    <%}%>              
           
            </table></h6>
                    
                    <br/>
        
        <h4><a href="index.jsp">Volta para Página Principal</a></h4>
        
    </body>
     <%@include file="WEB-INF/jspf/footer.jspf" %>
</html>
