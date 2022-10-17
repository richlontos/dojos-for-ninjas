package com.cornbreadandbeans.dojosforninjas.controllers;

import com.cornbreadandbeans.dojosforninjas.models.LoginUser;
import com.cornbreadandbeans.dojosforninjas.models.User;
import com.cornbreadandbeans.dojosforninjas.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
public class HomeController {

    @Autowired
    private UserService userServ;

    @GetMapping("/")
    public String index(Model model){

        // Bind empty User and LoginUser objects to capture form input
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "auth/welcome.jsp";
    }
    @GetMapping("/login")
    public String login(Model model){

        // Bind empty User and LoginUser objects to capture form input
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "auth/login.jsp";
    }

    @GetMapping("/regs")
    public String regs(Model model){

        // Bind empty User and LoginUser objects to capture form input
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "auth/signUp.jsp";
    }


    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, Model model, HttpSession session){

        User user = userServ.register(newUser, result);
        System.out.println(user);
        if(result.hasErrors()){
            model.addAttribute("newLogin", new LoginUser());
            return "auth/welcome.jsp";
        }

        session.setAttribute("userId", user.getId());
        session.setAttribute("user", user);
        System.out.println(session);


        return "redirect:/books";
    }

    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, BindingResult result, Model model, HttpSession session) {

        User user = userServ.login(newLogin, result);

        if(result.hasErrors() || user==null) {
            model.addAttribute("newUser", new User());
            return "auth/login.jsp";
        }

        session.setAttribute("userId", user.getId());
        session.setAttribute("user", user);

        return "redirect:/books";
    }

    @GetMapping("/welcome")
    public String welcome(HttpSession session, Model model) {
        System.out.println(session.getAttribute("userId"));
        // If no userId is found, redirect to logout
        if(session.getAttribute("userId") == null) {
            return "redirect:/logout";
        }

        // We get the userId from our session (we need to cast the result to a Long as the 'session.getAttribute("userId")' returns an object
        Long userId = (Long) session.getAttribute("userId");
        model.addAttribute("user", userServ.findById(userId));

        return "auth/show.jsp";

    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {

        // Set userId to null and redirect to login/register page
        session.setAttribute("userId", null);

        return "redirect:/";
    }
}
