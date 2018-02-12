package ru.itis.santa.service;


import ru.itis.santa.model.Letter;
import ru.itis.santa.model.User;

import java.util.List;

public interface LetterService {
    Letter addLetter(Letter letter);
    List<Letter> getByName(String name);
    List<Letter> getByUser(User user);
    List<Letter> getAllUsersLetters();
}
