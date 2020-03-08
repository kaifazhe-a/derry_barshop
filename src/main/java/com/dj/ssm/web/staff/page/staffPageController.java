package com.dj.ssm.web.staff.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/staff/")
public class staffPageController {

    /**
     * 去员工展示
     * @return
     */
    @RequestMapping("toShow")
    public String toShow () {
        return "staff/show";
    }

    /**
     * 去登录
     * @return
     */
    @RequestMapping("toLogin")
    public String toLogin () {
        return "staff/login";
    }

    /**
     * 去注册客户
     * @return
     */
    @RequestMapping("toAdd")
    public String toAdd () {
        return "staff/add_user";
    }


}
