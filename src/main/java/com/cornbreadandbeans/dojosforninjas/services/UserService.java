package com.cornbreadandbeans.dojosforninjas.services;

import com.cornbreadandbeans.dojosforninjas.models.LoginUser;
import com.cornbreadandbeans.dojosforninjas.models.User;
import com.cornbreadandbeans.dojosforninjas.repositories.UserRepository;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import javax.validation.Valid;
import java.util.Optional;


@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User register(User newUser, BindingResult result) {
        // Create optional user
        // Reject if email is taken (present in database)
        // Reject if password doesn't match confirmation
        // Return null if result has errors
        // hash password
        // set password
        // save user to database
        return null;

    }

    public User login(@Valid LoginUser newLogin, BindingResult result) {
        // Create potential user
        // Find user in the DB by email
        // Reject if NOT present
        // User exists, retrieve user from DB
        // Reject if BCrypt password match fails
        // Return null if result has errors
        return null;
        // Otherwise, return the user object


    }

    public Object findById(Long id) {
        Optional<User> potentialUser = userRepository.findById(id);
        if(potentialUser.isPresent()) {
            return potentialUser.get();
        }
        return null;
    }


}
