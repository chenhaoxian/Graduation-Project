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
                       
        //����session,���ʼ�����������ͨѶ��
        mailSession.setDebug(true);
        MimeMessage message = new MimeMessage(mailSession);
        message.setSubject("�û��������"); // �����ʼ�����
        message.setText(msg); // �����ʼ�����
//        message.setHeader(mail_head_name, mail_head_value); // �����ʼ�����
         
        message.setSentDate(new Date()); // �����ʼ���������
        InternetAddress address = new InternetAddress(email, name);
        message.setFrom(address); // �����ʼ������ߵĵ�ַ
        InternetAddress toAddress = new InternetAddress("xiannzb@163.com"); // �����ʼ����շ��ĵ�ַ
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
		
