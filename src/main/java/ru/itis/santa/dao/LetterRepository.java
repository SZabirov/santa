package ru.itis.santa.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.itis.santa.model.Letter;
import ru.itis.santa.model.User;

import java.util.List;

@Repository
public interface LetterRepository extends CrudRepository <Letter,Long> {
    List<Letter> findByName(String name);
    List<Letter> findAllByUser(User user);
}
