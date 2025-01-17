package egovframework.lab.web;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Validator;

import egovframework.lab.com.authenticator.Authenticator;



//TODO [Step 1-3-2] LoginController.java 에 login 명의 객체에 대해  @SessionAttributes 설정 하기
//이 부분은 login 객체를 Session 객체에 저장하는 방법이다.
@Controller
public class LoginController {

	private static final Logger LOGGER = LoggerFactory.getLogger(LoginController.class);

    @Autowired
    @Qualifier("loginCommandValidator")
    private Validator loginCommandValidator;

    @Resource(name = "LoginAuthenticator")
    private Authenticator authenticator;
    

    
	private String formView = "login/loginForm";
	private String successView = "login/loginSuccess";

	private String getFormView() {
		return formView;
	}

	private String getSuccessView() {
		return successView;
	}

	public void setFormView(String formView) {
		this.formView = formView;
	}

	public void setSuccessView(String successView) {
		this.successView = successView;
	}


	/*
	 * TODO [Step 1-2-4] @RequestMapping - method별 mapping 전략
	 * 웹을 통해 들어오는 url 은 loginProcess1.do 이며 Get/Post 형식으로 넘어온다. 
	 * 두가지를 다받는 메소드를 만들어보자.
	 */
	
	/*
	 * TODO [Step 1-2-5] @ModelAttribute - 모델의 초기화
	 * ModelAttribute를 이용하여 loginTypes와 login 객체를 초기화 해주는 메소드를 만든다. 
	 */
	
	
	

}
