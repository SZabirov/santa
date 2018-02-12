package ru.itis.santa.service;

import ru.itis.santa.model.Behavior;
import ru.itis.santa.model.User;

public interface BehaviorService   {
    Behavior addOrUpdateBehavior(Behavior behavior);
    Behavior getByUser(User user);
}
