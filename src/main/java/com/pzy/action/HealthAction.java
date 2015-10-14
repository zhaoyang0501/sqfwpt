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
public class HealthAction extends PageAction {
	
	private Integer page=1;
	
	private List<News> healths;
	@Autowired
	private NewsService newsService;

	@Action(value = "health", results = { @Result(name = "success", location = "/WEB-INF/views/health.jsp") })
	public String notice() {
		Page<News> list = newsService.findAll(page, 15,7);
		healths=list.getContent();
		return SUCCESS;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public List<News> getHealths() {
		return healths;
	}
	public void setHealths(List<News> births) {
		this.healths = births;
	}
}
