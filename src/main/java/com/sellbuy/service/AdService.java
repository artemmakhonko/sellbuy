package com.sellbuy.service;

import com.sellbuy.model.Ad;
import com.sellbuy.repository.AdRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class AdService {

    @Autowired
    private AdRepository repository;

    public void createAd(Ad ad) {
        ad.setCreatedAt(new Date());
        ad = repository.save(ad);
    }

    public void updateAd() {

    }

    public void deleteAd() {

    }

    public List<Ad> viewAll() {
        return repository.findAll();
    }

    public List<Ad> viewAd() {
        return null;
    }

}
