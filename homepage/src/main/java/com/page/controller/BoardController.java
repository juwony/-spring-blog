package com.page.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.page.domain.BoardVO;
import com.page.domain.Criteria;
import com.page.domain.Page;
import com.page.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Inject
	BoardService service;
	
	// 게시물 목록
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void getList(Model model) throws Exception {
		List<BoardVO> list = null;
		list = service.list();
		
		model.addAttribute("list", list);
	}
	
	// 게시물 목록 + 페이징
	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public void getListPage(@ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		
		List<BoardVO> list = null;
		list = service.listPage(cri);
		model.addAttribute("list", list);
		
		Page page = new Page();
		page.setCri(cri);
		page.setTotalCount(service.count());
		
		model.addAttribute("page", page);
	}
}
