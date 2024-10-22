package com.example.pet.conf;
import com.example.pet.model.Usuario;
import com.example.pet.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;


@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .antMatchers("/", "/login", "/resources/**","/pets","/editarpet","/registrar","/imagem/","/api/**").permitAll() // Permite acesso sem autenticação
                .anyRequest().authenticated() // Todas as outras URLs exigem autenticação
                .and()
                .formLogin()
                .loginPage("/login") // Define a página de login personalizada
                .defaultSuccessUrl("/minhaconta", true) // Redireciona para /home após o login bem-sucedido
                .permitAll() // Permite acesso à página de login sem autenticação
                .and()
                .logout()
                .logoutUrl("/logoff") // Define a URL de logoff
                .logoutSuccessUrl("/logoff-success") // Define a página de redirecionamento após o logoff
                .permitAll() // Permite acesso ao logout sem autenticação
                .and()
                .csrf().disable(); // Desabilita CSRF
    }

    @Autowired
    private UsuarioRepository usuarioRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth
                .userDetailsService(userDetailsService())
                .passwordEncoder(passwordEncoder);
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public UserDetailsService userDetailsService() {
        return username -> {
            Usuario usuario = usuarioRepository.findByUsername(username);
            if (usuario == null) {
                throw new UsernameNotFoundException("Usuário não encontrado: " + username);
            }
            return User.builder()
                    .username(usuario.getUsername())
                    .password(usuario.getPassword())
                    .roles("USER") // Se seus usuários tiverem papéis/roles, você pode carregá-los da entidade de usuário
                    .build();
        };
    }
}