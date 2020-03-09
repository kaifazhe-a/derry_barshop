package com.dj.ssm.web.vipcard.page;

import com.dj.ssm.pojo.VipCardPojo;
import com.dj.ssm.service.vipcard.VipcardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/vipcard")
public class vipcardPageController {
    @Autowired
    private VipcardService vipcardService;

    /**
     * 去展示会员卡信息
     */
    @RequestMapping("toShowVipcard")
    public String toShowVipcard(){
        return "/vipcard/vipcard";
    }

    /**
     * 去充值
     */
    @RequestMapping("toTopUp")
    public String toToUp(Integer id, Model model){
        VipCardPojo byId = vipcardService.getById(id);
        model.addAttribute("vip",byId);
        return "/vipcard/topup";
    }

    /**
     * 去查看理发师信息
     */

}
