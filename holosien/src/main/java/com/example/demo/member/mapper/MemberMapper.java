package com.example.demo.member.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.board.domain.BoardVO;
import com.example.demo.board.domain.CommentVO;
import com.example.demo.member.domain.MemberVO;


@Repository("com.example.demo.member.mapper.MemberMapper")
public interface MemberMapper {
public void insertMembers(MemberVO member) throws Exception;
public String checkMembers(MemberVO member) throws Exception;
public String loginCheck(MemberVO member) throws Exception;
public MemberVO viewMember(MemberVO member) throws Exception;

public void insertBoards(BoardVO board);
public int boardCount() throws Exception;
public List<BoardVO> boardList(String category) throws Exception;
public BoardVO viewBoard(BoardVO board) throws Exception;

public void insertComments(CommentVO board) throws Exception;
public List<CommentVO> commentList(int boardNo) throws Exception;
}
