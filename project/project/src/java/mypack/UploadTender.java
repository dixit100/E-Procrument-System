/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author swarnim
 */
@MultipartConfig
@WebServlet(name = "UploadTender", urlPatterns = {"/UploadTender"})
public class UploadTender extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 3.2 Final//EN\">");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UploadTender</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UploadTender at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
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
       // processRequest(request, response);
           response.setContentType("text/html;charset=UTF-8");   
           try
           {
               String tendername=request.getParameter("tendername");
                 String description=request.getParameter("description");
                 Part p=request.getPart("file");
                 String filename=p.getSubmittedFileName();
                 InputStream is=p.getInputStream();
                 DbManager db=new DbManager();
                 String uploaddate=db.getDate();
                 String str=new java.text.SimpleDateFormat("ddMMyyyyhhmmssa").format(new java.util.Date());
                 filename=str+filename;
                 String q="insert into tender(tendername,description,filename,uploaddate) values ('"+tendername+"','"+description+"','"+filename+"','"+uploaddate+"')";
                 if(db.nonQuery(q)==true)
                 {
                     File f=new File(request.getRealPath("/uploadtender"),filename);
                     Files.copy(is, f.toPath());
                                response.getWriter().print("<script>alert('Tendor is uploaded successfully');window.location.href='adminzone/uploadtender.jsp';</script>");
                 }
             else
                 {
                                    response.getWriter().print("<script>alert('Tendor is not uploaded');window.location.href='adminzone/uploadtender.jsp';</script>");
                         }
                 
           }
           catch(Exception ex)
                   {
                       response.getWriter().print("<script>alert('Error1');window.location.href='adminzone/uploadtender.jsp';</script>");
                   }
        
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
