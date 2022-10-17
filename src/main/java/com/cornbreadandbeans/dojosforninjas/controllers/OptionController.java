package com.cornbreadandbeans.dojosforninjas.controllers;


import com.cornbreadandbeans.dojosforninjas.models.Book;
import com.cornbreadandbeans.dojosforninjas.models.User;
import com.cornbreadandbeans.dojosforninjas.services.OptionService;
import com.cornbreadandbeans.dojosforninjas.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import java.util.List;

@Controller
public class OptionController {

    private final OptionService optionService;
    private final UserService userService;

    public OptionController(OptionService optionService, UserService userService) {
        this.optionService = optionService;
        this.userService = userService;
    }

    //! CREATE
    @GetMapping("/books/new")
    public String newBook(@ModelAttribute("book")Book book, Model model, HttpSession session){
        Long id = (Long) session.getAttribute("userId");
        User user = userService.findById(id);
        model.addAttribute("user", user);
        return "books/new.jsp";
    }

    @PostMapping("/books")
    public String createBook(@Valid @ModelAttribute("book")Book book, BindingResult result){
        if(result.hasErrors()){
            return "books/new.jsp";
        } else {
            optionService.create(book);
            return "redirect:/books";
        }
    }

    ////////RENTALS START//////////
    @GetMapping("/rentals")
    public String rentals(){
        return "books/rentals.jsp";

    }
    ////////RENTALS END//////////

    ////////ROOMMATES//////////
    @GetMapping("/roommates")
    public String roommates(){
        return "books/roommates.jsp";

    }
    ////////ROOMMATES END//////////

    ////////CONTACT///////////////
    @GetMapping("/contact")
    public String contact(){
        return "books/contact.jsp";

    }

    ////////CONTACT END///////////

    ////////POSTINGS START//////////

    @GetMapping("/postings")
    public String postings(){
        return "books/postings.jsp";

    }
    ////////POSTINGS END//////////

    ////////API START//////////


//        @GET
//        @Path("/rentals/{dataset}/Property")
//        public String locations(){
//            return  "books/rentals.jsp";
//        }
    ////////API END//////////

    ////////MESSENGER START//////////

    @GetMapping("/messenger")
    public String messenger(){
        return "books/messenger.jsp";

    }
    ////////MESSENGER END//////////

    ////////PROFILES START//////////

    @GetMapping("/myProfile")
    public String myProfile(){
        return "books/myProfile.jsp";

    }

    @GetMapping("/myProfile/edit/{id}")
    public String editMyProfile(){
        return "books/editMyProfile.jsp";
    }

    ////////PROFILES END//////////

    //! READ ALL
    @GetMapping("/books")
    public String allBooks(Model model){
        List<Book> books = optionService.getAll();
        model.addAttribute("books", books);
         return "books/index.jsp";

    }
    //!READ ONE

    @GetMapping("/books/{id}")
    public String show(HttpSession session, Model model, @PathVariable("id")Long id){
        Book book = optionService.getOne(id);
        model.addAttribute("book", book);

        Long userId = (Long) session.getAttribute("userId");
        User user = userService.findById(userId);
        model.addAttribute("user", user);
        return "books/show.jsp";
    }

    //! EDIT

    @GetMapping("/books/edit/{id}")
    public String editBook(@PathVariable("id")Long id, Model model){
        Book book = optionService.getOne(id);
        model.addAttribute("book", book);
        return "editMyProfile.jsp";
    }

    @PutMapping("/books/{id}")
    public String updateBook(@Valid @ModelAttribute("book")Book book, BindingResult result){
        if(result.hasErrors()){
            return "editMyProfile.jsp";
        } else {
            optionService.update(book);
            return "redirect:/books";
        }
    }

    @DeleteMapping("/books/destroy/{id}")
    public String destroy(@PathVariable("id")Long id){
        optionService.destroy(optionService.getOne(id));
        return "redirect:/books";
    }


}
