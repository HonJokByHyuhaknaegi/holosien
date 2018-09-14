package com.example.demo.member.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.member.domain.MemberVO;


@Repository("com.example.demo.member.mapper.MemberMapper")
public interface MemberMapper {
public void insertMembers(MemberVO member) throws Exception;
public List<MemberVO> checkMembers(String email, String password) throws Exception;
}
