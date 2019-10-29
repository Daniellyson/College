package com.spring.henallux.firstSpringProject.service;

import com.spring.henallux.firstSpringProject.model.Hobby;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
@Getter
@Setter
public class HobbiesService {

    private ArrayList<Hobby> hobbies = new ArrayList<>();

    public HobbiesService() {
        hobbies.add(new Hobby("0","SPORT"));
        hobbies.add(new Hobby("1","NATURE"));
        hobbies.add(new Hobby("2","READING"));
        hobbies.add(new Hobby("3","MUSIC"));
    }
}