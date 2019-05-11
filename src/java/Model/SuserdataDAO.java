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
public class SuserdataDAO {
    public boolean InsertData(String id,String gender,String username,String password,String option)
    {
        userdata2 u = new userdata2();
        u.setId(id);
        u.setGender(gender);
        u.setUsername(username);
        u.setPassword(password);
        u.setOption(option);
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
        session.save(u);
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
