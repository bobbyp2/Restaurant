package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.mysql.jdbc.Driver;

import model.DB;
import model.User;

public class UserDaoImpl implements UserDao  {

	@Override
	public int addUser(User user) 
	{
		// TODO Auto-generated method stub
		int count = 0;
		try {
			Connection con=DB.getConnection();
			printAllUsers();
			PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?)");
			System.out.println(ps);
			ps.setString(1, user.getUser_id());
			ps.setString(2, user.getUser_name());
			ps.setString(3, user.getPassword());
			count = ps.executeUpdate();
			con.close();
			System.out.println("AFter adding user -- ");
			printAllUsers();
			return count;
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			return count;
		}
	}

	@Override
	public User getUserById(String user_id) {
		try
		{
			Connection con=DB.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from user where user_Id=?");
			ps.setString(1, user_id);
			ResultSet rs=ps.executeQuery();
			rs.next();
			User user=new User(rs.getString(1),rs.getString(2),rs.getString(3));
			con.close();
			return user;
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error at getUserByName Method : "+e );
		}
		
		return null;
	}

	@Override
	public List<User> getAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public void printAllUsers() {
		try
		{
			Connection con=DB.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from user");
		 	ResultSet rs=ps.executeQuery();
		 	System.out.println("User id \t UserName \t Password "  );
			while(rs.next()) {
				System.out.println(rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3) );
			}
			 con.close();
			 
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error at getUserById Method : "+e );
		}
	}	

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteUser(String user_id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public User getUserByName(String uname) {
		// TODO Auto-generated method stub
		try
		{
			Connection con=DB.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from user where user_name=?");
			ps.setString(1, uname);
			ResultSet rs=ps.executeQuery();
			rs.next();
			User user=new User(rs.getString(1),rs.getString(2),rs.getString(3));
			con.close();
			return user;
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error at getUserByName Method : "+e );
		}
		
		return null;
	}
	@Override
	public void passwordChange(String user_id, String password) {
		try {
			Connection con = DB.getConnection();
			String sql = "update user set password=? where user_id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			System.out.println("row effected");
			ps.setString(1, password);
			ps.setString(2, user_id);
			System.out.println(ps.toString());
			int rowaffected = ps.executeUpdate();
			System.out.println(rowaffected + " rows Deleted ");
			con.close();
		} catch (Exception e) {
			System.out.println();
		}
	}

}
