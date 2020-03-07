package com.dj.ssm.service.staff.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dj.ssm.mapper.product.ProductMapper;
import com.dj.ssm.mapper.staff.StaffMapper;
import com.dj.ssm.pojo.ProductPojo;
import com.dj.ssm.pojo.StaffBo;
import com.dj.ssm.pojo.StaffPojo;
import com.dj.ssm.service.staff.StaffService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 员工 serviceImpl
 */
@Service
public class StaffServiceImpl extends ServiceImpl<StaffMapper, StaffPojo> implements StaffService {

    /**
     * 员工信息展示
     * @return
     * @throws Exception
     */
    @Override
    public List<StaffBo> findStaffAll() throws Exception {
        List<StaffBo> list = getBaseMapper().findStaffall();
        return list;
    }
}
