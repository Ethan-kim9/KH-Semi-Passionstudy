package com.passionStudy.passion.reservation.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.util.Properties;

public class ProductDao {

	Connection conn = null;

	private Properties prop = new Properties();

	public ProductDao() {
		String fileName = RoomDao.class.getResource("/sql/reservation/product.xml").getPath();

		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
