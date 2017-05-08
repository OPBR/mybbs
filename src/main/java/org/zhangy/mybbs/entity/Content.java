package org.zhangy.mybbs.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by DELL on 2017/4/10.
 */
@Entity
@Table(name = "content")
public class Content {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid",strategy = "uuid")
    @Column(length = 32)
    private String id;
    private String title;
    private String info;

    @Temporal(TemporalType.TIMESTAMP)
    private Date current;

    @ManyToOne(cascade = {CascadeType.REFRESH},fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User user;

    @OneToMany(cascade = {CascadeType.ALL},fetch = FetchType.LAZY,mappedBy = "content")
    private List<Comment> comments = new ArrayList<Comment>();

    @OneToMany(cascade = {CascadeType.ALL},fetch = FetchType.LAZY,mappedBy = "content")
    private List<Praise> praises = new ArrayList<Praise>();

    /**
     * 记录点赞数量
     */
    private int count;

    public Content(){

    }
    public Content(String title,String info){
        this.title = title;
        this.info = info;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public Date getCurrent() {
        return current;
    }

    public void setCurrent(Date current) {
        this.current = current;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public List<Praise> getPraises() {
        return praises;
    }

    public void setPraises(List<Praise> praises) {
        this.praises = praises;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
