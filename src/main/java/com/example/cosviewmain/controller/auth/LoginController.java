package com.example.cosviewmain.controller.auth;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.cosviewmain.controller.SubController;
import com.example.cosviewmain.dao.MemberDAO;
import com.example.cosviewmain.service.MemberService;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.io.PrintWriter;

public class LoginController implements SubController{


	MemberDAO dao = MemberDAO.getInstance();

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		try {
			req.getRequestDispatcher("/WEB-INF/view/login/login.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
