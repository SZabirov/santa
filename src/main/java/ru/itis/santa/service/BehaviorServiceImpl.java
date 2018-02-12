package ru.itis.santa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.santa.dao.BehaviorRepository;
import ru.itis.santa.model.Behavior;
import ru.itis.santa.model.User;

@Service
public class BehaviorServiceImpl implements BehaviorService {

    @Autowired
    BehaviorRepository behaviorRepository;

    @Override
    public Behavior addOrUpdateBehavior(Behavior behavior) {
        return behaviorRepository.save(behavior);
    }

    @Override
    public Behavior getByUser(User user) {
        return behaviorRepository.findByUser(user);
    }
}
