package wdson.me.controllers;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import wdson.me.service.QuestionService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Inject
	private QuestionService service;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpSession session) {
		session.setAttribute("day", 0);
		
		int day = 0;

		try {
			model.addAttribute("question", service.getTodayQuestion(day));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "home";
	}
	
	@RequestMapping(value = "/prev", method = RequestMethod.GET)
	public String prev(Model model, HttpSession session) {
		int day = (Integer)session.getAttribute("day") -1;
		session.setAttribute("day", day);
		
		try {
			model.addAttribute("question", service.getTodayQuestion(day));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "page";
	}
	
	@RequestMapping(value = "/next", method = RequestMethod.GET)
	public String next(Model model, HttpSession session) {
		int day = (Integer)session.getAttribute("day") +1;
		session.setAttribute("day", day);
		
		try {
			model.addAttribute("question", service.getTodayQuestion(day));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "page";
	}
}
