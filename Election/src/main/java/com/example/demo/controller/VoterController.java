package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.bind.BindResult;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.dto.VoterList;
import com.example.demo.entity.Voter;
import com.example.demo.service.VoterService;

@Controller
public class VoterController {

	@Autowired
	private VoterService service;

	@GetMapping("/")
	public String homePage(ModelMap m) {
		m.put("data", service.getAllVoterList());
		return "home";
	}

	@GetMapping("/new")
	public String createDetails(ModelMap m) {
		Voter v = new Voter();
		m.put("voter", v);
		return "create";
	}

	@PostMapping("/save")
	public String saveDetails(@ModelAttribute("voter") Voter vv, @RequestParam("file") MultipartFile file,
			BindingResult result) {
		service.addVoterDetails(vv, file);
		return "redirect:/";
	}

	@GetMapping("/update")
	public String update(@RequestParam("id") Long id, ModelMap m,@RequestParam("file") MultipartFile file) {
		Voter vv = service.getById(id);
		m.put("voter", vv);
		service.updateVoterDetails(vv,file);
		return "create";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("id") Long id) {
		service.delete(id);
		return "redirect:/";
	}
	@GetMapping("/details/{id}")
	public String getDetails(@PathVariable("id")Long id,ModelMap m) {
		VoterList vv=service.getDetails(id);
		m.put("details", vv);
		return "information";
	}

}
