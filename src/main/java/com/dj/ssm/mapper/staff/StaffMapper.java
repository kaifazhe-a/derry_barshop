package com.dj.ssm.mapper.staff;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.dj.ssm.pojo.StaffBo;
import com.dj.ssm.pojo.StaffPojo;

import java.util.List;

public interface StaffMapper extends BaseMapper<StaffPojo> {
    List<StaffBo> findStaffall() throws AssertionError;
}
