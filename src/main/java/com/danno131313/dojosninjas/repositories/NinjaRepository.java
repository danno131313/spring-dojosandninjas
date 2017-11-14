package com.danno131313.dojosninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.danno131313.dojosninjas.models.Ninja;

public interface NinjaRepository extends CrudRepository<Ninja, Long>{
	List<Ninja> findAll();
}
