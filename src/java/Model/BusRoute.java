/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author ABHISHEK KAREER
 */
@Entity
public class BusRoute {
    @Id
    private String Routeno;
    private String Busno;
    private String Drivername;
    private String Startlocation;
    private String Stime;
    private String Lastlocation;
    private String Ltime;

    public String getRouteno() {
        return Routeno;
    }

    public void setRouteno(String Routeno) {
        this.Routeno = Routeno;
    }

    public String getBusno() {
        return Busno;
    }

    public void setBusno(String Busno) {
        this.Busno = Busno;
    }

    public String getDrivername() {
        return Drivername;
    }

    public void setDrivername(String Drivername) {
        this.Drivername = Drivername;
    }

    public String getStartlocation() {
        return Startlocation;
    }

    public void setStartlocation(String Startlocation) {
        this.Startlocation = Startlocation;
    }

    public String getStime() {
        return Stime;
    }

    public void setStime(String Stime) {
        this.Stime = Stime;
    }

    public String getLastlocation() {
        return Lastlocation;
    }

    public void setLastlocation(String Lastlocation) {
        this.Lastlocation = Lastlocation;
    }

    public String getLtime() {
        return Ltime;
    }

    public void setLtime(String Ltime) {
        this.Ltime = Ltime;
    }
    
}
