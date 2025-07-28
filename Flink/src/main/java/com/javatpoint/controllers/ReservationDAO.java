package com.javatpoint.controllers;

import org.springframework.jdbc.core.JdbcTemplate;
import java.util.List;

public class ReservationDAO {

    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void addReservation(Reservation reservation) {
        String sql = "INSERT INTO passengerinformation (id,first_name, last_name, password, email, phone, date_of_birth, gender, nrc, selected_meals, leaving_from, going_to, age) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            jdbcTemplate.update(sql,
            		reservation.getId(),
                reservation.getFirstName(),
                reservation.getLastName(),
                reservation.getPass(),
                reservation.getEmail(),
                reservation.getPhone(),
                java.sql.Date.valueOf(reservation.getDateOfBirth()), 
                reservation.getGender(),
                reservation.getNRC(),
                String.join(",", reservation.getFood()),
                reservation.getCityFrom(),
                reservation.getCityTo(),
                reservation.getAge()
            );
            System.out.println("Reservation added successfully!");
        } catch (Exception e) {
            e.printStackTrace();  
        }
    }

    public List<Reservation> getAllReservations() {
        String sql = "SELECT * FROM passengerinformation";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            Reservation reservation = new Reservation();
            reservation.setId(rs.getInt("id"));
            reservation.setFirstName(rs.getString("first_name"));
            reservation.setLastName(rs.getString("last_name"));
            reservation.setEmail(rs.getString("email"));
            reservation.setPhone(rs.getString("phone"));
            reservation.setGender(rs.getString("gender"));
            reservation.setNRC(rs.getString("nrc"));
            reservation.setDateOfBirth(rs.getString("date_of_birth"));
            
            // Handle splitting the food column (if available)
            String foodString = rs.getString("selected_meals");
            if (foodString != null && !foodString.isEmpty()) {
                reservation.setFood(List.of(foodString.split(",")));  // Split and store in the list
            }
            
            reservation.setCityFrom(rs.getString("leaving_from"));
            reservation.setCityTo(rs.getString("going_to"));
            reservation.setAge(rs.getInt("age"));
            return reservation;
        });
    }
}
