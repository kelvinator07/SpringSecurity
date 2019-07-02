package com.geekykel.springsecurity;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

import javax.sql.DataSource;
import java.beans.PropertyVetoException;
import java.util.logging.Logger;

@SpringBootApplication
@EnableAutoConfiguration(exclude = HibernateJpaAutoConfiguration.class)
//@PropertySource("classpath:persistence-mysql.properties")
public class SpringSecurityApplication {

	private Logger myLogger = Logger.getLogger(getClass().getName());

	@Autowired
	private Environment env;

	public static void main(String[] args) {
		SpringApplication.run(SpringSecurityApplication.class, args);
	}


	@Bean
	public DataSource dataSource() {
		ComboPooledDataSource comboPooledDataSource = new ComboPooledDataSource();

		comboPooledDataSource.setJdbcUrl(env.getProperty("jdbc.url"));
		try {
			comboPooledDataSource.setDriverClass(env.getProperty("jdbc.driver"));
		} catch (PropertyVetoException e) {
			e.printStackTrace();
		}
		comboPooledDataSource.setUser(env.getProperty("jdbc.user"));
		comboPooledDataSource.setPassword(env.getProperty("jdbc.password"));


		//comboPooledDataSource.setInitialPoolSize(Integer.parseInt("5"));

		// set connection pool props

		comboPooledDataSource.setInitialPoolSize(
				getIntProperty("connection.pool.initialPoolSize"));

		comboPooledDataSource.setMinPoolSize(
				getIntProperty("connection.pool.minPoolSize"));

		comboPooledDataSource.setMaxPoolSize(
				getIntProperty("connection.pool.maxPoolSize"));

		comboPooledDataSource.setMaxIdleTime(
				getIntProperty("connection.pool.maxIdleTime"));

		return comboPooledDataSource;
	}

	private int getIntProperty(String propName) {

		String propVal = env.getProperty(propName);

		// now convert to int
		int intPropVal = Integer.parseInt(propVal);

		return intPropVal;
	}

}
