package com.wipro.velocity;

public class Professor {
	private Long professorId;
	private String firstname;
	private String lastname;
	public Professor() {
		super();
		
	}
	public Professor( String firstname, String lastname) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
	}
	public Long getProfessorId() {
		return professorId;
	}
	public void setProfessorId(Long professorId) {
		this.professorId = professorId;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
	
	
	
	
	
	

}
