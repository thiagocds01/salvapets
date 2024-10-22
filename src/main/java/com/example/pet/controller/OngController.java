package com.example.pet.controller;

import com.example.pet.model.Ong;
import com.example.pet.repository.OngRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OngController {

    @Autowired
    private OngRepository ongRepository;

    @GetMapping("/ong/cadastrar")
    public String cadastrarOng(Model model) {
        model.addAttribute("ong", new Ong());
        return "cadastroOng";
    }

    @PostMapping("/ong/cadastrar")
    public String cadastrarOng(@RequestParam("nome") String nome,
                               @RequestParam("endereco") String endereco,
                               @RequestParam("contato") String contato) {
        Ong ong = new Ong();
        ong.setNome(nome);
        ong.setEndereco(endereco);
        ong.setContato(contato);
        ongRepository.save(ong);

        return "redirect:/ong/listar";
    }

    @GetMapping("/ong/listar")
    public String listarOngs(Model model) {
        model.addAttribute("ongs", ongRepository.findAll());
        return "listaOngs";
    }
}
