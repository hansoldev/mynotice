package com.mynotice.myapp.notice.service;

import java.util.List;
import java.util.Map;

import com.mynotice.myapp.notice.model.NoticeVO;

public interface NoticeServiceIF {
	public List<NoticeVO> getNoticeDataList(Map<String,Object> data);

	public NoticeVO getNoticeData(Integer myid);

	public int deleteNotice(Map<String, Object> data);

	public int insertNotice(NoticeVO vo);

}
