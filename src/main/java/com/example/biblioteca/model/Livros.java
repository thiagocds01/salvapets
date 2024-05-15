package com.example.biblioteca.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="livros")
public class Livros {

private static final long SerialVersionUID = 1L;
	
	//Atribuos
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	long id;
	@Column(name="nome")
    String nome;
	@Column(name="raca")
    String raca;
    @Column(name="porteRaca")
    String porteRaca;
	@Column(name="sexo")
    String sexo;
	@Column(name="cor")
    String cor;
	@Column(name="idade")
	String idade;
	@Column(name="historia")
    String historia;
    @Column(columnDefinition = "LONGBLOB")
    byte[] imagem;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
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
	public String getIdade() {
		return idade;
	}
	public void setIdade(String idade) {
		this.idade = idade;
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
	
	
	
	
}
