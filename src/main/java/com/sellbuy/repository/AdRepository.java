package com.sellbuy.repository;

import com.sellbuy.model.Ad;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdRepository extends JpaRepository<Ad, Integer> {

}
