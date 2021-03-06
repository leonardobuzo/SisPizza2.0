/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.syspizza.controle;

import br.com.syspizza.dao.FornecedorDAO;
import br.com.syspizza.dao.GenericDAO;
import br.com.syspizza.modelo.Fornecedor;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Erivelton
 */
@WebServlet(name = "CadastrarFornecedor", urlPatterns = {"/CadastrarFornecedor"})
public class CadastrarFornecedor extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            String idPessoa = request.getParameter("idPessoa");
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            String telefone = request.getParameter("telefone");
            String cnpj = request.getParameter("cnpj");
            
                    
                   Fornecedor fornecedor = new Fornecedor();
                   
                   fornecedor.setNome(nome);
                   fornecedor.setEmail(email);
                   fornecedor.setTelefone(telefone);
                   fornecedor.setCnpj(cnpj);
                    
                   String mensagem = "";
                   
                   GenericDAO dao = new FornecedorDAO();
                   
                   if(idPessoa.equals("")){
                   
                   if(dao.cadastrar(fornecedor)){
                       mensagem = "Fornecedor cadastrado com sucesso";
                   }else{
                       mensagem = "Erro ao cadastrar fornecedor";
                   }
                    request.setAttribute("msg", mensagem);
                    request.getRequestDispatcher("cadastrar-fornecedor.jsp").forward(request, response);
                   }else{
                       
                       fornecedor.setIdPessoa(Integer.parseInt(idPessoa));
                       
                       if(dao.alterar(fornecedor)){
                       mensagem = "Fornecedor alterado com sucesso";
                   }else{
                       mensagem = "Erro ao alterar fornecedor";
                   }
                    request.setAttribute("msg", mensagem);
                    request.setAttribute("idPessoa", idPessoa);
                    request.getRequestDispatcher("CarregarFornecedor").forward(request, response);
                   }
                   
            
        }catch (Exception e){
            System.out.println("Erro ao cadastrar fornecedorCTR " + e.getMessage());
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
