package org.zhangy.mybbs.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by DELL on 2017/4/10.
 */
@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid",strategy = "uuid")
    @Column(length = 32)
    private String id;
    private String username;
    private String password;
    private String phone;
    private String realid;

    @Lob
    private byte[] realname;

    @OneToMany(cascade = {CascadeType.ALL},fetch = FetchType.LAZY,mappedBy = "user")
    private List<Content> contents = new ArrayList<Content>();

    @OneToMany(cascade = {CascadeType.ALL},fetch = FetchType.LAZY,mappedBy = "user")
    private List<Comment> comments = new ArrayList<Comment>();

    @OneToMany(cascade = {CascadeType.ALL},fetch = FetchType.LAZY,mappedBy = "user")
    private List<Praise> praises = new ArrayList<Praise>();

    public User(){

    }

    public User(String username, String password){
        this.username = username;
        this.password = password;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getRealid() {
        return realid;
    }

    public void setRealid(String realid) {
        this.realid = realid;
    }

    public byte[] getRealname() {
        return realname;
    }

    public void setRealname(byte[] realname) {
        this.realname = realname;
    }

    public List<Content> getContents() {
        return contents;
    }

    public void setContents(List<Content> contents) {
        this.contents = contents;
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
}
