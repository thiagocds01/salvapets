package com.example.pet.controller;

import com.example.pet.model.Usuario;
import com.example.pet.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;


@Controller
public class UsuarioController {

    @GetMapping(value="/login")
    public String login() {
        return "login";
    }

    @GetMapping("/logoff-success")
    public String logoffSuccess() {
        return "logoff-success"; // Nome da página de logoff (sem extensão)
    }

    @Autowired
    private UsuarioRepository usuarioRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @GetMapping(value="/registrar")
    public String registrar() {
        return "/registrar";
    }

    @PostMapping("/registrar")
    public String registrarUsuario(@RequestParam("username") String username, @RequestParam("password") String password) {
        Usuario existingUser = usuarioRepository.findByUsername(username);
        if (existingUser != null) {
            return "redirect:/registro?error";
        }

        Usuario newUser = new Usuario();
        newUser.setUsername(username);
        newUser.setPassword(passwordEncoder.encode(password));
        usuarioRepository.save(newUser);

        return "redirect:/login?registroSuccess";
    }


    @GetMapping("/alterar-senha")
    public String exibirFormularioAlterarSenha() {
        return "minhaconta";
    }

    @PostMapping("/alterar-senha")
    public String alterarSenha(@RequestParam("senhaAtual") String senhaAtual,
                               @RequestParam("novaSenha") String novaSenha) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = authentication.getName();

        Usuario usuario = usuarioRepository.findByUsername(username);

        if (usuario != null && passwordEncoder.matches(senhaAtual, usuario.getPassword())) {
            usuario.setPassword(passwordEncoder.encode(novaSenha));
            usuarioRepository.save(usuario);
            return "redirect:/minhaconta?senhaAlterada";
        } else {
            return "redirect:/minhaconta?error";
        }
    }

    @GetMapping("/minhaconta")
    public String minhaContaUser(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = null;
        if (authentication != null && authentication.getPrincipal() instanceof UserDetails) {
            username = ((UserDetails) authentication.getPrincipal()).getUsername();
        }
        model.addAttribute("username", username);
        return "minhaconta";
    }

}
