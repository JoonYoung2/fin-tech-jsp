package quiz01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public MemberDAO() {
		con = DBConnect.getConnect();
		System.out.println("생성자" + con);
	}
	
	public ArrayList<MemberDTO> getList(){
		ArrayList<MemberDTO> list = new ArrayList<>();
		System.out.println("getlist 호출");
		
		String sql = "select * from members";
		
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));
				
				list.add(dto);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public int delete(String id) {
		int result = 0;
		
		String sql = "delete from members where id='"+id+"'";
		
		try {
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int checkUser(String id, String pwd) {
		int result = 0;
		String sql = "select * from members where id='"+id+"'";
		MemberDTO getUserDto = new MemberDTO();
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				getUserDto.setId(rs.getString("id"));
				getUserDto.setPwd(rs.getString("pwd"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		if(getUserDto.getId() != null) {
			if(getUserDto.getPwd().equals(pwd)) {
				result = 0;
			}else {
				result = 1;
			}
		}else {
			result = 2;
		}
		return result;
	}
	
	public int memberInsert(MemberDTO dto) {
		int result = 0;
		String sql = "INSERT INTO members VALUES(?, ?, ?, ?, ?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPwd());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getAddr());
			ps.setString(5, dto.getTel());
			result = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		System.out.println(result);
		return result;
	}
	
	public MemberDTO getUserInfo(String id) {
		MemberDTO dto = new MemberDTO();
		String sql = "select * from members where id=?";
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public int memberUpdate(MemberDTO dto) {
		String sql = "UPDATE members SET name=?, addr=?, tel=? WHERE id=?";
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getAddr());
			ps.setString(3, dto.getTel());
			ps.setString(4, dto.getId());
			result = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public void memberDelete(String id) {
		String sql = "DELETE FROM members WHERE id=?";
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
