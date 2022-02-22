package com.jjobplanet.jjobplanet.controller;

import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import com.jjobplanet.jjobplanet.model.indvDto;
import com.jjobplanet.jjobplanet.model.indvVo;
import com.jjobplanet.jjobplanet.databasemanager.DBManager;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
	@GetMapping("/")
	public String index()
	{
		return "index";
	}

	@GetMapping("/company")
	public String company()
	{
		return "company";
	}
	
	@GetMapping("/recruit")
	public String recruit()
	 {
		return "recruit";
	}
	
	@RequestMapping(value = "/search.do", method = RequestMethod.GET)
	public String search(HttpServletRequest request) {
		
		
		String q = request.getParameter("q");
		Cookie cookie = new Cookie("search_history", q);
		
		cookie.setMaxAge(0);
		cookie.setPath("/");

		return "search";
	}


	@GetMapping("/default")
	public String default1() 
	{
		return "default";
	}
	@GetMapping("/mypage_company")
	public String mypage_company() 
	{
		return "mypage_company";
	}
	@GetMapping("/passwordchange_company")
	public String passwordchange_company() 
	{
		return "passwordchange_company";
	}
	@GetMapping("/passwordchange")
	public String passwordchange() 
	{
		return "passwordchange";
	}
	@GetMapping("/jobpostinglist")
	public String jobpostinglist() 
	{
		return "jobpostinglist";
	}
	@GetMapping("/recruitment")
	public String recruitment() 
	{
		return "recruitment";
	}
	@GetMapping("/mypage")
	public String mypage() 
	{
		return "mypage";
	}
	@GetMapping("/reviewhistory")
	public String reviewhistory() 
	{
		return "reviewhistory";
	}
	@GetMapping("/writereview")
	public String writereview() 
	{
		return "writereview";
	}
	@GetMapping("/interestedcompany")
	public String interestedcompany() 
	{
		return "interestedcompany";
	}
	@GetMapping("/policy")
	public String policy() {
		return "policy";
	}

	@GetMapping("/privacy")
	public String privacy() {
		return "privacy";
	}

	@GetMapping("/recruitService")
	public String recruitService() {
		return "recruitService";
	}

	@GetMapping("/notice")
	public String notice() {
		return "notice";
	}

	@GetMapping("/faq")
	public String faq() {
		return "faq";
	}

	
	

	@RequestMapping(value="/noticeWriteAction.do")
	public String noticeWriteAction()
	{
		return "redirect:/notice";
	}

	@GetMapping("/join")
	public String join() {
		return "join";
	}
	
	

	@GetMapping("/individualJoin")
	public String individualJoin() {
		return "individualJoin";
	}

	@GetMapping("/companyJoin")
	public String companyJoin() {
		return "companyJoin";
	}

	@GetMapping("/login")
	public String login() {
		return "login";
	}

	

	@GetMapping("/loginOk")
	public String loginOk() {
		return "loginOk";
	}

	@GetMapping("/findPassword")
	public String findPassword() {
		return "findPassword";
	}

	@GetMapping("/findPasswordOk")
	public String findPasswordOk() {
		return "findPasswordOk";
	}

	
}
