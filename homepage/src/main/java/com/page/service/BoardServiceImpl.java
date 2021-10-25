package com.page.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.page.dao.BoardDAO;
import com.page.domain.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardDAO dao;

	@Override
	public List<BoardVO> list() throws Exception {
		// TODO Auto-generated method stub
		return dao.list();
	}

}
