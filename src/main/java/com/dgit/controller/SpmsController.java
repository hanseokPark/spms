package com.dgit.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

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
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public void createSpms(Model model) throws Exception{
		logger.info("write get ..............");		
		
		
	}
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String createSpmsPost(SpmsVO vo, Model model, String startday, String endday) throws Exception{
		logger.info("write post...............");
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
	
	@RequestMapping(value="/read", method=RequestMethod.GET)
	public void readSpms(Model model, int no) throws Exception{
		logger.info("readSpms get ..............");		
		logger.info(String.valueOf(no) );
		
				
		
		SpmsVO spms = service.selectSpmsNo(no);
		
		model.addAttribute("spms", spms);
		
	}
	
	
	@RequestMapping(value="/modify", method=RequestMethod.GET)
	public void modifySpmsGet(Model model, int no) throws Exception{
		logger.info("modify get ..............");		
		
		SpmsVO spms = service.selectSpmsNo(no);
		
		model.addAttribute("spms", spms);
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public String modifySpmsPost(Model model, String startday, String endday, SpmsVO vo, int no, String name) throws Exception{
		logger.info("modify Post ..............");		
		logger.info(vo.toString());

		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		Date start = date.parse(startday);
		Date end = date.parse(endday);
		vo.setSpms_name(name);
		vo.setStart_day(start);
		vo.setEnd_day(end);
		vo.setSpms_no(no);
		
		service.modify(vo);
		
		return "redirect:/read?no="+no;		
	}
	

	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String deleteSpms(Model model, int no) throws Exception{
		logger.info("delete get ..............");		
		
		service.delete(no);
		
		return "redirect:/";	
	}
	
}
