package com.dj.ssm.service.itme;

import com.baomidou.mybatisplus.extension.service.IService;
import com.dj.ssm.pojo.ItmePojo;

import java.util.List;

public interface ItmeService extends IService<ItmePojo> {


    /**
     * 查询项目所以信息
     * @return
     */
    List<ItmePojo> findItmeAll() throws Exception;

    /**
     * 根据ID进行查询数据
     * @param id
     * @return
     */
    ItmePojo findItmeById(Integer id) throws Exception;
}
