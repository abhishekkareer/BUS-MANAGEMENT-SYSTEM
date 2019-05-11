
package Controller;

import Model.BusRoute;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author ABHISHEK KAREER
 */
public class DispServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List <BusRoute> list = null;
        PrintWriter out = response.getWriter();
        String flag = (String) request.getAttribute("flag");
        if(flag == null)
        {
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        try
        {
        cf = new Configuration();
        cf.configure("cfg/hibernate.cfg.xml");
        sf = cf.buildSessionFactory();
        session = sf.openSession();
        Transaction tf = session.beginTransaction();
        Query query2 = session.createQuery("from BusRoute ");
        list = query2.list();
        tf.commit();
        }
        catch(Exception ee)
        {
            System.out.println(ee);
        }
        finally
        {
        session.close();
        sf.close();
        }
        }
        else if(flag.equalsIgnoreCase("true"))
        {
            list = (List<BusRoute>)request.getAttribute("list");
        }
        else
        {
            System.out.println("---------------------------------------------------------------------------false");
        }
        HttpSession httpsession=request.getSession();
        httpsession.setAttribute("list",list);
	RequestDispatcher rd = request.getRequestDispatcher("BusRouteDisplay.jsp");
        rd.forward(request, response);
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
