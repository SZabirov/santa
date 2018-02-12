package ru.itis.santa.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;
import ru.itis.santa.model.User;

@Component
public class DataLoader implements ApplicationRunner {

    private UserRepository userRepository;

    @Autowired
    public DataLoader(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void run(ApplicationArguments args) {
        if (userRepository.findByUsername("santa") == null) {
            userRepository.save(new User("santa", "password", "SANTA"));
        }
        if (userRepository.findByUsername("user") == null) {
            userRepository.save(new User("user", "password", "USER"));
        }
        if (userRepository.findByUsername("user1") == null) {
            userRepository.save(new User("user1", "password", "USER"));
        }
    }
}