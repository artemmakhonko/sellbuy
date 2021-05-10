package com.sellbuy.model;

import lombok.Data;

import java.util.Objects;
import java.util.Date;

@Data
public class Ad {

    public int id;
    public String title;
    public Date createdAt;
    public String mainPhoto;
    public Double price;
    public String description;
    public String keyId;

    public String toString() {
        return "id = [" + id + "], title = [" + title + "]";
    }

}
