package com.cornbreadandbeans.dojosforninjas.models;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import java.util.List;

@Entity
@Table(name="name")
public class Name {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Size(min=2,max=100,message="Name must be at least 2 chars")
    private String givenname;

    @NotNull(message="Gender cannot be null")
    private String gender;

    @NotNull
    @Size(min=2,max=150,message="You must have an orgin stroy!")
    private String orgin;

    @NotNull
    @Size(min=5,max=200,message="You need to tell us its story")
    private String meaning;

    @Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;

    // ================================ RELATIONSHIPS ================================
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User designation;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "votes",
            joinColumns = @JoinColumn(name = "name_id"),
            inverseJoinColumns = @JoinColumn(name = "user_id")
    )
    private List<User> user;

    // ================================ CONSTRUCTORS ================================
    public Name() {
        super();
    }
    public Name(@NotNull @Size(min = 2, max = 100, message = "Name must be at least 2 chars") String givenname,
                @NotNull(message = "Gender cannot be null") String gender,
                @NotNull @Size(min = 2, max = 150, message = "You must have an orgin stroy!") String orgin,
                @NotNull @Size(min = 5, max = 200, message = "You need to tell us its story") String meaning,
                User designation, List<User> user) {
        super();
        this.givenname = givenname;
        this.gender = gender;
        this.orgin = orgin;
        this.meaning = meaning;
        this.designation = designation;
        this.user = user;
    }

    public Name(@NotNull @Size(min = 2, max = 100, message = "Name must be at least 2 chars") String givenname,
                @NotNull(message = "Gender cannot be null") String gender,
                @NotNull @Size(min = 2, max = 150, message = "You must have an orgin stroy!") String orgin,
                @NotNull @Size(min = 5, max = 200, message = "You need to tell us its story") String meaning) {
        super();
        this.givenname = givenname;
        this.gender = gender;
        this.orgin = orgin;
        this.meaning = meaning;
    }

    public Name(@NotNull @Size(min = 2, max = 100, message = "Name must be at least 2 chars") String givenname,
                @NotNull(message = "Gender cannot be null") String gender,
                @NotNull @Size(min = 2, max = 150, message = "You must have an orgin stroy!") String orgin,
                @NotNull @Size(min = 5, max = 200, message = "You need to tell us its story") String meaning,
                List<User> user) {
        super();
        this.givenname = givenname;
        this.gender = gender;
        this.orgin = orgin;
        this.meaning = meaning;
        this.user = user;
    }

    public Name(@NotNull @Size(min = 2, max = 100, message = "Name must be at least 2 chars") String givenname,
                @NotNull(message = "Gender cannot be null") String gender,
                @NotNull @Size(min = 2, max = 150, message = "You must have an orgin stroy!") String orgin,
                @NotNull @Size(min = 5, max = 200, message = "You need to tell us its story") String meaning,
                User designation) {
        super();
        this.givenname = givenname;
        this.gender = gender;
        this.orgin = orgin;
        this.meaning = meaning;
        this.designation = designation;
    }
    public Name(Long id, @NotNull @Size(min = 2, max = 100, message = "Name must be at least 2 chars") String givenname,
                @NotNull(message = "Gender cannot be null") String gender,
                @NotNull @Size(min = 2, max = 150, message = "Origin is required") String orgin,
                @NotNull @Size(min = 5, max = 200, message = "Meaning is required") String meaning,
                Date createdAt, Date updatedAt, User designation, List<User> user) {
        super();
        this.id = id;
        this.givenname = givenname;
        this.gender = gender;
        this.orgin = orgin;
        this.meaning = meaning;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.designation = designation;
        this.user = user;
    }


    public Name(Long id, @NotNull @Size(min = 2, max = 100, message = "Name must be at least 2 chars") String givenname,
                @NotNull(message = "Gender cannot be null") String gender,
                @NotNull @Size(min = 2, max = 150, message = "Origin is required") String orgin,
                @NotNull @Size(min = 5, max = 200, message = "Meaning is required") String meaning,
                User designation, List<User> user) {
        super();
        this.id = id;
        this.givenname = givenname;
        this.gender = gender;
        this.orgin = orgin;
        this.meaning = meaning;
        this.designation = designation;
        this.user = user;
    }

    public Name(@NotNull @Size(min = 2, max = 100, message = "Name must be at least 2 chars") String givenname) {
        super();
        this.givenname = givenname;
    }


    // ================================ GETTERS / SETTERS ================================
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getOrgin() {
        return orgin;
    }
    public void setOrgin(String orgin) {
        this.orgin = orgin;
    }
    public String getMeaning() {
        return meaning;
    }
    public void setMeaning(String meaning) {
        this.meaning = meaning;
    }
    public Date getCreatedAt() {
        return createdAt;
    }
    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }
    public Date getUpdatedAt() {
        return updatedAt;
    }
    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }
    public User getDesignation() {
        return designation;
    }
    public void setDesignation(User designation) {
        this.designation = designation;
    }
    public List<User> getUser() {
        return user;
    }
    public void setUser(List<User> user) {
        this.user = user;
    }

    public String getGivenname() {
        return givenname;
    }
    public void setGivenname(String givenname) {
        this.givenname = givenname;
    }
    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }

    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
}
