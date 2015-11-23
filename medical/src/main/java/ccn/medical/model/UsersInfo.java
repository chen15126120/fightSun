package ccn.medical.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="soul_users_info")
public class UsersInfo {
	
	 @Column(name="id")
	 private int id;
	 
	 @Column(name="hospital_id")
	 private int hospitalId;
	 
	 @Column(name="user_name")
	 private String userName;
	 
	 @Column(name="password")
	 private String password;
	 
	 @Column(name="email")
	 private String email;
	 
	 @Column(name="phone")
	 private String phone;
	 
	 @Column(name="state")
	 private byte state;
	 
	 @Column(name="create_time")
	 private Date createTime;
	 
	 @Column(name="type_id")
	 private int typeId;
	 
	 @Column(name="type")
	 private String type;
	 
	 @Column(name="real_name")
	 private String realName;
	 
	 @Column(name="sex")
	 private int sex;
	 
	 @Column(name="birthday")
	 private Date birthday;
	 
	 @Column(name="idcard")
	 private String idcard;
	 
	 @Column(name="bloodtype")
	 private String bloodtype;
	 
	 @Column(name="picture")
	 private String picture;
	 
	 @Column(name="province_code")
	 private String provinceCode;
	 
	 @Column(name="province_name")
	 private String provinceName;
	 
	 @Column(name="city_code")
	 private String cityCode;
	 
	 @Column(name="city_name")
	 private String cityName;
	 
	 @Column(name="area_code")
	 private String areaCode;
	 
	 @Column(name="area_name")
	 private String areaName;
	 
	 @Column(name="detailed_address")
	 private String detailedAddress;
	 
	 @Column(name="guardian_name1")
	 private String guardianName1;
	 
	 @Column(name="guardian_idcard1")
	 private String guardianIdcard1;
	 
	 @Column(name="guardian_relation1")
	 private String guardianRelation1;
	 
	 @Column(name="guardian_phone1")
	 private String guardianPhone1;
	 
	 @Column(name="guardian_address1")
	 private String guardianAddress1;
	 
	 @Column(name="guardian_name2")
	 private String guardianName2;
	 
	 @Column(name="guardian_idcard2")
	 private String guardianIdcard2;
	 
	 @Column(name="guardian_relation2")
	 private String guardianRelation2;
	 
	 @Column(name="guardian_phone2")
	 private String guardianPhone2;
	 
	 @Column(name="guardian_address2")
	 private String guardianAddress2;
	 
	 @Column(name="autograph")
	 private String autograph;
	 
	 @Column(name="ip")
	 private String ip;
	 
	 @Column(name="last_login_time")
	 private Date lastLoginTime;
	 
	 @Column(name="describe")
	 private String describe;
	 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getHospitalId() {
		return hospitalId;
	}
	public void setHospitalId(int hospitalId) {
		this.hospitalId = hospitalId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public byte getState() {
		return state;
	}
	public void setState(byte state) {
		this.state = state;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getBloodtype() {
		return bloodtype;
	}
	public void setBloodtype(String bloodtype) {
		this.bloodtype = bloodtype;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getProvinceCode() {
		return provinceCode;
	}
	public void setProvinceCode(String provinceCode) {
		this.provinceCode = provinceCode;
	}
	public String getProvinceName() {
		return provinceName;
	}
	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}
	public String getCityCode() {
		return cityCode;
	}
	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getAreaCode() {
		return areaCode;
	}
	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public String getDetailedAddress() {
		return detailedAddress;
	}
	public void setDetailedAddress(String detailedAddress) {
		this.detailedAddress = detailedAddress;
	}
	public String getGuardianName1() {
		return guardianName1;
	}
	public void setGuardianName1(String guardianName1) {
		this.guardianName1 = guardianName1;
	}
	public String getGuardianIdcard1() {
		return guardianIdcard1;
	}
	public void setGuardianIdcard1(String guardianIdcard1) {
		this.guardianIdcard1 = guardianIdcard1;
	}
	public String getGuardianRelation1() {
		return guardianRelation1;
	}
	public void setGuardianRelation1(String guardianRelation1) {
		this.guardianRelation1 = guardianRelation1;
	}
	public String getGuardianPhone1() {
		return guardianPhone1;
	}
	public void setGuardianPhone1(String guardianPhone1) {
		this.guardianPhone1 = guardianPhone1;
	}
	public String getGuardianAddress1() {
		return guardianAddress1;
	}
	public void setGuardianAddress1(String guardianAddress1) {
		this.guardianAddress1 = guardianAddress1;
	}
	public String getGuardianName2() {
		return guardianName2;
	}
	public void setGuardianName2(String guardianName2) {
		this.guardianName2 = guardianName2;
	}
	public String getGuardianIdcard2() {
		return guardianIdcard2;
	}
	public void setGuardianIdcard2(String guardianIdcard2) {
		this.guardianIdcard2 = guardianIdcard2;
	}
	public String getGuardianRelation2() {
		return guardianRelation2;
	}
	public void setGuardianRelation2(String guardianRelation2) {
		this.guardianRelation2 = guardianRelation2;
	}
	public String getGuardianPhone2() {
		return guardianPhone2;
	}
	public void setGuardianPhone2(String guardianPhone2) {
		this.guardianPhone2 = guardianPhone2;
	}
	public String getGuardianAddress2() {
		return guardianAddress2;
	}
	public void setGuardianAddress2(String guardianAddress2) {
		this.guardianAddress2 = guardianAddress2;
	}
	public String getAutograph() {
		return autograph;
	}
	public void setAutograph(String autograph) {
		this.autograph = autograph;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public Date getLastLoginTime() {
		return lastLoginTime;
	}
	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	 
	 
	 
	 
	 
	 
	 
	 
}
