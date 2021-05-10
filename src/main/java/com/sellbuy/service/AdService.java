package com.sellbuy.service;

import com.sellbuy.model.Ad;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;



import java.util.Date;
import java.util.List;

@Service
public class AdService {


    @Autowired
    private JdbcTemplate jdbcTemplate;


    public Ad createAd(Ad ad) {
        // id
        //ad.id = 1L;
        ad.createdAt = new Date();
        ad.keyId = "21312-1231-12312-123123";
        return ad;
    }



    public void updateAd() {

    }

    public void deleteAd() {

    }

    public List<Ad> viewAll() {
        var sql = "SELECT * FROM advertise";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Ad.class));
    }

    public void viewAd() {

    }

}
