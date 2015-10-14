
package com.pzy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pzy.entity.Family;
import com.pzy.repository.FamilyRepository;
/***
 * 
 * @author qq:263608237
 *
 */
@Service
public class FamilyService {
     @Autowired
     private FamilyRepository familyRepository;
     public List<Family> findAll() {
          return (List<Family>) familyRepository.findAll();
     }
     public void delete(Long id){
          familyRepository.delete(id);
     }
     public Family find(Long id){
    	  return familyRepository.findOne(id);
     }
     public void save(Family family){
    	 familyRepository.save(family);
     }
}