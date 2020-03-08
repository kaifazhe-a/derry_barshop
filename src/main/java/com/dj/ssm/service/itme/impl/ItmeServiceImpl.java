package com.dj.ssm.service.itme.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dj.ssm.mapper.itme.ItmeMapper;
import com.dj.ssm.pojo.ItmePojo;
import com.dj.ssm.service.itme.ItmeService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItmeServiceImpl  extends ServiceImpl<ItmeMapper, ItmePojo> implements ItmeService {

    /**
     * 查询项目所以信息
     * @return
     */
    @Override
    public List<ItmePojo> findItmeAll() throws Exception {
        List<ItmePojo> list = this.list();
        return list;
    }

    /**
     * 根据ID查询数据
     * @param id
     * @return
     * @throws Exception
     */
    @Override
    public ItmePojo findItmeById(Integer id) throws Exception {
        ItmePojo itmePojo = this.getById(id);
        return itmePojo;
    }


}
