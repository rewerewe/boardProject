package com.common;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class AbstractDao {
	
	/* Autowired : Bean을 주입시켜주는 어노테이션 */
	@Autowired
	public SqlSessionTemplate sqlSession;
}
