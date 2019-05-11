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
public class Profile {
    @Id
    private String Id;
    private String Name;
    private String ParentContact;
    private String Contact;
    private String Email;
    private String Address;
    private String BloodGroup;
    private String ParentName;
    private String RouteNo;    

    public String getRouteNo() {
        return RouteNo;
    }

    public void setRouteNo(String RouteNo) {
        this.RouteNo = RouteNo;
    }

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getParentContact() {
        return ParentContact;
    }

    public void setParentContact(String ParentContact) {
        this.ParentContact = ParentContact;
    }

    public String getContact() {
        return Contact;
    }

    public void setContact(String Contact) {
        this.Contact = Contact;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getBloodGroup() {
        return BloodGroup;
    }

    public void setBloodGroup(String BloodGroup) {
        this.BloodGroup = BloodGroup;
    }

    public String getParentName() {
        return ParentName;
    }

    public void setParentName(String ParentName) {
        this.ParentName = ParentName;
    }
}
