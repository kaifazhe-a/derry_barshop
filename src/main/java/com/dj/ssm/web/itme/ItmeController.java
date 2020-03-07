package com.dj.ssm.web.itme;

import com.dj.ssm.config.ResultModel;
import com.dj.ssm.pojo.ItmePojo;
import com.dj.ssm.service.itme.ItmeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 理发项目Controller
 */
@RestController
@RequestMapping("/itme/")
public class ItmeController {

    @Autowired
    private ItmeService itmeService;


    /**
     * 商品展示
     *
     * @return
     */
    @RequestMapping("show")
    public ResultModel<Object> show() throws Exception {
        Map<String, Object> map = new HashMap();
        List<ItmePojo> list = itmeService.findItmeAll();
        map.put("list", list);
        return new ResultModel<>().success(map);
    }

}
