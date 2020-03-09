package com.dj.ssm.web.turnover.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 营业额展示
 * PageController
 */
@Controller
@RequestMapping("/turnover")
public class TurnoverPageController {

    /**
     * to 营业额展示
     */
    @RequestMapping("/toShow")
    public String toShow() {
        return "turnover/show";
    }


}
