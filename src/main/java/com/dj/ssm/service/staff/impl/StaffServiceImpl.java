package com.dj.ssm.service.staff.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dj.ssm.mapper.product.ProductMapper;
import com.dj.ssm.mapper.staff.StaffMapper;
import com.dj.ssm.mapper.staff.StaffRoleMapper;
import com.dj.ssm.pojo.*;
import com.dj.ssm.service.staff.StaffRoleService;
import com.dj.ssm.service.staff.StaffService;
import com.dj.ssm.utils.PasswordSecurityUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * 员工 serviceImpl
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class StaffServiceImpl extends ServiceImpl<StaffMapper, StaffPojo> implements StaffService {

    @Autowired
    private StaffRoleService staffRoleService;

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

    /**
     * 根据项目ID+理发师级别ID查询并展示
     * @param itmeId
     * @param roleId
     * @return
     */
    @Override
    public List<StaffBo> findStaffByIdAndItmeId(Integer itmeId, Integer roleId) throws Exception {
        List<StaffBo> boList = getBaseMapper().findStaffByIdAndItmeId(itmeId, roleId);
        return boList;
    }

    /**
     * 添加员工信息
     * @param staffPojo
     */
    @Override
    public void addStaffAll(StaffPojo staffPojo) throws Exception {
        staffPojo.setCreationTime(new Date());
        this.save(staffPojo);
        StaffRolePojo staffRolePojo = new StaffRolePojo();
        staffRolePojo.setStaffId(staffPojo.getId());
        staffRolePojo.setRoleId(staffPojo.getRoleId());
        staffRoleService.save(staffRolePojo);
    }

    /**
     * 开除员工
     * @param id
     * @throws Exception
     */
    @Override
    public void delStaffMassage(Integer id) throws Exception {
        this.removeById(id);
    }
}
