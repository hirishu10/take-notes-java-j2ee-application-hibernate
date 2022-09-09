package com.factoryHelper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {

	FactoryProvider instance = new FactoryProvider();
	private static SessionFactory factory;

	private FactoryProvider() {
		super();
		// TODO Auto-generated constructor stub
	}

	public static SessionFactory getInstance() {
		if (factory == null) {
			factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}

		return factory;
	}

	public static void closeFactory() {
		if (factory.isOpen()) {
			factory.close();
		}
	}

}
