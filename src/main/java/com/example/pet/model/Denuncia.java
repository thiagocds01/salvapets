package com.example.pet.model;

import javax.persistence.*;

@Entity
@SequenceGenerator(name = "denuncia_seq", sequenceName = "denuncia_sequence", allocationSize = 1)
public class Denuncia {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "denuncia_seq")
    private Long id;

    private String tipo; // Exemplo: "Abandono", "Maus-Tratos"

    private String assunto; 

    private String relato; 

    private Double latitude; 

    private Double longitude; 

    @Lob
    @Basic(fetch = FetchType.LAZY)
    private byte[] imagem; // Campo para armazenar a imagem como base64

    // Getters e Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getAssunto() {
        return assunto;
    }

    public void setAssunto(String assunto) {
        this.assunto = assunto;
    }

    public String getRelato() {
        return relato;
    }

    public void setRelato(String relato) {
        this.relato = relato;
    }

    public Double getLatitude() {
        return latitude;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public Double getLongitude() {
        return longitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    public byte[] getImagem() {
        return imagem;
    }

    public void setImagem(byte[] imagem) {
        this.imagem = imagem;
    }
}
