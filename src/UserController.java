package com.nightcat;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.security.auth.callback.ConfirmationCallback;
import javax.sql.DataSource;

import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mysql.fabric.xmlrpc.base.Data;

import org.springframework.ui.ModelMap;
@Controller
public class UserController{ 
	// �����˵� ���� �� ��Ȩ��
	public static String myEmailAccount = "1281634537@qq.com";
	public static String myEmailPassword = "euuhemixpumabace";
	
	// ����������� SMTP ��������ַ
	public static String myEmailSMTPHost = "smtp.qq.com";
	
	// �ռ�������
	//public static String receiveMailAccount = "710889210@qq.com";
	
   
   @RequestMapping("/showLogin")
   public String showLogin(ModelMap model) {
      return "login";
   }
   
   @RequestMapping("/showRegister")
   public String showRegister(ModelMap model) {
      return "register";
   }
   
   @RequestMapping(value="/login",method = RequestMethod.POST)
   public String login(String name,String password,ModelMap model) {
		Context context;
		try {
			context = new InitialContext();
			DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/bitcandy");
			Connection conn = ds.getConnection();
			PreparedStatement psttm = conn.prepareStatement("select * from bitcandy.user where email=?");
			psttm.setString(1, name);
			ResultSet resultSet = psttm.executeQuery();
			if(!resultSet.next()) {
				model.addAttribute("message", "û��"+"'"+name+"'����û�");
				return "no";
			}else {
				String sqlPassword = resultSet.getString("password");
				if(sqlPassword.equals(password)) {
					if(resultSet.getInt("email_activated") == 1) {
						model.addAttribute("name", name);
						model.addAttribute("password", password);
						return "index";
					}else {
						model.addAttribute("message", "�����˺Ż�û�м���");
						return "no";
					}	
				}else {
					model.addAttribute("message", "�������");
					return "no";
				}
			}
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	   return null;
   }
   
   @RequestMapping(value="/confirm",method = RequestMethod.GET)
   public String Confirm(String email,ModelMap model) {
		Context context;
		try {
			context = new InitialContext();
			DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/bitcandy");
			Connection conn = ds.getConnection();
			PreparedStatement psttm = conn.prepareStatement("UPDATE `bitcandy`.`user` SET `email_activated`='1' WHERE `email`=?");
			psttm.setString(1, email);
			int resultCode = psttm.executeUpdate();
			if(resultCode != 0) {
				model.addAttribute("message", "�����˺��Ѿ��ɹ�����");
				return "ok";
			}else {
				model.addAttribute("message", "����ʧ��");
				return "no";
			}
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
   }
   
   @RequestMapping(value="/register",method = RequestMethod.POST)
   public String register(String name,String password,ModelMap model) {
		Context context;

			try {
				context = new InitialContext();
				DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/bitcandy");
				Connection conn = ds.getConnection();
				PreparedStatement psttm = conn.prepareStatement("select * from bitcandy.user where email=?");
				psttm.setString(1, name);
				ResultSet resultSet = psttm.executeQuery();
				if(resultSet.next()) {
					model.addAttribute("message", "�Ѵ���"+"'"+name+"'����û�");
					return "no";
				}else {
					//INSERT INTO `bitcandy`.`user` (`email`, `password`, `regist_time`) VALUES ('123@qq.com', '123', 'now()');
					PreparedStatement psttm2 = conn.prepareStatement("INSERT INTO `bitcandy`.`user` (`email`, `password`, `regist_time`) VALUES (?, ?, now())");
					psttm2.setString(1, name);
					psttm2.setString(2, password);
					psttm2.execute();
						
					//������֤�ʼ�
					// 1. ������������, ���������ʼ��������Ĳ�������
				    Properties props = new Properties();                    // ��������
				    props.setProperty("mail.transport.protocol", "smtp");   // ʹ�õ�Э�飨JavaMail�淶Ҫ��
				    props.setProperty("mail.smtp.host", myEmailSMTPHost);   // �����˵������ SMTP ��������ַ
				    props.setProperty("mail.smtp.auth", "true");            // ��Ҫ������֤
			
				    // SMTP ����ʹ�� SSL ��ȫ��֤
				    final String smtpPort = "465";
				    props.setProperty("mail.smtp.port", smtpPort);
				    props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
				    props.setProperty("mail.smtp.socketFactory.fallback", "false");
				    props.setProperty("mail.smtp.socketFactory.port", smtpPort);

			
				    // 2. �������ô����Ự����, ���ں��ʼ�����������
				    Session session = Session.getInstance(props);
				    session.setDebug(true);                                 // ����Ϊdebugģʽ, ���Բ鿴��ϸ�ķ��� log
			
				    // 3. ����һ���ʼ�
				    String url = "http://localhost:8080/BitCandy/confirm?email="+name;		//������֤url
				    MimeMessage message = createMimeMessage(session, myEmailAccount, name,url);
			
				    // 4. ���� Session ��ȡ�ʼ��������
				    Transport transport = session.getTransport();
			
				    transport.connect(myEmailAccount, myEmailPassword);
			
				    // 6. �����ʼ�, �������е��ռ���ַ, message.getAllRecipients() ��ȡ�������ڴ����ʼ�����ʱ��ӵ������ռ���, ������, ������
				    transport.sendMessage(message, message.getAllRecipients());
			
				    // 7. �ر�����
				    transport.close();
				}
			}
			 catch (NamingException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (MessagingException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		return null;
   }
   
   /**
    * ����һ��ֻ�����ı��ļ��ʼ�
    *
    * @param session �ͷ����������ĻỰ
    * @param sendMail ����������
    * @param receiveMail �ռ�������
    * @return
    * @throws Exception
    */
   public static MimeMessage createMimeMessage(Session session, String sendMail, String receiveMail,String url) throws Exception {
       // 1. ����һ���ʼ�
       MimeMessage message = new MimeMessage(session);

       // 2. From: �����ˣ��ǳ��й�����ɣ����ⱻ�ʼ�����������Ϊ���ķ������������ʧ�ܣ����޸��ǳƣ�
       message.setFrom(new InternetAddress(sendMail, "BitCandy", "UTF-8"));

       // 3. To: �ռ��ˣ��������Ӷ���ռ��ˡ����͡����ͣ�
       message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail, "BitCandy�û�", "UTF-8"));

       // 4. Subject: �ʼ����⣨�����й�����ɣ����ⱻ�ʼ�����������Ϊ���ķ������������ʧ�ܣ����޸ı��⣩
       message.setSubject("BitCandy������֤", "UTF-8");

       // 5. Content: �ʼ����ģ�����ʹ��html��ǩ���������й�����ɣ����ⱻ�ʼ�����������Ϊ���ķ������������ʧ�ܣ����޸ķ������ݣ�
       message.setContent("BitCandy�û����, ������е�ַ���������˺ţ�"+url, "text/html;charset=UTF-8");

       // 6. ���÷���ʱ��
       message.setSentDate(new Date());

       // 7. ��������
       message.saveChanges();

       return message;
   }
   
}