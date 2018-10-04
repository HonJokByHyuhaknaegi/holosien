package com.example.demo.board.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.demo.board.domain.BoardVO;
import com.example.demo.board.domain.CommentVO;
import com.example.demo.board.domain.ReviewVO;
import com.example.demo.board.domain.TipVO;
import com.example.demo.member.mapper.MemberMapper;

@Service("com.example.demo.board.service.BoardService")
public class BoardService {
	@Resource(name = "com.example.demo.member.mapper.MemberMapper")
	MemberMapper mMemberMapper;

	public void boardInsertService(BoardVO board) throws Exception {
		mMemberMapper.insertBoards(board);
	}

	public List<BoardVO> boardListService(String category) throws Exception {
		return mMemberMapper.boardList(category);
	}

	public BoardVO viewBoard(BoardVO vo) throws Exception {
		return mMemberMapper.viewBoard(vo);
	}

	public void CommentInsertService(CommentVO board) throws Exception {
		mMemberMapper.insertComments(board);
	}
	
	public void CommentDeleteService(int CommentNo) throws Exception {
		mMemberMapper.deleteComments(CommentNo);
	}

	public List<CommentVO> CommentListService(CommentVO Cvo) throws Exception {
		return mMemberMapper.commentList(Cvo);
	}

	public void reviewInsertService(ReviewVO board) throws Exception {
		mMemberMapper.insertReviews(board);
	}

	public List<ReviewVO> reviewListService(String category) throws Exception {
		return mMemberMapper.reviewList(category);
	}

	public ReviewVO viewReview(ReviewVO vo) throws Exception {
		return mMemberMapper.viewReview(vo);
	}
	
	public List<BoardVO> searchTogether(String searchInput) throws Exception {
		return mMemberMapper.togetherSearchList(searchInput);
	}
	
	public List<ReviewVO> searchReview(String searchInput) throws Exception {
		return mMemberMapper.reviewSearchList(searchInput);
	}
	
	public void tipInsertService(TipVO tip) throws Exception {
		mMemberMapper.insertTips(tip);
	}
	
	public List<TipVO> tipListService() throws Exception {
		return mMemberMapper.tipList();
	}
	
	public TipVO viewTip(TipVO vo) throws Exception {
		return mMemberMapper.viewTip(vo);
	}
}
