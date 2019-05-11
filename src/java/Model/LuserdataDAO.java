
package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author ABHISHEK KAREER
 */
public class LuserdataDAO {
    private String Id;

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }
    public boolean check(userdata original)
    {
        userdata db = null;
        Configuration cf = new Configuration();
        cf.configure("cfg/hibernate.cfg.xml");
        SessionFactory sf = cf.buildSessionFactory();
        Session session = sf.openSession();
        Transaction tf = session.beginTransaction();
        db = (userdata) session.get(userdata.class,original.getUsername());
        tf.commit();
        session.close();
        sf.close();
        if(db == null)
        {
            return false;
        }
        else
        {
            if(original.equals(db))
        {
            Id = db.getId();
            return true;
        }
        else
        {
            return false; 
        }
        }
        //return original.equals(db); 
    }
    
}
