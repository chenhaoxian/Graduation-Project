package util;

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailUtil {
	
	public boolean sendMail(String name, String email, String msg){
    try{
        Properties props=new Properties();
        props.put("mail.smtp.host", "smtp.163.com");
        props.put("mail.smtp.auth", "true");
        Session mailSession = Session.getInstance(props);
                       
        //设置session,和邮件服务器进行通讯。
        mailSession.setDebug(true);
        MimeMessage message = new MimeMessage(mailSession);
        message.setSubject("用户反馈意见"); // 设置邮件主题
        message.setText(msg); // 设置邮件正文
//        message.setHeader(mail_head_name, mail_head_value); // 设置邮件标题
         
        message.setSentDate(new Date()); // 设置邮件发送日期
        InternetAddress address = new InternetAddress(email, name);
        message.setFrom(address); // 设置邮件发送者的地址
        InternetAddress toAddress = new InternetAddress("xiannzb@163.com"); // 设置邮件接收方的地址
        message.addRecipient(Message.RecipientType.TO, toAddress);
        Transport transport = null;
        transport = mailSession.getTransport("smtp");
        
        message.saveChanges();
        transport.connect("smtp.163.com", "xiannzb", "xian9266.");
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();
        
        System.out.println("send success!");
        return true;
    }catch (Exception ex){
        ex.printStackTrace();
        return false;
    }
	}
}
		
