package com.example.demo.board.domain;

import java.util.Date;

public class BoardVO {
	private int bno;
	private String subject;
	private String content;
	private String writer;
	private Date reg_date;
	private String category;
	private double point_x;
	private double point_y;
	private String number;
	
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
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
