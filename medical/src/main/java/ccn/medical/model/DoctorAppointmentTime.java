package ccn.medical.model;

import java.util.Date;

import javax.persistence.Column;

public class DoctorAppointmentTime {

	public int  appointmentId;
	public int doctorId;
	public String doctorName;
	public Date startTime;
	public String timeQuantum;
	public float price;
	public Date createTime;
	public int state=1;
	public Date cancelTime;
	private int usersId;
	private String usersName;
	private int usersSymptomId;
	private String usersSymptom;
	
	@Column(name="users_id")
	public int getUsersId() {
		return usersId;
	}
	public void setUsersId(int usersId) {
		this.usersId = usersId;
	}
	@Column(name="users_name")
	public String getUsersName() {
		return usersName;
	}
	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}
	@Column(name="users_symptom_id")
	public int getUsersSymptomId() {
		return usersSymptomId;
	}
	public void setUsersSymptomId(int usersSymptomId) {
		this.usersSymptomId = usersSymptomId;
	}
	@Column(name="users_symptom")
	public String getUsersSymptom() {
		return usersSymptom;
	}
	public void setUsersSymptom(String usersSymptom) {
		this.usersSymptom = usersSymptom;
	}
	@Column(name="appointment_id")
	public int getAppointmentId() {
		return appointmentId;
	}
	public void setAppointmentId(int appointmentId) {
		this.appointmentId = appointmentId;
	}
	@Column(name="doctor_id")
	public int getDoctorId() {
		return doctorId;
	}
	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}
	@Column(name="doctor_name")
	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	@Column(name="start_time")
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	@Column(name="time_quantum")
	public String getTimeQuantum() {
		return timeQuantum;
	}
	public void setTimeQuantum(String timeQuantum) {
		this.timeQuantum = timeQuantum;
	}
	@Column(name="price")
	public float getPrice() {
		return price;
	}
	
	
	public void setPrice(float price) {
		this.price = price;
	}
	@Column(name="create_time")
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	@Column(name="state")
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	@Column(name="cancel_time")
	public Date getCancelTime() {
		return cancelTime;
	}
	public void setCancelTime(Date cancelTime) {
		this.cancelTime = cancelTime;
	}
	
	
}
