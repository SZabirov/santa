package ru.itis.santa.dao;

import org.springframework.data.repository.CrudRepository;
import ru.itis.santa.model.User;

public interface UserRepository extends CrudRepository<User, Long> {
    User findByUsername(String username);
    User findById(Long id);
}
