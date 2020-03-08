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

    /**
     * 用户登录
     * @return
     */
    StaffPojo findStaffNameAndPwd(StaffPojo staffPojo) throws Exception;

    /**
     * 添加客户
     * @param staffPojo
     */
    void addStaffMassage(StaffPojo staffPojo) throws Exception;

    /**
     * validate 前台用户去重方法
     * @param staffPojo
     * @return
     */
    StaffPojo findUserByName(StaffPojo staffPojo) throws Exception;

    /**
     * 根据项目ID+理发师级别ID查询并展示
     * @param id
     * @param roleId
     * @return
     */
    List<StaffBo> findStaffByIdAndItmeId(Integer id, Integer roleId) throws Exception;
}
