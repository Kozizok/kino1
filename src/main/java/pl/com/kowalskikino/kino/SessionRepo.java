package pl.com.kowalskikino.kino;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.Collection;
import java.util.List;

@Repository
public interface SessionRepo extends JpaRepository<Session, Integer> {


}

// @Query"select  session.id, movies.movie, session.session_date from session inner Join movies ON session.movies_id = movies.id order by session_date asc Limit 1 ", nativeQuery = true)

// List<Session> getFirstBySessionDate(String text, String textAgain);