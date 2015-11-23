package ccn.medical.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ccn.medical.dao.DoctorAppointmentTimeMapper;
import ccn.medical.model.DoctorAppointmentTime;
import ccn.medical.service.DoctorAppointmentTimeService;

@Service
public class DoctorAppointmentTimeServiceImpl implements DoctorAppointmentTimeService{

	@Autowired
	private DoctorAppointmentTimeMapper doctorAppointmentTimeMapper;
	
	@Override
	public List<DoctorAppointmentTime> queryDoctorIndexAppointmentTimes(Integer doctorId)
			throws Exception {
		return doctorAppointmentTimeMapper.queryDoctorIndexAppointmentTimes(doctorId);
	}

	/**
	 *  医生某天出诊时间
	 * 
	 */
	@Override
	public List<DoctorAppointmentTime> queryDoctorDayTimes(@SuppressWarnings("rawtypes") Map map)
			throws Exception {
		return doctorAppointmentTimeMapper.queryDoctorDayTimes(map);
	}

}
