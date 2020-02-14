package ryatsyna.security.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ryatsyna.security.entity.Role;
import ryatsyna.security.entity.User;
import ryatsyna.security.repository.UserRepository;

import javax.validation.Valid;
import java.util.HashSet;
import java.util.Set;

@Controller
public class RegistrationController {
    @Autowired
    UserRepository userRepository;
    @Autowired
    PasswordEncoder passwordEncoder;

    @PreAuthorize("hasAnyAuthority('ADMIN')")
    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @PreAuthorize("hasAnyAuthority('ADMIN')")
    @PostMapping("/registration")
    public String registerUser(@Valid User user,
                               BindingResult bindingResult,
                               Model model,
                               @RequestParam("confirmPassword") String confirmPassword,
                               boolean isAdmin) {
        model.addAttribute("isAdmin", isAdmin);
        User userFromDb = userRepository.findByUsername(user.getUsername());
        Set<Role> roles = new HashSet<>();
        roles.add(Role.USER);
        if (userFromDb != null) {
            model.addAttribute("alertDanger", "User exists");
            return "registration";
        }
        if (!bindingResult.getAllErrors().isEmpty()) {
            model.addAllAttributes(ControllerUtils.getErrors(bindingResult));
            return "registration";
        }
        if (!user.getPassword().equals(confirmPassword)) {
            model.addAttribute("confirmPasswordError", "Passwords are not equal.");
            return "registration";
        }
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        if (isAdmin)
            roles.add(Role.ADMIN);
        user.setRoles(roles);
        userRepository.save(user);
        model.addAttribute("alertSuccess", "User successfully created");
        return "registration";
    }
}
