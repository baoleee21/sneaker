/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import DAO.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Product;

/**
 *
 * @author huyke
 */
public class AdminProductController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            ProductDAO p = new ProductDAO();
            HttpSession sesion=request.getSession();
            if(sesion.getAttribute("account")==null){
                request.getRequestDispatcher("admin").forward(request, response);
                return;
            }
                ArrayList<Product>listAll=p.getAll();
                int size=listAll.size();
                int numpage=(size%4==0)?size/4:size/4+1;
                
                //nhan so trang muon lay du lieu 
                int page=1;
                String xpage= request.getParameter("xpage");
                if(xpage!=null){
                    page=Integer.parseInt(xpage);
                }
                int start=(page-1)*4;
                int end=Math.min(size-1, page*4-1);
                ArrayList<Product>list=p.getProductByPage(listAll,start,end);
                request.setAttribute("list", list);
                 request.setAttribute("numpage",numpage);
               request.getRequestDispatcher("productManage.jsp").forward(request, response);

        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
//         ProductDAO p = new ProductDAO();
//           
//                ArrayList<Product>listAll=p.getAll();
//                int size=listAll.size();
//                int numpage=(size%4==0)?size/4:size/4+1;
//                
//                //nhan so trang muon lay du lieu 
//                int page=1;
//                String xpage= request.getParameter("xpage");
//                if(xpage!=null){
//                    page=Integer.parseInt(xpage);
//                }
//                int start=(page-1)*4;
//                int end=Math.min(size-1, page*4-1);
//                ArrayList<Product>list=p.getProductByPage(listAll,start,end);
//                request.setAttribute("list", list);
//                 request.setAttribute("numpage",numpage);
//                request.getRequestDispatcher("productManage.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       // processRequest(request, response);
        String search=request.getParameter("search");
        String opt= request.getParameter("sub");
        
        ProductDAO p = new ProductDAO();
        
        ArrayList<Product> list=p.Search(search);
        request.setAttribute("list", list);
        request.setAttribute("serach", search);
         request.getRequestDispatcher("productManage.jsp").forward(request, response);
        
    
    }
    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
