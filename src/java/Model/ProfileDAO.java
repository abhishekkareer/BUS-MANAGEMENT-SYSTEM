/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author ABHISHEK KAREER
 */
public class ProfileDAO {
    public static void main(String [] args)
    {
        Profile p = new Profile();
        p.setId("T01");
        p.setName("qwe");
        p.setParentContact("0000");
        p.setContact("0000");
        p.setEmail("qwe@gmail.com");
        p.setAddress("delhi");
        p.setBloodGroup("AB+");
        p.setParentName("qwe");
        p.setRouteNo("CU02");
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
        session.save(p);
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
    
}
