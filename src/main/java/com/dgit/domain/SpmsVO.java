package com.dgit.domain;

import java.util.Date;

public class SpmsVO {
	private int spms_no;
	private String spms_name;
	private String content;
	private Date start_day;
	private Date end_day;
	private String state;
	
	public int getSpms_no() {
		return spms_no;
	}
	public void setSpms_no(int spms_no) {		
		this.spms_no = spms_no;
	}
	public String getSpms_name() {
		return spms_name;
	}
	public void setSpms_name(String spms_name) {
		this.spms_name = spms_name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getStart_day() {
		return start_day;
	}
	public void setStart_day(Date start_day) {
		this.start_day = start_day;
	}
	public Date getEnd_day() {
		return end_day;
	}
	public void setEnd_day(Date end_day) {
		this.end_day = end_day;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "SpmsVO [spms_no=" + spms_no + ", spms_name=" + spms_name + ", content=" + content + ", start_day="
				+ start_day + ", end_day=" + end_day + ", state=" + state + "]";
	}
	
	
	
}
