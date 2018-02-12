package ru.itis.santa.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ru.itis.santa.dao.UserRepository;
import ru.itis.santa.model.Behavior;
import ru.itis.santa.model.User;
import ru.itis.santa.service.BehaviorService;

@Controller
public class BehaviorController {
    @Autowired
    BehaviorService behaviorService;
    @Autowired
    UserRepository userRepository;

    @RequestMapping(method = RequestMethod.GET, value = "/behavior")
    String getForm(Model model) {
        User user = userRepository.findByUsername(((org.springframework.security.core.userdetails.User) SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getUsername());
        model.addAttribute("role", user.getRole());
        return "behavior";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/behavior")
    String getLetter(Authentication authentication, Model model, @RequestParam (required = false) String name, @RequestParam(required = false) String data, @RequestParam(required = false) String homework, @RequestParam(required = false) String parents, @RequestParam (required = false)String help, @RequestParam (required = false)String lie, @RequestParam (required = false)String school , @RequestParam (required = false)String teacher, @RequestParam (required = false)String marks, @RequestParam (required = false)String letter, @RequestParam (required = false)String force, @RequestParam (required = false)String newyear) {
        User user = userRepository.findByUsername(((org.springframework.security.core.userdetails.User) authentication.getPrincipal()).getUsername());
        model.addAttribute("role", user.getRole());
        Behavior existingBehavior = behaviorService.getByUser(user);
        Behavior behavior = existingBehavior == null ? new Behavior() : existingBehavior;
        behavior.setData(name);
        behavior.setData(data);
        int res=0;
        if(homework != null && homework.equals("yes")) {
            res=res+10;
        }
        else if (homework != null && homework.equals("partly")) {
            res=res+5;
        }
        if(parents != null && parents.equals("yes")) {
            res=res+10;
        }
        else if (parents != null && parents.equals("partly")) {
            res=res+5;
        }
        if(help != null && help.equals("yes")) {
            res=res+10;
        }
        else if (help != null && help.equals("partly")) {
            res=res+5;
        }
        if(lie != null && lie.equals("yes")) {
            res=res+10;
        }
        else if (lie != null && lie.equals("partly")) {
            res=res+5;
        }
        if(school != null && school.equals("yes")) {
            res=res+10;
        }
        else if (school != null && school.equals("partly")) {
            res=res+5;
        }
        if(marks != null && marks.equals("yes")) {
            res=res+10;
        }
        else if (marks != null && marks.equals("partly")) {
            res=res+5;
        }
        if(teacher != null && teacher.equals("yes")) {
            res=res+10;
        }
        else if (teacher != null && teacher.equals("partly")) {
            res=res+5;
        }
        if(letter != null && letter.equals("yes")) {
            res=res+10;
        }
        else if (letter != null && letter.equals("partly")) {
            res=res+5;
        }
        if(force != null && force.equals("yes")) {
            res=res+10;
        }
        else if (force != null && force.equals("partly")) {
            res=res+5;
        }
        if(newyear != null && newyear.equals("yes")) {
            res=res+10;
        }
        else if (newyear != null && newyear.equals("partly")) {
            res=res+5;
        }
        behavior.setRes(res);
        behavior.setUser(user);

        behaviorService.addOrUpdateBehavior(behavior);
        model.addAttribute("res", res);
        return "result";
    }

//    @RequestMapping(method = RequestMethod.GET, value = "/result")
    String result(Model model) {
        User user = userRepository.findByUsername(((org.springframework.security.core.userdetails.User) SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getUsername());
        Behavior behavior = behaviorService.getByUser(user);
        int res = behavior.getRes();
        model.addAttribute("res", res);
        return "result";
    }
}
