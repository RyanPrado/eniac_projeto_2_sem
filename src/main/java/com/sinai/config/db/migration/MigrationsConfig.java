package com.sinai.config.db.migration;

import javax.sql.DataSource;
import org.flywaydb.core.Flyway;

public class MigrationsConfig {
  public MigrationsConfig(DataSource DBDataSource) {
    Flyway flyway = Flyway.configure().locations("classpath:/**/db/migration/*.sql").baselineOnMigrate(true).dataSource(DBDataSource).load();

    flyway.migrate();
  }
}