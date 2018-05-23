package com.dgit.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dgit.domain.SpmsVO;

@Repository
public class SpmsDAOImpl implements SpmsDAO{

	@Autowired
	SqlSession session;

	private static final String namespace = "com.dgit.mapper.SpmsMapper";

	@Override
	public List<SpmsVO> list() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".list");
	}

	@Override
	public void create(SpmsVO spmsVO) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".create",spmsVO);		
	}

	@Override
	public SpmsVO selectNo(int spms_no) throws Exception {
		// TODO Auto-generated method stub 		
		return session.selectOne(namespace + ".selectNo", spms_no);
	}

	@Override
	public void modify(SpmsVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".modify", vo);
	}

	@Override
	public void delete(int spms_no) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace + ".delete", spms_no);
	}


}
