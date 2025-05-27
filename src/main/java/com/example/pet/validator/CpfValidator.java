package com.example.pet.validator;


import java.util.regex.Pattern;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@SuppressWarnings("unused")
public class CpfValidator implements ConstraintValidator<CpfAnotation, String> {

    private static final Pattern CPF_PATTERN = Pattern.compile("\\d{3}\\.\\d{3}\\.\\d{3}\\-\\d{2}");
    private static final int[] PESO_CPF = { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 };

    @Override
    public void initialize(CpfAnotation constraintAnnotation) {
    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        if (value == null || value.isEmpty()) {
            return false;
        }

        // Validação do formato 999.999.999-99
       // if (!CPF_PATTERN.matcher(value).matches()) {
            //return false;
        //}

        // Remover pontos e traço
        String cpf = value.replace(".", "").replace("-", "");

        // Evitar CPFs repetidos (ex: 111.111.111-11)
        if (cpf.matches("(\\d)\\1{10}")) {
            return false;
        }

        // Verificar os dígitos verificadores
        Integer digito1 = calcularDigito(cpf.substring(0, 9), PESO_CPF);
        Integer digito2 = calcularDigito(cpf.substring(0, 9) + digito1, PESO_CPF);

        return cpf.equals(cpf.substring(0, 9) + digito1.toString() + digito2.toString());
    }

    private int calcularDigito(String str, int[] peso) {
        int soma = 0;
        for (int indice = str.length() - 1, digito; indice >= 0; indice--) {
            digito = Integer.parseInt(str.substring(indice, indice + 1));
            soma += digito * peso[peso.length - str.length() + indice];
        }
        soma = 11 - soma % 11;
        return soma > 9 ? 0 : soma;
    }
}
