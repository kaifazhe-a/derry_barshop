package com.dj.ssm.service.staff;

import com.baomidou.mybatisplus.extension.service.IService;
import com.dj.ssm.pojo.StaffBo;
import com.dj.ssm.pojo.StaffPojo;

import java.util.List;

public interface StaffService extends IService<StaffPojo> {

    /**
     * 员工信息展示
     * @return
     */
    List<StaffBo> findStaffAll() throws Exception;
}
