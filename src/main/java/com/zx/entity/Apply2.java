package com.zx.entity;

import java.util.Date;
import java.util.List;

/**
 * 学历apply
 * @author gosin1994
 * @date 2018年8月9日上午10:57:55 
 * @email gx1001866@163.com
 */


public class Apply2 {
    private Integer id;

    private String name;

    private String phone;

    private Integer age;

    private Integer educationLevel;
    
    //新加入的报考学历
    private Integer enterEducationLevel;

    private Integer customerId;

    private Integer isMember;

    private Integer memberId;

    private String memberName;
    
    private Integer rootMemberId;
    
    private String rootMemberName;

    private Integer state;

    private Date updateTime;

    private Date createTime;
    
    //新添加的  最新跟进记录 18-9-13
    private List<Remark> remarks;

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
        this.name = name == null ? null : name.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
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

	public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public Integer getIsMember() {
        return isMember;
    }

    public void setIsMember(Integer isMember) {
        this.isMember = isMember;
    }

    public Integer getMemberId() {
        return memberId;
    }

    public void setMemberId(Integer memberId) {
        this.memberId = memberId;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName == null ? null : memberName.trim();
    }
    
    public Integer getRootMemberId() {
		return rootMemberId;
	}

	public void setRootMemberId(Integer rootMemberId) {
		this.rootMemberId = rootMemberId;
	}

	public String getRootMemberName() {
		return rootMemberName;
	}

	public void setRootMemberName(String rootMemberName) {
		this.rootMemberName = rootMemberName;
	}

	public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
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

	public List<Remark> getRemarks() {
		return remarks;
	}

	public void setRemarks(List<Remark> remarks) {
		this.remarks = remarks;
	}

	@Override
	public String toString() {
		return "Apply2 [id=" + id + ", name=" + name + ", phone=" + phone + ", age=" + age + ", educationLevel="
				+ educationLevel + ", enterEducationLevel=" + enterEducationLevel + ", customerId=" + customerId
				+ ", isMember=" + isMember + ", memberId=" + memberId + ", memberName=" + memberName + ", rootMemberId="
				+ rootMemberId + ", rootMemberName=" + rootMemberName + ", state=" + state + ", updateTime="
				+ updateTime + ", createTime=" + createTime + ", remarks=" + remarks + "]";
	}
    
    
}