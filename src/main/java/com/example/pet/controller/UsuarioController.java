package com.example.pet.controller;

import com.example.pet.model.Usuario;
import com.example.pet.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UsuarioController {
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
        return "alterar-senha";
    }

    // Endpoint para processar o formulário de alteração de senha
    @PostMapping("/alterar-senha")
    public String alterarSenha(@RequestParam("username") String username,
                               @RequestParam("senhaAtual") String senhaAtual,
                               @RequestParam("novaSenha") String novaSenha) {
        Usuario usuario = usuarioRepository.findByUsername(username);

        if (usuario != null && passwordEncoder.matches(senhaAtual, usuario.getPassword())) {
            // A senha atual fornecida pelo usuário corresponde à senha armazenada no banco de dados
            // Então, atualize a senha com a nova senha fornecida
            usuario.setPassword(passwordEncoder.encode(novaSenha));
            usuarioRepository.save(usuario);
            return "redirect:/perfil?senhaAlterada";
        } else {
            // Se o usuário não for encontrado ou a senha atual estiver incorreta,
            // redirecione de volta ao formulário de alteração de senha com uma mensagem de erro
            return "redirect:/alterar-senha?error";
        }
    }


}
