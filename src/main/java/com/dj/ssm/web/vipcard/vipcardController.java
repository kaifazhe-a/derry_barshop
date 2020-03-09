package com.dj.ssm.web.vipcard;

import com.dj.ssm.config.ResultModel;
import com.dj.ssm.pojo.VipCardPojo;
import com.dj.ssm.service.vipcard.VipcardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/vipcard")
public class vipcardController {
    @Autowired
    private VipcardService vipcardService;

    /**
     * 会员卡展示
     */
    @RequestMapping("showVip")
    public ResultModel<Object> showVip() {
        List<VipCardPojo> list = vipcardService.list();
        return new ResultModel<>().success(list);
    }

    /**
     * 会员卡充值
     */
    @RequestMapping("topUp")
    public ResultModel<Object> topUp(){
        return null;
    }


}
