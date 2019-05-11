package Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class feedback {
    @Id
    private String routeno;
    private String date;
    private String subject;
    private String comment;
    private String servicereview;

    public String getRouteno() {
        return routeno;
    }

    public void setRouteno(String routeno) {
        this.routeno = routeno;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getServicereview() {
        return servicereview;
    }

    public void setServicereview(String servicereview) {
        this.servicereview = servicereview;
    }
}
