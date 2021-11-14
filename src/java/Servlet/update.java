package Servlet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Database.Student;
import Database.StudentTable;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author AN515-43
 */
public class update extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
                    String idStr = request.getParameter("id");
                    String name = request.getParameter("updatename");
                    double gpa = Double.parseDouble(request.getParameter("updategpa"));
                    int id = Integer.parseInt(idStr);
                    HttpSession session = request.getSession();
                    
                    synchronized(getServletContext()) {
                        getServletContext().setAttribute("id", (id));
                        Student std = StudentTable.findStudentById(id);
                    
                        Thread.sleep(5 * 1000);
                    
                        getServletContext().setAttribute("name", (name));
                        getServletContext().setAttribute("gpa", (gpa));
                        out.println("<!DOCTYPE html>");
                        out.println("<html>");
                        out.println("<head>");
                        out.println("<title>Servlet StudentServlet</title>");            
                        out.println("</head>");
                        out.println("<body>");
                        if(std!= null){
                            std.setName(name);
                            std.setGpa(gpa);
                            StudentTable.updateStudent(std);
                            out.println("Successfully update  " +name+ " "+gpa);
                        }else{
                            out.println("Not found.");
                        }
                    
                out.println("</body>");
                out.println("</html>");
            }
        }
        
        catch (InterruptedException e) {
            
        }
        finally {
            out.close();
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
