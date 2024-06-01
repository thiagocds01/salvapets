package com.example.pet.controller;

import com.example.pet.model.Pet;
import com.example.pet.repository.PetRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;


@Controller
public class MinhaContaController {

    @Autowired
    private PetRepository pr;

    @RequestMapping(value = "/minhaconta")
    public ModelAndView minha_conta() {
        ModelAndView mv = new ModelAndView("minhaconta");
        Iterable<Pet> pets = pr.findAll();
        mv.addObject("minhaconta", pets);
        return mv;
    }

    @RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
    public String cadastrar(@ModelAttribute("pet") Pet pet, BindingResult result) {
        if (result.hasErrors()) {
            return "minhaconta";
        }
        pr.save(pet);
        return "redirect:/minhaconta";
    }


    @PostMapping("/{id}/delete")
    public String delete(@PathVariable Long id) {
        Optional<Pet> pet = pr.findById(id);
        if (pet.isPresent()) {
            pr.deleteById(id);
        }
        return "redirect:/minhaconta#editar";
    }

    @GetMapping("/{id}")
    public ModelAndView exibeid(@PathVariable("id") Long id) {
        Optional<Pet> optionalPet = pr.findById(id);
        if (optionalPet.isPresent()) {
            Pet pet = optionalPet.get();
            ModelAndView mv = new ModelAndView("minhaconta");
            mv.addObject("pet", pet);
            return mv;
        } else {
            return new ModelAndView("redirect:/minhaconta#editar");
        }
    }

    @PostMapping("/{id}/update")
    public String atualiza(@PathVariable Long id,  @ModelAttribute Pet pet, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "minhaconta";
        }
        pr.findById(id).get();
        pr.save(pet);
        model.addAttribute("pets", pr.findAll());
        return "redirect:/minhaconta#editar";
    }



}
