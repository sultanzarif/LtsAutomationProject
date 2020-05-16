package utils;

import org.apache.log4j.Logger;

import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.util.Arrays;
import java.util.Properties;

public class MailSender {

    private Logger LOG = Logger.getLogger(MailSender.class);
    private Session mSession;
    private PropertyManager config = PropertyManager.getInstance();

    public MailSender() {

        // Create object of Property file
        Properties props = new Properties();

        // this will set host of server- you can change based on your requirement
        props.put("mail.smtp.host", config.getString(Configs.MAIL_SMTP_HOST));
        //
        //        // set the port of socket factory
        //        props.put("mail.smtp.socketFactory.port", "587");
        //
        //        // set socket factory
        //        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

        // set the authentication to true
        props.put("mail.smtp.auth", "true");

        // set the port of SMTP server
        props.put("mail.smtp.port", config.getString(Configs.MAIL_SMTP_PORT));
        props.put("mail.transport.protocol", "smtp");

        // This will handle the complete authentication
        mSession = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(config.getString(Configs.MAIL_USERNAME),
                        config.getString(Configs.MAIL_PASSWORD));
            }
        });

    }

    public void sendMail(String body, String attachment) {
        try {

            // Create object of MimeMessage class
            final MimeMessage message = new MimeMessage(mSession);

            // Set the from address
            message.setFrom(config.getString(Configs.MAIL_FROM_EMAIL_ID));

            // Set the recipient address
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(config.getString(Configs.MAIL_TO_EMAIL_ID)));
            LOG.info("-------->>>" + Message.RecipientType.TO + Arrays
                    .toString(InternetAddress.parse(config.getString(Configs.MAIL_TO_EMAIL_ID))));

            // Add the subject link
            message.setSubject(
                    config.getString(Configs.MAIL_SUBJECT) + " " + config.getString(Configs.ENV_SERVER).toUpperCase()
                            + "_" + config.getString(Configs.ENV_DEVICE).toUpperCase());

            // Create object to add multimedia type content
            BodyPart messageBodyPart1 = new MimeBodyPart();

            // Set the body of email
            body = config.getString(Configs.MAIL_HEADER) + '\n' + config.getString(Configs.MAIL_BODY) + '\n' + body
                    + '\n' + "Report link --> https://ltswebdev.testrail.io/index.php?/plans/view/604" +  '\n' + config.getString(Configs.MAIL_FOOTER);
            messageBodyPart1.setText(body);

            // Create object of MimeMultipart class
            Multipart multipart = new MimeMultipart();

            // add body part 1
            multipart.addBodyPart(messageBodyPart1);

            /*
            // Attachment is removed in the mail.
            MimeBodyPart messageBodyPart2 = new MimeBodyPart();

            // Create data source and pass the filename
            DataSource source = new FileDataSource(REPORT_PATH);

            // set the handler
            messageBodyPart2.setDataHandler(new DataHandler(source));

            // set the file
            messageBodyPart2.setFileName(REPORT_ZIP_FILE);

            // add body part 2
            multipart.addBodyPart(messageBodyPart2);
             */

            // add attachment
            if (attachment != null && !attachment.isEmpty()) {
                // Create another object to add another content
                MimeBodyPart messageBodyPart3 = new MimeBodyPart();

                // Create data source and pass the filename
                DataSource source2 = new FileDataSource(attachment);

                // set the handler
                //messageBodyPart3.setDataHandler(new DataHandler(source));

                // set the file
                messageBodyPart3.setFileName(attachment);

                // add body part 2
                multipart.addBodyPart(messageBodyPart3);
            }

            // set the content
            message.setContent(multipart);

            // finally send the email
            Transport.send(message);

            LOG.info("=====    Email Sent    =====");

        } catch (MessagingException e) {
            LOG.error("=====    Email Couldn't Sent    ===== " + e.getMessage());
        }
    }
}