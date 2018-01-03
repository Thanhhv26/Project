/**
 * Copyright(C) 2007 System-EXE,Inc. All Rights Reserved.
 */
package com.system.hvt.common.database;

import java.util.HashMap;
import java.util.Map;

/**
 * @author Thanh
 *
 */
public enum DatabaseType {

	Oracle("Oracle", "Oracle Database", "jdbc:oracle:thin:@{0}:{1}:{2}", true),

    SqlServer("SQLServer","SQL Server", "jdbc:sqlserver://{0}:{1};databaseName={2};{3}", true),

    PostgreSQL("PostgreSQL","PostgreSQL", "jdbc:postgresql://{0}:{1}/{2}", true),

    //MySQL("MySQL","MySQL", "jdbc:mysql://{0}:{1}/{2}", true);
    MySQL("MySQL","MySQL", "jdbc:mysql://{0}:{1}/{2}?useUnicode=true&characterEncoding=UTF-8", true);

//    DB2("DB2","DB2 V9", "jdbc:db2://{0}:{1}:{2}", true);
	
	private final String key;
    private final String databaseName;
    private final String url;
    private final boolean visible;

    private static Map<String, DatabaseType> map;
    static {
        map = new HashMap<String, DatabaseType>();
        for (final DatabaseType buff : values()) {
            map.put(buff.getKey(), buff);
        }
    }

    public static DatabaseType keyOf(final String key) {
        if (map.containsKey(key)) {
            return map.get(key);
        } else {
            return null;
        }
    }

    private DatabaseType(
            final String key,
            final String databaseName,
            final String url,
            final boolean visible) {
        this.key = key;
        this.databaseName = databaseName;
        this.url = url;
        this.visible = visible;
    }

	public String getKey() {
		return key;
	}

	public String getDatabaseName() {
		return databaseName;
	}

	public String getUrl() {
		return url;
	}

	public boolean isVisible() {
		return visible;
	}
}
