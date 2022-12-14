package com.cornbreadandbeans.dojosforninjas.controllers;

import com.cornbreadandbeans.dojosforninjas.models.User;
import com.cornbreadandbeans.dojosforninjas.services.RentalFormService;
import com.cornbreadandbeans.dojosforninjas.models.RentalForm;
import com.cornbreadandbeans.dojosforninjas.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
public class RentalFormController {
    @Autowired
    RentalFormService rentalFormService;
    @Autowired
    UserService userService;
///////////////////////////////CREATE///////////////////////////////
    @GetMapping("/rentalForms/new")
    public String newRental(@ModelAttribute("rentalForm") RentalForm rentalForm, Model model, HttpSession session){
        Long id = (Long) session.getAttribute("userId");
        User user = userService.findById(id);
        model.addAttribute("user", user);
        return "books/newRentalForm.jsp";
    }
    @PostMapping("/rentalForms")
    public String createRentalForm(@Valid @ModelAttribute("rentalForm") RentalForm rentalForm, BindingResult result) {
        if (result.hasErrors()) {
            return "books/newRentalForm.jsp";
        } else {
            rentalFormService.create(rentalForm);
            return "redirect:/showRental";
        }
    }
    ///////////////////////////////READ ALL///////////////////////////////
    @GetMapping("/showRental")
    public String showRental(Model model, HttpSession session){
       List<RentalForm> rentalForms = rentalFormService.getAll();
        System.out.println(rentalForms);
        Long id = (Long) session.getAttribute("userId");
        User user = (User) userService.findById(id);
        model.addAttribute("user", user);
        model.addAttribute("rentalForms", rentalForms);
        return "books/rentalForm.jsp";
    }

    ///////////////////////////////READ ONE///////////////////////////////
    @GetMapping("/rentalForms/{id}")
    public String showRentalForm(HttpSession session, Model model, @PathVariable Long id){
        RentalForm rentalForm = rentalFormService.getOne(id);
        model.addAttribute("rentalForm", rentalForm);
        Long userId = (Long) session.getAttribute("userId");
        User user = userService.findById(userId);
        model.addAttribute("user", user);
        return "books/showRentalForm.jsp";
    }

    ///////////////////////////////EDIT///////////////////////////////

    @GetMapping("/rentalForms/edit/{id}")
    public String editRentalForm(@PathVariable("id")Long id, Model model, HttpSession session){
        RentalForm rentalForm = rentalFormService.getOne(id);
        model.addAttribute("rentalForm", rentalForm);

        Long userId = (Long) session.getAttribute("userId");
        User user = userService.findById(userId);

        model.addAttribute("user", user);
        return "books/editRental.jsp";
    }

    @PostMapping("/updateRentalForms/{id}")
    public String updateRentalForm(@Valid @ModelAttribute("rentalForm") RentalForm rentalForm, BindingResult result, @PathVariable("id")Long id){
        if(result.hasErrors()){
            return "books/editRentalForm.jsp";
        } else {
            rentalFormService.update(rentalForm);
            return "redirect:/showRental";
        }
    }
    ///////////////////////////////DELETE///////////////////////////////
    @DeleteMapping("/destroyRentalForm/destroy/{id}")
    public String destroyRentalForm(@PathVariable("id")Long id){
        rentalFormService.destroy(id);
        return "redirect:/showRental";
    }
}
