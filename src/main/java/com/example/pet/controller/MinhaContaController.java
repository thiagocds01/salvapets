package com.example.pet.controller;

import com.example.pet.model.Pet;
import com.example.pet.repository.PetRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Objects;
import java.util.Optional;


@Controller
public class MinhaContaController {

    @Autowired
    private PetRepository pr;


//    @RequestMapping(value = "/cadastrar", method = RequestMethod.GET)
//    public String cadastrarForm(Model model) {
//        model.addAttribute("pet", new Pet());
//        return "minhaconta";
//    }
//
//    @RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
//    public String cadastrar(@ModelAttribute("pet") Pet pet, BindingResult result) {
//        if (result.hasErrors()) {
//            return "minhaconta";
//        }
//        pr.save(pet);
//        return "redirect:/minhaconta";
//    }


    @PostMapping("/{id}/delete")
    public String delete(@PathVariable Long id) {
        Optional<Pet> pet = pr.findById(id);
        if (pet.isPresent()) {
            pr.deleteById(id);
        }
        return "redirect:/gerenciarpet";
    }

    @GetMapping("/{id}")
    public ModelAndView exibeid(@PathVariable("id") Long id) {
        Optional<Pet> optionalPet = pr.findById(id);
        if (optionalPet.isPresent()) {
            Pet pet = optionalPet.get();
            ModelAndView mv = new ModelAndView("editarpet");
            mv.addObject("pet", pet);
            return mv;
        } else {
            return new ModelAndView("redirect:/editarpet");
        }
    }

    @PostMapping("/{id}/update")
    public String atualiza(@PathVariable Long id, @ModelAttribute Pet pet, BindingResult result, @RequestParam("imagem") MultipartFile imagem, Model model) {

        try {
            if (!imagem.isEmpty()) {
                // Converte a imagem em um array de bytes
                byte[] imageBytes = imagem.getBytes();
                pet.setImagem(imageBytes); // Armazena os bytes da imagem diretamente no banco de dados
            }

            pet.setId(id); // Define o ID do pet para garantir a atualização do registro correto
            pr.save(pet); // Salva a entidade 'Pet' no banco de dados
        } catch (IOException e) {
            e.printStackTrace(); // Exibe o erro no console
        }

        // Atualiza o modelo com a lista de pets atualizada
        model.addAttribute("pets", pr.findAll());
        return "redirect:/editarpet"; // Redireciona para a página de edição de pets
    }


    @GetMapping(value = "/editarpet")
    public String editarpet() {
        return "editarpet";
    }

}
