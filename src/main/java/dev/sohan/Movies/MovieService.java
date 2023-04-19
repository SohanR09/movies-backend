package dev.sohan.Movies;

import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class MovieService {
    @Autowired
    private MovieRepository movieRepository;
    public List<Movies> allMovie(){
        return movieRepository.findAll();
    }

    public Optional<Movies> singleMovie(String imdbid) {
        return movieRepository.findMovieByImdbId(imdbid);
    }
}
