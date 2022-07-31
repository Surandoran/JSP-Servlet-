package com.example.cosviewmain.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.cosviewmain.controller.SubController;
import com.example.cosviewmain.dto.MemberDTO;
import com.example.cosviewmain.service.MemberService;

public class MemberJoinController implements SubController {

	private MemberService service = MemberService.getInstance();

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {

		System.out.println("MemberJoin Controller 화긴");

		String flag = req.getParameter("flag");
		try {
			if (flag == null) {
				req.getRequestDispatcher("/WEB-INF/view/login/signUp.jsp").forward(req, resp);
			} else {
				String name = req.getParameter("name");
				String id = req.getParameter("id");
				String pwd = req.getParameter("pwd");
				String nickname = req.getParameter("nickname");
				String sex = req.getParameter("sex");
				String email = req.getParameter("email");
				String zipcode = req.getParameter("zipcode");
				String addr1 = req.getParameter("addr1");
				String addr2 = req.getParameter("addr2");
				System.out.println(name + "," + id + "," + pwd + "," + nickname + "," + sex + "," + email + "," + zipcode + "," + addr1 + "," + addr2);

				MemberDTO dto = new MemberDTO();
				dto.setName(name);
				dto.setId(id);
				dto.setPwd(pwd);
				dto.setNickname(nickname);
				dto.setSex(sex);
				dto.setEmail(email);
				dto.setZipcode(zipcode);
				dto.setAddr1(addr1);
				dto.setAddr2(addr2);

				boolean result = service.MemberInsert(dto);

				req.getRequestDispatcher("/WEB-INF/view/login/loginCompletion.jsp").forward(req, resp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
