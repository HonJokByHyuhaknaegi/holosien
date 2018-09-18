package com.example.demo.member.mapper;

import org.springframework.stereotype.Repository;
import com.example.demo.member.domain.MemberVO;


@Repository("com.example.demo.member.mapper.MemberMapper")
public interface MemberMapper {
public void insertMembers(MemberVO member) throws Exception;
public String checkMembers(MemberVO member) throws Exception;
public String loginCheck(MemberVO member) throws Exception;
public MemberVO viewMember(MemberVO member) throws Exception;
}
