/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileReader;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author ABHISHEK KAREER
 */
public class fileuploadDAO {
    public boolean insert(String s1, String s2)
    {
        fileupload f = new fileupload();
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        char[] b = null;
        boolean flag = false;
        try
        {
        FileInputStream fin=new FileInputStream(s2);
        int size = fin.available();
        fin.close();
        FileReader ff = new  FileReader(s2);
        BufferedReader br = new BufferedReader(ff);
        b = new char[size];
        ff.read(b);
        f.setFile(b);
        f.setDocumentname(s1);
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
        flag = false;
        }
        finally
        {
        session.close();
        sf.close(); 
        flag = true;
        }
        return flag;
    }
    
}
