package com.lti.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.dto.InsuranceFourWheelerDto;
import com.lti.dto.InsuranceTwoWheelerDto;
import com.lti.dto.UserLoginDTO;
import com.lti.entity.PolicyEntity;
import com.lti.entity.User;
import com.lti.service.BuyInsuranceService;

@Controller
@SessionAttributes({"estimation","user"})
public class BuyInsuranceController {

	@Autowired
	private BuyInsuranceService buyInsuranceService;
	
	@RequestMapping(path="/buyinsurancecontroller",method=RequestMethod.POST)
	public String BuyInsurance() {
			return "dropdownController";
	}
	@RequestMapping(path="/buyinsurancecontroller2",method=RequestMethod.POST)   //BIKE
	public String BuyInsuranceBike() {
			return "dropdownController2";
	}
	
	@RequestMapping(path="/dropdownController",method=RequestMethod.POST)
	public String setDropDown(Map<String, Object> model) {
		List<PolicyEntity> policylist=buyInsuranceService.getPolicy();
		model.put("listOfPolicy",policylist);
		
		return  "/CarInsuranceBuy.jsp";
	}
	@RequestMapping(path="/dropdownController2",method=RequestMethod.POST)  //BIKE
	public String setDropDownBike(Map<String, Object> model) {
		List<PolicyEntity> policylist=buyInsuranceService.getPolicy();
		model.put("listOfPolicy",policylist);
		
		return  "/BikeInsuranceBuy.jsp";
	}
	
	@RequestMapping(path="/estimationController",method=RequestMethod.POST)
	public String ShowEstimation( InsuranceFourWheelerDto dto,Map<String, Object> model,HttpSession session) {//,Map model
		double value=buyInsuranceService.CalculateEstimation(dto);
		
		model.put("estimation", dto);
		dto.setEstimate(value);
		//model.put("estimation", value);
		//model.put("fwdto", dto);
		return  "/Estimation.jsp";
	}
	@RequestMapping(path="/estimationController2",method=RequestMethod.POST)   //BIKE
	public String ShowEstimation( InsuranceTwoWheelerDto dto,Map<String, Object> model,HttpSession session) {//,Map model
		double value=buyInsuranceService.CalculateEstimationBike(dto);
		dto.setEstimate(value);
		value=value*(dto.getYears()*12);
		dto.setEstimate(value);
		model.put("estimation", dto);
		//model.put("estimation", value);
		//model.put("fwdto", dto);
		return  "/Estimation2.jsp";
	}
	
	
//PAYMENT GATEWAY
		/*@RequestMapping(path="/paymentGatewayController")
		public String PaymentGateway(@ModelAttribute("estimation") InsuranceFourWheelerDto dto,HttpServletResponse response ) {			
			String str1="redirect:http://192.168.101.5:8585/Online-Banking/controller/payment-gateway?partnerAcno=341&txAmount=" +dto.getEstimate()+"&redirectUrl=http://192.168.100.119:8182/insurance/controller/paymentStatus";
			String url = response.encodeURL("http://192.168.101.5:8585/Online-Banking/controller/payment-gateway?partnerAcno=341&txAmount="+dto.getEstimate()+"&redirectUrl=http://192.168.100.119:8182/insurance/controller/paymentStatus");
			System.out.println("inside this method..");
			//return "redirect:/index.jsp";
			//return	"redirect:http://192.168.100.238:9090/Online-Banking-System/controller/payment-gateway?partnerAcno=181&txAmount=1000&redirectUrl=http://192.168.100.119:8182/insurance/controller/paymentStatus";
			//return str1;
			return "/hello.jsp";
		}*/
	
	@RequestMapping(path="/paymentGatewayController")
	public String PaymentGateway(HttpSession session) {
		InsuranceFourWheelerDto dto = (InsuranceFourWheelerDto) session.getAttribute("estimation1");
		//System.out.println(dto.getEstimate());
		String str1="redirect:http://192.168.101.5:8585/Online-Banking/controller/payment-gateway?partnerAcno=341&txAmount=500&redirectUrl=http://192.168.100.119:8182/insurance/controller/paymentStatus";
		return str1;
	}

		/*	@RequestMapping(path="/paymentGatewayController2",method=RequestMethod.POST)
			public String PaymentGatewayBike(@ModelAttribute("estimation") InsuranceTwoWheelerDto dto ) {

				String str1="redirect:/http://192.168.101.5:8585/Online-Banking/controller/payment-gateway?partnerAcno=12345&txAmount=" +dto.getEstimate()+"&redirectUrl=http://192.168.100.119:8182/insurance/controller/paymentStatusBike";
				return str1;
			}*/
	
	//String str1="redirect:http://192.168.101.5:8585/Online-Banking/controller/payment-gateway?partnerAcno=341&txAmount=500&redirectUrl=http://192.168.100.119:8182/insurance/controller/paymentStatus";

	
	@RequestMapping(path="/paymentStatus",method=RequestMethod.POST)
	public String successfulTransaction(Map<String,Object> model,HttpSession session) {
	InsuranceFourWheelerDto dto = (InsuranceFourWheelerDto) model.get("estimation");
	User user = (User) session.getAttribute("user");
	buyInsuranceService.addInsurance(dto, user);
		return  "/insurancebuyconfirmation.jsp";
	}
@RequestMapping(path="/paymentStatusBike",method=RequestMethod.POST)
public String successfulTransactionBike(Map<String,Object> model,HttpSession session) {
InsuranceTwoWheelerDto dto = (InsuranceTwoWheelerDto) model.get("estimation");
User user = (User) session.getAttribute("user");
buyInsuranceService.addInsurance(dto, user);
	return  "/insurancebuyconfirmation.jsp";
}
/*@ModelAttribute("estimation") InsuranceFourWheelerDto dto,*/
/*@ModelAttribute("user") User user*/
}

