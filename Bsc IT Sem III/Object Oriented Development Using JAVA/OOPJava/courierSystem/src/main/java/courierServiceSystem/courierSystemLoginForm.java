/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package courierServiceSystem;

import java.awt.Color;
import java.awt.Image;
import javax.swing.ImageIcon;
import courierServiceSystem.courierSystemDashboard;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author sandeshkey
 */
public class courierSystemLoginForm extends javax.swing.JFrame {

    /**
     * Creates new form courierSystemLoginForm
     */
    public courierSystemLoginForm() {
        initComponents();
        scaleImage();
    }
    
    public void scaleImage()
    {
        ImageIcon icon = new ImageIcon("/Users/sandeshkey/Desktop/Courier Management/Courier.png");
        imgLabel.setIcon(icon);  //Displays the image in  jLabel (without appropriate size)
        Image img = icon.getImage();
        Image scaleImage = img.getScaledInstance(imgLabel.getWidth(), imgLabel.getHeight(), Image.SCALE_SMOOTH);
        ImageIcon imgScaled = new ImageIcon(scaleImage);
        imgLabel.setIcon(imgScaled);
    }
    

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        imgLabel = new javax.swing.JLabel();
        jPanelLogin = new javax.swing.JPanel();
        jLabelTitle = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        jTextFieldUserName = new javax.swing.JTextField();
        jLoginPasswordField = new javax.swing.JPasswordField();
        jSeparator3 = new javax.swing.JSeparator();
        jLoginButton = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jCreateNewAccount = new javax.swing.JLabel();
        jLabelUserName = new javax.swing.JLabel();
        jLabelPassword = new javax.swing.JLabel();
        signUpButtonInLogin = new javax.swing.JButton();
        jLoginResetButton = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        imgLabel.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        imgLabel.setText("Image Here");

        jPanelLogin.setBackground(new java.awt.Color(33, 62, 112));

        jLabelTitle.setBackground(new java.awt.Color(33, 62, 112));
        jLabelTitle.setFont(new java.awt.Font("Gilam Demo", 1, 36)); // NOI18N
        jLabelTitle.setForeground(new java.awt.Color(255, 204, 0));
        jLabelTitle.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabelTitle.setText("Log In");

        jSeparator1.setForeground(new java.awt.Color(246, 244, 235));

        jTextFieldUserName.setBackground(new java.awt.Color(33, 62, 112));
        jTextFieldUserName.setForeground(new java.awt.Color(153, 153, 153));
        jTextFieldUserName.setText("Enter Username..");
        jTextFieldUserName.setBorder(null);
        jTextFieldUserName.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldUserNameFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldUserNameFocusLost(evt);
            }
        });
        jTextFieldUserName.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextFieldUserNameActionPerformed(evt);
            }
        });

        jLoginPasswordField.setBackground(new java.awt.Color(33, 62, 112));
        jLoginPasswordField.setBorder(null);
        jLoginPasswordField.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jLoginPasswordFieldFocusGained(evt);
            }
        });

        jSeparator3.setForeground(new java.awt.Color(246, 244, 235));

        jLoginButton.setBackground(new java.awt.Color(255, 204, 0));
        jLoginButton.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        jLoginButton.setForeground(new java.awt.Color(0, 0, 0));
        jLoginButton.setText("Sign In");
        jLoginButton.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(246, 244, 235)));
        jLoginButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jLoginButtonActionPerformed(evt);
            }
        });

        jCreateNewAccount.setBackground(new java.awt.Color(33, 62, 112));
        jCreateNewAccount.setFont(new java.awt.Font("Futura", 0, 18)); // NOI18N
        jCreateNewAccount.setForeground(new java.awt.Color(204, 204, 204));
        jCreateNewAccount.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jCreateNewAccount.setText("OR");

        signUpButtonInLogin.setBackground(new java.awt.Color(255, 204, 0));
        signUpButtonInLogin.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        signUpButtonInLogin.setForeground(new java.awt.Color(0, 0, 0));
        signUpButtonInLogin.setText("Create New Account");
        signUpButtonInLogin.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(246, 244, 235)));
        signUpButtonInLogin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                signUpButtonInLoginActionPerformed(evt);
            }
        });

        jLoginResetButton.setBackground(new java.awt.Color(255, 204, 0));
        jLoginResetButton.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        jLoginResetButton.setForeground(new java.awt.Color(0, 0, 0));
        jLoginResetButton.setText("Reset");
        jLoginResetButton.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(246, 244, 235)));
        jLoginResetButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jLoginResetButtonActionPerformed(evt);
            }
        });

        jLabel2.setIcon(new javax.swing.ImageIcon("/Users/sandeshkey/Desktop/Courier Management/user (1).png")); // NOI18N
        jLabel2.setText("jLabel2");

        jLabel3.setIcon(new javax.swing.ImageIcon("/Users/sandeshkey/Desktop/Courier Management/key.png")); // NOI18N
        jLabel3.setText("jLabel2");

        javax.swing.GroupLayout jPanelLoginLayout = new javax.swing.GroupLayout(jPanelLogin);
        jPanelLogin.setLayout(jPanelLoginLayout);
        jPanelLoginLayout.setHorizontalGroup(
            jPanelLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelLoginLayout.createSequentialGroup()
                .addGap(41, 41, 41)
                .addGroup(jPanelLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabelUserName)
                    .addComponent(jLabelPassword))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanelLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 26, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 26, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(28, 28, 28)
                .addGroup(jPanelLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jSeparator3, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 243, Short.MAX_VALUE)
                    .addComponent(jSeparator1, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLoginPasswordField, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 235, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(31, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanelLoginLayout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanelLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanelLoginLayout.createSequentialGroup()
                        .addComponent(jLabelTitle, javax.swing.GroupLayout.PREFERRED_SIZE, 280, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(41, 41, 41))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanelLoginLayout.createSequentialGroup()
                        .addGroup(jPanelLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(jPanelLoginLayout.createSequentialGroup()
                                .addComponent(jLabel1)
                                .addGap(118, 118, 118))
                            .addComponent(jLoginButton, javax.swing.GroupLayout.PREFERRED_SIZE, 109, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLoginResetButton, javax.swing.GroupLayout.PREFERRED_SIZE, 109, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(126, 126, 126))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanelLoginLayout.createSequentialGroup()
                        .addComponent(jCreateNewAccount, javax.swing.GroupLayout.PREFERRED_SIZE, 158, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(97, 97, 97))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanelLoginLayout.createSequentialGroup()
                        .addComponent(signUpButtonInLogin, javax.swing.GroupLayout.PREFERRED_SIZE, 225, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(65, 65, 65))))
            .addGroup(jPanelLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanelLoginLayout.createSequentialGroup()
                    .addContainerGap(99, Short.MAX_VALUE)
                    .addComponent(jTextFieldUserName, javax.swing.GroupLayout.PREFERRED_SIZE, 258, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGap(18, 18, 18)))
        );
        jPanelLoginLayout.setVerticalGroup(
            jPanelLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelLoginLayout.createSequentialGroup()
                .addGroup(jPanelLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(jPanelLoginLayout.createSequentialGroup()
                        .addGroup(jPanelLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanelLoginLayout.createSequentialGroup()
                                .addGap(57, 57, 57)
                                .addComponent(jLabelTitle)
                                .addGroup(jPanelLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(jPanelLoginLayout.createSequentialGroup()
                                        .addGap(91, 91, 91)
                                        .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(jPanelLoginLayout.createSequentialGroup()
                                        .addGap(71, 71, 71)
                                        .addComponent(jLabel2))))
                            .addGroup(jPanelLoginLayout.createSequentialGroup()
                                .addGap(174, 174, 174)
                                .addComponent(jLabelUserName)))
                        .addGap(61, 61, 61)
                        .addComponent(jLoginPasswordField, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(3, 3, 3)
                        .addComponent(jSeparator3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanelLoginLayout.createSequentialGroup()
                        .addComponent(jLabelPassword)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel3)))
                .addGap(46, 46, 46)
                .addComponent(jLoginButton, javax.swing.GroupLayout.PREFERRED_SIZE, 39, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(28, 28, 28)
                .addComponent(jLoginResetButton, javax.swing.GroupLayout.PREFERRED_SIZE, 39, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(16, 16, 16)
                .addComponent(jLabel1)
                .addGap(18, 18, 18)
                .addComponent(jCreateNewAccount, javax.swing.GroupLayout.PREFERRED_SIZE, 14, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 32, Short.MAX_VALUE)
                .addComponent(signUpButtonInLogin, javax.swing.GroupLayout.PREFERRED_SIZE, 39, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(29, 29, 29))
            .addGroup(jPanelLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jPanelLoginLayout.createSequentialGroup()
                    .addGap(172, 172, 172)
                    .addComponent(jTextFieldUserName, javax.swing.GroupLayout.PREFERRED_SIZE, 26, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addContainerGap(403, Short.MAX_VALUE)))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(imgLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 367, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanelLogin, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(imgLabel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(jPanelLogin, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jLoginButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jLoginButtonActionPerformed

        
   //     FileReader fReader = null;
//        try {
            // TODO add your handling code here:
            /*
            courierSystemDashboard data;
            String userName = jTextFieldUserName.getText();
            String password = jLoginPasswordField.getText();
            
            if(userName.contains("Admin") && password.contains("adminpw"))
            {
            jTextFieldUserName.setText(null);
            jLoginPasswordField.setText(null);
            
            data = new courierSystemDashboard();
            data.setVisible(true);
            }
            
            else{
            JOptionPane.showMessageDialog(null,"Cannot Login! Please Try Again with Correct Credentials!", "Login Error!", JOptionPane.ERROR_MESSAGE);
            jTextFieldUserName.setText(null);
            jLoginPasswordField.setText(null);
            }
            */
            /*
            String fPath = "/Users/sandeshkey/Desktop/Courier Management/File.txt";
            String username = jTextFieldUserName.getText();
            String password = jLoginPasswordField.getText();
            
            fReader = new FileReader(fPath);
            BufferedReader bReader = new BufferedReader(fReader);
            String line, user, pass;
            boolean isLoginSuccess = false;
            while((line = bReader.readLine()) != null)
            {
                user = line.split(" ")[2].toLowerCase();
                pass = line.split(" ")[6].toLowerCase();
                if(user.equals(username) && pass.equals(password))
                {
                    isLoginSuccess = true;
                    this.dispose();
                    
                    courierSystemDashboard db = new courierSystemDashboard();
                    db.setLocationRelativeTo(null);
                    db.setVisible(true);
                    break;
                }
                if(!isLoginSuccess){
                    JOptionPane.showMessageDialog(null, "Wrong Credentials","Warning", JOptionPane.WARNING_MESSAGE);
                    break;
                }
            }
            fReader.close();
        } 
        catch (FileNotFoundException ex) {
            Logger.getLogger(courierSystemLoginForm.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(courierSystemLoginForm.class.getName()).log(Level.SEVERE, null, ex);
        } 
        finally {
            try {
                fReader.close();
            } catch (IOException ex) {
                Logger.getLogger(courierSystemLoginForm.class.getName()).log(Level.SEVERE, null, ex);
            }
            */
  //      }
    }//GEN-LAST:event_jLoginButtonActionPerformed

    private void jTextFieldUserNameActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextFieldUserNameActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextFieldUserNameActionPerformed

    private void jTextFieldUserNameFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldUserNameFocusGained
        // TODO add your handling code here:
        if(jTextFieldUserName.getText().equals("Enter Username.."))
        {
            jTextFieldUserName.setText("");
            jTextFieldUserName.setForeground(new Color(255,255,255));
        }
    }//GEN-LAST:event_jTextFieldUserNameFocusGained

    private void jTextFieldUserNameFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldUserNameFocusLost
        // TODO add your handling code here:
        if(jTextFieldUserName.getText().equals(""))
        {
            jTextFieldUserName.setText("Enter Username..");
            jTextFieldUserName.setForeground(new Color(153,153,153));
        }
    }//GEN-LAST:event_jTextFieldUserNameFocusLost

    private void jLoginPasswordFieldFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jLoginPasswordFieldFocusGained
        // TODO add your handling code here:
        jLoginPasswordField.setForeground(new Color(255,255,255));
    }//GEN-LAST:event_jLoginPasswordFieldFocusGained

    private void signUpButtonInLoginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_signUpButtonInLoginActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_signUpButtonInLoginActionPerformed

    private void jLoginResetButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jLoginResetButtonActionPerformed
        // TODO add your handling code here:
        jTextFieldUserName.setText(null);
        jLoginPasswordField.setText(null);
    }//GEN-LAST:event_jLoginResetButtonActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(courierSystemLoginForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(courierSystemLoginForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(courierSystemLoginForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(courierSystemLoginForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new courierSystemLoginForm().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel imgLabel;
    private javax.swing.JLabel jCreateNewAccount;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabelPassword;
    private javax.swing.JLabel jLabelTitle;
    private javax.swing.JLabel jLabelUserName;
    private javax.swing.JButton jLoginButton;
    private javax.swing.JPasswordField jLoginPasswordField;
    private javax.swing.JButton jLoginResetButton;
    private javax.swing.JPanel jPanelLogin;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator3;
    private javax.swing.JTextField jTextFieldUserName;
    private javax.swing.JButton signUpButtonInLogin;
    // End of variables declaration//GEN-END:variables
}
