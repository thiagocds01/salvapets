package com.example.pet.controller;

import java.util.Date;
import java.util.Optional;

import javax.validation.Valid;

import ch.qos.logback.core.boolex.Matcher;
import com.example.pet.repository.OngRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;


import com.example.pet.model.Usuario;
import com.example.pet.repository.UsuarioRepository;
import com.example.pet.responses.Response;

@RestController
@RequestMapping("/api/usuario")
@CrossOrigin( origins = "*00")
public class UsuarioRestController {
	
	 @Autowired
	    private UsuarioRepository usuarioRepository;

	 @Autowired
	 private PasswordEncoder passwordEncoder;

	 @Autowired
	 private OngRepository ongRepository;
	 
	 
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


	@GetMapping("/login")
	public ResponseEntity<Response<Usuario>> login(@RequestBody Usuario usuario) {
		Response<Usuario> response = new Response<>();
		// Busca o usuário no banco de dados
		Usuario usuarioExistente = usuarioRepository.findByUsername(usuario.getUsername());

		// Verifica se o usuário existe e se a senha está correta
		if (usuarioExistente != null && passwordEncoder.matches(usuario.getPassword(), usuarioExistente.getPassword())) {
			response.setData(usuarioExistente);
			return ResponseEntity.ok(response);
		} else {
			response.getErrors().add("Usuário ou senha inválidos.");
			return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(response);
		}
	}

	@PostMapping("/logout")
	public ResponseEntity<HttpStatus> logout() {
		SecurityContextHolder.clearContext();
		return new ResponseEntity<>(HttpStatus.OK);
	 }






}
