package com.dj.ssm.web.index;


import com.dj.ssm.config.ResultModel;
import com.dj.ssm.pojo.ResourcePojo;
import com.dj.ssm.pojo.StaffPojo;
import com.dj.ssm.service.resource.ResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.stream.Collectors;

@RequestMapping("/to/")
@RestController
public class PagingController {

	/**
	 * 资源
	 */
	@Autowired
	private ResourceService resourceService;

	/**
	 * 三分天下左将军  展示权限
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("left1")
	public ResultModel<Object> left(HttpSession session) throws Exception {
		// 获取登录人权限信息
		StaffPojo staffPojo = (StaffPojo) session.getAttribute("staff");
		//根据登录人ID查询资源
		List<ResourcePojo> resourcePojoList = resourceService.findById(staffPojo.getId());
		List<ResourcePojo> resourceDTORespList1 = resourcePojoList.stream().filter(
				resp -> resp.getResourceType().equals("1")).collect(Collectors.toList()
		);
		return new ResultModel<>().success(resourceDTORespList1);
	}
	
}
