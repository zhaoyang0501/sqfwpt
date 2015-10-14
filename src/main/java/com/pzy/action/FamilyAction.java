package com.pzy.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.pzy.entity.Family;
import com.pzy.entity.Worker;
import com.pzy.service.FamilyService;

@Namespace("/")
@ParentPackage("json-default") 
public class FamilyAction extends PageAction {
	private Family family;
	
	private String tip;
	@Autowired
	private FamilyService familyService;
	@Action(value = "family", results = { @Result(name = "success", location = "/WEB-INF/views/addfamily.jsp") })
	public String gofamily() throws Exception {
		return SUCCESS;
	}
	@Action(value = "dofamily", results = { @Result(name = "success", location = "/WEB-INF/views/addfamily.jsp") })
	public String dofamily() throws Exception {
		Worker user=(Worker)ActionContext.getContext().getSession().get("user");
		family.setWorker(user);
		tip="添加成功!";
		familyService.save(family);
		return SUCCESS;
	}
	@Action(value = "deletefamily", results = { @Result(name = "success", location = "/WEB-INF/views/center.jsp") })
	public String deletefamily() throws Exception {
		return SUCCESS;
	}
	public Family getFamily() {
		return family;
	}
	public void setFamily(Family family) {
		this.family = family;
	}
	public String getTip() {
		return tip;
	}
	public void setTip(String tip) {
		this.tip = tip;
	}
}
