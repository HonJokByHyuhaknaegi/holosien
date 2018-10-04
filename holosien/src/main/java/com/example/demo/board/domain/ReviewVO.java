package com.example.demo.board.domain;
import java.util.Date;
public class ReviewVO {
	private int bno; //게시물 번호
	private String subject; //제목
	private String content; //내용
	private String writer; //작성자
	private Date reg_date; //작성일
	private String category; //카테고리
	private String photo; //대표사진
	

	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date){
		this.reg_date = reg_date;
	}
}
