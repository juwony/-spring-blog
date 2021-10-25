package com.page.service;

import java.util.List;

import com.page.domain.BoardVO;

public interface BoardService {
	
	// 게시물 목록
	public List<BoardVO> list() throws Exception;
}
