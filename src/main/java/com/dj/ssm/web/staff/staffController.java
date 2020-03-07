package com.dj.ssm.web.staff;

import com.dj.ssm.config.ResultModel;
import com.dj.ssm.pojo.StaffBo;
import com.dj.ssm.service.staff.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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

    @RequestMapping("show")
    public ResultModel<Object> show () throws Exception {
        Map<String, Object>map = new HashMap<>();
        List<StaffBo> list = staffService.findStaffAll();
        map.put("list", list);
        return new ResultModel<>().success(map);
    }

}
