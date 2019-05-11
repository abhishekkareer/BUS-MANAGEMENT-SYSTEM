
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
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author ABHISHEK KAREER
 */
public class BusRouteFilter extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String s1 = request.getParameter("s1");
        String s2 = request.getParameter("s2");
        String s3 = request.getParameter("s3");
        List <BusRoute> list= null;
        String flag = "false";
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
        Query query;
        if(s2=="" && s3=="")
        {
//            System.out.println("#################################################"+s1);
            query=session.createQuery("select from BusRoute where Routeno= :S1");
            query.setParameter("S1",s1);
            list=query.list();
            flag="true";
        }
        else if(s1=="" && s3=="")
        {
//            System.out.println("#################################################"+s2);
            query=session.createQuery("select from BusRoute where Startlocation= :S2");
            query.setParameter("S2",s2);
            list=query.list();
            flag="true";
        }
        else if(s1=="" && s2=="")
        {
            query=session.createQuery("select from BusRoute where Lastlocation= :S3");
            query.setParameter("S3",s3);
            list=query.list();
            flag="true";
        }
        else
        {
//            System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^66");
            query=session.createQuery("from BusRoute");
            list=query.list();
            flag="true";
        }
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
//        System.out.println("------------------------------------------------------------ "+flag);
        request.setAttribute("flag",flag);
//        System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"+list);
        request.setAttribute("list",list);
        RequestDispatcher rd = request.getRequestDispatcher("DispServlet");
        rd.forward(request,response);
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
