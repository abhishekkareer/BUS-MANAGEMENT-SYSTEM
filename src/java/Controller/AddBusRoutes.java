/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.BusRoute;
import Model.BusRouteDAO;
import Model.userdata2;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author ABHISHEK KAREER
 */
public class AddBusRoutes extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String routeno = request.getParameter("RouteNo");
         String  busno = request.getParameter("BusNo");
         String drivername = request.getParameter("DriverName");
         String  startinglocation= request.getParameter("StartingLocation");
         String  startingtime= request.getParameter("StartingTime");
         String  lastlocation= request.getParameter("LastLoaction");
         String  stoptime= request.getParameter("StopTime");
         String  StopNo = request.getParameter("StopNo");
         String cu = "CU";
         routeno = cu.concat(routeno);
         BusRouteDAO b = new BusRouteDAO();
         boolean flag = b.insert(routeno, busno, drivername, startinglocation, startingtime, lastlocation, stoptime);
         if(flag)
         {
         request.setAttribute("routeno",routeno);
         request.setAttribute("Stopno",StopNo);
	 RequestDispatcher rd = request.getRequestDispatcher("EnterRouteDetail.jsp");
	 rd.forward(request,response);
         }
         else
         {
             out.println(flag);
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
