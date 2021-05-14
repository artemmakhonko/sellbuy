package com.sellbuy.model;

import lombok.Data;
import org.springframework.web.bind.annotation.DeleteMapping;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity(name = "advertise")
public class Ad {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Integer id;

    public String title;
    public Date createdAt;
    public String mainPhoto;
    public Double price;
    public String description;

    public String toString() {
        return "id = [" + id + "], title = [" + title + "]";
    }


}


