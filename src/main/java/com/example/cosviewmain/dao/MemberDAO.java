package com.example.cosviewmain.dao;

import java.sql.*;

import com.example.cosviewmain.dto.MemberDTO;

public class MemberDAO {
	
	//DB연결
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String id = "cosview";
	private String pw = "1234";
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	//싱글톤 패턴
	private static MemberDAO instance;
	public static MemberDAO getInstance() {
		if(instance==null);
			instance=new MemberDAO();
		return instance;
	}
	private MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			System.out.println("!!!!!!!!!DBConnected!!!!!WOW!!!");		
		}catch(Exception e) {e.printStackTrace();}
	}

	//INSERT 함수
	public boolean insert(MemberDTO dto) {
		try {
			pstmt = conn.prepareStatement("insert into member_tbl values(?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getId());
			pstmt.setString(3, dto.getPwd());
			pstmt.setString(4, dto.getNickname());
			pstmt.setString(5, dto.getSex());
			pstmt.setString(6, dto.getEmail());
			pstmt.setString(7, dto.getZipcode());
			pstmt.setString(8, dto.getAddr1());
			pstmt.setString(9, dto.getAddr2());
			
			int result = pstmt.executeUpdate();
			if(result>0)
				return true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	//ID중복체크
	public boolean confirmId(String id) {
		boolean result = false;
		try {
			MemberDTO dto = new MemberDTO();
			pstmt = conn.prepareStatement("select * from member_tbl where id = ?");
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();

			if(rs.next()) {
				dto.setId("id");
				result = true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try{rs.close();}catch (SQLException s){}
			try{pstmt.close();}catch (SQLException s){}
			try{conn.close();}catch (SQLException s){}
		}
		return result;
	}

	//NickName 중복체크
	public boolean confirmNickName(String nickname) {
		boolean result = false;
		try {
			MemberDTO dto = new MemberDTO();
			pstmt = conn.prepareStatement("select * from member_tbl where nickname = ?");
			pstmt.setString(1, nickname);

			rs = pstmt.executeQuery();

			if(rs.next()) {
				dto.setNickname("nickname");
				result = true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try{rs.close();}catch (SQLException s){}
			try{pstmt.close();}catch (SQLException s){}
			try{conn.close();}catch (SQLException s){}
		}
		return result;
	}


}