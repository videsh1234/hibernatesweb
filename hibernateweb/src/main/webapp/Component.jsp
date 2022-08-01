<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,
                    org.hibernate.*,
                    org.hibernate.cfg.Configuration,
                    com.wipro.velocity.Student,
                    com.wipro.velocity.StudentClass" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Component Mapping</title>
</head>
<body>
<h1>Component Mapping Demo</h1>
<%

 

Session sess = new Configuration().configure("hibernate.cfg.xml")
.buildSessionFactory().openSession();
Transaction t = sess.beginTransaction();

 

StudentClass studentClass = new StudentClass("MFCH8","BE1");
Student student = new Student("John", "Gupta","BE1/20/15", 21, studentClass);
sess.save(student); //saved as Persistent object
out.println("Data Saved Successfully");
t.commit();

t = sess.beginTransaction();
List<Student> students = 
           sess.createQuery("FROM Student").list();
for(Student student1 : students){
     out.println("<br>"+"First Name: "
                            + student1.getFirstName()+"<br>"); 
     out.println("Last Name: " 
                             + student1.getLastName()+"<br>");  
     out.println("RollNo: "
                               + student1.getRollNo()+"<br>"); 
     out.println("Age: "
                                  + student1.getAge()+"<br>"); 

 

     StudentClass studentClass1 = 
                            student1.getStudentClass();
     out.println("Class Name:"
                       + studentClass1.getClassName()+"<br>");
     out.println("Class Id:" 
                        + studentClass.getClassId()+"<br>");
     out.println("<br>"+"---------------------------------------");
}

 

t.commit();
 

     
    		 


 
%>

</body>
</html>