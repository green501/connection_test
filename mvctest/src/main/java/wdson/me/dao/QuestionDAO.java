package wdson.me.dao;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import wdson.me.domain.QuestionVO;

@Repository
public class QuestionDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static String namespace = "wdson.me.mapper.questionMapper";
	
	public QuestionVO getTodayQuestion(Integer day) throws Exception{
		return sqlSession.selectOne(namespace+".getTodayQuestion", day);
	};
}
