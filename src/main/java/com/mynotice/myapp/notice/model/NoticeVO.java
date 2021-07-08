package com.mynotice.myapp.notice.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class NoticeVO {
	private Integer myid;
	private String userid;
	private String title;
	private String contents;
	private Integer viewcount;
	private Boolean priority;
	private Date updatedate;
	private Date regdate;
	private Integer total_cnt;
	
	public Integer getMyid() {
		return myid;
	}
	public void setMyid(Integer myid) {
		this.myid = myid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Integer getViewcount() {
		return viewcount;
	}
	public void setViewcount(Integer viewcount) {
		this.viewcount = viewcount;
	}
	public Boolean getPriority() {
		return priority;
	}
	public void setPriority(Boolean priority) {
		this.priority = priority;
	}
	public String getUpdatedate() {
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sf.format(this.updatedate);
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
	public String getRegdate() {
		SimpleDateFormat sf = new SimpleDateFormat("yyyy/MM/dd");
		return sf.format(this.regdate);
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "NoticeVO [myid=" + myid + ", userid=" + userid + ", title=" + title + ", contents=" + contents
				+ ", viewcount=" + viewcount + ", priority=" + priority + ", updatedate=" + updatedate + ", regdate="
				+ regdate + "]";
	}
	public Integer getTotal_cnt() {
		return total_cnt;
	}
	public void setTotal_cnt(Integer total_cnt) {
		this.total_cnt = total_cnt;
	}
}
