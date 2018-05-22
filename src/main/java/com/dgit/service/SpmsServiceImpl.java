package com.dgit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dgit.domain.SpmsVO;
import com.dgit.persistence.SpmsDAO;


@Service
public class SpmsServiceImpl implements SpmsService {
	
	@Autowired
	SpmsDAO dao;

	@Override
	public List<SpmsVO> listSpms() throws Exception {
		// TODO Auto-generated method stub
		return dao.list();
	}

	@Override
	public void createSpms(SpmsVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.create(vo);
	}

	@Override
	public SpmsVO selectSpmsNo(int spms_no) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectNo(spms_no);
	}

	@Override
	public void modify(SpmsVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.modify(vo);
	}

	@Override
	public void delete(int spms_no) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(spms_no);
	}
	
}
