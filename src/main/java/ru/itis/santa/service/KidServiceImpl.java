package ru.itis.santa.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.santa.dao.BehaviorRepository;
import ru.itis.santa.dao.KidsRepository;
import ru.itis.santa.dao.LetterRepository;
import ru.itis.santa.dao.UserRepository;
import ru.itis.santa.model.Behavior;
import ru.itis.santa.model.Kid;
import ru.itis.santa.model.Letter;
import ru.itis.santa.model.User;

import java.util.ArrayList;
import java.util.List;

@Service
public class KidServiceImpl implements KidService {
    @Autowired
    KidsRepository kidsRepository;

    @Autowired
    LetterRepository letterRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    BehaviorRepository behaviorRepository;



    @Override
    public List<Kid> getAllKids() {
        List<User> users = (List<User>)userRepository.findAll();
        List<Kid> kidList = new ArrayList<>();
        for (User user : users) {
            if (user.getRole().equals("USER")) {
                Kid kid = new Kid();
                kid.setId(user.getId());
                kid.setName(user.getUsername());
                Behavior behavior = behaviorRepository.findByUser(user);
                kid.setRating(behavior == null ? 0 : behavior.getRes());
                List<Letter> letters = letterRepository.findAllByUser(user);
                kid.setEmailExists(false);
                if (letters != null && !letters.isEmpty()) {
                    kid.setEmailExists(true);
                    kid.setLetterId(letters.get(letters.size() - 1).getId());
                }
                kidList.add(kid);
            }
        }
        return kidList;
    }
}
