package com.wipro.velocity;

public class StudentClass {
	
	private String classId;
    private String className;
    
    
    
	public StudentClass() {
		super();
		//TODO Auto-generated constructor stub
	}
	public StudentClass(String classId, String className) {
		super();
		this.classId = classId;
		this.className = className;
	}
	public String getClassId() {
		return classId;
	}
	public void setClassId(String classId) {
		this.classId = classId;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
    
    

}
