package com.sellbuy.controller;
import com.sellbuy.service.AdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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

    @GetMapping(value="/ads")
    public ModelAndView showAds() {

        var ads = adService.viewAll();

        var params = new HashMap<String, Object>();
        params.put("ads", ads);

        return new ModelAndView("showAdvertises", params);
    }


}
