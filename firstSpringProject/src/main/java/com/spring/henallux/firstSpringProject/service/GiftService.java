package com.spring.henallux.firstSpringProject.service;


import org.springframework.stereotype.Service;

@Service
public class GiftService {

    public String chooseGift(String hobby, int age) {

        String output;

        if(age < 5) {
            output = "puzzel";
        }
        else {
            if(age < 10) {
                output = "dvd";
            }
            else {
                output = "book";
            }
        }

        return output;
    }
}
