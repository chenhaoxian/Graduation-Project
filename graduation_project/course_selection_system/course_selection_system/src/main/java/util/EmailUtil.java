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
        // �����˵��˺�
        props.put("mail.user", "xiannzb@163.com");
        // ����SMTP����ʱ��Ҫ�ṩ������
        props.put("mail.password", "xian9266.");
        
        // ������Ȩ��Ϣ�����ڽ���SMTP���������֤
        Authenticator authenticator = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                // �û���������
                String userName = props.getProperty("mail.user");
                String password = props.getProperty("mail.password");
                return new PasswordAuthentication(userName, password);
            }
        };
//        
     // ʹ�û������Ժ���Ȩ��Ϣ�������ʼ��Ự
        Session mailSession = Session.getInstance(props, authenticator);
        // �����ʼ���Ϣ
        MimeMessage message = new MimeMessage(mailSession);
        // ���÷�����
        InternetAddress form = new InternetAddress(
                props.getProperty("mail.user"));
        message.setFrom(form);
        
        // �����ռ���
        InternetAddress to = new InternetAddress("xiannzb@163.com");
        message.setRecipient(RecipientType.TO, to);
        
     // �����ʼ�����
        message.setSubject("�û��������");
        
     // �����ʼ���������
        message.setContent(msg, "text/html;charset=UTF-8");

        // �����ʼ�
         Transport.send(message);
        
//        Session mailSession = Session.getInstance(props);
                       
//        //����session,���ʼ�����������ͨѶ��
//        mailSession.setDebug(true);
//        MimeMessage message = new MimeMessage(mailSession);
//        message.setSubject("�û��������"); // �����ʼ�����
//        message.setText(msg); // �����ʼ�����
////        message.setHeader(mail_head_name, mail_head_value); // �����ʼ�����
//         
//        message.setSentDate(new Date()); // �����ʼ���������
//        InternetAddress address = new InternetAddress("xiannzb@163.com", name);
//        message.setFrom(address); // �����ʼ������ߵĵ�ַ
//        InternetAddress toAddress = new InternetAddress("474613779@qq.com"); // �����ʼ����շ��ĵ�ַ
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
//    	message.setSubject("ֻ�����ı��ļ��ʼ�");
//    	message.setContent("��ð���", "text/html;charset=UTF-8");
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
		
