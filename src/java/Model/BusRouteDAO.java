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
public class BusRouteDAO {
    public boolean insert(String s1,String s2,String s3,String s4,String s5,String s6,String s7)
    {
        BusRoute b = new BusRoute();
         b.setRouteno(s1);
         b.setBusno(s2);
         b.setDrivername(s3);
         b.setStartlocation(s4);
         b.setStime(s5);
         b.setLastlocation(s6);
         b.setLtime(s7);
         
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
        session.save(b);
        tf.commit();
        }
        catch(Exception ee)
        {
        System.out.println(ee);
        return false;
        }
        finally
        {
        session.close();
        sf.close(); 
        return true;
        }
    }    
}
