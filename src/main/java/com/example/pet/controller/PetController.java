package com.example.pet.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.example.pet.model.Pet;
import com.example.pet.repository.PetRepository;

@Controller
public class PetController {

    @Autowired
    private PetRepository pr;

    @RequestMapping(value = "/")
    public String home() {
        return "pets";
    }

    @RequestMapping(value = "/pets")
    public ModelAndView listaPets() {
        ModelAndView mv = new ModelAndView("pets");
        Iterable<Pet> pet = pr.findAll();
        mv.addObject("pets", pet);
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
    public String atualiza(@PathVariable Long id, @ModelAttribute("pet") Pet pet, BindingResult result) {
        if (result.hasErrors()) {
            return "formedit";
        }
        Optional<Pet> optionalPet = pr.findById(id);
        if (optionalPet.isPresent()) {
            Pet existingPet = optionalPet.get();
            existingPet.setNome(pet.getNome());
            existingPet.setRaca(pet.getRaca());
            existingPet.setIdade(pet.getIdade());
            existingPet.setImagem(pet.getImagem());
            pr.save(existingPet);
            return "redirect:/pets";
        } else {
            return "formedit";
        }
    }
}
