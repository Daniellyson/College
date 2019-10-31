package com.spring.henallux.firstSpringProject.controller;

import com.spring.henallux.firstSpringProject.dataAccess.MagicKeyDataAccess;
import com.spring.henallux.firstSpringProject.dataAccess.dao.MagicKeyDAO;
import com.spring.henallux.firstSpringProject.model.MagicKeyForm;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Locale;

@Controller
@RequestMapping(value="/hello")
@AllArgsConstructor
public class WelcomeController {

    @Autowired
    private MessageSource messageSource;
    @Autowired
    private MagicKeyDataAccess magicKeyDataAccess;

    @RequestMapping(method = RequestMethod.GET)
    public String home(Model model, Locale locale) {
        //model.addAttribute();
        model.addAttribute("title", "Dany Spring boot");
        model.addAttribute("locale", locale.getLanguage());
        model.addAttribute("formMagicKey", new MagicKeyForm());
        return "integrated:welcome";
    }

    @RequestMapping(value="/sent", method = RequestMethod.POST)
    public String getFormData(@ModelAttribute(value = "formMagicKey") MagicKeyForm magicKeyForm, Locale locale) {

        String message = messageSource.getMessage("key", null, locale);

        Boolean keyExist = magicKeyDataAccess.getMagicKey().contains(magicKeyForm.getMagicKey());

        if (keyExist) {
            return "redirect:/userInscription";
        }
        else {
            return "integrated:keyError";
        }
    }

}