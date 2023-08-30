package day03;

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
		int answer = 0;
		
		String sql = "delete from members where id='"+id+"'";
		
		try {
			ps = con.prepareStatement(sql);
			answer = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return answer;
	}
}
