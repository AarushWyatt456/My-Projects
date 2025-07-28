package com.javatpoint.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
public class reservationController {

    @Autowired
    ReservationDAO dao1;

   
    @RequestMapping("/bookingForm")
    public String showForm(Model model) {
        model.addAttribute("reservation", new Reservation());
        return "respage"; 
    }

   
    @PostMapping("submitForm")
    public String submitForm(@Valid Reservation reservation, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return "respage";  
        }

        
        dao1.addReservation(reservation);

      
        model.addAttribute("reservation", reservation);

       
        return "com";  
    }

   
    @GetMapping("all")
    public String viewAllReservations(Model model) {
        model.addAttribute("reservations", dao1.getAllReservations());
        return "respage";  
    }
}
