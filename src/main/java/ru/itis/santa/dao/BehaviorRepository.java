package ru.itis.santa.dao;

import org.springframework.data.repository.CrudRepository;
import ru.itis.santa.model.Behavior;
import ru.itis.santa.model.User;

public interface BehaviorRepository extends CrudRepository<Behavior, Long> {
    Behavior findByUser(User user);
}
