package com.example.demo.board.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.demo.board.domain.BoardVO;
import com.example.demo.board.domain.CommentVO;
import com.example.demo.member.mapper.MemberMapper;

@Service("com.example.demo.board.service.BoardService")
public class BoardService {
	@Resource(name="com.example.demo.member.mapper.MemberMapper")
	MemberMapper mMemberMapper;
	
    public void boardInsertService(BoardVO board) throws Exception{
        mMemberMapper.insertBoards(board);
    }
 
 public List<BoardVO> boardListService(String category) throws Exception{
     return mMemberMapper.boardList(category);
 }
 
 public BoardVO viewBoard(BoardVO vo) throws Exception{
 	return mMemberMapper.viewBoard(vo);
 }
 
 public void CommentInsertService(CommentVO board) throws Exception{
     mMemberMapper.insertComments(board);
 }

public List<CommentVO> CommentListService(int boardNo) throws Exception{
  return mMemberMapper.commentList(boardNo);
}
 
 
}
