package insurance;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.lti.dto.PolicyDto;
import com.lti.dto.RegisterDto;
import com.lti.service.AdminService;
import com.lti.service.RegisterService;



public class Test {

	@org.junit.Test
	public void registrationtest() {
		ApplicationContext ctx=new ClassPathXmlApplicationContext("spring-config.xml");
		RegisterService rs=(RegisterService)ctx.getBean("registerService");
		RegisterDto regdto=new RegisterDto();
		regdto.setEmail("abc@gmail.com");
		regdto.setFirstName("test first name");
		regdto.setLastName("test last name");
		regdto.setDob("11/11/1111");
		regdto.setGender("Male");
		regdto.setContact(987069962);
		regdto.setAddress("test address");
		regdto.setPassword("test123");
		regdto.setSecurityAnswer("test question");
		regdto.setSecurityQuestion("test");
		rs.register(regdto);
		
/*		CustomerService cs=(CustomerService)ctx.getBean("custservice");
		CustomerDetails c=new CustomerDetails();
		c.setAge(30);
		c.setName("Akshay");
		c.setEmail("Akshay@gmail.com");
		c.setUsername("Akshay");
		c.setPassword("Sushil");
		cs.getCustomerDetails(c);*/
	}
	
	@org.junit.Test
	public void AddPolicyTest() {
		ApplicationContext ctx=new FileSystemXmlApplicationContext("src/main/webapp/WEB-INF/spring-config.xml");
		AdminService aService=(AdminService)ctx.getBean("adminService");
		PolicyDto policydto=new PolicyDto();
		policydto.setPolicyname("ACNO");
		policydto.setDiscount(12);
		aService.addPolicy(policydto);
	}
}
