package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class feedbackDAO {
    public boolean insert(String s1,String s2,String s3,String s4,String s5)
    {
        feedback f = new feedback();
        f.setRouteno(s1);
        f.setDate(s2);
        f.setSubject(s3);
        f.setComment(s4);
        f.setServicereview(s5);
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
        session.save(f);
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
