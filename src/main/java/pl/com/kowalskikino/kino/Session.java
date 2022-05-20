package pl.com.kowalskikino.kino;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

@Entity
public class Session {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    private LocalDateTime sessionDate;
    private Integer movies_id;

    @OneToMany(mappedBy = "session")
    private List<Movies> movies;

    public List<Movies> getMovies() {
        return movies;
    }

    public void setMovies(List<Movies> movies) {
        this.movies = movies;
    }

    public Session() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public LocalDateTime getSessionDate() {
        return sessionDate;
    }

    public void setSessionDate(LocalDateTime sessionDateTime) {
        this.sessionDate = sessionDateTime;
    }

    public Integer getMovies_id() {
        return movies_id;
    }

    public void setMovies_id(Integer movies_id) {
        this.movies_id = movies_id;
    }
}
