package com.example.pet.model;

import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;

@Entity
public class Pet {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column (nullable = false)
    @NotEmpty (message = "O nome deverá ser informado!")
    @Length(min = 3, max = 20, message = "O nome deve ter entre 3 e 20 caracteres!")
    private String nome;

    @Column (nullable = false)
    @NotEmpty (message = "A raça deverá ser informada!")
    @Length(min = 3, max = 20, message = "A raça deve ter entre 3 e 20 caracteres!")
    private String raca;

    @Column (nullable = false)
    @NotEmpty (message = "O porte da raça deverá ser informada!")
    @Length(min = 3, max = 20, message = "O porte da raça ter entre 3 e 20 caracteres!")
    private String porteRaca;

    private String sexo;
    private String cor;
    private int idade;
    private String historia;

    //private String imagem; // campo base64 da imagem
    @Lob
    @Basic(fetch = FetchType.LAZY)
    private byte[] imagem; // campo base64 da imagem



    public String getPorteRaca() {
        return porteRaca;
    }

    public void setPorteRaca(String porteRaca) {
        this.porteRaca = porteRaca;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public String getHistoria() {
        return historia;
    }

    public void setHistoria(String historia) {
        this.historia = historia;
    }

    public byte[] getImagem() {
        return imagem;
    }

    public void setImagem(byte[] imagem) {
        this.imagem = imagem;
    }

    // Getters e Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRaca() {
        return raca;
    }

    public void setRaca(String raca) {
        this.raca = raca;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }
}
