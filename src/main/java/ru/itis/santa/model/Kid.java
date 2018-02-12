package ru.itis.santa.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Kid {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    Long id;
    String name;
    int rating;
    boolean emailExists;
    Long letterId;

    public Long getLetterId() {
        return letterId;
    }

    public void setLetterId(Long letterId) {
        this.letterId = letterId;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public void setEmailExists(boolean emailExists) {
        this.emailExists = emailExists;
    }

    public boolean isEmailExists() {

        return emailExists;
    }

    public String getName() {

        return name;
    }

    public int getRating() {

        return rating;
    }

    public Long getId() {

        return id;
    }

    @Override
    public String toString() {
        return "Kids{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", rating=" + rating +
                ", emailExists=" + emailExists +
                '}';
    }
}
