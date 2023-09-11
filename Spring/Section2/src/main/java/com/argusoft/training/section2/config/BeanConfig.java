package com.argusoft.training.section2.config;

import com.argusoft.training.section2.components.TennisCoach;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class BeanConfig {


    @Bean
    public TennisCoach tennisCoach(){
        return new TennisCoach();
    }
}
