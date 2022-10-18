package com.cornbreadandbeans.dojosforninjas.models;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.util.List;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty(message = "Username is required")
    @Size(min = 3, max = 30, message = "Username 3 and 30")
    private String userName;

    @NotEmpty(message = "email is required")
    @Email(message = "Please enter a valid email")
    private String email;

    @NotEmpty(message = "Username is required")
    @Size(min = 8, max = 128, message = "Password 8 and 128")
    private String password;

    @Transient
    @NotEmpty(message = "Confirm password is required")
    @Size(min = 8, max = 128, message = "You know the drill!")
    private String confirm;

    @OneToMany(mappedBy="user", fetch = FetchType.LAZY)
    private List<RentalForm> rentalForms;

    public User(){}


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirm() {
        return confirm;
    }

    public void setConfirm(String confirm) {
        this.confirm = confirm;
    }
}
