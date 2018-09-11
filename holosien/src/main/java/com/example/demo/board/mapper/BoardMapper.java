package com.example.demo.board.mapper;

import org.springframework.stereotype.Repository;
//데이터베이스에 접근하는 클래스
@Repository("com.example.demo.board.mapper.BoardMapper")
public interface BoardMapper {
 
    public int boardCount() throws Exception;
}
 

