package com.zx.entity;

import java.util.Date;

/**
 * 学历客户实体
 * author：gosin1994
 * github：https://github.com/gosin1994
 * date：2018-08-03 16:29  
 * email：gx1008666@163.com
 *
 */


/**
 *  ID:      id   int (11)
	姓名：           name varchar(50)
	手机：           phone varchar(50)
	年龄：           age int(11)
	??：              insure_year int(11)
	当前学历：    educationLevel int(11)
	报考学历：    enterEducationLevel int(11)
	上级会员：    memberId  int(11)
	是否为会员：isMember  int(11)
	更新时间：    updateDate  datetime
	创建时间：    createDate   datetime
 *
 */
public class EduCustomer {
	private Integer id;

    private String name;

    private String phone;

    private Integer age;

    private Integer insureYear;
    
    private Integer educationLevel;
    
    private Integer enterEducationLevel;

    private Integer memberId;

    private Integer isMember;

    private Date updateTime;

    private Date createTime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Integer getInsureYear() {
		return insureYear;
	}

	public void setInsureYear(Integer insureYear) {
		this.insureYear = insureYear;
	}

	public Integer getEducationLevel() {
		return educationLevel;
	}

	public void setEducationLevel(Integer educationLevel) {
		this.educationLevel = educationLevel;
	}

	public Integer getEnterEducationLevel() {
		return enterEducationLevel;
	}

	public void setEnterEducationLevel(Integer enterEducationLevel) {
		this.enterEducationLevel = enterEducationLevel;
	}

	public Integer getMemberId() {
		return memberId;
	}

	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}

	public Integer getIsMember() {
		return isMember;
	}

	public void setIsMember(Integer isMember) {
		this.isMember = isMember;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@Override
	public String toString() {
		return "EduCustomer [id=" + id + ", name=" + name + ", phone=" + phone + ", age=" + age + ", insureYear="
				+ insureYear + ", educationLevel=" + educationLevel + ", enterEducationLevel=" + enterEducationLevel
				+ ", memberId=" + memberId + ", isMember=" + isMember + ", updateTime=" + updateTime + ", createTime="
				+ createTime + "]";
	}
	
	
	
}
