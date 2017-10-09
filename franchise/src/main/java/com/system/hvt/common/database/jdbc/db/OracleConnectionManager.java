/**
 * Copyright(C) 2007 System-EXE,Inc. All Rights Reserved.
 */
package com.system.hvt.common.database.jdbc.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import com.system.hvt.common.database.DbConnectInfomationDTO;
import com.system.hvt.common.database.jdbc.BaseConnectionManager;

/**
 * @author Thanh
 *
 */
public class OracleConnectionManager extends BaseConnectionManager {

	@Override
	public Connection getConnection(final DbConnectInfomationDTO dto) throws SQLException {
//		final long start = System.currentTimeMillis();
		Connection connection = getConnection();
		if (connection == null) {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
			} catch (final ClassNotFoundException e) {
				final String message = "'oracle.jdbc.driver.OracleDriver' was not found.";
//				getLogger().fatal(message, e);
				throw new SQLException(message);
			}
			final Properties props = new Properties();
			props.put("user", dto.getUserId());
			props.put("password", dto.getPassword());
			props.put("oracle.jdbc.RetainV9LongBindBehavior", "true");
			connection = DriverManager.getConnection(createDatabaseUrl(dto), props);
			connection.setAutoCommit(true);
			setConnection(connection);
		}
//		if (getLogger().isDebugEnabled()) {
//			getLogger().debug("Connection acquisition time :" + (System.currentTimeMillis() - start));
//		}
		return connection;
	}
}
