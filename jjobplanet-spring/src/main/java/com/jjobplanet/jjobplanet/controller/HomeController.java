package com.jjobplanet.jjobplanet.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jjobplanet.jjobplanet.databasemanager.comjoinDB;
import com.jjobplanet.jjobplanet.databasemanager.indvjoinDB;
import com.jjobplanet.jjobplanet.databasemanager.loginDB;
import com.jjobplanet.jjobplanet.databasemanager.mypageDB;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	@RequestMapping(value = "/mypage_company")
	public ModelAndView companydata()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/mypage_company");
		mv.addObject("ccategory", "오피지지");
		mv.addObject("cworkers","80명");
		mv.addObject("csize", "중소기업");
		mv.addObject("cdate","2022-02-25");
		mv.addObject("ceoname", "홍길동");
		mv.addObject("cmaintask", "..");
		mv.addObject("cinsurance", "국민연금,건강보험,산재보험,고용보험");
		mv.addObject("chomepage", "www.naver.com");
		mv.addObject("caddress", "서울 강남구 삼성로 88길 35-6(대치동) 목천빌딩");
		return mv;
	}
	@GetMapping("/passwordchange_company")
	public String passwordchange_company() 
	{
		return "passwordchange_company";
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

		@RequestMapping(value = "/mypage.do", method = RequestMethod.POST )
	public String mypage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
				
		String ugender = request.getParameter("ugender");
		String ubirth = request.getParameter("ubirth");
		String ujob = request.getParameter("ujob");
		String ucareer = request.getParameter("ucareer");
		System.out.println("ugender= " + " ubirth= " + ubirth + " ujob= " + ujob + "ucareer =" + ucareer);

		mypageDB inchange = new mypageDB();
		inchange.doPost(request, response);
		
		return "mypage";
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
	
	@RequestMapping(value = "/joinOk.do", method = RequestMethod.POST )
	public String joinOk(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		String umail = request.getParameter("umail");
		String upw = request.getParameter("upw");
		System.out.println("umail= " + umail + " upw= " + upw);

		indvjoinDB injoin = new indvjoinDB();
		injoin.doPost(request, response);
		
		return "joinOk";
	}
	
	@RequestMapping(value = "/joinokCompany.do", method = RequestMethod.POST)
	public String joinOkcompany(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		String cmail = request.getParameter("cmail");
		String cpw  = request.getParameter("cpw");
		String cname = request.getParameter("cname");
		String ccategory  = request.getParameter("ccategory");
		String csize = request.getParameter("csize");
		String ceoname  = request.getParameter("ceoname");
		String cinsurance = request.getParameter("cinsurance");
		String caddress  = request.getParameter("caddress");
		String cnumber = request.getParameter("cnumber");
		String cworkers  = request.getParameter("cworkers");
		String cdate  = request.getParameter("cdate");
		String cmaintask  = request.getParameter("cmaintask");
		String chomepage  = request.getParameter("chomepage");
		System.out.println("umail= " + cmail + " upw= " + cpw);

		comjoinDB comjoin = new comjoinDB();
		comjoin.doComjoin(request, response);
		
		return "joinokCompany";
		
	}
	@RequestMapping("./")
	@GetMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(HttpServletRequest request, RedirectAttributes setAttribute) throws ServletException, IOException {
				
		String umail = request.getParameter("umail");
		String upw = request.getParameter("upw");		
		System.out.println("umail= " + umail + " upw= " + upw);

		loginDB logindb  = new loginDB();
		logindb.doLogin(request, setAttribute);

		return login(null, null);
	}


	@GetMapping("/individualJoin")
	public String individualJoin() {
		return "individualJoin";
	}

	@GetMapping("/companyJoin")
	public String companyJoin() {
		return "companyJoin";
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
