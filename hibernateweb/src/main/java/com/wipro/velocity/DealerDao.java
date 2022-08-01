package com.wipro.velocity;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class DealerDao {
	
	public static int dealer(Dealer d)
	{
		int i = 0;
		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		
		Session session = sf.openSession(); //physical connection with db is created
		
		
		Transaction t = session.beginTransaction();
		
		i=(Integer)session.save(d);
		
		t.commit();
		session.close();
		return i;
		
		
		
	}

}
