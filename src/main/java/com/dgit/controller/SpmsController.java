package com.dgit.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dgit.domain.SpmsVO;
import com.dgit.service.SpmsService;

/**
 * Handles requests for the application home page.
 */

@Controller
public class SpmsController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(SpmsController.class);
	
	@Autowired
	private SpmsService service;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listPage(Locale locale, Model model) throws Exception {
		logger.info("spmsList ....");
		
		List<SpmsVO> list = service.listSpms();
		model.addAttribute("list",list);
		
		return "spmsList";
	}
	
	/*
	@RequestMapping(value="/spmsList", method=RequestMethod.GET)
	public void listPage(Model model) throws Exception{
		logger.info("spmsList ....");
		
		List<SpmsVO> list = service.listSpms();
		
		model.addAttribute("list",list);
		
		
	}*/
	
	@RequestMapping(value="/writeForm", method=RequestMethod.GET)
	public void createSpms(Model model) throws Exception{
		logger.info("writeFrom get ..............");		
		
		
	}
	
	@RequestMapping(value="/writeFrom", method=RequestMethod.POST)
	public String createSpmsPost(SpmsVO vo, Model model, String startday, String endday) throws Exception{
		logger.info("writeFrom post...............");
		logger.info("start_day : "+startday);
		logger.info("end_day : "+endday);
		
		
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		
		Date start = date.parse(startday);
		Date end = date.parse(endday);
		
		vo.setStart_day(start);
		vo.setEnd_day(end);
		  
		service.createSpms(vo);
			
		
		return "redirect:/";		
		
	}
	
}
