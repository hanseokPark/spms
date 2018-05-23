package com.dgit.persistence;

import java.util.List;

import com.dgit.domain.SpmsVO;



public interface SpmsDAO {
	public List<SpmsVO> list() throws Exception;
	public void create(SpmsVO spmsVO) throws Exception;
	public SpmsVO selectNo(int spms_no) throws Exception;
	public void modify(SpmsVO vo) throws Exception;
	public void delete(int spms_no)  throws Exception;
}
