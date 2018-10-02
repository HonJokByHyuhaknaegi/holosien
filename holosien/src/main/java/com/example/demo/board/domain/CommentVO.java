package com.example.demo.board.domain;

import java.util.Date;

public class CommentVO {
	private int cno;
private String writer;
private String writerID;
private String gender;
private int age;
private String comment;
private String board;
private int boardNo;
private Date date;
public String getWriter() {
	return writer;
}
public void setWriter(String writer) {
	this.writer = writer;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public String getComment() {
	return comment;
}
public void setComment(String comment) {
	this.comment = comment;
}
public int getBoardNo() {
	return boardNo;
}
public void setBoardNo(int boardNo) {
	this.boardNo = boardNo;
}
public String getWriterID() {
	return writerID;
}
public void setWriterID(String writerID) {
	this.writerID = writerID;
}
public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
public int getCno() {
	return cno;
}
public void setCno(int cno) {
	this.cno = cno;
}
public String getBoard() {
	return board;
}
public void setBoard(String board) {
	this.board = board;
}

}
