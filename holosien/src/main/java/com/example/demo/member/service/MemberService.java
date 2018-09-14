package com.example.demo.member.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.demo.member.domain.MemberVO;
import com.example.demo.member.mapper.MemberMapper;

@Service("com.example.demo.member.service.MemberService")
public class MemberService {
	@Resource(name="com.example.demo.member.mapper.MemberMapper")
	MemberMapper mMemberMapper;
	
    public void memberInsertService(MemberVO member) throws Exception{
        mMemberMapper.insertMembers(member);
    }
    
    public List<MemberVO> memberCheck(String email,String password) throws Exception{
        return mMemberMapper.checkMembers(email,password);
    }
}
