package com.dj.ssm.service.turnover.impl;

import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dj.ssm.mapper.turnover.TurnoverMapper;
import com.dj.ssm.pojo.ProductPojo;
import com.dj.ssm.pojo.StaffPojo;
import com.dj.ssm.pojo.TurnoverPojo;
import com.dj.ssm.service.staff.StaffService;
import com.dj.ssm.service.turnover.TurnoverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.Date;
import java.util.List;

/**
 * 营业额 serviceImpl
 */
@Service
public class TurnoverServiceImpl extends ServiceImpl<TurnoverMapper, TurnoverPojo> implements TurnoverService {

    /**
     * 注入营业额 mapper
     */
    @Autowired
    private TurnoverMapper turnoverMapper;

    /**
     * 员工表 service
     */
    @Autowired
    private StaffService staffService;

    /**
     * 营业额
     * @return
     */
    @Override
    public List<TurnoverPojo> findTurnoverAll() throws Exception {
        List<TurnoverPojo> list = turnoverMapper.findTurnoverAll();
        return list;
    }

    /**
     * 消费项目
     * @param turnoverPojo
     * @throws Exception
     */
    @Override
    public void addTimeTurnover(TurnoverPojo turnoverPojo, Date date) throws Exception {
        this.save(turnoverPojo);
        UpdateWrapper<StaffPojo> updateWrapper = new UpdateWrapper<>();
        updateWrapper.set("staff_status", 3);
        updateWrapper.set("work_time", date);
        updateWrapper.eq("id", turnoverPojo.getStaffId());
        staffService.update(updateWrapper);
    }

    /**
     * 商品消费
     * @param productPojo
     */
    @Override
    public void addTurnoverBuyProduct(ProductPojo productPojo) throws Exception {
        if(!StringUtils.isEmpty(productPojo.getProCount())) {
            TurnoverPojo turnover = new TurnoverPojo();
            turnover.setStaffId(-1);
            turnover.setProject(productPojo.getProName()); // 商品名
            turnover.setPayTime(new Date());
            turnover.setPayPrice(productPojo.getProPrice()*productPojo.getProCount());
            turnover.setPayType(9);
            this.save(turnover);
        }

    }



}
