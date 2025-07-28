package com.javatpoint.controllers;


import java.util.List;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Reservation {
      private int  id;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@NotNull(message = "Email cannot be null")
    @Size(min = 1, message = "Enter First Name Please")
    private String firstName;
	@NotNull(message = "Email cannot be null")
    @Size(min = 1, message = "Enter Last Name Please")
    private String lastName;
    private String gender;
    private String cityFrom;
    private String cityTo;
    private String dateOfBirth;
    private List<String> food;
    private String phone;
   

    @NotNull(message = "Email cannot be null")
    @Size(min = 1, message = "Enter Email please")
    @Pattern(regexp = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$", message = "Invalid email format")
    private String email;

    @NotNull(message = "Password cannot be null")
    private String pass;

    @NotNull(message = "NRC cannot be null")
    @Pattern(regexp = "^[1-9]{1}/[A-Z]{3,6}\\([A-Z]\\)[0-9]{6}$", message = "Invalid NRC format")  
    private String NRC;  


    @NotNull(message = "Age cannot be null")
    private Integer age;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCityFrom() {
        return cityFrom;
    }

    public void setCityFrom(String cityFrom) {
        this.cityFrom = cityFrom;
    }

    public String getCityTo() {
        return cityTo;
    }

    public void setCityTo(String cityTo) {
        this.cityTo = cityTo;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

   

    public List<String> getFood() {
		return food;
	}

	public void setFood(List<String> food) {
		this.food = food;
	}

	public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getNRC() {
        return NRC;
    }

    public void setNRC(String NRC) {
        this.NRC = NRC;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

	public void setfood(String[] split) {
		// TODO Auto-generated method stub
		
	}
}
