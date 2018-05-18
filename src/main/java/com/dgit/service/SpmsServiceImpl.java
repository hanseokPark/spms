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
	
}
