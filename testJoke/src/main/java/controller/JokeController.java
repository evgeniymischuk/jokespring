package controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import json.JokeJson;
import json.JokeJsonValue;
import json.JokeModel;
import json.JsonTypeValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.net.URL;
import java.util.List;

@RestController
public class JokeController {

    @RequestMapping("/api/joke")
    public String getJoke(JokeModel model) {
        try {
            String pattern =
                    String.format("http://api.icndb.com/jokes/random/?firstName=%s&lastName=%s%s",
                            model.getName().isEmpty() ? "Joe" : model.getName(),
                            model.getLastName().isEmpty() ? "Doe" : model.getLastName(),
                            model.getCategories().isEmpty() ? "" : "&limitTo=" + model.getCategories().toString()
                    );

            URL url = new URL(pattern);

            ObjectMapper mapper = new ObjectMapper();
            JokeJson joke = mapper.readValue(url, JokeJson.class);

            if (joke != null && "success".equals(joke.getType())) {
                JokeJsonValue jokeJsonValue = joke.getValue();
                if (jokeJsonValue != null) {
                    return jokeJsonValue.getJoke();
                }
            }
            return null;
        } catch (IOException e) {
            return e.getMessage();
        }
    }

    @RequestMapping("/api/categories")
    public List getCategories() throws IOException {
        String pattern = "http://api.icndb.com/categories";

        URL url = new URL(pattern);
        ObjectMapper mapper = new ObjectMapper();
        JsonTypeValue<List> joke = mapper.readValue(url, JsonTypeValue.class);
        if (joke != null && "success".equals(joke.getType())) {
            return joke.getValue();
        }

        return null;
    }
}