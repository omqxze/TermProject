package BM.com.dao;

import java.util.ArrayList;
import BM.com.dao.Player;
import BM.com.dao.dbconn;
import java.sql.*;

public class PlayerRepository {
	private String url="jdbc:mysql://localhost:3306/soccer?useSSL=false";
	private String user="root";
	private String password="1234";
	private static String driver="com.mysql.jdbc.Driver";
	private ArrayList<Player> listOfPlayers=new ArrayList<Player>();
	private static PlayerRepository instance=new PlayerRepository();
	
	public static PlayerRepository getInstance() {
		return instance;
	}

	public PlayerRepository() {
		Connection conn=null;
		try {
			conn=DriverManager.getConnection(url, user, password);
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			String sql="select * from player";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Player b=new Player();
				b.setp_id(rs.getString("p_id"));
				b.setp_name(rs.getString("p_name"));
				b.setp_age(Integer.valueOf(rs.getString("p_age")));
				b.setp_nat(rs.getString("p_nat"));
				b.setp_club(rs.getString("p_club"));
				b.setp_position(rs.getString("p_position"));
				b.setp_number(Integer.valueOf(rs.getString("p_age")));
				b.setp_joined(rs.getString("p_joined"));
				b.setp_loan(rs.getString("p_loan"));
				b.setp_loanUntil(rs.getString("p_loanUntil"));
				b.setp_height(rs.getString("p_height"));
				b.setp_weight(rs.getString("p_weight"));
				listOfPlayers.add(b);
			}
		}catch(SQLException ex){
			System.out.println("데이터 베이스 연결에 실패했습니다.");
			System.out.println("SQLException : "+ex.getMessage());
			System.out.println("이거 여긴데");
		}
	}
	
	public Player getPlayerById(String PlayerId) {
		Player PlayerById=null;
		
		for(int i=0;i<listOfPlayers.size();i++) {
			Player Player=listOfPlayers.get(i);
			if(Player != null && Player.getp_id() != null && Player.getp_id().equals(PlayerId)) {
				PlayerById=Player;
				break;
			}
		}
		return PlayerById;
	}
	
	public ArrayList<Player> getAllPlayers(){
		return listOfPlayers;
	}
	
	public void addPlayer(Player Player) {
		listOfPlayers.add(Player);
	}
	
	public static void main(String args[]) throws ClassNotFoundException {
		Class.forName(driver);
	}
}
