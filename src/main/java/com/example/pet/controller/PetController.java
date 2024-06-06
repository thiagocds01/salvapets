package com.example.pet.controller;

import java.io.IOException;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.example.pet.model.Pet;
import com.example.pet.service.FileStorageService;
import com.example.pet.repository.PetRepository;


@Controller
public class PetController {

    @Autowired
    private FileStorageService fileStorageService;

    @Autowired
    private PetRepository pr;


    @GetMapping(value = "/")
    public String home()
    {
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
        if (result.hasErrors()) {
            return "minhaconta";
        }

        try {
            if (!imagem.isEmpty()) {
                String filename = FileStorageService.storeFile(imagem);
                pet.setImagem(filename);
            }
            pr.save(pet);
        } catch (IOException e) {
            e.printStackTrace();
            // Adicione tratamento de erros adequado
        }

        return "redirect:/minhaconta";
    }


}
