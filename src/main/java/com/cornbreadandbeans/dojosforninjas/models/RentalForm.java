package com.cornbreadandbeans.dojosforninjas.models;


import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "rentalForm")
public class RentalForm {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String images;

    @NotNull
    @Size(min = 3, max = 200, message = "Name must be at least 3 characters long and must not exceed 200 characters")
    private String address;

    private String propertyType;

    @NotNull
    @Size(min = 3, max = 200, message = "Meaning must be at least 3 characters long and must not exceed 200 characters")
    private String price;
    @NotNull
    @Size(min = 3, max = 200, message = "Meaning must be at least 3 characters long and must not exceed 200 characters")
    private String sqft;
    @NotNull
    @Size(min = 3, max = 200, message = "Meaning must be at least 3 characters long and must not exceed 200 characters")
    private String bedrooms;
    @NotNull
    @Size(min = 3, max = 200, message = "Meaning must be at least 3 characters long and must not exceed 200 characters")
    private String bathrooms;
    @NotNull
    @Size(min = 3, max = 200, message = "Meaning must be at least 3 characters long and must not exceed 200 characters")
    private String parking;
    @NotNull
    @Size(min = 3, max = 200, message = "Meaning must be at least 3 characters long and must not exceed 200 characters")
    private String requirements;
    @NotNull
    @Size(min = 3, max = 200, message = "Meaning must be at least 3 characters long and must not exceed 200 characters")

    private String animals;

    private String utilities;
    private String amenities;

    //RELATIONSHIP

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinTable(name="user_id")
    private User user;
    /////////////////////////////////!NO ARGUMENT CONSTRUCTORS!////////////////////////////////////////////////////////
    public RentalForm(){}
    /////////////////////////////////!GETTERS AND SETTERS!////////////////////////////////////////////////////////

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPropertyType() {
        return propertyType;
    }

    public void setPropertyType(String propertyType) {
        this.propertyType = propertyType;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getSqft() {
        return sqft;
    }

    public void setSqft(String sqft) {
        this.sqft = sqft;
    }

    public String getBedrooms() {
        return bedrooms;
    }

    public void setBedrooms(String bedrooms) {
        this.bedrooms = bedrooms;
    }

    public String getBathrooms() {
        return bathrooms;
    }

    public void setBathrooms(String bathrooms) {
        this.bathrooms = bathrooms;
    }

    public String getParking() {
        return parking;
    }

    public void setParking(String parking) {
        this.parking = parking;
    }

    public String getRequirements() {
        return requirements;
    }

    public void setRequirements(String requirements) {
        this.requirements = requirements;
    }

    public String getAnimals() {
        return animals;
    }

    public void setAnimals(String animals) {
        this.animals = animals;
    }

    public String getUtilities() {
        return utilities;
    }

    public void setUtilities(String utilities) {
        this.utilities = utilities;
    }

    public String getAmenities() {
        return amenities;
    }

    public void setAmenities(String amenities) {
        this.amenities = amenities;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
