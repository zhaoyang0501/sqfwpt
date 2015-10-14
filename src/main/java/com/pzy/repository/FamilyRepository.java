package com.pzy.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.Family;
import com.pzy.entity.Worker;
public interface FamilyRepository extends PagingAndSortingRepository<Family, Long>,JpaSpecificationExecutor<Family>{
	
	public List<Family> findByWorker(Worker worker);
}

