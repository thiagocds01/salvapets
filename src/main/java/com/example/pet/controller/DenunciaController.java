package com.example.pet.controller;

import com.example.pet.model.Denuncia;
import com.example.pet.repository.DenunciaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;


@Controller
@RequestMapping("/denuncia")
public class DenunciaController {

    @Autowired
    private DenunciaRepository denunciaRepository;

   
    @GetMapping("/cadastrar")
    public String cadastrarDenuncia(Model model) {
        model.addAttribute("denuncia", new Denuncia());
        return "cadastroDenuncia";
    }

   
    @PostMapping("/cadastrar")
    public String salvarDenuncia(
            @RequestParam("tipo") String tipo,
            @RequestParam("assunto") String assunto,
            @RequestParam("relato") String relato,
            @RequestParam(value = "latitude", required = false) Double latitude,
            @RequestParam(value = "longitude", required = false) Double longitude,
            @RequestParam(value = "imagem", required = false) MultipartFile imagem) {

        try {
            
            Denuncia denuncia = new Denuncia();
            denuncia.setTipo(tipo);
            denuncia.setAssunto(assunto);
            denuncia.setRelato(relato);
            denuncia.setLatitude(latitude);
            denuncia.setLongitude(longitude);

            
            if (imagem != null && !imagem.isEmpty()) {
                byte[] imagemBytes = imagem.getBytes();
                denuncia.setImagem(imagemBytes);
            }

            
            denunciaRepository.save(denuncia);

        } catch (IOException e) {
            e.printStackTrace();
         
        }

        return "redirect:/denuncia/listar";
    }

   
    @GetMapping("/listar")
    public String listarDenuncias(Model model) {
        model.addAttribute("denuncias", denunciaRepository.findAll());
        return "listaDenuncias";
    }

    // Exibir a imagem de uma denúncia específica
    @GetMapping(value = "/imagem/{id}", produces = MediaType.IMAGE_JPEG_VALUE)
    public ResponseEntity<byte[]> getImagem(@PathVariable Long id) {
        Denuncia denuncia = denunciaRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("ID de denúncia inválido: " + id));

        byte[] imagem = denuncia.getImagem();
        return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imagem);
    }
}
