package com.dj.ssm.web.itme.page;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 理发项目Controller
 */
@Controller
@RequestMapping("/itme/")
public class ItmePageController {


    @RequestMapping("toShow")
    public String index() {
        return "itme/show";
    }

}
