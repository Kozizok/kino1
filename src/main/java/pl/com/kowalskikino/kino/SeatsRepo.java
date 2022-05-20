package pl.com.kowalskikino.kino;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SeatsRepo extends JpaRepository<Seats, Integer> {


}
