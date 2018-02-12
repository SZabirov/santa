package ru.itis.santa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.santa.dao.LetterRepository;
import ru.itis.santa.dao.UserRepository;
import ru.itis.santa.model.Letter;
import ru.itis.santa.model.User;

import java.util.ArrayList;
import java.util.List;

@Service
public class LetterServiceImpl implements LetterService {
    @Autowired
    LetterRepository letterRepository;
    @Autowired
    UserRepository userRepository;

    @Override
    public Letter addLetter(Letter letter) {
       return letterRepository.save(letter);
    }

    @Override
    public List<Letter> getByName(String name) {
        List<Letter> letterList = letterRepository.findByName(name);
        return letterList;
    }

    @Override
    public List<Letter> getByUser(User user) {
        return letterRepository.findAllByUser(user);
    }

    @Override
    public List<Letter> getAllUsersLetters() {
        List<User> users = (List<User>)userRepository.findAll();
        List<Letter> letterList = new ArrayList<>();
        for (User user : users) {
            if (user.getRole().equals("USER")) {
                List<Letter> userLetters = letterRepository.findAllByUser(user);
                letterList.addAll(userLetters);
            }
        }
        return letterList;
    }
}









