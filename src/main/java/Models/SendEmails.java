/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Shehan Tis
 */
public class SendEmails {

    private static Session m_Session;
    private static Message m_simpleMessage;
    private static InternetAddress m_fromAddress;
    private static InternetAddress m_toAddress;
    private static Properties m_properties;

    public boolean sendMail(String m_from, String m_to, String m_subject, String m_body) {
        boolean rslt = false;

        try {
            m_properties = new Properties();
            m_properties.put("mail.smtp.host", "smtp.gmail.com");
            m_properties.put("mail.smtp.socketFactory.port", "465");
            m_properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            m_properties.put("mail.smtp.auth", "true");
            m_properties.put("mail.smtp.port", "465");
            m_Session = Session.getDefaultInstance(m_properties, new Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("trs.srilanka@gmail.com", "trsAdmin123"); // username and the password
                }
            });
            m_simpleMessage = new MimeMessage(m_Session);
            m_fromAddress = new InternetAddress(m_from);
            m_toAddress = new InternetAddress(m_to);
            m_simpleMessage.setFrom(m_fromAddress);
            m_simpleMessage.setRecipient(Message.RecipientType.TO, m_toAddress);
            m_simpleMessage.setSubject(m_subject);
            m_simpleMessage.setContent(m_body, "text/html");
            Transport.send(m_simpleMessage);
            rslt = true;
        } catch (MessagingException ex) {
            ex.printStackTrace();
            rslt = false;
        } finally {
            return rslt;
        }
    }
}
