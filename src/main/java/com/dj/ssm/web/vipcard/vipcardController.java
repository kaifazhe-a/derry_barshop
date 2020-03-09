package com.dj.ssm.web.vipcard;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.dj.ssm.config.ResultModel;
import com.dj.ssm.pojo.TurnoverPojo;
import com.dj.ssm.pojo.VipCardPojo;
import com.dj.ssm.service.turnover.TurnoverService;
import com.dj.ssm.service.vipcard.VipcardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;
@RestController
@RequestMapping("/vipcard")
public class vipcardController {
    @Autowired
    private VipcardService vipcardService;

    @Autowired
    private TurnoverService turnoverService;

    /**
     * 会员卡展示
     */
    @RequestMapping("showVip")
    public ResultModel<Object> showVip() throws Exception{
        List<VipCardPojo> list = vipcardService.list();
        return new ResultModel<>().success(list);
    }

    /**
     * 会员卡充值
     */
    @RequestMapping("/addMoney")
    public ResultModel<Object> addMoney(Integer id, Double upMoney, Double vipBalance, Double priceSum, Integer peopleId) {
        //首先根据id查询个人余额和累计金额
        VipCardPojo byId = vipcardService.getById(id);
        //根据id 修改余额 修改累计充值  upMoney充值金额
        UpdateWrapper<VipCardPojo> updateWrapper = new UpdateWrapper<VipCardPojo>();
        //新的余额
         vipBalance=upMoney+byId.getVipBalance();
        //累计
        priceSum=upMoney+byId.getPriceSum();
        updateWrapper.set("vip_balance", vipBalance);
        updateWrapper.set("price_sum", priceSum);
        updateWrapper.eq("id", id);
        vipcardService.update(updateWrapper);

        //添加营业表记录 用户id 会员卡号 时间 充值金额 会员卡充值
        Date date=new Date();
        TurnoverPojo turnoverPojo=new TurnoverPojo();
        turnoverPojo.setStaffId(peopleId);
        turnoverPojo.setProject("会员卡充值");
        turnoverPojo.setPayTime(date);
        turnoverPojo.setPayPrice(upMoney);
        turnoverPojo.setPayType(8);
        turnoverService.save(turnoverPojo);


        return new ResultModel<Object>().success("正在充值");
    }


}
