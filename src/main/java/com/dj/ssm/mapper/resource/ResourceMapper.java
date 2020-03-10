package com.dj.ssm.mapper.resource;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.dj.ssm.pojo.ResourcePojo;

import java.util.List;

/**
 * 资源额表mapper
 */
public interface ResourceMapper extends BaseMapper<ResourcePojo> {

    /**
     * 根据登录人ID查询资源（用户ID）
     * @param userId
     * @return
     */
    List<ResourcePojo> findById(Integer userId);
}
