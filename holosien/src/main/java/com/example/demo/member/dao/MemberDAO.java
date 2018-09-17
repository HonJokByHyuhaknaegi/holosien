package com.example.demo.member.dao;

import org.apache.ibatis.session.SqlSession;

import com.example.demo.member.domain.MemberVO;

public class MemberDAO {
	SqlSession sqlSession;
	
public boolean loginCheck(MemberVO vo){
	String name = sqlSession.selectOne("loginCheck",vo);
	return (name==null)?false:true;
}
public MemberVO viewMember(MemberVO vo){
	return sqlSession.selectOne("viewMember",vo);
}
}
