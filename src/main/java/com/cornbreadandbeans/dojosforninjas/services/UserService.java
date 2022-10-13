package com.cornbreadandbeans.dojosforninjas.services;

import com.cornbreadandbeans.dojosforninjas.models.LoginUser;
import com.cornbreadandbeans.dojosforninjas.models.User;
import com.cornbreadandbeans.dojosforninjas.repositories.UserRepository;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.Optional;


@Service
public class UserService {
    @Autowired
    private final UserRepository userRepo;

    public UserService(UserRepository userRepo) {
        super();
        this.userRepo = userRepo;
    }

    //find one User
    public User oneUser(Long id) {
        Optional<User> optUser = userRepo.findById(id);
        if(optUser.isPresent()) {
            return optUser.get();
        }else {
            return null;
        }
    }

    // method to register
    public User register(User newUser, BindingResult result) {

        if(userRepo.findByEmail(newUser.getEmail()).isPresent()) {
            result.rejectValue("email","Unquie","Email already in use");
        }
        if(!newUser.getPassword().equals(newUser.getConfirm())){
            result.rejectValue("confirm","Matches","Passwords do not match");
        }
        if(result.hasErrors()) {
            return null;
        }else {
            String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
            newUser.setPassword(hashed);

            return userRepo.save(newUser);
        }
    }

    // method for login
    public User login(LoginUser newLogin, BindingResult result) {
        if(result.hasErrors()) {
            return null;
        }

        Optional<User> potentiallUser = userRepo.findByEmail(newLogin.getEmail());
        if(!potentiallUser.isPresent()) {
            System.out.println("not present");
            result.rejectValue("email","notFound","Email not found");
            return null;
        }


        User user = potentiallUser.get();
        if(!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
            result.rejectValue("password","Matches","try again");
        }

        if(result.hasErrors()) {
            return null;
        }else {
            return user;
        }
    }


}
