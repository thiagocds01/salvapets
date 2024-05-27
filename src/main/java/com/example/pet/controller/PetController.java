package com.example.pet.controller;

import java.io.IOException;
import java.util.Optional;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.UrlResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;


import com.example.pet.model.Pet;
import com.example.pet.repository.PetRepository;


@Controller
public class PetController {

    @Autowired
    private PetRepository pr;

    @GetMapping(value="/login")
    public String login() {
        return "login";
    }

    @GetMapping(value="/minha-conta")
    public String minha_conta() {
        return "minha-conta";
    }

    @GetMapping("/logoff-success")
    public String logoffSuccess() {
        return "logoff-success"; // Nome da página de logoff (sem extensão)
    }

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

    @RequestMapping(value = "/cadastrar", method = RequestMethod.GET)
    public String cadastrarForm(Model model) {
        model.addAttribute("pet", new Pet());
        return "formpets";
    }

    @RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
    public String cadastrar(@ModelAttribute("pet") Pet pet, BindingResult result) {
        if (result.hasErrors()) {
            return "formpets";
        }
        pr.save(pet);
        return "redirect:/pets";
    }

//    @RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
//    public ModelAndView cadastrar(@ModelAttribute("pet") Pet pet, BindingResult result, @RequestParam("fileData") {
//        if (!fileData.isEmpty() && fileData != null) {
//            byte[] bytes = fileData.getBytes();
//            pet.setFileName(fileData.getOriginalFilename());
//            pet.setImageFile(bytes);
//            byte[] encodeBase64 = Base64.encodeBase64(bytes);
//            String base64Encoded = new String(encodeBase64, "UTF-8");
//            pet.setBase64image(base64encoded);
//        }
//    }

    @PostMapping("/{id}/delete")
    public String delete(@PathVariable Long id) {
        Optional<Pet> pet = pr.findById(id);
        if (pet.isPresent()) {
            pr.deleteById(id);
        }
        return "redirect:/pets";
    }

    @GetMapping("/{id}")
    public ModelAndView exibeid(@PathVariable("id") Long id) {
        Optional<Pet> optionalPet = pr.findById(id);
        if (optionalPet.isPresent()) {
            Pet pet = optionalPet.get();
            ModelAndView mv = new ModelAndView("formedit");
            mv.addObject("pet", pet);
            return mv;
        } else {
            return new ModelAndView("redirect:/pets");
        }
    }

    @PostMapping("/{id}/update")
    public String atualiza(@PathVariable Long id,  @ModelAttribute Pet pet, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "formedit";
        }
        pr.findById(id).get();
        pr.save(pet);
        model.addAttribute("pets", pr.findAll());
        return "redirect:/pets";
    }





}
