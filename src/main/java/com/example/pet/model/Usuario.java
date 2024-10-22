package com.example.pet.model;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;

@Entity
public class Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @NotEmpty(message = "O nome de usuário é obrigatório!")
    private String username;

    @NotEmpty(message = "A senha é obrigatória!")
    private String password;

    @Enumerated(EnumType.STRING)
    private TipoUsuario tipoUsuario;  // Tipo de usuário (ONG ou Pessoa Física)

    @ManyToOne
    @JoinColumn(name = "ong_id")
    private Ong ong;  // Vinculação com uma ONG (se o tipo for ONG)

    // Getters e Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public TipoUsuario getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(TipoUsuario tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    public Ong getOng() {
        return ong;
    }

    public void setOng(Ong ong) {
        this.ong = ong;
    }
}
