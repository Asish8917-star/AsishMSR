package com.example.demo.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.dto.VoterList;
import com.example.demo.entity.Voter;
import com.example.demo.repository.VoterRepo;

@Service
@Transactional
public class VoterServiceImpl implements VoterService {

	@Autowired
	private VoterRepo repo;

	@Override
	public void addVoterDetails(Voter vv,MultipartFile file) {
		try {
			String ss=Base64.getEncoder().encodeToString(file.getBytes());
			vv.setData(ss);
			repo.save(vv);
		} catch (IOException e) {
			e.printStackTrace();
		}
		

	}

	@Override
	public void updateVoterDetails(Voter vv,MultipartFile file) {
		String ss;
		try {
			ss = Base64.getEncoder().encodeToString(file.getBytes());
			vv.setData(ss);
			repo.save(vv);
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	@Override
	public List<VoterList> getAllVoterList() {
		List<VoterList> list = new ArrayList<VoterList>();
		List<Voter> voterList = repo.findAll();
		for (Voter v : voterList) {
			VoterList vList = new VoterList();
			vList.setAge(v.getAge());
			vList.setData(v.getData());
			vList.setFullName(v.getFirstName()+" "+v.getLastName());
			vList.setId(v.getId());
			vList.setPhone(v.getPhone());
			vList.setVoterId(v.getVoterId());
			list.add(vList);
		}
		return list;
	}

	@Override
	public Voter getById(Long id) {
		Voter vv=repo.findById(id).get();
		if(vv!=null) {
			return vv;
		}
		return null;
	}

	@Override
	public void delete(Long id) {
		repo.deleteById(id);
		
	}

	@Override
	public VoterList getDetails(Long id) {
		VoterList vList=new VoterList();
		Voter vv=repo.findById(id).get();
		if(vv!=null) {
			vList.setFullName(vv.getFirstName()+" "+vv.getLastName());
			vList.setData(vv.getData());
			vList.setVoterId(vv.getVoterId());
		}
		return vList;
	}

}
