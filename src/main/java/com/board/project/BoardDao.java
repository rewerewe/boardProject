package com.board.project;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import com.common.AbstractDao;

/** 
 * Repository : Bean을 주입시켜주는 어노테이션. 
 * 어노테이션을 선언한 클래스가 Repository로 사용됨을 Spring Framework에 알리는 역할.
 */
@SuppressWarnings("rawtypes")
@Repository("BoardDao")
public class BoardDao extends AbstractDao {
	
	public void deleteComment(String comm_seq) {
		sqlSession.delete("com.board.BoardDao.deleteComment", comm_seq);
	}
	
	public void updateComment(HashMap<String, String> param) {
		sqlSession.update("com.board.BoardDao.updateComment", param);
	}

	public List<Object> commList(String board_seq) {

		List<Object> commList = sqlSession.selectList("com.board.BoardDao.commList", board_seq);
		return commList;
	}

	
	public void insertComment(HashMap<String, String> param) {
		sqlSession.insert("com.board.BoardDao.insertComment", param);
		
	}

	public void updateContent(HashMap<String,String> param) {
		sqlSession.update("com.board.BoardDao.updateContent", param);
		
	}
	
	public void delectContent(String seq) {
		sqlSession.delete("com.board.BoardDao.deleteContent", seq);
	}
	
	public void insertContent(HashMap<String, String> param) {
		sqlSession.insert("com.board.BoardDao.insertContent", param);
	}

	public List<Object> pagingList(HashMap<String, Object> param) {
		
		List<Object> pagingList = sqlSession.selectList("com.board.BoardDao.pagingList", param);
		return pagingList;
	}
	
	public int totalCount() {
			
		int totalCount = sqlSession.selectOne("com.board.BoardDao.totalCount");
		return totalCount;
	}
	
	public void data(String writer) {
		
		for (int i=1; i <= 201; i++) {
			HashMap<String, String> param = new HashMap<String, String>();
			param.put("TITLE", "제목" + i);
			param.put("CONTENT", "내용" + i);
			param.put("WRITER", writer);
			sqlSession.insert("com.board.BoardDao.data", param);
		}
	}
	
	public List<Object> list() {
		
		List<Object> list = sqlSession.selectList("com.board.BoardDao.list");
		return list;
	}
	
	public List<Object> sample() {
		
		List<Object> sampleList = sqlSession.selectList("com.board.BoardDao.sample");
		return sampleList;
	}

	public Map view(String seq) {
		
		Map view = sqlSession.selectOne("com.board.BoardDao.view", seq);
		return view;
	}

}

