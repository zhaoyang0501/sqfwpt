package com.pzy.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;

import com.pzy.entity.News;
import com.pzy.service.NewsService;

@Namespace("/")
@ParentPackage("json-default") 
public class CommunistAction extends PageAction {
	
	private Integer page=1;
	
	private List<News> communists;
	@Autowired
	private NewsService newsService;

	@Action(value = "communist", results = { @Result(name = "success", location = "/WEB-INF/views/communist.jsp") })
	public String notice() {
		Page<News> list = newsService.findAll(page, 15,5);
		communists=list.getContent();
		return SUCCESS;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public List<News> getCommunists() {
		return communists;
	}
	public void setCommunists(List<News> births) {
		this.communists = births;
	}
}
