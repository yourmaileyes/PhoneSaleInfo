package com.ql.psi.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ql.psi.biz.*;
import com.ql.psi.entity.*;
import com.ql.psi.util.DateUtil;
import com.ql.psi.util.UploadFile;

@Controller
public class MainController {
	@Autowired
	UserBiz userBiz;
	@Autowired
	ReviewBiz reviewBiz;
	@Autowired
	PhoneBiz phoneBiz;
	
	@RequestMapping(value="index")
	public String index(HttpSession session) {
		List<Review> reviewList = reviewBiz.selectall(); 
		session.setAttribute("reviewList", reviewList);
		return "index";
	}
	@RequestMapping(value="fregist")
	public String fregist(HttpSession session) {
		session.removeAttribute("errmsg");
		return "regist";
	}
	@RequestMapping(value="flogin")
	public String flogin(HttpSession session) {
		session.removeAttribute("errmsg");
		return "login";
	}
	@RequestMapping(value="logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:index.do";
	}
	
	@RequestMapping(value="login")
	public String login(User user,HttpSession session) {
		if(user.getPassword()==null||user.getUsername()==null||user.getUsername().equals("")||user.getPassword().equals("")) {
			session.setAttribute("errmsg", "用户名或密码不能为空");
			return "login";
		}
		User loginUser = userBiz.selectlogin(user.getUsername(), user.getPassword());
		if(loginUser==null) {
			session.setAttribute("errmsg", "用户名或密码错误");
			return "login";
		}
		if(loginUser.getType()!=null&&loginUser.getType().equals("admin")) {
			session.setAttribute("loginUser", loginUser);
			return "admin";
		}
		session.setAttribute("loginUser", loginUser);
		return "redirect:index.do";
	}
	
	@RequestMapping(value="regist")
	public String regist(User user,String password2,HttpSession session) {
		User user1 = userBiz.selectusername(user.getUsername());
		if(user1!=null) {
			session.setAttribute("errmsg", "用户名已存在！");
			return "regist";
		}
		if(user.getPassword()==null||user.getUsername()==null||user.getUsername().equals("")||user.getPassword().equals("")) {
			session.setAttribute("errmsg", "用户名或密码不能为空");
			return "regist";
		}
		if(!user.getPassword().equals(password2)) {
			session.setAttribute("errmsg", "两次密码不一致");
			return "regist";
		}
		user.setUseid(DateUtil.getId());
		userBiz.insertSelective(user);
		return "login";
	}
	
	@RequestMapping(value="delectreview")
	public String delectreview(String id) {
		reviewBiz.deleteByPrimaryKey(id);
		return "redirect:index.do";
	}
	
	@RequestMapping(value="showclass")
	public String showclass(String phoneclass,HttpSession session) {
		List<Phone> phoneList = phoneBiz.selectphonebyclass(phoneclass);
		session.setAttribute("phoneList", phoneList);
		session.setAttribute("phoneclass", phoneclass);
		return "showphone";
	}
	
	@RequestMapping(value="showlike")
	public String showlike(HttpSession session) {
		User user = (User) session.getAttribute("loginUser");
		if(user==null) {
			return "login";
		}
		List<Phone> phoneList = phoneBiz.selectlike(user.getUseid());
		session.setAttribute("phoneList", phoneList);
		session.setAttribute("phoneclass", "收藏列表");
		return "showphone";
	}
	
	@RequestMapping(value="AJAXsub")
	public void AJAXsub(String phoneid,HttpServletResponse res,HttpSession session) throws IOException {
		User user = (User) session.getAttribute("loginUser");
		res.setCharacterEncoding("utf-8");
		PrintWriter pw = res.getWriter();
		if(user==null) {
			pw.write("请您登录后再点赞！");
			return;
		}
		Phone phone = phoneBiz.selectByPrimaryKey(phoneid);
		String la = String.valueOf((Integer.parseInt(phone.getPhonelable())+1));
		phone.setPhonelable(la);
		phoneBiz.updateByPrimaryKeySelective(phone);
		pw.write("点赞成功！");
	}
	
	@RequestMapping(value="AJAXlike")
	public void AJAXlike(String phoneid,HttpServletResponse res,HttpSession session) throws IOException {
		User user = (User) session.getAttribute("loginUser");
		res.setCharacterEncoding("utf-8");
		PrintWriter pw = res.getWriter();
		if(user==null) {
			pw.write("请您登录后再收藏！");
			return;
		}
		if(!phoneBiz.isliked(user.getUseid(), phoneid)) {
			pw.write("已经收藏该手机！");
			return;
		}
		phoneBiz.insetlike(user.getUseid(), phoneid);
		pw.write("收藏成功！");
	}
	
	@RequestMapping(value="AJAXclike")
	public void AJAXclike(String phoneid,HttpServletResponse res,HttpSession session) throws IOException {
		User user = (User) session.getAttribute("loginUser");
		res.setCharacterEncoding("utf-8");
		PrintWriter pw = res.getWriter();
		if(user==null) {
			pw.write("请您登录后再取消收藏！");
			return;
		}
		phoneBiz.deletelike(user.getUseid(), phoneid);
		pw.write("取消收藏成功！");
	}
	
	@RequestMapping(value="seach")
	public String seach(String seach) {
		return "redirect:showclass.do?phoneclass="+seach;
	}
	
	@RequestMapping(value="subrew")
	public String subrew(Review review,HttpSession session) {
		User user = (User) session.getAttribute("loginUser");
		if(user==null) {
			return "login";
		}
		review.setUserid(user.getUseid());
		review.setTime(new Date());
		review.setReviewid(DateUtil.getId());
		reviewBiz.insertSelective(review);
		return "redirect:index.do";
	}

	@RequestMapping(value="adminuser")
	public String adminuser(HttpSession session) {
		List<User> userList = userBiz.selectall();
		session.setAttribute("userList", userList);
		return "adminuser";
	}
	@RequestMapping(value="adminreview")
	public String adminreview(HttpSession session) {
		List<Review> reviewList = reviewBiz.selectall();
		session.setAttribute("reviewList", reviewList);
		return "adminreview";
	}
	@RequestMapping(value="adminphone")
	public String adminphone(HttpSession session) {
		List<Phone> phoneList = phoneBiz.selectall();
		session.setAttribute("phoneList", phoneList);
		return "adminphone";
	}
	
	@RequestMapping(value="changepassword")
	public void changepassword(HttpServletResponse res,String newpassword,String useid) throws IOException {
		User user = userBiz.selectByPrimaryKey(useid);
		user.setPassword(newpassword);
		userBiz.updateByPrimaryKeySelective(user);
		res.setCharacterEncoding("utf-8");
		res.getWriter().write("密码修改成功！");
		return;
	}
	@RequestMapping(value="deleteuser")
	public void deleteuser(HttpServletResponse res,String useid) throws IOException {
		userBiz.deleteByPrimaryKey(useid);
		res.setCharacterEncoding("utf-8");
		res.getWriter().write("用户已删除！");
		return;
	}
	@RequestMapping(value="deletereview")
	public void deletereview(HttpServletResponse res,String id) throws IOException {
		reviewBiz.deleteByPrimaryKey(id);
		res.setCharacterEncoding("utf-8");
		res.getWriter().write("留言已删除！");
		return;
	}
	
	@RequestMapping(value="newphone")
	public String newphone(HttpSession session) {
		session.removeAttribute("phone");
		session.removeAttribute("phonemsg");
		return "phonede";
	}
	@RequestMapping(value="phoneadmin")
	public String phoneadmin(HttpSession session,String phoneid) {
		session.removeAttribute("phonemsg");
		Phone phone = phoneBiz.selectByPrimaryKey(phoneid);
		session.setAttribute("phone", phone);
		return "phonede";
	}
	@RequestMapping(value="subphone")
	public String subphone(HttpSession session,HttpServletRequest req) {
		Phone phone = (Phone) UploadFile.uploadFile(DateUtil.getId(), req);
		Phone phone2 = phoneBiz.selectByPrimaryKey(phone.getPhoneid());
		if(phone2==null) {
			phoneBiz.insertSelective(phone);
			session.setAttribute("phonemsg", "创建成功！");
		}else {
			phoneBiz.updateByPrimaryKeySelective(phone);
			session.setAttribute("phonemsg", "修改成功！");
		}
		session.setAttribute("phone", phone);
		return "phonede";
	}
	@RequestMapping(value="deletephone")
	public void deletephone(HttpServletResponse res,String phoneid) throws IOException {
		phoneBiz.deleteByPrimaryKey(phoneid);
		res.setCharacterEncoding("utf-8");
		res.getWriter().write("手机已删除！");
		return;
	}
}
