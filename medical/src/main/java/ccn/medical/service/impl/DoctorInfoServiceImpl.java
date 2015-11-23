package ccn.medical.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ccn.medical.dao.DoctorInfoMapper;
import ccn.medical.model.DoctorInfo;
import ccn.medical.service.DoctorInfoService;

@Service
public class DoctorInfoServiceImpl implements DoctorInfoService{

	@Autowired
	private DoctorInfoMapper doctorInfoMapper;

	@Override
	public List<DoctorInfo> queryIndexDoctorInfos() throws Exception {
		return doctorInfoMapper.queryIndexDoctorInfos();
	}

	/**
	 * 预约专家医生
	 */
	@Override
	public List<DoctorInfo> queryAppointment(int departmentsId)
			throws Exception {
		return doctorInfoMapper.queryAppointment(departmentsId);
	}

	/**
	 * 医生编号查询医生信息
	 */
	@Override
	public List<DoctorInfo> queryDoctorHomeInfo(int doctorId) throws Exception{
		return doctorInfoMapper.queryDoctorHomeInfo(doctorId);
	}
}
