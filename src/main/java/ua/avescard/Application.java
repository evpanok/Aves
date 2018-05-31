package ua.avescard;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class Application{
    public static void main(String[] args){
        SpringApplication.run(Application.class, args);
    }

    @Bean
    public CommandLineRunner demo(final UserService userService){
        return strings -> userService.addUser(new User("admin","5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8",UserRole.USER));
    }
}