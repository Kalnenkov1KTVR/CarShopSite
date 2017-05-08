/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author pupil
 */
@Entity
public class Article implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(unique = true)
    private String mark;
    private String model;
    private String carbody;
    private String firstReg;
    private String userLogin;
    @Temporal(TemporalType.TIMESTAMP)
    private Date date;
    @OneToMany(cascade = {CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REMOVE}, orphanRemoval = true)
    private List<Comment> comments;

    public Article() {
    }

    public Article(String mark, String model, String carbody, String firstReg, String userLogin, Date date) {
        this.mark = mark;
        this.model = model;
        this.carbody = carbody;
        this.firstReg = firstReg;
        this.userLogin = userLogin;
        this.date = date;
    }

    public String getFirstReg() {
        return firstReg;
    }

    public void setFirstReg(String firstReg) {
        this.firstReg = firstReg;
    }

    public String getCarbody() {
        return carbody;
    }

    public void setCarbody(String carbody) {
        this.carbody = carbody;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getUserLogin() {
        return userLogin;
    }

    public void setUserLogin(String userLogin) {
        this.userLogin = userLogin;
    }

    public String getDate() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd.MM.y h:m");
        return dateFormat.format(date);
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 67 * hash + Objects.hashCode(this.id);
        hash = 67 * hash + Objects.hashCode(this.mark);
        hash = 67 * hash + Objects.hashCode(this.model);
        hash = 67 * hash + Objects.hashCode(this.carbody);
        hash = 67 * hash + Objects.hashCode(this.firstReg);
        hash = 67 * hash + Objects.hashCode(this.userLogin);
        hash = 67 * hash + Objects.hashCode(this.date);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Article other = (Article) obj;
        if (!Objects.equals(this.mark, other.mark)) {
            return false;
        }
        if (!Objects.equals(this.model, other.model)) {
            return false;
        }
        if (!Objects.equals(this.carbody, other.carbody)) {
            return false;
        }
        if (!Objects.equals(this.firstReg, other.firstReg)) {
            return false;
        }
        if (!Objects.equals(this.userLogin, other.userLogin)) {
            return false;
        }
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        if (!Objects.equals(this.date, other.date)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Article{" + "id=" + id + ", mark=" + mark + ", model=" + model + ", carbody=" + carbody + ", userLogin=" + userLogin + ", date=" + date + '}';
    }

}
