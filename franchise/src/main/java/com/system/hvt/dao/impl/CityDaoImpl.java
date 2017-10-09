package com.system.hvt.dao.impl;

import java.sql.PreparedStatement;
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
import com.system.hvt.dao.CityDao;
import com.system.hvt.entity.CityEntity;

@Repository
public class CityDaoImpl implements CityDao {
	final static DbConnectInfomationDTO info = new DbConnectInfomationDTO();
	static {
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
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.system.hvt.dao.CityDao#getAllCities()
	 */
	@Override
	public List<CityEntity> getAllCities() throws Exception {
		BaseConnectionManager connectionManager = null;
		Statement stmt = null;
		ResultSet rs = null;
		List<CityEntity> cities = new ArrayList<>();
		try {
			connectionManager = ConnectionManagerFactory.createConnectionManager(info.getDatabaseType());
			connectionManager.getConnection(info);

			stmt = connectionManager.getConnection().createStatement();
			String sql = "SELECT * FROM Tbl_city";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				CityEntity city = new CityEntity();
				city.setId(rs.getInt("city_id"));
				city.setName(rs.getString("city_name"));
				city.setCode(rs.getString("city_code"));
				city.setStatus(rs.getBoolean("city_status"));
				cities.add(city);
			}
		} catch (Exception e) {
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			}
			rs.close();
			connectionManager.close();
			throw new Exception(e.getMessage());
		} finally {
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			}
			rs.close();
			connectionManager.close();
		}
		return cities;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.system.hvt.dao.CityDao#insert(com.system.hvt.entity.CityEntity)
	 */
	@Override
	public void insert(CityEntity city) throws Exception {
		BaseConnectionManager connectionManager = null;
		PreparedStatement stmt = null;
		try {
			connectionManager = ConnectionManagerFactory.createConnectionManager(info.getDatabaseType());
			connectionManager.getConnection(info);

			String sql = "INSERT INTO tbl_city(city_name, city_code, city_status) VALUES(?, ?, ?)";
			stmt = connectionManager.getConnection().prepareStatement(sql);
			stmt.setString(1, city.getName());
			stmt.setString(2, city.getCode());
			stmt.setBoolean(3, city.isStatus());

			stmt.execute();

		} catch (Exception e) {
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			}
			connectionManager.close();
			throw new Exception(e.getMessage());
		} finally {
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			}
			connectionManager.close();
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.system.hvt.dao.CityDao#update(com.system.hvt.entity.CityEntity)
	 */
	@Override
	public void update(CityEntity city) throws Exception {
		BaseConnectionManager connectionManager = null;
		PreparedStatement stmt = null;
		try {
			connectionManager = ConnectionManagerFactory.createConnectionManager(info.getDatabaseType());
			connectionManager.getConnection(info);

			String sql = "UPDATE tbl_city SET city_name=?, city_code=?, city_status=? WHERE city_id=?";
			stmt = connectionManager.getConnection().prepareStatement(sql);
			stmt.setString(1, city.getName());
			stmt.setString(2, city.getCode());
			stmt.setBoolean(3, city.isStatus());
			stmt.setInt(4, city.getId());

			stmt.execute();

		} catch (Exception e) {
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			}
			connectionManager.close();
			throw new Exception(e.getMessage());
		} finally {
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			}
			connectionManager.close();
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.system.hvt.dao.CityDao#delete(com.system.hvt.entity.CityEntity)
	 */
	@Override
	public void delete(CityEntity city) throws Exception {
		BaseConnectionManager connectionManager = null;
		PreparedStatement stmt = null;
		try {
			connectionManager = ConnectionManagerFactory.createConnectionManager(info.getDatabaseType());
			connectionManager.getConnection(info);

			String sql = "DELETE FROM tbl_city WHERE city_id=?";
			stmt = connectionManager.getConnection().prepareStatement(sql);
			stmt.setInt(1, city.getId());

			stmt.execute();

		} catch (Exception e) {
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			}
			connectionManager.close();
			throw new Exception(e.getMessage());
		} finally {
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			}
			connectionManager.close();
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.system.hvt.dao.CityDao#search(com.system.hvt.entity.CityEntity)
	 */
	@Override
	public List<CityEntity> search(CityEntity city) throws Exception {
		BaseConnectionManager connectionManager = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		List<CityEntity> cities = new ArrayList<>();
		try {
			connectionManager = ConnectionManagerFactory.createConnectionManager(info.getDatabaseType());
			connectionManager.getConnection(info);

			String sql = "SELECT * FROM Tbl_city WHERE city_id=?";
			stmt = connectionManager.getConnection().prepareStatement(sql);
			stmt.setInt(1, city.getId());
			rs = stmt.executeQuery();

			while (rs.next()) {
				CityEntity item = new CityEntity();
				item.setId(rs.getInt("city_id"));
				item.setName(rs.getString("city_name"));
				item.setCode(rs.getString("city_code"));
				item.setStatus(rs.getBoolean("city_status"));
				cities.add(item);
			}
		} catch (Exception e) {
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			}
			rs.close();
			connectionManager.close();
			throw new Exception(e.getMessage());
		} finally {
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			}
			rs.close();
			connectionManager.close();
		}
		return cities;
	}

}
