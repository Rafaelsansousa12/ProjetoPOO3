/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.cadastros;

import java.util.ArrayList;

/**
 *
 * @author Rafael Sousa
 */
public class BD
{
 private static ArrayList<Cliente> clientes;
        public static ArrayList<Cliente> getClientes()
        {
                if (clientes == null) 
                {
                     clientes = new ArrayList <>();
                     Cliente c1 = new Cliente();
                     c1.setNome("Fulano");
                     c1.setCpf("123456 ");
                     c1.setRg("654321 ");
                     c1.setFone("00000000");
                     c1.setEmail("rafaelsansousa@hotmail.com");
                     c1.setEndereco("Rua Um ");
                     clientes.add(c1);
                     
                     
                     Cliente c2 = new Cliente();
                     c2.setNome("Beltrano");
                     c2.setCpf("0000000 ");
                     c2.setRg(" 111111");
                     c2.setFone("00000000");
                     c2.setEmail("rafael@hotmail.com");
                     c2.setEndereco("Rua Dois");
                     clientes.add(c2);
                     
                }
                return clientes;
        }
        
        private static ArrayList<Fornecedor> fornecedores;
        public static ArrayList<Fornecedor> getFornecedores()
        {
                if (fornecedores == null) 
                {
                     fornecedores = new ArrayList <>();
                     Fornecedor f1 = new Fornecedor();
                     f1.setNome("Fulano");
                     f1.setRazao_social("123456 ");
                     f1.setEmail("654321 ");
                     f1.setFone("00000000");
                     f1.setEndereco("rafaelsansousa@hotmail.com");
                     
                     fornecedores.add(f1);
                     
                     
                     Fornecedor f2 = new Fornecedor();
                     f1.setNome("Fulano");
                     f1.setRazao_social("123456 ");
                     f1.setEmail("654321 ");
                     f1.setFone("00000000");
                     f1.setEndereco("rafaelsansousa@hotmail.com");
                     
                     fornecedores.add(f2);
                     
                }
                return fornecedores;
        }
}
