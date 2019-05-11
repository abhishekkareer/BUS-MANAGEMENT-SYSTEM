/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author ABHISHEK KAREER
 */
@Entity
public class BusRouteSchedules {
    @Id
    @GeneratedValue
    private int sno;
    private String Routeno;
    private String Stopname;
    private String Stoptime;

    public String getRouteno() {
        return Routeno;
    }

    public void setRouteno(String Routeno) {
        this.Routeno = Routeno;
    }

    public String getStopname() {
        return Stopname;
    }

    public void setStopname(String Stopname) {
        this.Stopname = Stopname;
    }

    public String getStoptime() {
        return Stoptime;
    }

    public void setStoptime(String Stoptime) {
        this.Stoptime = Stoptime;
    }
    
}
