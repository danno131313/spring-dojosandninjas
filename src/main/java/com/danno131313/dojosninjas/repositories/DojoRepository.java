package com.danno131313.dojosninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.danno131313.dojosninjas.models.Dojo;

public interface DojoRepository extends CrudRepository<Dojo, Long>{
	List<Dojo> findAll();
}
