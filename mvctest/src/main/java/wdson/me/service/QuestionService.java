package wdson.me.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import wdson.me.dao.QuestionDAO;
import wdson.me.domain.QuestionVO;

@Service
public class QuestionService {
	
	@Inject
	private QuestionDAO dao;
	
	public QuestionVO getTodayQuestion() throws Exception{
		return dao.getTodayQuestion();
	};
}
