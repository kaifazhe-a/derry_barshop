package com.dj.ssm.web.staff.page;

import com.dj.ssm.pojo.ItmePojo;
import com.dj.ssm.pojo.StaffBo;
import com.dj.ssm.service.itme.ItmeService;
import com.dj.ssm.service.staff.StaffService;
import com.dj.ssm.utils.PasswordSecurityUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import sun.security.provider.MD5;

import java.util.List;

@Controller
@RequestMapping("/staff/")
public class staffPageController {

    @Autowired
    private ItmeService itmeService;

    @Autowired
    private StaffService staffService;

    /**
     * 去员工展示
     * @return
     */
    @RequestMapping("toShow")
    public String toShow () {
        return "staff/show";
    }

    /**
     * 去登录
     * @return
     */
    @RequestMapping("toLogin")
    public String toLogin () {
        return "staff/login";
    }

    /**
     * 去注册客户
     * @return
     */
    @RequestMapping("toAdd")
    public String toAdd (Model model) throws Exception{
        String salt = PasswordSecurityUtil.generateSalt();
        model.addAttribute("salt", salt);
        return "staff/add_user";
    }

    /**
     * 去添加员工
     * @return
     */
    @RequestMapping("toAddStaff")
    public String toAddStaff (Model model) throws Exception{
        String salt = PasswordSecurityUtil.generateSalt();
        model.addAttribute("salt", salt);
        return "staff/add_staff";
    }

    /**
     * 去选择理发师展示
     * @return
     */
    @RequestMapping("toStaffShow")
    public String toStaffShow (Integer id, Model model) throws Exception {
        ItmePojo itmePojo = itmeService.findItmeById(id);
        List<StaffBo> boList = staffService.findStaffByIdAndItmeId(itmePojo.getId(), itmePojo.getRoleId());
        model.addAttribute("boList", boList);
        model.addAttribute("id", id);
        return "staff/staff_show";
    }


}
