package com.example.demo.board.domain;
import java.util.Date;
public class ReviewVO {
	private int bno; //게시물 번호
	private String subject; //제목
	private String content; //내용
	private String writer; //작성자
	private Date reg_date; //작성일
	private String category; //카테고리
	private double point_x; //주소 위도
	private double point_y; //주소 경도
	

	public double getPoint_x() {
		return point_x;
	}
	public void setPoint_x(double point_x) {
		this.point_x = point_x;
	}
	public double getPoint_y() {
		return point_y;
	}
	public void setPoint_y(double point_y) {
		this.point_y = point_y;
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
