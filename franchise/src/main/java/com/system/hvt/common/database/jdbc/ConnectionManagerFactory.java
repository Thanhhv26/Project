/**
 * Copyright(C) 2007 System-EXE,Inc. All Rights Reserved.
 */
package com.system.hvt.common.database.jdbc;

import java.util.HashMap;
import java.util.Map;

import com.system.hvt.common.database.DatabaseType;

/**
 * @author Thanh
 *
 */
public class ConnectionManagerFactory {

	private static Map<DatabaseType, String> map;
	static {
		map = new HashMap<DatabaseType, String>();
		map.put(DatabaseType.Oracle, "com.system.hvt.common.database.jdbc.db.OracleConnectionManager");
		map.put(DatabaseType.SqlServer, "com.system.hvt.common.database.jdbc.db.SQLServerConnectionManager");
		map.put(DatabaseType.PostgreSQL, "com.system.hvt.common.database.jdbc.db.PostgreSQLConnectionManager");
		map.put(DatabaseType.MySQL, "com.system.hvt.common.database.jdbc.db.MySQLConnectionManager");
		/*
		 * map .put(DatabaseTypeConnectionDestination.DB2,
		 * "jp.co.systemexe.dbu.dbace.persistance.dao.db.DB2ConnectionManager");
		 */ }

	public static BaseConnectionManager createConnectionManager(DatabaseType type) 
			throws Exception{
		try {
			return (BaseConnectionManager) Class.forName(map.get(type)).newInstance();
		} catch (InstantiationException e) {
			e.printStackTrace();
			throw new Exception(e.getMessage());
		} catch (IllegalAccessException e) {
			e.printStackTrace();
			throw new Exception(e.getMessage());
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			throw new Exception(e.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e.getMessage());
		}
	}
}
