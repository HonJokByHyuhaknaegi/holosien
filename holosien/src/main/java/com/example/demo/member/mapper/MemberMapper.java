package com.example.demo.member.mapper;

import org.springframework.stereotype.Repository;

import com.example.demo.member.domain.MemberVO;


@Repository("com.example.demo.member.mapper.MemberMapper")
public interface MemberMapper {
public int insertMembers(MemberVO member) throws Exception;
}
