package ru.itis.santa.dao;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.itis.santa.model.Kid;

@Repository
public interface KidsRepository extends CrudRepository<Kid, Long> {

}
