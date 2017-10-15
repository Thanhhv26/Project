package com.memorynotfound.controller;

import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.context.MessageSource;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;
import java.util.Locale;

@Controller
public class HomeController {

    @Autowired
    private MessageSource messageSource;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Locale locale, Model model){

        // add parametrized message from controller
        String welcome = messageSource.getMessage(
                "welcome.message",
                new Object[]{"John Doe"},
                locale);

        model.addAttribute("message", welcome);

        // obtain locale from LocaleContextHolder
        Locale currentLocale = LocaleContextHolder.getLocale();
        model.addAttribute("locale", currentLocale);

        model.addAttribute("startMeeting", "10:30");

        return "index";
    }

}
