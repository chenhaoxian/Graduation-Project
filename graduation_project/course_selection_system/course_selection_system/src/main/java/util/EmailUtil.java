package util;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

public class EmailUtil {
	
	public boolean sendMail(String name, String email, String msg){
    try{
        final Properties props=new Properties();
        props.put("mail.smtp.host", "smtp.163.com");
        props.put("mail.smtp.auth", "true");
        // 发件人的账号
        props.put("mail.user", "xiannzb@163.com");
        // 访问SMTP服务时需要提供的密码
        props.put("mail.password", "xian9266.");
        
        // 构建授权信息，用于进行SMTP进行身份验证
        Authenticator authenticator = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                // 用户名、密码
                String userName = props.getProperty("mail.user");
                String password = props.getProperty("mail.password");
                return new PasswordAuthentication(userName, password);
            }
        };
//        
     // 使用环境属性和授权信息，创建邮件会话
        Session mailSession = Session.getInstance(props, authenticator);
        // 创建邮件消息
        MimeMessage message = new MimeMessage(mailSession);
        // 设置发件人
        InternetAddress form = new InternetAddress(
                props.getProperty("mail.user"));
        message.setFrom(form);
        
        // 设置收件人
        InternetAddress to = new InternetAddress("xiannzb@163.com");
        message.setRecipient(RecipientType.TO, to);
        
     // 设置邮件标题
        message.setSubject("用户反馈意见");
        
     // 设置邮件的内容体
        message.setContent(msg, "text/html;charset=UTF-8");

        // 发送邮件
         Transport.send(message);
        
//        Session mailSession = Session.getInstance(props);
                       
//        //设置session,和邮件服务器进行通讯。
//        mailSession.setDebug(true);
//        MimeMessage message = new MimeMessage(mailSession);
//        message.setSubject("用户反馈意见"); // 设置邮件主题
//        message.setText(msg); // 设置邮件正文
////        message.setHeader(mail_head_name, mail_head_value); // 设置邮件标题
//         
//        message.setSentDate(new Date()); // 设置邮件发送日期
//        InternetAddress address = new InternetAddress("xiannzb@163.com", name);
//        message.setFrom(address); // 设置邮件发送者的地址
//        InternetAddress toAddress = new InternetAddress("474613779@qq.com"); // 设置邮件接收方的地址
//        message.addRecipient(Message.RecipientType.TO, toAddress);
//        Transport transport = null;
//        transport = mailSession.getTransport("smtp");
//        
//        message.saveChanges();
//        transport.connect("smtp.163.com", "xiannzb", "xian9266.");
//        transport.sendMessage(message, message.getAllRecipients());
//        transport.close();
//    	Properties prop = new Properties();
//    	prop.setProperty("mail.host", "smtp.163.com");
//    	prop.setProperty("mail.transport.protocol", "smtp");
//    	prop.setProperty("mail.smtp.auth", "true");
//    	Session session = Session.getInstance(prop);
//    	session.setDebug(true);
//    	Transport ts = session.getTransport();
//    	ts.connect("smtp.163.com", "xiannzb", "xian9266.");
//    	MimeMessage message = new MimeMessage(session);
//    	message.setFrom(new InternetAddress("xiannzb@163.com"));
//    	message.setRecipient(Message.RecipientType.TO, new InternetAddress("xiannzb@163.com"));
//    	message.setSubject("只包含文本的简单邮件");
//    	message.setContent("你好啊！", "text/html;charset=UTF-8");
//    	ts.sendMessage(message, message.getAllRecipients());
//    	ts.close();
    	
        System.out.println("send success!");
        return true;
    }catch (Exception ex){
        ex.printStackTrace();
        return false;
    }
	}
	
	
}
		
