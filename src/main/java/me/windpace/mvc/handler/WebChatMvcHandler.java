package me.windpace.mvc.handler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/webchat")
public class WebChatMvcHandler {

	@RequestMapping(value = "/index", method = { RequestMethod.GET, RequestMethod.POST })
	public String index() {
		return "webchat/index";
	}
}
