package com.dj.ssm.service.turnover.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dj.ssm.mapper.turnover.TurnoverMapper;
import com.dj.ssm.pojo.TurnoverPojo;
import com.dj.ssm.service.turnover.TurnoverService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 营业额 serviceImpl
 */
@Service
public class TurnoverServiceImpl extends ServiceImpl<TurnoverMapper, TurnoverPojo> implements TurnoverService {

    /**
     * 营业额
     * @return
     */
    @Override
    public List<TurnoverPojo> findTurnoverAll() throws Exception {
        List<TurnoverPojo> list = this.list();
        return list;
    }




}
