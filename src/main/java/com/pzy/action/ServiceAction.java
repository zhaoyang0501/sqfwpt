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
public class ServiceAction extends PageAction {
	
	private Integer page=1;
	
	private List<News> services;
	@Autowired
	private NewsService newsService;

	@Action(value = "service", results = { @Result(name = "success", location = "/WEB-INF/views/service.jsp") })
	public String service() {
		Page<News> list = newsService.findAll(page, 15,6);
		services=list.getContent();
		return SUCCESS;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public List<News> getServices() {
		return services;
	}
	public void setServices(List<News> births) {
		this.services = births;
	}
}
