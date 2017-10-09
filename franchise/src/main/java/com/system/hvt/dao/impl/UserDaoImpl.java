package com.system.hvt.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.hvt.common.constant.DBInfoConst;
import com.system.hvt.common.database.DatabaseType;
import com.system.hvt.common.database.DbConnectInfomationDTO;
import com.system.hvt.common.database.jdbc.BaseConnectionManager;
import com.system.hvt.common.database.jdbc.ConnectionManagerFactory;
import com.system.hvt.dao.UserDao;
import com.system.hvt.entity.UserEntity;

@Repository
public class UserDaoImpl implements UserDao {

	public List<UserEntity> getAllUser1() {
		List<UserEntity> users = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		try {
			// STEP 2: Register JDBC driver
			Class.forName(DBInfoConst.JDBC_DRIVER);

			// STEP 3: Open a connection
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DBInfoConst.DB_URL, DBInfoConst.USER, DBInfoConst.PASS);

			// STEP 4: Execute a query
			System.out.println("Creating statement...");
			stmt = conn.createStatement();
			String sql;
			sql = "SELECT * FROM Tbl_user";
			ResultSet rs = stmt.executeQuery(sql);

			// STEP 5: Extract data from result set
			while (rs.next()) {
				UserEntity user = new UserEntity();
				user.setUserId(rs.getInt("user_id"));
				user.setFranchiseId(rs.getInt("franchise_id"));
				user.setUserFName(rs.getString("user_f_name"));
				user.setUserLName(rs.getString("user_l_name"));
				user.setUserEmail(rs.getString("user_email"));
				user.setUserPsw(rs.getString("user_psw"));
				user.setUserConNo(rs.getString("user_con_no"));
				user.setUserCityId(rs.getInt("user_city_id"));
				user.setUserAddress(rs.getString("user_address"));
				user.setUserStatus(rs.getBoolean("user_status"));
				users.add(user);
			}
			// STEP 6: Clean-up environment
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		} finally {
			// finally block used to close resources
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			} // nothing we can do
			try {
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			} // end finally try
		} // end try
		System.out.println("Goodbye!");
		return users;
	}
	
	@Override
	public List<UserEntity> getAllUser() {
		DbConnectInfomationDTO info = new DbConnectInfomationDTO();
		info.setServerId("");
		info.setPortId("");
		info.setDatabaseId("");
		info.setDatabaseLabel("");
		info.setUserId(DBInfoConst.USER);
		info.setPassword(DBInfoConst.PASS);
		info.setInstanceName("");
		info.setDatabaseType(DatabaseType.MySQL);
		info.setUseDatabaseUrl(Boolean.TRUE);
		info.setDatabaseUrl(DBInfoConst.DB_URL);
		BaseConnectionManager connectionManager = null;
		Statement stmt = null;
		List<UserEntity> users = new ArrayList<>();
		try {
			connectionManager = ConnectionManagerFactory.createConnectionManager(info.getDatabaseType());
			connectionManager.getConnection(info);
			
			stmt = connectionManager.getConnection().createStatement();
			String sql = "SELECT * FROM Tbl_user";
			ResultSet rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				UserEntity user = new UserEntity();
				user.setUserId(rs.getInt("user_id"));
				user.setFranchiseId(rs.getInt("franchise_id"));
				user.setUserFName(rs.getString("user_f_name"));
				user.setUserLName(rs.getString("user_l_name"));
				user.setUserEmail(rs.getString("user_email"));
				user.setUserPsw(rs.getString("user_psw"));
				user.setUserConNo(rs.getString("user_con_no"));
				user.setUserCityId(rs.getInt("user_city_id"));
				user.setUserAddress(rs.getString("user_address"));
				user.setUserStatus(rs.getBoolean("user_status"));
				users.add(user);
			}
			rs.close();
			stmt.close();
			connectionManager.close();
		} catch (Exception e) {
			e.printStackTrace();
//			throw new Exception(e.getMessage());
		} finally {
			// finally block used to close resources
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			} // nothing we can do
			connectionManager.close();
		}	
		return users;
	}

}
