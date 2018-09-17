package com.example.demo.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.member.domain.MemberVO;


@Repository("com.example.demo.member.mapper.MemberMapper")
public interface MemberMapper {
public void insertMembers(MemberVO member) throws Exception;
public List<MemberVO> checkMembers(@Param("email") String email, @Param("password") String password) throws Exception;
public boolean loginCheck(MemberVO member) throws Exception;
public MemberVO viewMember(MemberVO member) throws Exception;
}
