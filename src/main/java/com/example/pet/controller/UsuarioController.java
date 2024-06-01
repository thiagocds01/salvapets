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
        newUser.setPassword(passwordEncoder.encode(password)); // Codifica a senha antes de salvar no banco de dados
        usuarioRepository.save(newUser);

        return "redirect:/login?registroSuccess";
    }


    // Endpoint para exibir o formulário de alteração de senha
    @GetMapping("/alterar-senha")
    public String exibirFormularioAlterarSenha() {
        return "minhaconta";
    }

    @PostMapping("/alterar-senha")
    public String alterarSenha(@RequestParam("senhaAtual") String senhaAtual,
                               @RequestParam("novaSenha") String novaSenha) {
        // Obtém o usuário autenticado da sessão
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = authentication.getName();

        // Recupera o usuário do banco de dados
        Usuario usuario = usuarioRepository.findByUsername(username);

        // Verifica se a senha atual corresponde à senha armazenada
        if (usuario != null && passwordEncoder.matches(senhaAtual, usuario.getPassword())) {
            // Atualiza a senha com a nova senha fornecida
            usuario.setPassword(passwordEncoder.encode(novaSenha));
            usuarioRepository.save(usuario);
            return "redirect:/minhaconta?senhaAlterada";
        } else {
            // Se a senha atual estiver incorreta, redireciona para o formulário com uma mensagem de erro
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
        return "minhaconta"; // Nome da sua página JSP
    }

}
