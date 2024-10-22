package com.example.pet.repository;

import com.example.pet.model.Ong;
import org.springframework.data.repository.CrudRepository;

public interface OngRepository extends CrudRepository<Ong, Long> {
}