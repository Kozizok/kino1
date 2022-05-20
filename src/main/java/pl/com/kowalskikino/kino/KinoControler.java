package pl.com.kowalskikino.kino;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.lang.annotation.Target;
import java.time.LocalDateTime;
import java.util.Collection;
import java.util.List;
import java.util.Map;

@RestController
public class KinoControler {

    @Autowired
    private MoviesRepo moviesRepo;


    //endpoint allmovies
    @GetMapping(path = "/allmovies")
    @ResponseBody List<Movies> allMovies() {
        return moviesRepo.findAll();
    }

    @Autowired
    private SessionRepo sessionRepo;

    //endpoint allsession
    @GetMapping(path = "/allsession")
    @ResponseBody List<Session> allSession() {
        return sessionRepo.findAll();
    }

    //@GetMapping(path = "/session/current")
    //@ResponseBody Collection<Session> current() {
    //   return sessionRepo.findCurrentSession();
    //}
/*
    //endpoint 1 z zadania
    @GetMapping(path = "/session/current")
    public List<Session> search(@RequestBody Map<String, String> body) {
        String searchTerm = body.get("text");
        return sessionRepo.getFirstBySessionDate(searchTerm, searchTerm);
    }
*/

}




