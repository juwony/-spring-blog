package com.page.service;

import java.util.List;

import com.page.domain.BoardVO;
import com.page.domain.Criteria;

public interface BoardService {
	
	// 게시물 목록
	public List<BoardVO> list() throws Exception;
	
	// 게시물 총 갯수
	public int count() throws Exception;
	
	// 게시물 목록 + 페이징
	public List<BoardVO> listPage(Criteria cri) throws Exception;
}
