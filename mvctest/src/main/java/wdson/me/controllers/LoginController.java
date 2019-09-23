package wdson.me.controllers;

import java.util.Map;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import wdson.me.dao.PersonDao;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {
	
	@Inject
	DataSource dataSource;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(@RequestParam Map<String, String> param, Model model) {
			
		PersonDao dao = new PersonDao(dataSource);
		
		if(dao.selectById(param.get("id")).get(0).getPpw().equals(param.get("passwd"))){
			
			return "loginSuccess";
		}

		model.addAttribute("loginFailed", true);
		return "home";
	}
	
	@RequestMapping(value = "geustLogin", method = RequestMethod.GET)
	public String guestLogin(@RequestParam Map<String, String> param, Model model) {
			
		PersonDao dao = new PersonDao(dataSource);
		
		if(dao.selectById("guest").get(0).getPpw().equals("1234")){
			return "loginSuccess";
		}

		model.addAttribute("loginFailed", true);
		return "home";
	}
}
