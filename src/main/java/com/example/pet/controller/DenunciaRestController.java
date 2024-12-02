package com.example.pet.controller;

import com.example.pet.model.Denuncia;
import com.example.pet.repository.DenunciaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/api/denuncias")
public class DenunciaRestController {

    @Autowired
    private DenunciaRepository denunciaRepository;

  
    @GetMapping
    public ResponseEntity<Iterable<Denuncia>> getAllDenuncias() {
        return new ResponseEntity<>(denunciaRepository.findAll(), HttpStatus.OK);
    }

    
    @GetMapping("/{id}")
    public ResponseEntity<Denuncia> getDenunciaById(@PathVariable("id") long id) {
        Optional<Denuncia> denuncia = denunciaRepository.findById(id);
        return denuncia.map(value -> new ResponseEntity<>(value, HttpStatus.OK))
                .orElseGet(() -> new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }

  
    @PostMapping
    public ResponseEntity<Denuncia> createDenuncia(@RequestBody Denuncia denuncia) {
        System.out.println("Dados recebidos no servidor: " + denuncia);
        Denuncia savedDenuncia = denunciaRepository.save(denuncia);
        return new ResponseEntity<>(savedDenuncia, HttpStatus.CREATED);
    }

  
    @PutMapping("/{id}")
    public ResponseEntity<Denuncia> updateDenuncia(
            @PathVariable("id") long id,
            @RequestBody Denuncia denunciaDetails) {

        Optional<Denuncia> denunciaData = denunciaRepository.findById(id);

        if (denunciaData.isPresent()) {
            Denuncia existingDenuncia = denunciaData.get();

            existingDenuncia.setTipo(denunciaDetails.getTipo());
            existingDenuncia.setAssunto(denunciaDetails.getAssunto());
            existingDenuncia.setRelato(denunciaDetails.getRelato());
            existingDenuncia.setLatitude(denunciaDetails.getLatitude());
            existingDenuncia.setLongitude(denunciaDetails.getLongitude());
            existingDenuncia.setImagem(denunciaDetails.getImagem()); // Atualiza a imagem

            Denuncia updatedDenuncia = denunciaRepository.save(existingDenuncia);
            return ResponseEntity.ok(updatedDenuncia);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

   
    @GetMapping(value = "/{id}/imagem", produces = MediaType.IMAGE_JPEG_VALUE)
    public ResponseEntity<byte[]> getImagem(@PathVariable("id") long id) {
        Optional<Denuncia> denuncia = denunciaRepository.findById(id);
        if (denuncia.isPresent() && denuncia.get().getImagem() != null) {
            return ResponseEntity.ok(denuncia.get().getImagem());
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

   
    @DeleteMapping("/{id}")
    public ResponseEntity<HttpStatus> deleteDenuncia(@PathVariable("id") long id) {
        Optional<Denuncia> denuncia = denunciaRepository.findById(id);
        if (denuncia.isPresent()) {
            denunciaRepository.delete(denuncia.get());
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
    @GetMapping("/imagem/{id}")
    public ResponseEntity<byte[]> getImagem(@PathVariable Long id) {
        Optional<Denuncia> denuncia = denunciaRepository.findById(id);
        if (denuncia.isPresent()) {
            byte[] imagem = denuncia.get().getImagem();
            if (imagem != null) {
                System.out.println("Imagem encontrada para o ID: " + id);
                return ResponseEntity.ok()
                        .header("Content-Type", "image/jpeg")
                        .body(imagem);
            } else {
                System.out.println("Nenhuma imagem associada ao ID: " + id);
                return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
            }
        } else {
            System.out.println("Nenhuma denúncia encontrada com o ID: " + id);
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }


}
