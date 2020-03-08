package com.dj.ssm.web.staff;

import com.dj.ssm.config.ResultModel;
import com.dj.ssm.pojo.StaffBo;
import com.dj.ssm.pojo.StaffPojo;
import com.dj.ssm.service.staff.StaffService;
import com.dj.ssm.utils.QiNiuYunUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 员工表Controller
 */
@RestController
@RequestMapping("/staff/")
public class staffController {

    @Autowired
    private StaffService staffService;

    /**
     * 员工展示
     * @return
     * @throws Exception
     */
    @RequestMapping("show")
    public ResultModel<Object> show () throws Exception {
        Map<String, Object>map = new HashMap<>();
        List<StaffBo> list = staffService.findStaffAll();
        map.put("list", list);
        return new ResultModel<>().success(map);
    }

    /**
     * 用户登录
     * @return
     * @throws Exception
     */
    @RequestMapping("login")
    public ResultModel<Object> login (StaffPojo staffPojo, HttpSession session) throws Exception {
        Assert.hasText(staffPojo.getStaffName(), "请填写用户名或密码");
        Assert.hasText(staffPojo.getStaffPassword(), "请填写用户名或密码");
        StaffPojo staffBo = staffService.findStaffNameAndPwd(staffPojo);
        session.setAttribute("staff", staffBo);
        return new ResultModel<>().success();
    }

    /**
     * 添加客户
     * @return
     * @throws Exception
     */
    @RequestMapping("add")
    public ResultModel<Object> add (StaffPojo staffPojo) throws Exception {
        staffService.addStaffMassage(staffPojo);
        return new ResultModel<>().success();
    }

    /**
     * 开除员工
     * @return
     * @throws Exception
     */
    @RequestMapping("del")
    public ResultModel<Object> del (Integer id) throws Exception {
        staffService.delStaffMassage(id);
        return new ResultModel<>().success();
    }

    /**
     * 添加客户
     * @return
     * @throws Exception
     */
    @RequestMapping("addStaff")
    public ResultModel<Object> addStaff (MultipartFile file, StaffPojo staffPojo) throws Exception {
        // 上传图片
        String upload = QiNiuYunUtil.upload(file);

        if ("1".equals(upload)) {
            new ResultModel<>().error("服务器在开小差，请稍后再试1");
        }
        // 给用户添加值
        staffPojo.setStaffImg(upload);
        staffService.addStaffAll(staffPojo);
        return new ResultModel<>().success();
    }
    /**
     * validate 前台用户去重方法
     *
     * @param staffPojo
     * @return
     */
    @RequestMapping("before/deWeight")
    public boolean deWeight(StaffPojo staffPojo) {
        try {
            StaffPojo userResp = staffService.findUserByName(staffPojo);
            if (userResp != null) {
                return false;
            }
            return true;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return false;
        }
    }



}
