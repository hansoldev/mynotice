package com.mynotice.myapp.notice.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mynotice.myapp.notice.dao.NoticeDaoIF;
import com.mynotice.myapp.notice.model.NoticeVO;

@Repository
public class NoticeDaoImpl implements NoticeDaoIF {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<NoticeVO> getNoticeDataList(Map<String, Object> data) {
		return sqlSession.selectList("getNoticeDataList"); 
	}

	@Override
	public NoticeVO getNoticeData(Integer myid) {
		return sqlSession.selectOne("getNoticeData", myid); 
	}

	@Override
	public int deleteNotice(Map<String, Object> data) {
		return sqlSession.delete("deleteNotice", data);
	}

	@Override
	public int insertNotice(NoticeVO vo) {
		return sqlSession.insert("insertNotice", vo);
	}

}
