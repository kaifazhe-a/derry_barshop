package com.dj.ssm.service.staff.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dj.ssm.mapper.product.ProductMapper;
import com.dj.ssm.mapper.staff.StaffMapper;
import com.dj.ssm.pojo.ProductPojo;
import com.dj.ssm.pojo.StaffBo;
import com.dj.ssm.pojo.StaffPojo;
import com.dj.ssm.service.staff.StaffService;
import com.dj.ssm.utils.PasswordSecurityUtil;
import org.springframework.beans.BeanUtils;
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

    /**
     * 用户登录
     * @return
     * @throws Exception
     */
    @Override
    public StaffPojo findStaffNameAndPwd(StaffPojo staffPojo) throws Exception {
        QueryWrapper<StaffPojo> queryWrapper = new QueryWrapper<>();
        queryWrapper.and(i -> i.eq("staff_name", staffPojo.getStaffName())
                .or().eq("staff_phone_email", staffPojo.getStaffName()));
        StaffPojo staff = this.getOne(queryWrapper);
        return staff;
    }

    /**
     * 添加客户
     * @param staffPojo
     * @throws Exception
     */
    @Override
    public void addStaffMassage(StaffPojo staffPojo) throws Exception {
        this.save(staffPojo);
    }

    /**
     * validate 前台用户去重方法
     * @param staffPojo
     * @return
     */
    @Override
    public StaffPojo findUserByName(StaffPojo staffPojo) throws Exception {
        QueryWrapper<StaffPojo> queryWrapper = new QueryWrapper<>();
        queryWrapper.and(i -> i.eq("staff_name", staffPojo.getStaffName())
                .or().eq("staff_phone_email", staffPojo.getStaffPhoneEmail()));
        StaffPojo user = this.getOne(queryWrapper);
        if (user == null) {
            return null;
        }
        return user;
    }
}
