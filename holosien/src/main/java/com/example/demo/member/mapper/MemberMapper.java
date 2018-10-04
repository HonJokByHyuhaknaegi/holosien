package com.example.demo.member.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.board.domain.BoardVO;
import com.example.demo.board.domain.CommentVO;
import com.example.demo.board.domain.ReviewVO;
import com.example.demo.board.domain.TipVO;
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
public void deleteComments(int commentNo) throws Exception;
public List<CommentVO> commentList(CommentVO Cvo) throws Exception;

public void insertReviews(ReviewVO board) throws Exception;
public List<ReviewVO> reviewList(String category) throws Exception;
public ReviewVO viewReview(ReviewVO board) throws Exception;

public List<BoardVO> togetherSearchList(String searchInput) throws Exception;
public List<ReviewVO> reviewSearchList(String searchInput) throws Exception;

public void insertTips(TipVO tip) throws Exception;
public List<TipVO> tipList() throws Exception;
public TipVO viewTip(TipVO tip) throws Exception;
}
