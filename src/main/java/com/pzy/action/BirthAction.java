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
public class BirthAction extends PageAction {
	
	private Integer page=1;
	
	private List<News> births;
	@Autowired
	private NewsService newsService;

	@Action(value = "birth", results = { @Result(name = "success", location = "/WEB-INF/views/birth.jsp") })
	public String notice() {
		Page<News> list = newsService.findAll(page, 15,3);
		births=list.getContent();
		return SUCCESS;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public List<News> getBirths() {
		return births;
	}
	public void setBirths(List<News> births) {
		this.births = births;
	}
}
