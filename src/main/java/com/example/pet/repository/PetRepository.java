package com.example.pet.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.pet.model.Pet;

@Repository
public interface PetRepository extends CrudRepository<Pet, Long> {
}
