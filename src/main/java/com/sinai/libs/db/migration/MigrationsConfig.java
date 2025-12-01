package com.sinai.libs.db.migration;

import javax.sql.DataSource;
import org.flywaydb.core.Flyway;

public class MigrationsConfig {
  public MigrationsConfig(DataSource dbDataSource) {
    Flyway flyway = Flyway.configure().baselineOnMigrate(true).dataSource(dbDataSource).load();

    flyway.migrate();
  }
}