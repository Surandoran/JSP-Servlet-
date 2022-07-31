package com.example.cosviewmain.service;

import com.example.cosviewmain.dao.MemberDAO;
import com.example.cosviewmain.dto.MemberDTO;
import org.mindrot.bcrypt.BCrypt;

public class MemberService {

	MemberDAO dao = MemberDAO.getInstance();
	public BCrypt passwordEncoder =new BCrypt();
	
	//싱글톤 패턴
	private static MemberService instance=null;
	public static MemberService getInstance() {
		if(instance==null)
			instance = new MemberService();
		return instance;
	}
	private MemberService() {}
	
	public boolean MemberInsert(MemberDTO dto)
	{
		String pwd = passwordEncoder.hashpw(dto.getPwd(), passwordEncoder.gensalt());
		System.out.println("PWD(EN) : "+pwd);
		dto.setPwd(pwd);
		return dao.insert(dto);
		
	}

}
