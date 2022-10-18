package com.cornbreadandbeans.dojosforninjas.services;

import com.cornbreadandbeans.dojosforninjas.models.RentalForm;
import com.cornbreadandbeans.dojosforninjas.repositories.RentalFormRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RentalFormService {
    @Autowired
    RentalFormRepository rentalFormRepository;


    public void create(RentalForm rentalForm) {
        rentalFormRepository.save(rentalForm);

    }

    public List<RentalForm> getAll() {
        return (List<RentalForm>) rentalFormRepository.findAll();
    }

    public RentalForm getOne(Long id) {
        Optional<RentalForm> rentalForm = rentalFormRepository.findById(id);
        return rentalForm.orElse(null);
    }

    public void update(RentalForm rentalForm) {
        rentalFormRepository.save(rentalForm);
    }

    public void destroy(RentalForm rentalForm) {
        rentalFormRepository.delete(rentalForm);
    }



    public RentalForm findRentalForm(Long id) {
        Optional<RentalForm> rentalForm = rentalFormRepository.findById(id);
        return rentalForm.orElse(null);
    }
}
