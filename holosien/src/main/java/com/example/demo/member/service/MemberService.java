package com.example.demo.member.service;


import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.member.dao.MemberDAO;
import com.example.demo.member.domain.MemberVO;
import com.example.demo.member.mapper.MemberMapper;

@Service("com.example.demo.member.service.MemberService")
public class MemberService {
	@Resource(name="com.example.demo.member.mapper.MemberMapper")
	MemberMapper mMemberMapper;
	
	MemberDAO mMemberDao;
	
    public void memberInsertService(MemberVO member) throws Exception{
        mMemberMapper.insertMembers(member);
    }
    
    public boolean loginCheck(MemberVO vo, HttpSession session) throws Exception{
        /*return mMemberMapper.checkMembers(email,password);*/
    boolean result = mMemberMapper.loginCheck(vo);
    if(result){
    	MemberVO vo2 = viewMember(vo);
    	session.setAttribute("userID", vo2.getEmail());
    	session.setAttribute("userName", vo2.getName());
    }
    return result;
    }
    
    public MemberVO viewMember(MemberVO vo) throws Exception{
    	return mMemberMapper.viewMember(vo);
    }
}
