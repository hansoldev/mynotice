package com.mynotice.myapp.notice.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mynotice.myapp.notice.dao.NoticeDaoIF;
import com.mynotice.myapp.notice.model.NoticeVO;
import com.mynotice.myapp.notice.service.NoticeServiceIF;

@Service
public class NoticeServiceImpl implements NoticeServiceIF {
	
	@Autowired
	public NoticeDaoIF noticeDao;

	@Override
	public List<NoticeVO> getNoticeDataList(Map<String, Object> data) {
		return noticeDao.getNoticeDataList(data);
	}

	@Override
	public NoticeVO getNoticeData(Integer myid) {
		return noticeDao.getNoticeData(myid);
	}

	@Override
	public int deleteNotice(Map<String, Object> data) {
		 return noticeDao.deleteNotice(data);
	}

	@Override
	public int insertNotice(NoticeVO vo) {
		return noticeDao.insertNotice(vo);
	}

}
