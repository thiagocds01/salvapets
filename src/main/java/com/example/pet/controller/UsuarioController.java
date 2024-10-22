package com.example.pet.controller;

import com.example.pet.model.Ong;
import com.example.pet.model.TipoUsuario;
import com.example.pet.model.Usuario;
import com.example.pet.repository.OngRepository;
import com.example.pet.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UsuarioController {

    @Autowired
    private UsuarioRepository usuarioRepository;

    @Autowired
    private OngRepository ongRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    // Exibe a página de login
    @GetMapping(value = "/login")
    public String login() {
        return "login";
    }

    // Página de logoff
    @GetMapping("/logoff-success")
    public String logoffSuccess() {
        return "logoff-success";
    }

    // Exibe o formulário de registro
    @GetMapping(value = "/registrar")
    public String registrar(Model model) {
        model.addAttribute("ongs", ongRepository.findAll());  // Lista de ONGs para vinculação
        return "/registrar";
    }

    // Processa o registro de usuários
    @PostMapping("/registrar")
    public String registrarUsuario(@RequestParam("username") String username,
                                   @RequestParam("password") String password,
                                   @RequestParam("tipoUsuario") TipoUsuario tipoUsuario,
                                   @RequestParam(value = "ongId", required = false) Long ongId) {
        // Verifica se o usuário já existe
        Usuario existingUser = usuarioRepository.findByUsername(username);
        if (existingUser != null) {
            return "redirect:/registro?error";
        }

        // Cria um novo usuário
        Usuario newUser = new Usuario();
        newUser.setUsername(username);
        newUser.setPassword(passwordEncoder.encode(password));
        newUser.setTipoUsuario(tipoUsuario);

        // Se o tipo for ONG, vincula o usuário a uma ONG existente
        if (tipoUsuario == TipoUsuario.ONG && ongId != null) {
            Ong ong = ongRepository.findById(ongId).orElse(null);
            if (ong != null) {
                newUser.setOng(ong);
            }
        }

        usuarioRepository.save(newUser);
        return "redirect:/login?registroSuccess";
    }

    // Exibe o formulário para alterar senha
    @GetMapping("/alterar-senha")
    public String exibirFormularioAlterarSenha() {
        return "minhaconta";
    }

    // Processa a alteração de senha
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

    // Exibe os detalhes da conta do usuário autenticado
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
