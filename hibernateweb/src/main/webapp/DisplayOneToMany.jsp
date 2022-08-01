<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="org.hibernate.*,org.hibernate.boot.registry.*,
                    org.hibernate.cfg.Configuration,
                    com.wipro.velocity.Question,
                    com.wipro.velocity.Answer,
                    javax.persistence.TypedQuery,
                    java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>One to Many</title>
</head>
<body>
<h1>Java Full Stack Q&A Forum </h1>
<%
Configuration cfg = new Configuration();
cfg.configure("hibernate.cfg.xml");

 

SessionFactory factory=cfg.buildSessionFactory(new 
        StandardServiceRegistryBuilder().configure().build());
Session sess= factory.openSession();
Transaction t = sess.beginTransaction();

 

TypedQuery query=sess.createQuery("from Question");    
List<Question> list=query.getResultList();    
    
Iterator<Question> itr=list.iterator();    
while(itr.hasNext()){    
    Question q=itr.next();    
    out.println("<br>"+"Question Name: "+q.getQname()+"<br>");    
        
    //printing answers    
    List<Answer> list2=q.getAnswers();    
    Iterator<Answer> itr2=list2.iterator();    
   while(itr2.hasNext())  
   {  
    Answer a=itr2.next();  
        out.println(a.getAnswername()+":"+a.getPostedBy()+" | ");  
    }    
   out.println("<br>****************************************<br>");
}  
sess.close();    
out.println("success");    
%>



</body>
</html>