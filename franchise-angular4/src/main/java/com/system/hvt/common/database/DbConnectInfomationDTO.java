/**
 * Copyright(C) 2007 System-EXE,Inc. All Rights Reserved.
 */
package com.system.hvt.common.database;

import java.io.Serializable;

/**
 * @author Thanh
 *
 */
public class DbConnectInfomationDTO implements Serializable {

	private static final long serialVersionUID = 1L;

    private String serverId;
    private String portId;
    private String databaseId;
    private String databaseLabel;
    private String userId;
    private String password;
    private String instanceName;
    private DatabaseType databaseType;
    private boolean useDatabaseUrl;
    private String databaseUrl;
    
	public String getServerId() {
		return serverId;
	}
	public void setServerId(String serverId) {
		this.serverId = serverId;
	}
	public String getPortId() {
		return portId;
	}
	public void setPortId(String portId) {
		this.portId = portId;
	}
	public String getDatabaseId() {
		return databaseId;
	}
	public void setDatabaseId(String databaseId) {
		this.databaseId = databaseId;
	}
	public String getDatabaseLabel() {
		return databaseLabel;
	}
	public void setDatabaseLabel(String databaseLabel) {
		this.databaseLabel = databaseLabel;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getInstanceName() {
		return instanceName;
	}
	public void setInstanceName(String instanceName) {
		this.instanceName = instanceName;
	}
	public DatabaseType getDatabaseType() {
		return databaseType;
	}
	public void setDatabaseType(DatabaseType databaseType) {
		this.databaseType = databaseType;
	}
	public boolean isUseDatabaseUrl() {
		return useDatabaseUrl;
	}
	public void setUseDatabaseUrl(boolean useDatabaseUrl) {
		this.useDatabaseUrl = useDatabaseUrl;
	}
	public String getDatabaseUrl() {
		return databaseUrl;
	}
	public void setDatabaseUrl(String databaseUrl) {
		this.databaseUrl = databaseUrl;
	}

}
