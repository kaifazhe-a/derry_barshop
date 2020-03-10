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
        // 根据累计金额修改等级
        if(priceSum <= 500){
            updateWrapper.set("vip_grade", 11);
        }
        if(priceSum >500 && priceSum <= 5000){
            updateWrapper.set("vip_grade", 12);
        }
        if(priceSum >5000){
            updateWrapper.set("vip_grade", 13);
        }

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

    /**
     * 会员卡办理
     */
    @RequestMapping("addVip")
    public ResultModel<Object> addVip(String vipName, String vipNum, String vipPass, Double vipMoney) throws Exception{
        VipCardPojo vip=new VipCardPojo();
        // 账号姓名密码余额0 会员等级（1贵宾卡充值0.5k,2金卡充值5K,3钻石卡充值10K） 累计0状态1
        vip.setId(null);
        vip.setVipCardNumber(vipNum);
        vip.setVipName(vipName);
        vip.setVipPassword(vipPass);
        vip.setVipBalance(vipMoney);
        if(vipMoney <= 500){
            vip.setVipGrade(11);
        }
        if(vipMoney >500 && vipMoney <= 5000){
            vip.setVipGrade(12);
        }
        if(vipMoney >5000){
            vip.setVipGrade(13);
        }
        vip.setPriceSum(vipMoney);
        vip.setVipStatus(1);
        vipcardService.save(vip);
        return new ResultModel<Object>().success("已办理会员卡");


    }

    /**
     * 会员卡注销
     */
    @RequestMapping("delVip")
    public ResultModel<Object> delVip(Integer id) throws Exception{
       //根据id修改状态
        UpdateWrapper<VipCardPojo> update = new UpdateWrapper<VipCardPojo>();
        update.set("vip_status", 0);
        update.eq("id", id);
        vipcardService.update(update);
        return new ResultModel<Object>().success("已注销");
    }
}
