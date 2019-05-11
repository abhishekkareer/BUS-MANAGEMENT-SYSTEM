package Controller;

import Model.BusRouteSchedulesDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BusRouteSchedule extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String option=(String) request.getSession().getAttribute("option");
        String no = request.getParameter("No");
        String routeno = request.getParameter("routeno");
        int c = Integer.parseInt(no);
        boolean flag=false;
        for(int i=0;i<c;i++)
        {
            String Stop = "Stop";
            String Time = "Time";
            Stop = Stop.concat(Integer.toString(i));
            Time = Time.concat(Integer.toString(i));
            String s1 = request.getParameter(Stop);
            String s2 = request.getParameter(Time);
            BusRouteSchedulesDAO b = new BusRouteSchedulesDAO();
            flag = b.insert(routeno,s1,s2);
        }
        if(flag)
        {
            if(option.equalsIgnoreCase("admin"))
            {
                response.sendRedirect("AdminHome.jsp");
            }
            else
            {
                response.sendRedirect("FacultyHome.jsp");
            }
        }
        else
        {
            out.println("Failed");
            out.println("<a href='loginpage.html'>loginAgain</a>");
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
