package ru.itis.santa.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import ru.itis.santa.dao.UserRepository;
import ru.itis.santa.model.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Optional;

@Controller
public class AuthController {
    @Autowired
    UserRepository userRepository;
    
    @RequestMapping(method = RequestMethod.GET, value = "/")
    String getContacts(Authentication authentication, Model model) {
        boolean isAuthenticated = authentication != null;
        model.addAttribute("isAuthenticated", isAuthenticated);
        if (isAuthenticated) {
            User user = userRepository.findByUsername(((org.springframework.security.core.userdetails.User) SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getUsername());
            model.addAttribute("role", user.getRole());
        }
        return "index";
    }


    @GetMapping("/login")
    public String login(@ModelAttribute("model") ModelMap model, Authentication authentication,
                        @RequestParam Optional<String> error) {
        if (authentication != null) {
            return "redirect:/";
        }
        model.addAttribute("error", error);
        return "login";
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/";
    }

}
