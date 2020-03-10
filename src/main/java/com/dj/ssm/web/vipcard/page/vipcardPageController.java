package com.dj.ssm.web.vipcard.page;

import com.dj.ssm.config.ResourceConstant;
import com.dj.ssm.pojo.StaffBo;
import com.dj.ssm.pojo.VipCardPojo;
import com.dj.ssm.service.staff.StaffService;
import com.dj.ssm.service.vipcard.VipcardService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/vipcard/")
public class vipcardPageController {
    @Autowired
    private VipcardService vipcardService;

    @Autowired
    private StaffService staffService;
    /**
     * 去展示会员卡信息
     */
    @RequestMapping("toShowVipcard")
    @RequiresPermissions(ResourceConstant.VIPCARD_PATH)
    public String toShowVipcard(){
        return "/vipcard/vipcard";
    }


    /**
     * 去充值
     */
    @RequestMapping("toTopUp")
    public String toToUp(Integer id, Model model) throws Exception{
        VipCardPojo byId = vipcardService.getById(id);
        //查询员工姓名
        List<StaffBo> staffAll = staffService.findStaffAll();
        model.addAttribute("list",staffAll);
        model.addAttribute("vip",byId);
        return "/vipcard/topup";
    }

    /**
     * 去办理会员卡
     */
    @RequestMapping("toAddVip")
    public String toAddVip(){
        return "/vipcard/addvip";
    }

    /**
     * 去注销会员卡
     */
    @RequestMapping("toDelVip")
    public String toDelVip(Integer id, Model model){
        VipCardPojo byId = vipcardService.getById(id);
        model.addAttribute("vip",byId);
        return "/vipcard/delvip";
    }
}
