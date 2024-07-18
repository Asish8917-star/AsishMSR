package com.example.demo.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.example.demo.dto.VoterList;
import com.example.demo.entity.Voter;

public interface VoterService {
	
	public void addVoterDetails(Voter vv, MultipartFile file);
	
	public void updateVoterDetails(Voter vv,MultipartFile file);
	
	public List<VoterList> getAllVoterList();

	public Voter getById(Long id);

	public void delete(Long id);

	public VoterList getDetails(Long id);

}
