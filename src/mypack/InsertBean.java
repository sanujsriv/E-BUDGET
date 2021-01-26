package mypack;

import java.sql.Date;

public class InsertBean {
float appraisal,incentives,training,recruitment,advertisement,miscellaneous;
String date;

public float getAppraisal() {
	return appraisal;
}

public void setAppraisal(float appraisal) {
	this.appraisal = appraisal;
}

public float getIncentives() {
	return incentives;
}

public void setIncentives(float incentives) {
	this.incentives = incentives;
}

public float getTraining() {
	return training;
}

public void setTraining(float training) {
	this.training = training;
}

public float getRecruitment() {
	return recruitment;
}

public void setRecruitment(float recruitment) {
	this.recruitment = recruitment;
}

public float getAdvertisement() {
	return advertisement;
}

public void setAdvertisement(float advertisement) {
	this.advertisement = advertisement;
}

public float getMiscellaneous() {
	return miscellaneous;
}

public void setMiscellaneous(float miscellaneous) {
	this.miscellaneous = miscellaneous;
}
public String getDate() {
	return date;
}

public void setDate(String date) {
	this.date=date;
}
}