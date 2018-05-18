package com.dgit.persistence;

import java.util.List;

import com.dgit.domain.SpmsVO;



public interface SpmsDAO {
	public List<SpmsVO> list() throws Exception;
	public void create(SpmsVO spmsVO) throws Exception;
	
	
}
