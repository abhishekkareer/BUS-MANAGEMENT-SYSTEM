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
public class fileupload {
    @Id
    @GeneratedValue
    private int sno;
    private String documentname;
    private char[] file;

    public String getDocumentname() {
        return documentname;
    }

    public void setDocumentname(String documentname) {
        this.documentname = documentname;
    }

    public char[] getFile() {
        return file;
    }

    public void setFile(char[] file) {
        this.file = file;
    }
}
