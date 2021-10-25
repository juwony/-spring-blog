package com.page.dao;

import java.util.List;

import com.page.domain.BoardVO;

public interface BoardDAO {
	
	// 게시물 목록
	public List<BoardVO> list() throws Exception;
}
