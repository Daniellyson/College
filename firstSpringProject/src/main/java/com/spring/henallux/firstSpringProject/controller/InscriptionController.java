package com.spring.henallux.firstSpringProject.controller;

import com.spring.henallux.firstSpringProject.model.User;
import com.spring.henallux.firstSpringProject.service.HobbiesService;
import com.spring.henallux.firstSpringProject.dataAccess.util.Constants;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.validation.Valid;
import java.util.Locale;

@Controller
@RequestMapping(value="/userInscription")
@SessionAttributes({Constants.CURRENT_USER})
@NoArgsConstructor
public class InscriptionController {

    private HobbiesService hobbiesService;

    @Autowired
    public InscriptionController(HobbiesService hobbiesService) {
        this.hobbiesService = hobbiesService;
    }

    @ModelAttribute(Constants.CURRENT_USER)
    public User user() {
        return new User();
    }

    @RequestMapping(method = RequestMethod.GET)
    public String home(Model model, Locale locale) {
        model.addAttribute("locale", locale.getLanguage());
        model.addAttribute("hobbies", hobbiesService.getHobbies());
        model.addAttribute("currentUser", new User());

        return "integrated:userInscription";
    }

    @RequestMapping(value="/sent", method = RequestMethod.POST)
    public String getFormData(Model model,
                              @Valid @ModelAttribute(value = Constants.CURRENT_USER) User user,
                              final BindingResult errors) {
        String welcomeMessage;
        Boolean error;

        if(!errors.hasErrors()) {
            welcomeMessage = "Welcome, " + user.getName();
            error = false;
        } else {
            welcomeMessage = "Sorry the form is not valid";
            error = true;
            model.addAttribute("hobbies", hobbiesService.getHobbies());
            model.addAttribute("currentUser", new User());
            return "integrated:userInscription";
        }
        model.addAttribute("error", error);
        model.addAttribute("message", welcomeMessage);

        return "redirect:/gift";
    }
}
