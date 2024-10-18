package com.example.pet.controller;

import java.util.Optional;

import com.example.pet.responses.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import com.example.pet.model.Pet;
import com.example.pet.repository.PetRepository;

import javax.validation.Valid;

@RestController
@RequestMapping("/api/pets")
public class PetRestController {

    @Autowired
    private PetRepository petRepository;

    @GetMapping
    public ResponseEntity<Iterable<Pet>> getAllPets() {
        return new ResponseEntity<>(petRepository.findAll(), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Pet> getPetById(@PathVariable("id") long id) {
        Optional<Pet> pet = petRepository.findById(id);
        return pet.map(value -> new ResponseEntity<>(value, HttpStatus.OK))
                .orElseGet(() -> new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }

    @PostMapping
    public ResponseEntity<Response<Pet>> createPet(@Valid @RequestBody Pet pet, BindingResult result) {
        Response<Pet> response = new Response<Pet>();
        if (result.hasErrors()) {
            result.getAllErrors().forEach(error -> response.getErrors().add(error.getDefaultMessage()));
            return ResponseEntity.badRequest().body(response);
        }
        response.setData(pet);
        Pet newPet = petRepository.save(pet);

        return ResponseEntity.ok(response);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Response<Pet>> updatePet(@PathVariable("id") long id, @Valid @RequestBody Pet petDetails, BindingResult result) {
        try {
            Optional<Pet> petData = petRepository.findById(id);
            Response<Pet> response = new Response<Pet>();
            if (result.hasErrors()) {
                result.getAllErrors().forEach(error -> response.getErrors().add(error.getDefaultMessage()));
                return ResponseEntity.badRequest().body(response);
            }

            if (petData.isPresent()) {
                Pet existingPet = petData.get();
                existingPet.setNome(petDetails.getNome());
                existingPet.setRaca(petDetails.getRaca());
                existingPet.setPorteRaca(petDetails.getPorteRaca());
                existingPet.setSexo(petDetails.getSexo());
                existingPet.setCor(petDetails.getCor());
                existingPet.setIdade(petDetails.getIdade());
                existingPet.setHistoria(petDetails.getHistoria());
                existingPet.setImagem(petDetails.getImagem());
                petRepository.save(existingPet);

                response.setData(existingPet);
                return ResponseEntity.ok(response);


            } else {
                return new ResponseEntity<>(HttpStatus.NOT_FOUND);
            }

        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

        @DeleteMapping("/{id}")
        public ResponseEntity<HttpStatus> deletePet(@PathVariable("id") long id) {
            try {
                Optional<Pet> pet = petRepository.findById(id);
                if (pet.isPresent()) {
                    petRepository.delete(pet.get());
                    return new ResponseEntity<>(HttpStatus.NO_CONTENT);
                } else {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                }
            } catch (Exception e) {
                return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

    }