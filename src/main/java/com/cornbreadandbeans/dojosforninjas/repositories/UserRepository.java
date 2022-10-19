package com.cornbreadandbeans.dojosforninjas.repositories;

import com.cornbreadandbeans.dojosforninjas.models.RentalForm;
import com.cornbreadandbeans.dojosforninjas.models.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends CrudRepository<User, Long> {

    List<User> findAll();

    Optional<User> findByEmail(String email);


}
