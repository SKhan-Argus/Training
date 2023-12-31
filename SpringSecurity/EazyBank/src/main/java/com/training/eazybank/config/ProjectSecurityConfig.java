package com.training.eazybank.config;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class ProjectSecurityConfig {

    @Bean
    public SecurityFilterChain defaultSecurityFilterChain(HttpSecurity http) throws Exception {


        http.authorizeHttpRequests((requests)->requests
                .requestMatchers("/myAccount", "/myBalance", "/myCards", "myLoans").authenticated()
                .requestMatchers("/notices", "/contact").permitAll())
                .formLogin(Customizer.withDefaults())
                .httpBasic(Customizer.withDefaults());

//        http.authorizeHttpRequests((requests)->requests.anyRequest().permitAll())
//                .formLogin(Customizer.withDefaults())
//                .httpBasic(Customizer.withDefaults());


        return http.build();

    }


    @Bean
    public InMemoryUserDetailsManager userDetailsManager(){
        UserDetails admin  = User.withDefaultPasswordEncoder()
                .username("sahil")
                .password("khan")
                .authorities("admin")
                .build();

        UserDetails user  = User.withDefaultPasswordEncoder()
                .username("sameer")
                .password("khan")
                .authorities("read")
                .build();

        return new InMemoryUserDetailsManager(admin, user);
    }

}
