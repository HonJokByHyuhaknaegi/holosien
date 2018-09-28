package com.example.demo.board.domain;

public class CommentVO {
private String writer;
private String gender;
private int age;
private String comment;
private int boardNo;
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

}
