package com.board.project;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.common.AbstractDao;

/** 
 * Repository : Bean을 주입시켜주는 어노테이션. 
 * 어노테이션을 선언한 클래스가 Repository로 사용됨을 Spring Framework에 알리는 역할.
 */
@Repository("BoardDao")
public class BoardDao extends AbstractDao {
	
	public List<Object> list() {
		
		List<Object> list = sqlSession.selectList("com.board.BoardDao.list");
		return list;
	}
	
	public List<Object> sample() {
		
		List<Object> sampleList = sqlSession.selectList("com.board.BoardDao.sample");
		return sampleList;
	}
}

