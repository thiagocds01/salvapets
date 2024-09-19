package com.example.pet.controller;

import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.example.pet.model.Pet;
import com.example.pet.repository.PetRepository;

@RestController
@RequestMapping("/api/pets")
public class PetRestController {

    @Autowired
    private PetRepository petRepository;

    // Get all pets
    @GetMapping
    public ResponseEntity<Iterable<Pet>> getAllPets() {
        return new ResponseEntity<>(petRepository.findAll(), HttpStatus.OK);
    }

    // Get pet by ID
    @GetMapping("/{id}")
    public ResponseEntity<Pet> getPetById(@PathVariable("id") long id) {
        Optional<Pet> pet = petRepository.findById(id);
        return pet.map(value -> new ResponseEntity<>(value, HttpStatus.OK))
                .orElseGet(() -> new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }

    // Create a new pet
    @PostMapping
    public ResponseEntity<Pet> createPet(@RequestBody Pet pet) {
        try {
            Pet newPet = petRepository.save(pet);
            return new ResponseEntity<>(newPet, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }

    // Update pet by ID
    @PutMapping("/{id}")
    public ResponseEntity<Pet> updatePet(@PathVariable("id") long id, @RequestBody Pet petDetails) {
        Optional<Pet> petData = petRepository.findById(id);

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

            return new ResponseEntity<>(petRepository.save(existingPet), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // Delete pet by ID
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
