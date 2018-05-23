package com.dgit.spms;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.dgit.domain.SpmsVO;
import com.dgit.persistence.SpmsDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations ={"file:src/main/webapp/Web-inf/spring/**/*.xml"})
public class SpmsDAOTest {
	
	@Autowired
	SpmsDAO dao;
	
	//@Test
	public void testlist() throws Exception{		
		dao.list();
	}
	//@Test
	public void testcreate() throws Exception{		
		Date date = new Date();		
		
		SpmsVO vo = new SpmsVO();
		vo.setSpms_name("테스트 삭제");
		vo.setContent("content test");
		vo.setStart_day(date);
		vo.setEnd_day(date);
		vo.setState("준비");
			
		
		dao.create(vo);
	}
	//@Test
	public void testselectNo() throws Exception{
		
		dao.selectNo(1);
	}
	//@Test
	public void testmodify() throws Exception{
		Date date = new Date();		
		
		SpmsVO vo = new SpmsVO();
		vo.setSpms_name("테스트");
		vo.setContent("content test");
		vo.setStart_day(date);
		vo.setEnd_day(date);
		vo.setState("보류");
		vo.setSpms_no(1);
		
		dao.modify(vo);
	}
	//@Test
	public void testdelete() throws Exception{	
		dao.delete(3);
	}
	
}
























