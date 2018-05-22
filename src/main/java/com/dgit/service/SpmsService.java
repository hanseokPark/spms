package com.dgit.service;

import java.util.List;

import com.dgit.domain.SpmsVO;

public interface SpmsService {
	public List<SpmsVO> listSpms() throws Exception;
	public void createSpms(SpmsVO vo) throws Exception;
	public SpmsVO selectSpmsNo(int spms_no) throws Exception;
	public void modify(SpmsVO vo) throws Exception;
	public void delete(int spms_no)  throws Exception;
}
