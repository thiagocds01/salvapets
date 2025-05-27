package com.example.pet.model;

import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.PastOrPresent;
import javax.validation.constraints.Size;

import com.example.pet.validator.CpfAnotation;
import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "denuncia")
public class Denuncia {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String identificacao;
   
    
    @NotBlank(message = "O nome é obrigatório.")
    @Size(min = 3, message = "O nome deve ter pelo menos 3 letras.")
    private String nome;
    
    @CpfAnotation
    private String cpf;
    
    @NotBlank(message = "O telefone é obrigatório.")
    private String telefone;
    
    
    @NotBlank(message = "O e-mail é obrigatório.")
    @Email(message = "Formato de e-mail inválido.")
    private String email;

    @NotBlank(message = "O tipo é obrigatório.")
    private String tipo;
    
    @JsonFormat(pattern = "HH:mm")
    private LocalTime horaOcorrencia;
    
    @NotNull
    @PastOrPresent(message = "A data da ocorrência não pode ser futura.")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private LocalDate dataOcorrencia;

    private String assunto; 

    @NotBlank(message = "O relato é obrigatório.")
    @Size(min = 10, message = "O relato deve ter pelo menos 10 caracteres.")
    private String relato;

    @NotNull(message = "A localização é obrigatória.")
    private Double latitude; 

    @NotNull(message = "A localização é obrigatória.")
    private Double longitude; 

    @Lob
    @Basic(fetch = FetchType.LAZY)
    private byte[] imagem; 


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


	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIdentificacao() {
		return identificacao;
	}

	public void setIdentificacao(String identificacao) {
		this.identificacao = identificacao;
	}


	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public LocalTime getHoraOcorrencia() {
		return horaOcorrencia;
	}

	public void setHoraOcorrencia(LocalTime horaOcorrencia) {
		this.horaOcorrencia = horaOcorrencia;
	}

	public LocalDate getDataOcorrencia() {
		return dataOcorrencia;
	}

	public void setDataOcorrencia(LocalDate dataOcorrencia) {
		this.dataOcorrencia = dataOcorrencia;
	}
	
	
    
    
}
