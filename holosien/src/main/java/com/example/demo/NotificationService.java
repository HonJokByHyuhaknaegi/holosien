package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class NotificationService {

	private JavaMailSender javaMailSender;

	@Autowired
	public NotificationService(JavaMailSender javaMailSender) {
		this.javaMailSender = javaMailSender;
	
	}

	public void sendNotification(EmailForm email)throws MailException {
		//send email
		SimpleMailMessage mail = new SimpleMailMessage();
		
		mail.setTo(email.getEmailAddress());
		mail.setFrom("dbrodwl@gmail.com");
		mail.setSubject("홀로지앵 인증번호입니다");
		mail.setText("인증번호 : "+email.getAuthNum());
		
		javaMailSender.send(mail);
	}
}
