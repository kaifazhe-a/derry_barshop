package com.dj.ssm.web.staff.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/staff/")
public class staffPageController {

    /**
     * 去展示
     * @return
     */
    @RequestMapping("toShow")
    public String roShow () {
        return "staff/show";
    }


}
