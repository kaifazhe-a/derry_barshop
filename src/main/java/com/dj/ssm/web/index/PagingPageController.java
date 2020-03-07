package com.dj.ssm.web.index;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/to/")
@Controller
public class PagingPageController {

	@RequestMapping("index")
	public String index() {
		return "paging/index";
	}
	
	@RequestMapping("top")
	public String top() throws Exception{
		return "paging/top";
	}
	
	@RequestMapping("left")
	public String left() {
		return "paging/left";
	}
	
	@RequestMapping("right")
	public String right() {
		return "paging/right";
	}
	
}
