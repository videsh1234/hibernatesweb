<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.util.*,
                    org.hibernate.*,
                    org.hibernate.cfg.Configuration,
                    com.wipro.velocity.Employee"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Collection Mapping</title>
</head>
<body>
	<h1>Hibernate Collection Mapping Demo Using XML Configuration</h1>

	<%
	Session sess = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
	Transaction t = sess.beginTransaction();

	Employee employee = new Employee();
	employee.setEmployeeId(1010);
	employee.setEmployeeName("Fareeha");

	Set<String> phoneNumbers = new HashSet<String>();
	phoneNumbers.add("98850");
	phoneNumbers.add("86930");
	phoneNumbers.add("75321");

	employee.setPhoneNumbers(phoneNumbers);

	sess.save(employee);
	t.commit();

	//Retrieve records using Query Interface

	List<Employee> empList = sess.createQuery("from Employee", Employee.class).list();
	Iterator<Employee> itr = empList.iterator();
	while (itr.hasNext()) {
		Employee emp = itr.next();
		out.print("<br>" + "Employee Id: " + emp.getEmployeeId() + "<br>");
		out.print("Employee Name: " + emp.getEmployeeName() + "<br>");

		// printing answers
		Set<String> set = emp.getPhoneNumbers();
		Iterator<String> itr2 = set.iterator();
		out.print("Employee Phone Numbers:");
		while (itr2.hasNext()) {
			out.println(itr2.next());
		}
		out.println("<br>" + "----------------------------------------------------");
	}
	sess.close();
	out.println("<br>" + "success");
	%>
</body>
</html>