package com.bc.bee.entity;

import java.sql.Date;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
/*
 * 招聘信息表
 *	RIId（表Id）     int
 *	UId（用户Id外键）int
 *	JobTitle （招聘题目） varchar 255
 *	Contacts  （联系人） varchar 30
 *	ContactInfo（联系方式） varchar  30
 *	WorkArea（工作区域）   varchar  30
 *	Address（详细地址）varchar       255
 *	Grade（授课年级）varchar         30
 *	Subject（授课科目）varchar        30
 *	Salary （薪资）int                
 *	Settle（结算方式）char          
 *	WTime （工作时间）varchar    50
 *	StuInfo（学生情况）varchar     255
 *	JobDemand（工作需求）varchar   255
 *	Subsidy（补贴） varchar    30
 *	State（状态）char
 *  Time（发布时间）date 
 *
 */
@Entity
@Table(name="recinfo")
public class RecInfo {

	private Integer RlId;
	private PUser puser;
	private String JobTitle;
	private String Contacts;
	private String ContactInfo;
	private String WorkArea;
	private String Address;
	private String Grade;
	private String Subject;
	private String Salary;
	private String Settle;
	private String WTime;
	private String StuInfo;
	private String JobDemand;
	private String Subsidy;
	private char State;
	private String Time;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getRlId() {
		return RlId;
	}
	public void setRlId(Integer rlId) {
		RlId = rlId;
	}
	
	@ManyToOne
	@JoinColumn(name="PUId")
	public PUser getPuser() {
		return puser;
	}
	public void setPuser(PUser puser) {
		this.puser = puser;
	}
	public String getJobTitle() {
		return JobTitle;
	}
	public void setJobTitle(String jobTitle) {
		JobTitle = jobTitle;
	}
	public String getContacts() {
		return Contacts;
	}
	public void setContacts(String contacts) {
		Contacts = contacts;
	}
	public String getContactInfo() {
		return ContactInfo;
	}
	public void setContactInfo(String contactInfo) {
		ContactInfo = contactInfo;
	}
	public String getWorkArea() {
		return WorkArea;
	}
	public void setWorkArea(String workArea) {
		WorkArea = workArea;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getGrade() {
		return Grade;
	}
	public void setGrade(String grade) {
		Grade = grade;
	}
	public String getSubject() {
		return Subject;
	}
	public void setSubject(String subject) {
		Subject = subject;
	}
	public String getSalary() {
		return Salary;
	}
	public void setSalary(String salary) {
		Salary = salary;
	}
	public String getSettle() {
		return Settle;
	}
	public void setSettle(String settle) {
		Settle = settle;
	}
	public String getWTime() {
		return WTime;
	}
	public void setWTime(String wTime) {
		
	}
	public String getStuInfo() {
		return StuInfo;
	}
	public void setStuInfo(String stuInfo) {
		StuInfo = stuInfo;
	}
	public String getJobDemand() {
		return JobDemand;
	}
	public void setJobDemand(String jobDemand) {
		JobDemand = jobDemand;
	}
	public String getSubsidy() {
		return Subsidy;
	}
	public void setSubsidy(String subsidy) {
		Subsidy = subsidy;
	}
	public char getState() {
		return State;
	}
	public void setState(char state) {
		State = state;
	}
	public String getTime() {
		return Time;
	}
	public void setTime(String date) {
		Time = date;
	}

	
}
