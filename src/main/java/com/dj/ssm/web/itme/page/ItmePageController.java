package com.dj.ssm.web.itme.page;

import com.dj.ssm.config.ResourceConstant;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 理发项目Controller
 */
@Controller
@RequestMapping("/itme/")
public class ItmePageController {

    /**
     * to 店内项目展示
     * @return
     */
    @RequestMapping("toShow")
    @RequiresPermissions(ResourceConstant.ITME_PATH)
    public String toShow() {
        return "itme/show";
    }

    /**
     * to 添加项目
     */
    @RequestMapping("toAdd")
    public String toAdd() {
        return "itme/add";
    }



}
