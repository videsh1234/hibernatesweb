package com.wipro.velocity;

public class Student {
	
	private int studentId;
    private String firstName;
    private String lastName;
    private String rollNo;
    private int age;
    private StudentClass studentClass; // component - has a relationship
    
    
    
	public Student() {
		super();
		//TODO Auto-generated constructor stub
	}
	public Student(String firstName, String lastName, String rollNo, int age, StudentClass studentClass) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.rollNo = rollNo;
		this.age = age;
		this.studentClass = studentClass;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getRollNo() {
		return rollNo;
	}
	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public StudentClass getStudentClass() {
		return studentClass;
	}
	public void setStudentClass(StudentClass studentClass) {
		this.studentClass = studentClass;
	}
    
    
    

}
