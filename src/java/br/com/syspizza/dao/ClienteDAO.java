/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.syspizza.dao;

import br.com.syspizza.modelo.Cliente;
import br.com.syspizza.modelo.Funcionario;
import br.com.syspizza.util.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Erivelton
 */
public class ClienteDAO implements GenericDAO{
    
    private Connection conn;
    private PreparedStatement stmt;
    private ResultSet rs;

    public ClienteDAO() {   
        try{
            this.conn = ConnectionFactory.conectar();
        }catch(Exception e){
            System.out.println("Erro ao conectar ao BD " + e.getMessage());
        }
    }
 
    @Override
    public Boolean cadastrar(Object object) throws Exception {
        Boolean retorno = true;
        
        try{
            String sql = "insert into cliente (nome, email, senha, telefone) values (?,?,?,?);";
            Cliente cliente = (Cliente) object;
            stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, cliente.getNome().toUpperCase());
            stmt.setString(2, cliente.getEmail());
            stmt.setString(3, cliente.getSenha());
            stmt.setString(4, cliente.getTelefone());
            
            stmt.execute();
            
        }catch (Exception e){
            retorno = false;
            System.out.println("Erro ao cadastrar clienteDAO " + e.getMessage());
        }finally{
            ConnectionFactory.fecharConexao(conn, stmt, rs);
        }
        return retorno;
    }

    @Override
    public List<Object> listar() throws Exception {
        List<Object> lista = new ArrayList<>();
        
        try{
            String sql = "select * from cliente order by nome;";
            stmt = this.conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            
            while(rs.next()){
                Cliente cliente = new Cliente();
                cliente.setId(rs.getInt("id"));
                cliente.setNome(rs.getString("nome"));
                cliente.setEmail(rs.getString("email"));
                cliente.setSenha(rs.getString("senha"));
                cliente.setTelefone(rs.getString("telefone"));
                
                lista.add(cliente);
            }
            
        }catch (Exception e){
            System.out.println("Erro ao listar clienteDAO " + e.getMessage());
        }finally{
            ConnectionFactory.fecharConexao(conn, stmt, rs);
        }
        return lista;
    }

    @Override
    public Object carregar(Integer id) throws Exception {
        Cliente cliente = new Cliente();
        
        try{
            String sql = "select * from cliente where id=?";
            stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, id);
            
            rs = stmt.executeQuery();
            rs.next();
            
            cliente.setId(rs.getInt("id"));
            cliente.setNome(rs.getString("nome"));
            cliente.setEmail(rs.getString("email"));
            cliente.setSenha(rs.getString("senha"));
            cliente.setTelefone(rs.getString("telefone"));
            
        }catch(Exception e){
            System.out.println("Erro ao carregar clienteDAO " + e.getMessage());
        }finally{
            ConnectionFactory.fecharConexao(conn, stmt, rs);
        }
        return cliente;
    }

    @Override
    public Boolean alterar(Object object) throws Exception {
        Boolean retorno = true;
        
        try{
            String sql = "update cliente set nome = ?, email = ?, senha = ?, telefone = ? "
                        + "where id = ?;";
            Cliente cliente = (Cliente) object;
            stmt = this.conn.prepareStatement(sql);
            
            stmt.setString(1, cliente.getNome().toUpperCase());
            stmt.setString(2, cliente.getEmail());
            stmt.setString(3, cliente.getSenha());
            stmt.setString(4, cliente.getTelefone());
            stmt.setInt(5, cliente.getId());
           
            stmt.execute();
            
        }catch(Exception e){
            System.out.println("Erro ao alterar clienteDAO " + e.getMessage());
        }finally{
            ConnectionFactory.fecharConexao(conn, stmt, rs);
        }
        return retorno;
    }

    @Override
    public Boolean excluir(Integer id) throws Exception {
        Boolean retorno = true;
        
        try{
            String sql = "delete from cliente where id = ?";
            stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1,id);
            stmt.execute();
            
        }catch (Exception e){
            retorno = false;
            System.out.println("Erro ao excluir clienteDAO " + e.getMessage());
        }finally{
            ConnectionFactory.fecharConexao(conn, stmt,rs);
        }
        return retorno;
    }
    
    public List<Object> listarPorNome(String pesquisa) throws Exception {
        List<Object> lista = new ArrayList<>();
        
        try{
            String sql = "select * from cliente where nome like ? order by nome;";
            stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, "%" + pesquisa.toUpperCase() + "%");
            rs = stmt.executeQuery();
            
            while(rs.next()){
                Cliente cliente = new Cliente();
                cliente.setId(rs.getInt("id"));
                cliente.setNome(rs.getString("nome"));
                cliente.setEmail(rs.getString("email"));
                cliente.setSenha(rs.getString("senha"));
                cliente.setTelefone(rs.getString("telefone"));
                
                lista.add(cliente);
            }
            
        }catch (Exception e){
            System.out.println("Erro ao listarPorNome clienteDAO " + e.getMessage());
        }finally{
            ConnectionFactory.fecharConexao(conn, stmt, rs);
        }
        return lista;
    }
    
    public List<Object> listarPorCodigo(Integer pesquisa) throws Exception {
        List<Object> lista = new ArrayList<>();
        
        try{
            String sql = "select * from cliente where id = ?;";
            stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, pesquisa);
            rs = stmt.executeQuery();
            
            while(rs.next()){
                Cliente cliente = new Cliente();
                cliente.setId(rs.getInt("id"));
                cliente.setNome(rs.getString("nome"));
                cliente.setEmail(rs.getString("email"));
                cliente.setSenha(rs.getString("senha"));
                cliente.setTelefone(rs.getString("telefone"));
                
                lista.add(cliente);
            }
            
        }catch (Exception e){
            System.out.println("Erro ao listarPorCodigo clienteDAO " + e.getMessage());
        }finally{
            ConnectionFactory.fecharConexao(conn, stmt, rs);
        }
        return lista;
    }
    
    public Object logar(Object object) throws Exception{
        
        Cliente oCliente = (Cliente) object;
        
        try{
            
            String sql = "select * from cliente where email = ? and senha = ? ;";
            stmt = this.conn.prepareStatement(sql);
            
            stmt.setString(1, oCliente.getEmail());
            stmt.setString(2, oCliente.getSenha());
            
            rs = stmt.executeQuery();
                       
            if(rs.next()){
                oCliente.setId(rs.getInt("id"));
                oCliente.setNome(rs.getString("nome"));
            }
            
        }catch(Exception e){
           
            System.out.println("Erro ao logarDAO " + e.getMessage());
            
        }finally{
            ConnectionFactory.fecharConexao(conn, stmt,rs);
        }
        return oCliente;
    }
    
}
