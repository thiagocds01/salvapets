package com.example.pet.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.pet.model.Denuncia;

@Repository
public interface DenunciaRepository extends JpaRepository<Denuncia, Long> {
  
}
