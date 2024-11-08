package com.example.pet.controller;

import com.example.pet.model.Ong;
import com.example.pet.repository.OngRepository;
import com.example.pet.responses.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Optional;

@RestController
@RequestMapping("/api/ongs")
public class OngRestController {

    @Autowired
    private OngRepository ongRepository;


    @GetMapping
    public ResponseEntity<Iterable<Ong>> getAllOngs() {
        return new ResponseEntity<>(ongRepository.findAll(), HttpStatus.OK);
    }


    @GetMapping("/{id}")
    public ResponseEntity<Ong> getOngById(@PathVariable("id") long id) {
        Optional<Ong> ong = ongRepository.findById(id);
        return ong.map(value -> new ResponseEntity<>(value, HttpStatus.OK))
                .orElseGet(() -> new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }


    @PostMapping
    public ResponseEntity<Response<Ong>> createOng(@Valid @RequestBody Ong ong, BindingResult result) {
        Response<Ong> response = new Response<>();
        if (result.hasErrors()) {
            result.getAllErrors().forEach(error -> response.getErrors().add(error.getDefaultMessage()));
            return ResponseEntity.badRequest().body(response);
        }
        Ong newOng = ongRepository.save(ong);
        response.setData(newOng);
        return new ResponseEntity<>(response, HttpStatus.CREATED);
    }


    @PutMapping("/{id}")
    public ResponseEntity<Response<Ong>> updateOng(@PathVariable("id") long id, @Valid @RequestBody Ong ongDetails, BindingResult result) {
        Optional<Ong> ongData = ongRepository.findById(id);
        Response<Ong> response = new Response<>();

        if (result.hasErrors()) {
            result.getAllErrors().forEach(error -> response.getErrors().add(error.getDefaultMessage()));
            return ResponseEntity.badRequest().body(response);
        }

        if (ongData.isPresent()) {
            Ong existingOng = ongData.get();
            existingOng.setNome(ongDetails.getNome());
            existingOng.setEndereco(ongDetails.getEndereco());
            existingOng.setContato(ongDetails.getContato());
            ongRepository.save(existingOng);

            response.setData(existingOng);
            return ResponseEntity.ok(response);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }


    @DeleteMapping("/{id}")
    public ResponseEntity<HttpStatus> deleteOng(@PathVariable("id") long id) {
        try {
            Optional<Ong> ong = ongRepository.findById(id);
            if (ong.isPresent()) {
                ongRepository.delete(ong.get());
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            } else {
                return new ResponseEntity<>(HttpStatus.NOT_FOUND);
            }
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}