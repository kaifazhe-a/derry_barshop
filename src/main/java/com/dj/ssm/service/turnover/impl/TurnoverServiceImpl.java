package com.dj.ssm.service.turnover.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dj.ssm.mapper.turnover.TurnoverMapper;
import com.dj.ssm.pojo.TurnoverPojo;
import com.dj.ssm.service.turnover.TurnoverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    public void addTimeTurnover(TurnoverPojo turnoverPojo) throws Exception {
        this.save(turnoverPojo);
    }


}
