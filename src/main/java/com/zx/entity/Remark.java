package com.zx.entity;

import java.util.Date;

/**
 * 备注实体类
 * @author gosin1994
 * @date 2018年8月16日上午10:56:41 
 * @email gx1001866@163.com
 * 
 * id
 * date
 * applyId
 * remark
 * operator
 */
public class Remark {
	private Integer id;
	private Date date;
	private Integer applyId;
	private String remark;
	private String operator;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Integer getApplyId() {
		return applyId;
	}
	public void setApplyId(Integer applyId) {
		this.applyId = applyId;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}
	
}
