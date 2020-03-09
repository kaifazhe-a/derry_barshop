package com.dj.ssm.web.vipcard.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/vipcard")
public class vipcardPageController {
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
    public String toToUp(Integer id){

        return "/vipcard/topup";
    }

    /**
     * 去查看理发师信息
     */

}
