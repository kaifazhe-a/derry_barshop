package com.dj.ssm.mapper.staff;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.dj.ssm.pojo.StaffBo;
import com.dj.ssm.pojo.StaffPojo;

import java.util.List;

public interface StaffMapper extends BaseMapper<StaffPojo> {
    List<StaffBo> findStaffall() throws AssertionError;

    List<StaffBo> findStaffByIdAndItmeId(Integer itmeId, Integer roleId) throws AssertionError;
    /**
     * 判断员工工作时间是否结束，结束就修改为空闲
     * @return
     * @throws AssertionError
     */
    void updateStaffStatus() throws AssertionError;
}
