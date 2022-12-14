package com.cornbreadandbeans.dojosforninjas.services;

import com.cornbreadandbeans.dojosforninjas.models.Name;
import com.cornbreadandbeans.dojosforninjas.repositories.NameRepository;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.List;
import java.util.Optional;

@Service
public class NameService {
    private final NameRepository namRepo;

    public NameService(NameRepository itemRepo) {
        this.namRepo = itemRepo;
    }

    public List<Name> allNames(){
        return namRepo.findAll();
    }

    public Name createName(Name name) {
        return namRepo.save(name);
    }

    public Name nameExsist(Name name,BindingResult result) {
        if(namRepo.findByGivenname(name.getGivenname()).isPresent()) {
            result.rejectValue("givenname","Unique","name taken");
        }

        if(result.hasErrors()) {
            return null;
        }else {
            return namRepo.save(name);
        }
    }

    public void deleteName(Long id) {
        namRepo.deleteById(id);
    }

    public Name singleName(Long id) {
        Optional<Name> optName = namRepo.findById(id);
        if(optName.isPresent()) {
            return optName.get();
        }else {
            return null;
        }
    }

    public Name editName(Name name) {
        Optional<Name> optName = namRepo.findById(name.getId());
        if(optName.isPresent()) {
            Name thisName = optName.get();

            thisName.setId(name.getId());
            thisName.setGivenname(name.getGivenname());
            thisName.setGender(name.getGender());
            thisName.setOrgin(name.getOrgin());
            thisName.setMeaning(name.getMeaning());
            thisName.setDesignation(name.getDesignation());

            return namRepo.save(thisName);
        }else {
            return null;
        }

    }
}
