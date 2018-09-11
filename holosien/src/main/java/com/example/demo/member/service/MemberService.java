package com.example.demo.member.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.demo.member.domain.MemberVO;
import com.example.demo.member.mapper.MemberMapper;

@Service("com.example.demo.member.service.MemberService")
public class MemberService {
	@Resource(name="com.example.demo.member.mapper.MemberMapper")
	MemberMapper mMemberMapper;
	
    public int memberInsertService(MemberVO member) throws Exception{
        return mMemberMapper.insertMembers(member);
    }
}
