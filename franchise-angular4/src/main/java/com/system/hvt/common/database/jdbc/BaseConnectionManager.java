/**
 * Copyright(C) 2007 System-EXE,Inc. All Rights Reserved.
 */
package com.system.hvt.common.database.jdbc;

import java.sql.Connection;
import java.sql.SQLException;
import java.text.MessageFormat;

import com.system.hvt.common.database.DbConnectInfomationDTO;

/**
 * @author Thanh
 *
 */
public abstract class BaseConnectionManager {

	public abstract Connection getConnection(final DbConnectInfomationDTO dtol) throws SQLException;

    public void close() {
        if (this.connection != null) {
            try {
                this.connection.close();
            } catch (final SQLException e) {
                //this.logger.warn(e);
            }
            this.connection = null;
        }
    }

    public Connection getConnection() {
        return connection;
    }

    protected void setConnection(Connection connection) {
        this.connection = connection;
    }

    private Connection connection = null;

    public BaseConnectionManager() {
        
    }

    public String createDatabaseUrl(final DbConnectInfomationDTO dto) {
        if (dto.isUseDatabaseUrl()) {
            return dto.getDatabaseUrl();
        } else {
			final MessageFormat formatter = new MessageFormat( dto.getDatabaseType().getUrl());
            return formatter.format(
                new Object[]{
                        dto.getServerId(),
                        dto.getPortId(),
                        dto.getDatabaseId()});
        }
    }

	public void connectWithTransaction(final DbConnectInfomationDTO dto) throws SQLException {
		this.getConnection(dto);
		this.connection.setAutoCommit(false);
	}

	public void commit() throws SQLException {
		this.connection.commit();
	}

	public void rollback() throws SQLException {
		this.connection.rollback();
	}
}
