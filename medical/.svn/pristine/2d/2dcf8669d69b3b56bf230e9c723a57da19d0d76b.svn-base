package ccn.medical.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONArray;

import ccn.medical.model.DoctorInfo;
import ccn.medical.service.DoctorInfoService;

@Controller
public class DoctorInfoController {
	private final Logger log = LoggerFactory.getLogger(DoctorInfoController.class); 
	private DoctorInfoService doctorInfoService;

	public DoctorInfoService getDoctorInfoService() {
		return doctorInfoService;
	}
	@Autowired
	public void setDoctorInfoService(DoctorInfoService doctorInfoService) {
		this.doctorInfoService = doctorInfoService;
	}
	
	/**
	 * 专家预约  专家信息
	 * @param model
	 * @return
	 */
	@RequestMapping("ad")
	public String getAppointmentDoctor(Map<String,Object> model,int departmentsId){
		try {
			List<DoctorInfo> listdDoctorInfos = doctorInfoService.queryAppointment(departmentsId);
			model.put("listdDoctorInfos", listdDoctorInfos);
			log.info("预约科室编号:"+departmentsId+",专家预约医生信息:"+JSONArray.toJSON(listdDoctorInfos).toString());
		} catch (Exception e) {
			e.printStackTrace();
			log.error("专家预约信息错误:"+e.toString());
		}
		return "webpage/appointment";
	}
}