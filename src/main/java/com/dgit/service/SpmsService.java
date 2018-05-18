package com.dgit.service;

import java.util.List;

import com.dgit.domain.SpmsVO;

public interface SpmsService {
	public List<SpmsVO> listSpms() throws Exception;
	public void createSpms(SpmsVO vo) throws Exception;
}
