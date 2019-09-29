package com.board.project;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

/** 
 * Service : Bean을 주입시켜주는 어노테이션. 
 * 어노테이션을 선언한 클래스가 Service로 사용됨을 Spring Framework에 알리는 역할.
 */
@Service("BoardService")
public class BoardService {

	/**
	 * Resource : 어플리케이션에서 필요한 자원을 자동 연결할 때 사용하는 어노테이션. 
	 * 주로 getter, setter에 적용시키며, 설정파일에 등록된 bean객체의 name 속성으로 자동 주입된다. 
	 * */
	@Resource(name="BoardDao")
	private BoardDao dao;
	
	public List<Object> sample() {
		
		List<Object> sampleList = dao.sample();
		return sampleList;
	}
}
