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
public class BusRouteSchedulesDAO {
    public boolean insert(String s1, String s2,String s3)
    {
        BusRouteSchedules b = new BusRouteSchedules();
        b.setRouteno(s1);
        b.setStopname(s2);
        b.setStoptime(s3);
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
        catch(Exception e)
        {
        System.out.println(e);
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
