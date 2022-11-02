package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class UserDao {
	public static Map<String, Users> user = loadData();

	private static Map<String, Users> loadData() {
		// TODO Auto-generated method stub
		Map<String, Users> user = new HashMap<>();
		try {
			Connection conn = Database.connection();
			String query = "  Select * from Users  ";
			PreparedStatement statement = conn.prepareStatement(query);

			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {

				Users u = new Users(resultSet.getString(1), resultSet.getString(2), resultSet.getString(3),
						resultSet.getString(4), resultSet.getInt(5));
				user.put(u.getUsername(), u);
			}
		} catch (SQLException e) {
			// TODO: handle exception
		}
		return user;
	}

	public Users regisTer(String username, String fullname, String password, String email) {
		try {
			Connection conn = Database.connection();
			String query = "  insert into Users values ( ?, ? , ? ,?, null ) ";
			PreparedStatement statement = conn.prepareStatement(query);
			statement.setString(1, username);
			statement.setString(2, fullname);
			statement.setString(3, password);
			statement.setString(4, email);
			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {
				return new Users(resultSet.getString(1), resultSet.getString(2), resultSet.getString(3),
						resultSet.getString(4), resultSet.getInt(5));
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

	public boolean changelPassWord(String usename, String pass) {
		for (Users users : user.values()) {
			if (users.getUsername().equals(usename) && users.getPassword().equals(pass)) {
				try {
					Connection conn = Database.connection();
					String query = "   update Users set Passwords =? where Usename =?";
					PreparedStatement statement = conn.prepareStatement(query);
					statement.setString(1, usename);
					statement.setString(2, pass);
					statement.executeUpdate();
					return true;
				} catch (SQLException e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}
		return false;

	}

	public Users cheacked(String name, String password) {
		try {
			Connection conn = Database.connection();
			String query = "select * from Users where Usename=  ? and Passwords = ?";
			PreparedStatement statement = conn.prepareStatement(query);
			statement.setString(1, name);
			statement.setString(2, password);
			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {
				return new Users(resultSet.getString(1), resultSet.getString(2), resultSet.getString(3),
						resultSet.getString(4), resultSet.getInt(5));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch[dbo].[acount] block
			e.printStackTrace();
		}
		return null;
	}
	public boolean currentPass(String name, String pass, String newpass) {
		try {
			String query = " update Users set Passwords =? where Usename =?";
			Connection conn = Database.connection();
			if (this.cheacked(name, pass) != null) {
				PreparedStatement statement = conn.prepareStatement(query);
				statement.setString(1, newpass);
				statement.setString(2, name);
				statement.executeUpdate();
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	// quen mat khau
	public boolean sendMail(String email, String sub, String text) {
		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", "587");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.starttls.enable", "true"); // TLS
		Session session = Session.getInstance(prop, new javax.mail.Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// lấy email pass minhg
				return new PasswordAuthentication("huynhduythuan668@gmail.com", "thmdyiekpfqcgdzp");
			}
		});
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress("huynhduythuan668@gmail.com")); // email gởi đi
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email)); // email nhận
			message.setSubject(sub);
			message.setText(text);
			Transport.send(message);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;

	}

	public boolean passWord(String usename, String email) {
		Users users = user.get(usename);
		if (users != null) {
			sendMail(email, "Mật khẩu của bạn là :", users.getPassword());
			return true;
		} else {
			return false;
		}
	}

// chinh sua thong tin 
	public boolean update(String usename, String full, String pass, String email) {
		try {
			for (Users u : user.values()) {

				if (u.getUsername().equals(usename)
						&& email.matches("^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$")) {
					String query = " update Users set   Fullnam= ? ,Passwords=?, Email= ? where Usename =?";
					Connection conn = Database.connection();
					PreparedStatement statement = conn.prepareStatement(query);
					statement.setString(1, full);
					statement.setString(2, pass);
					statement.setString(3, email);
					statement.setString(4, usename);
					statement.executeUpdate();
					return true;
				}
			}
		} catch (SQLException e) {
			// TODO: handle exception
			return false;
		}
		return false;
	}

	public static void main(String[] args) {
		UserDao userDao = new UserDao();

		System.out.println(userDao.passWord("Quan Hai", "catc68823@gmail.com"));
		System.out.println(userDao.update("Minh Tien", "Tran Dinh Minh Tien", "23456a", "catc66823@gmail.com"));
	}
}
