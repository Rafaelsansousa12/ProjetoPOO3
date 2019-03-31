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
public class BD {
 private static ArrayList<Cliente> clientes;
        public static ArrayList<Cliente> getClientes()
        {
                if (clientes == null) 
                {
                     clientes = new ArrayList <>();
                     Cliente c1 = new Cliente();
                     c1.setNome("Fulano");
                     c1.setCpf(" ");
                     c1.setRg(" ");
                     c1.setFone("00000000");
                     c1.setEmail("rafaelsansousa@hotmail.com");
                     c1.setEndereco(" ");
                     clientes.add(c1);
                     
                     
                     Cliente c2 = new Cliente();
                     c2.setNome("Fulano");
                     c2.setCpf(" ");
                     c2.setRg(" ");
                     c2.setFone("00000000");
                     c2.setEmail("rafaelsansousa@hotmail.com");
                     c2.setEndereco(" ");
                     clientes.add(c2);
                     
                }
                return clientes;
        }
}
