/**
 * Copyright(C) 2007 System-EXE,Inc. All Rights Reserved.
 */
package com.system.hvt.common.database.jdbc.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.system.hvt.common.database.DbConnectInfomationDTO;
import com.system.hvt.common.database.jdbc.BaseConnectionManager;

/**
 * @author Thanh
 *
 */
public class MySQLConnectionManager extends BaseConnectionManager {
	
	@Override
    public Connection getConnection(final DbConnectInfomationDTO dto) throws SQLException {
//        final long start = System.currentTimeMillis();
		Connection connection = getConnection();
		if (connection == null) {
			try{
				Class.forName("com.mysql.jdbc.Driver");
			} catch (final ClassNotFoundException e){
				final String message = "'com.mysql.jdbc.Driver' was not found.";
//				getLogger().fatal(message, e);
				throw new SQLException(message);
			}
			connection = DriverManager.getConnection(
				createDatabaseUrl(dto),
				dto.getUserId(),
				dto.getPassword());
			connection.setAutoCommit(true);
			setConnection(connection);
		}

//        if (getLogger().isDebugEnabled()) {
//            getLogger().debug("Connection acquisition time :" + (System.currentTimeMillis() - start));
//        }
        return connection;
	}

}
