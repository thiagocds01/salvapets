package com.example.pet.controller;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.http.ResponseEntity;
import org.springframework.http.MediaType;


import com.example.pet.model.Pet;
import com.example.pet.repository.PetRepository;

@Controller
public class PetController {

    @Autowired
    private PetRepository pr;

    @GetMapping(value = "/")
    public String home() {
        return "home";
    }

    @RequestMapping(value = "/pets")
    public ModelAndView listaPets() {
        ModelAndView mv = new ModelAndView("pets");
        Iterable<Pet> pets = pr.findAll();
        mv.addObject("pets", pets);
        return mv;
    }

    @RequestMapping(value = "/gerenciarpet")
    public ModelAndView editarpet() {
        ModelAndView mv = new ModelAndView("gerenciarpet");
        Iterable<Pet> pets = pr.findAll();
        mv.addObject("gerenciarpet", pets);
        return mv;
    }

    @RequestMapping(value = "/cadastrar", method = RequestMethod.GET)
    public String cadastrarForm(Model model) {
        model.addAttribute("pet", new Pet());
        return "minhaconta";
    }

    @RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
    public String cadastrar(@ModelAttribute("pet") Pet pet, BindingResult result, @RequestParam("imagem") MultipartFile imagem) {
        try {
            if (!imagem.isEmpty()) {
                // Converte a imagem em um array de bytes
                byte[] imageBytes = imagem.getBytes();
                pet.setImagem(imageBytes); // Armazena os bytes da imagem no banco de dados
            }
            pr.save(pet); // Salva o pet no banco de dados
        } catch (IOException e) {
            e.printStackTrace(); // Tratamento de exceções
            // Adicione mensagens de erro apropriadas para o usuário
        }

        return "redirect:/minhaconta";
    }

    @RequestMapping(value = "/imagem/{id}", method = RequestMethod.GET, produces = MediaType.IMAGE_JPEG_VALUE)
    public ResponseEntity<byte[]> getImagem(@PathVariable Long id) {
        Pet pet = pr.findById(id).orElseThrow(() -> new IllegalArgumentException("ID de pet inválido: " + id));

        byte[] imagem = pet.getImagem();
        return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imagem);
    }
}