package com.danno131313.dojosninjas.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.danno131313.dojosninjas.models.Dojo;
import com.danno131313.dojosninjas.models.Ninja;
import com.danno131313.dojosninjas.repositories.DojoRepository;
import com.danno131313.dojosninjas.repositories.NinjaRepository;

@Service
public class NinjaDojoService {
	private NinjaRepository ninjaRepo;
	private DojoRepository dojoRepo;
	public NinjaDojoService(NinjaRepository ninjaRepo, DojoRepository dojoRepo) {
		this.ninjaRepo = ninjaRepo;
		this.dojoRepo = dojoRepo;
	}
	
	public List<Ninja> allNinjas() {
		return ninjaRepo.findAll();
	}
	
	public List<Dojo> allDojos() {
		return dojoRepo.findAll();
	}
	
	public void addDojo(Dojo dojo) {
		dojoRepo.save(dojo);
	}
	
	public void addNinja(Ninja ninja) {
		ninjaRepo.save(ninja);
	}
	
	public Dojo getDojo(Long id) {
		return dojoRepo.findOne(id);
	}
	
	public List<Ninja> dojoNinjas(Dojo dojo) {
		return dojo.getNinjas();
	}
}
