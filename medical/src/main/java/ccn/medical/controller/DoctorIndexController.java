package ccn.medical.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import ccn.medical.model.DoctorAppointmentTime;
import ccn.medical.model.DoctorInfo;
import ccn.medical.service.DoctorAppointmentTimeService;
import ccn.medical.service.DoctorInfoService;

import com.alibaba.fastjson.JSONArray;

/**
 * 医生主页
 * @author 
 *
 */
@Controller
public class DoctorIndexController { 
	private final Logger log = LoggerFactory.getLogger(DoctorIndexController.class); 
	private DoctorInfoService doctorInfoService;
	
	private DoctorAppointmentTimeService doctorAppointmentTimeService;
	
	public DoctorInfoService getDoctorInfoService() {
		return doctorInfoService;
	}
	@Autowired
	public void setDoctorInfoService(DoctorInfoService doctorInfoService) {
		this.doctorInfoService = doctorInfoService;
	}
	
	public DoctorAppointmentTimeService getDoctorAppointmentTimeService() {
		return doctorAppointmentTimeService;
	}
	
	@Autowired
	public void setDoctorAppointmentTimeService(
			DoctorAppointmentTimeService doctorAppointmentTimeService) {
		this.doctorAppointmentTimeService = doctorAppointmentTimeService;
	}
	/**
	 * 医生个人主页个人信息
	 * @param doctorId
	 * @param model
	 * @return
	 */
	@RequestMapping("di")
	public String queryDoctorIndex(@RequestParam("di") Integer doctorId,Map<String,Object> model,HttpServletRequest req,
			HttpServletResponse resp){
		try {
	    List<DoctorInfo> lisDoctorInfos   = doctorInfoService.queryDoctorHomeInfo(doctorId);
		model.put("lisDoctorInfos", lisDoctorInfos);
		log.info("成功——>医生主页个人信息:"+lisDoctorInfos);
		
		//医生每天发布的时间
		List<DoctorAppointmentTime> listdAppointmentTimes = doctorAppointmentTimeService.queryDoctorIndexAppointmentTimes(doctorId);
		String[] str = new String[listdAppointmentTimes.size()];
		
		for (int i = 0; i < listdAppointmentTimes.size(); i++) {
			DoctorAppointmentTime d = listdAppointmentTimes.get(i);
			if(d.getState() == 1 || d.getState() == 0){
				str[i] = "title:'可预约', backgroundColor:'#73e470',color:'#fff',borderColor:'#fff',start:"+d.getState();
			}else {
				str[i] = "title:'已预约', backgroundColor:'#73e470',color:'#fff',borderColor:'#fff',start:"+d.getState();
			}
		}
		
		
		PrintWriter out = resp.getWriter();
		out.print(JSONArray.toJSON(listdAppointmentTimes).toString());
		System.out.println("========="+JSONArray.toJSON(listdAppointmentTimes).toString());
		//model.put("listdAppointmentTimes", listdAppointmentTimes);
		log.info("成功——>医生主页发布时间情况:"+JSONArray.toJSON(listdAppointmentTimes).toString());
		
		} catch (Exception e) {
			e.printStackTrace();
			log.error("失败——>医生主页个人信息查看"+e.toString());
		}
		return "webpage/doctorIndex";
	}
	
	
	/**
	 * 医生主页 医生预约的时间（day）
	 * @param doctorId
	 * @param req
	 * @param resp
	 */
	@RequestMapping("dit")
	public void queryDoctorIndexTime(@RequestParam("di") Integer doctorId,HttpServletRequest req,
			HttpServletResponse resp){
		try {
			 /***
			  * 得到医生每天发布的时间并用list接收 
			  * 算法查找重复值
			  * 1.声明数组
			  * 2.冒泡排序得到重复的值 
			  * 3.数组赋重复值
			  * 4.遍历list结合 判断得到的值是否在数组中
			  * 5.声明List<Map<String, Object>>结合得到不重复数据
			  * 6.遍历数组得到重复值，并状态赋值为1 放置map集合
			  * 7.list结合转json并输出
			  */
			//医生每天发布的时间
			List<DoctorAppointmentTime> list = doctorAppointmentTimeService
					.queryDoctorIndexAppointmentTimes(doctorId);
			
			// long startTime=0;
			 String  array[] = new String[list.size()]; //声明数组  接收重复值
			 
			 for (int i = 0; i < list.size(); i++) {
				 DoctorAppointmentTime d1 = list.get(i);
				for (int j = i+1; j < list.size(); j++) {
					DoctorAppointmentTime d2 = list.get(j);
					if(d1.getStartTime().getTime() == d2.getStartTime().getTime()){//判断日期是否相同
						array[i] =   String.valueOf(d2.getStartTime().getTime());//把重复的日期赋值到数组中
					}
				}
			}
			 
			//把数组转成字符串
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < array.length; i++) {
				if(array[i] !=null){
					sb.append(array[i]);
				}
			}
			String arrayStr = sb.toString(); //数组转字符串结果
			List<Map<String, Object>> list3  = new ArrayList<Map<String, Object>>();
			for (int k = 0; k < list.size(); k++) {
				DoctorAppointmentTime d = list.get(k);  
				Map<String, Object> map = new HashMap<String, Object>();
				if(array.length  == list.size()){
						if(arrayStr.indexOf(String.valueOf(d.getStartTime().getTime())) != -1){//判断是否存在数组中
							
						}else {
							map.put("startTime",d.getStartTime());
							map.put("state", d.getState());
							list3.add(map);
						}
					
				}else {
					map.put("startTime",d.getStartTime());
					map.put("state", d.getState());
					list3.add(map);
				}
			}
			for (int i = 0; i < array.length; i++) {//遍历数组，并取取出重复值并且状态赋值为1
				Map<String, Object> mapS = new HashMap<String, Object>();
				if(array[i] !=null){
					mapS.put("startTime", Long.valueOf(array[i]));
					mapS.put("state", 1);
				}
				list3.add(mapS);
			}
			
			
			PrintWriter out = resp.getWriter();
			String json = JSONArray.toJSON(list3).toString();
			out.print(json);
			log.info("成功——>专家预约，专家问诊日期信息:"+json);
		} catch (Exception e) {
			e.printStackTrace();
			log.error("失败——>专家预约，专家问诊日期信息:"+e.toString());
		}
	}
	
	/**
	 *  专家预约 ， 专家每天问诊时间
	 * 
	 * @param doctorId
	 * @param startTime
	 * @param req
	 * @param resp
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("didt")
	public void queryDoctorDayTimes(@RequestParam("di") Integer doctorId,@RequestParam("dt") String startTime,HttpServletRequest req,
			HttpServletResponse resp){
		@SuppressWarnings("rawtypes")
		Map map = new HashMap();
		map.put("doctorId",doctorId);
		map.put("startTime",startTime);
		
		try {
			List<DoctorAppointmentTime> dayTimes = doctorAppointmentTimeService.queryDoctorDayTimes(map);
			PrintWriter out = resp.getWriter();
			String json = JSONArray.toJSON(dayTimes).toString();
			out.print(json);
			log.info("成功——>专家预约，专家每天会诊时间:"+json);
		} catch (Exception e) {
			e.printStackTrace();
			log.error("失败——>专家预约，专家每天会诊时间:"+e.toString());
		}
	}
}
