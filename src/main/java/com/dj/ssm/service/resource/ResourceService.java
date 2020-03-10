package com.dj.ssm.service.resource;

import com.dj.ssm.pojo.ResourcePojo;

import java.util.List;

/**
 * 资源api
 */
public interface ResourceService {

    /**
     * 根据登录人ID查询资源（用户ID）
     * @param userId
     * @return
     * @throws Exception
     */
    List<ResourcePojo> findById(Integer userId)throws Exception;
}
