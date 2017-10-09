/**
 * Copyright(C) 2007 System-EXE,Inc. All Rights Reserved.
 */
package com.system.hvt.common.database.jdbc.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.MessageFormat;

import org.springframework.util.StringUtils;

import com.system.hvt.common.database.DbConnectInfomationDTO;
import com.system.hvt.common.database.jdbc.BaseConnectionManager;

/**
 * @author Thanh
 *
 */
public class SQLServerConnectionManager extends BaseConnectionManager {

	@Override
	public Connection getConnection(final DbConnectInfomationDTO dto) throws SQLException {
		Connection connection = getConnection();
		if (connection == null) {
			try {
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			} catch (final ClassNotFoundException e) {
				final String message = "'com.microsoft.sqlserver.jdbc.SQLServerDriver' was not found.";
				// getLogger().fatal(message, e);
				throw new SQLException(message);
			}
			connection = DriverManager.getConnection(createDatabaseUrl(dto) + "applicationName=QDB1", dto.getUserId(),
					dto.getPassword());
			connection.setAutoCommit(true);
			setConnection(connection);
		}
		return connection;
	}

	@Override
	public String createDatabaseUrl(final DbConnectInfomationDTO dto) {
		if (dto.isUseDatabaseUrl()) {
			return dto.getDatabaseUrl();
		} else {
			final MessageFormat formatter = new MessageFormat(dto.getDatabaseType().getUrl());
			final String instanceName = StringUtils.isEmpty(dto.getInstanceName()) ? "" 
					: "instanceName=" + dto.getInstanceName() + ";";
			return formatter.format(
					new Object[] { 
							dto.getServerId(), 
							dto.getPortId(), 
							dto.getDatabaseId(), 
							instanceName });
		}
	}

}
