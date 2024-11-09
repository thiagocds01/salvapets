package com.example.pet.controller;

import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import com.example.pet.model.Usuario;
import com.example.pet.repository.UsuarioRepository;
import com.example.pet.responses.Response;

@RestController
@RequestMapping("/api/usuario")
public class UsuarioRestController {
	
	 @Autowired
	    private UsuarioRepository usuarioRepository;
	 
	 
	 @GetMapping
	    public ResponseEntity<Iterable<Usuario>> getAllUsuario() {
	        return new ResponseEntity<>(usuarioRepository.findAll(), HttpStatus.OK);
	        
	    }

	  @GetMapping("/{id}")
	    public ResponseEntity<Usuario> getUsuarioById(@PathVariable("id") long id) {
	        Optional<Usuario> user = usuarioRepository.findById(id);
	        return user.map(value -> new ResponseEntity<>(value, HttpStatus.OK))
	                .orElseGet(() -> new ResponseEntity<>(HttpStatus.NOT_FOUND));
	    }
	  
	  @PostMapping
	    public ResponseEntity<Response<Usuario>> createUsuario(@Valid @RequestBody Usuario usuario, BindingResult result) {
	        Response<Usuario> response = new Response<>();
	        if (result.hasErrors()) {
	            result.getAllErrors().forEach(error -> response.getErrors().add(error.getDefaultMessage()));
	            return ResponseEntity.badRequest().body(response);
	        }
	        Usuario newUser = usuarioRepository.save(usuario);
	        response.setData(newUser);
	        return new ResponseEntity<>(response, HttpStatus.CREATED);
	    }
	  
	  
	  @PutMapping("/{id}")
	    public ResponseEntity<Response<Usuario>> updateUsuario(@PathVariable("id") long id, @Valid @RequestBody Usuario usuarioDetails, BindingResult result) {
	        Optional<Usuario> userData = usuarioRepository.findById(id);
	        Response<Usuario> response = new Response<>();

	        if (result.hasErrors()) {
	            result.getAllErrors().forEach(error -> response.getErrors().add(error.getDefaultMessage()));
	            return ResponseEntity.badRequest().body(response);
	        }

	        if (userData.isPresent()) {
	            Usuario existingUser = userData.get();
	            existingUser.setUsername(usuarioDetails.getUsername());
	            existingUser.setPassword(usuarioDetails.getPassword());
	            existingUser.setUsername(usuarioDetails.getUsername());
	            
	            
	            usuarioRepository.save(existingUser);

	            response.setData(existingUser);
	            return ResponseEntity.ok(response);
	        } else {
	            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	        }
	    }

	    @DeleteMapping("/{id}")
	    public ResponseEntity<HttpStatus> deleteUsuario(@PathVariable("id") long id) {
	        try {
	            Optional<Usuario> user = usuarioRepository.findById(id);
	            if (user.isPresent()) {
	            	usuarioRepository.delete(user.get());
	                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	            } else {
	                return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	            }
	        } catch (Exception e) {
	            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	        }
	    }

}
