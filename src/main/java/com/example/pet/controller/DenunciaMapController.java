package com.example.pet.controller;

import com.example.pet.model.Denuncia;
import com.example.pet.repository.DenunciaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DenunciaMapController {

    @Autowired
    private DenunciaRepository pr;

    @GetMapping(value = "/mapdenuncias")
    public String denuncias() {
        return "denuncias";
    }

    @RequestMapping(value = "/mapdenuncias")
    public ModelAndView listaDenuncias() {
        ModelAndView mv = new ModelAndView("denuncias");
        Iterable<Denuncia> denuncias = pr.findAll();
        mv.addObject("denuncias", denuncias);
        return mv;
    }

}
