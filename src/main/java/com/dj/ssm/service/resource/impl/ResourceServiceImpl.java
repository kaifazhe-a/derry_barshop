package com.dj.ssm.service.resource.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dj.ssm.mapper.resource.ResourceMapper;
import com.dj.ssm.pojo.ResourcePojo;
import com.dj.ssm.service.resource.ResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * 资源api实现类
 */
@Service
public class ResourceServiceImpl extends ServiceImpl<ResourceMapper, ResourcePojo> implements ResourceService {

    @Autowired
    private ResourceMapper resourceMapper;

    /**
     * 根据登录人ID查询资源（用户ID）
     *
     * @param userId
     * @return
     * @throws Exception
     */
    @Override
    public List<ResourcePojo> findById(Integer userId) throws Exception {
        List<ResourcePojo> resourcePojoList = resourceMapper.findById(userId);
        return resourcePojoList;
    }
}
