package com.sellbuy.controller;

import com.sellbuy.model.Ad;
import com.sellbuy.service.AdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;

@Controller
public class MyController {

    @Autowired
    private AdService adService;

    @GetMapping(value = "/")
    public String index(Model model) {
        return "index";
    }

    @GetMapping(value = "/create-ad")
    public String showCreateForm(Model model) {
        return "createAd";
    }

    @PostMapping(value = "/create-ad")
    public String createAd(Ad ad, Model model) {
        model.addAttribute("submitted", "true");
        adService.createAd(ad);
        return "createAd";
    }

    @GetMapping(value = "/ads")
    public ModelAndView showAds() {
        var ads = adService.viewAll();
        var params = new HashMap<String, Object>();
        params.put("ads", ads);
        return new ModelAndView("showAdvertises", params);
    }


}
