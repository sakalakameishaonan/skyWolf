package cn.web.tl.entity;


import java.util.Date;

public class Pet {
 private  int petId,petBreed,petSex;
 private String petName,description;
 private Date birthday;
public int getPetId() {
	return petId;
}
public void setPetId(int petId) {
	this.petId = petId;
}
public int getPetBreed() {
	return petBreed;
}
public void setPetBreed(int petBreed) {
	this.petBreed = petBreed;
}
public int getPetSex() {
	return petSex;
}
public void setPetSex(int petSex) {
	this.petSex = petSex;
}
public String getPetName() {
	return petName;
}
public void setPetName(String petName) {
	this.petName = petName;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public Date getBirthday() {
	return birthday;
}
public void setBirthday(Date birthday) {
	this.birthday = birthday;
}
public Pet(int petBreed, int petSex, String petName, String description, Date birthday) {
	super();
	this.petBreed = petBreed;
	this.petSex = petSex;
	this.petName = petName;
	this.description = description;
	this.birthday = birthday;
}
public Pet() {
	super();
}



	
	
	
}
