package com.cornbreadandbeans.dojosforninjas.controllers;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cornbreadandbeans.dojosforninjas.models.LoginUser;
import com.cornbreadandbeans.dojosforninjas.models.Name;
import com.cornbreadandbeans.dojosforninjas.models.User;
import com.cornbreadandbeans.dojosforninjas.services.NameService;
import com.cornbreadandbeans.dojosforninjas.services.UserService;



@Controller
public class HomeController {
    @Autowired
    private final UserService userSer;
    private final NameService nameSer;


    public HomeController(UserService userSer,NameService nameSer){
        super();
        this.userSer = userSer;
        this.nameSer = nameSer;
    }
    // ================================ GENERAL ================================
    @GetMapping("/")
    public String index(Model model, HttpSession session) {
        if(session.getAttribute("user_id") != null ) {
            return "dashboard.jsp";
        }else {
            model.addAttribute("newUser", new User());
            model.addAttribute("newLogin", new LoginUser());
            return "index.jsp";
        }
    }

    @GetMapping("/dashboard")
    public String dashboard(Model model, HttpSession session) {
        if(session.getAttribute("user_id") != null ) {
            Long loggedID = (Long) session.getAttribute("user_id");
            User userName = userSer.oneUser(loggedID);
            List<Name> names = nameSer.allNames();
            model.addAttribute("names",names);
            model.addAttribute("logged",userName);
            return "dashboard.jsp";
        }else {
            return "redirect:/";
        }
    }

    // ================================ LOGIN / REGISTRATION ================================
    @PostMapping("/api/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser,BindingResult result, Model model, HttpSession session) {

        userSer.register(newUser, result);

        if(result.hasErrors()) {
            model.addAttribute("newLogin", new LoginUser());
            return "index.jsp";
        }

        session.setAttribute("user_id", newUser.getId());
        return "redirect:/dashboard";
    }

    @PostMapping("/api/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, BindingResult result, Model model, HttpSession session) {
        User user = userSer.login(newLogin, result);
        if(result.hasErrors()) {
            model.addAttribute("newUser", new User());
            return "index.jsp";
        }

        session.setAttribute("user_id", user.getId());
        return "redirect:/dashboard";
    }

    @GetMapping("/logout")
    public String dashboard(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }

    // ================================ NAME ================================
    @GetMapping("/name/{id}")
    public String name(Model model,@PathVariable("id") Long id,HttpSession session) {
        Name name = nameSer.singleName(id);
        Long loggedID = (Long) session.getAttribute("user_id");
        User userName = userSer.oneUser(loggedID);
        model.addAttribute("userName",userName);
        model.addAttribute("name",name);
        return "name.jsp";
    }

    @GetMapping("/add/name")
    public String addName(Model model,@ModelAttribute("name") Name name,HttpSession session,RedirectAttributes redirectAttributes) {
        Long loggedID = (Long) session.getAttribute("user_id");
        User userName = userSer.oneUser(loggedID);
        model.addAttribute("userName",userName);
        return "addName.jsp";
    }

    @PostMapping("/api/add/name")
    public String addNameForm(Model model,@Valid @ModelAttribute("name") Name name,BindingResult result,HttpSession session,RedirectAttributes redirectAttributes) {

        nameSer.nameExsist(name,result);
        if(result.hasErrors()) {
            return "addName.jsp";
        }else {
            return "redirect:/dashboard";

        }
    }

    @GetMapping("/edit/name/{id}")
    public String editName(Model model,HttpSession session,@PathVariable("id") Long id,@ModelAttribute("name") Name name) {
        Long loggedID = (Long) session.getAttribute("user_id");
        User userName = userSer.oneUser(loggedID);
        Name currentName = nameSer.singleName(id);
        model.addAttribute("userName",userName);
        model.addAttribute("currentName",currentName);
        return "editName.jsp";
    }

    @PostMapping("/api/update/name/{id}")
    public String updateNameForm(Model model,@PathVariable("id") Long id, @Valid @ModelAttribute("name") Name name,BindingResult result,HttpSession session) {
        if(result.hasErrors()) {
            Long loggedID = (Long) session.getAttribute("user_id");
            User userName = userSer.oneUser(loggedID);
            Name currentName = nameSer.singleName(id);
            model.addAttribute("userName",userName);
            model.addAttribute("currentName",currentName);
            return "editName.jsp";
        }else {
            nameSer.editName(name);
            return "redirect:/dashboard";
        }
    }

    @DeleteMapping("/delete/name/{id}")
    public String destroy(@PathVariable("id") Long id) {
        nameSer.deleteName(id);
        return "redirect:/dashboard";
    }
}
