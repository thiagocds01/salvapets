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

import com.example.pet.model.Pet;
import com.example.pet.repository.PetRepository;

@Controller
public class PetController {

    @Autowired
    private PetRepository pr;

    @GetMapping(value = "/")
    public String home() {
        return "pets";
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
                // Salvar arquivo no diretório
                String filename = StringUtils.cleanPath(Objects.requireNonNull(imagem.getOriginalFilename()));
                String UPLOAD_DIR = "C:/Users/Thiago Silva/IdeaProjects/salvapets/src/main/resources/static/img/pets"; // Caminho relativo ao diretório de recursos
                Path uploadPath = Paths.get(UPLOAD_DIR);

                // Verifica se o diretório existe, caso contrário, cria-o
                if (!Files.exists(uploadPath)) {
                    Files.createDirectories(uploadPath);
                }

                try (InputStream inputStream = imagem.getInputStream()) {
                    Path filePath = uploadPath.resolve(filename);
                    Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING);
                }

                String imagePath = "/resources/img/pets/" + filename; // Caminho relativo para armazenar no banco de dados
                pet.setImagem(imagePath);
            }
            pr.save(pet);
        } catch (IOException e) {
            e.printStackTrace();
            // Adicione tratamento de erros adequado
        }

        return "redirect:/minhaconta";
    }
}
