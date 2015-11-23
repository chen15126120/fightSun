package ccn.medical.service;

import java.util.List;
import java.util.Map;

import ccn.medical.model.DoctorAppointmentTime;

public interface DoctorAppointmentTimeService {

	public List<DoctorAppointmentTime> queryDoctorIndexAppointmentTimes(Integer doctorId) throws Exception;
	
	@SuppressWarnings("rawtypes")
	public List<DoctorAppointmentTime> queryDoctorDayTimes(Map map) throws Exception;
}
