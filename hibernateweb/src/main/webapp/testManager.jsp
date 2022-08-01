<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.util.*,
                   org.hibernate.*,
           org.hibernate.cfg.Configuration,
           com.wipro.velocity.Manager"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Collection Mapping</title>
</head>
<body>
<h1>Hibernate Collection Mapping Demo</h1>


<%
Session sess = new Configuration().configure("hibernate.cfg.xml")
.buildSessionFactory().openSession();
Transaction t = sess.beginTransaction();



Manager manager = new Manager();
manager.setManagerId(1003);
manager.setManagerName("Singh");


Set<String> phoneNumbers = new HashSet<String>();
phoneNumbers.add("8435");
phoneNumbers.add("2345");
phoneNumbers.add("1234");

manager.setPhoneNumbers(phoneNumbers);


sess.save(manager);
t.commit();
sess.close();
out.println("<br>"+"success");









%>


</body>
</html>