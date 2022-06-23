import java.io.*;
import java.util.Properties;
import java.util.Random;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
public class createAccount extends javax.swing.JFrame {

    
    public createAccount() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel10 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        txtLastName = new javax.swing.JTextField();
        txtPass = new javax.swing.JTextField();
        txtFirstName = new javax.swing.JTextField();
        txtPermanent = new javax.swing.JTextField();
        txtEmail = new javax.swing.JTextField();
        txtCurrent = new javax.swing.JTextField();
        clearBtn = new javax.swing.JButton();
        createBtn = new javax.swing.JButton();
        backBtn = new javax.swing.JButton();
        imageLbl = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setLocation(new java.awt.Point(440, 100));

        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel10.setBackground(new java.awt.Color(40, 44, 43));
        jLabel10.setFont(new java.awt.Font("MADE TOMMY", 1, 24)); // NOI18N
        jLabel10.setForeground(new java.awt.Color(255, 255, 255));
        jLabel10.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel10.setText("CREATE AN ACCOUNT");
        jPanel1.add(jLabel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 19, 400, 40));

        jLabel1.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("Permanent Address");
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 350, 130, -1));

        jLabel2.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(255, 255, 255));
        jLabel2.setText("First Name");
        jPanel1.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 100, 70, -1));

        jLabel3.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(255, 255, 255));
        jLabel3.setText("Last Name");
        jPanel1.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 150, 80, -1));

        jLabel4.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(255, 255, 255));
        jLabel4.setText("Email Address");
        jPanel1.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 200, 90, -1));

        jLabel5.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(255, 255, 255));
        jLabel5.setText("Password");
        jPanel1.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 250, 60, -1));

        jLabel6.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(255, 255, 255));
        jLabel6.setText("Current Address");
        jPanel1.add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 300, 110, -1));
        jPanel1.add(txtLastName, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 150, 200, -1));
        jPanel1.add(txtPass, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 250, 200, -1));
        jPanel1.add(txtFirstName, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 100, 200, -1));
        jPanel1.add(txtPermanent, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 350, 200, -1));
        jPanel1.add(txtEmail, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 200, 200, -1));
        jPanel1.add(txtCurrent, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 300, 200, -1));

        clearBtn.setBackground(new java.awt.Color(255, 255, 255));
        clearBtn.setFont(new java.awt.Font("Lucida Grande", 1, 14)); // NOI18N
        clearBtn.setForeground(new java.awt.Color(240, 240, 240));
        clearBtn.setText("Clear");
        clearBtn.setBorderPainted(false);
        clearBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                clearBtnActionPerformed(evt);
            }
        });
        jPanel1.add(clearBtn, new org.netbeans.lib.awtextra.AbsoluteConstraints(140, 430, 110, 30));

        createBtn.setBackground(new java.awt.Color(255, 255, 255));
        createBtn.setFont(new java.awt.Font("Lucida Grande", 1, 14)); // NOI18N
        createBtn.setForeground(new java.awt.Color(240, 240, 240));
        createBtn.setText("Create");
        createBtn.setBorderPainted(false);
        createBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                createBtnActionPerformed(evt);
            }
        });
        jPanel1.add(createBtn, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 430, 110, 30));

        backBtn.setBackground(new java.awt.Color(255, 255, 255));
        backBtn.setFont(new java.awt.Font("Lucida Grande", 1, 14)); // NOI18N
        backBtn.setForeground(new java.awt.Color(240, 240, 240));
        backBtn.setText("Back");
        backBtn.setBorderPainted(false);
        backBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                backBtnActionPerformed(evt);
            }
        });
        jPanel1.add(backBtn, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 430, 110, 30));

        imageLbl.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        imageLbl.setIcon(new javax.swing.ImageIcon(getClass().getResource("/picAddUsr.png"))); // NOI18N
        jPanel1.add(imageLbl, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 800, 490));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void createBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_createBtnActionPerformed

        Random rand = new Random(); //instance of random class
        int upperbound = 999;
        int autoGenerateId = rand.nextInt(upperbound);
        b:
        if(txtFirstName.getText().equals("") || txtLastName.getText().equals("") || txtPass.getText().equals("") || txtEmail.getText().equals("") || txtCurrent.getText().equals("") || txtPermanent.getText().equals(""))
        {
            JOptionPane.showMessageDialog(this, "Fill all the fields");
        }
       
        else
        {
            
        try
        {
            
            FileWriter writer = new FileWriter("/Users/sandeshkey/Desktop/Courier Service System/Files/Accounts.txt",true);
            PrintWriter printData = new PrintWriter(writer);
            //printData.println(oldData);
            printData.println(autoGenerateId+"");
            printData.println(txtFirstName.getText());
            printData.println(txtLastName.getText());
            printData.println(txtEmail.getText());
            printData.println(txtPass.getText());
            printData.println(txtCurrent.getText());
            printData.println(txtPermanent.getText()+"\r\n");

            writer.close();
        }catch (IOException ex)
        {
            ex.printStackTrace();
        }
        
        
        JOptionPane.showMessageDialog(this, "Account has been Created");
        
        }
        

    }//GEN-LAST:event_createBtnActionPerformed

    private void clearBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_clearBtnActionPerformed

        
    }//GEN-LAST:event_clearBtnActionPerformed

    private void backBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_backBtnActionPerformed

        LogInPage logIn = new LogInPage();
        logIn.setVisible(true);
        logIn.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.dispose();
        
    }//GEN-LAST:event_backBtnActionPerformed

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
            java.util.logging.Logger.getLogger(createAccount.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(createAccount.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(createAccount.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(createAccount.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new createAccount().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton backBtn;
    private javax.swing.JButton clearBtn;
    private javax.swing.JButton createBtn;
    private javax.swing.JLabel imageLbl;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JTextField txtCurrent;
    private javax.swing.JTextField txtEmail;
    private javax.swing.JTextField txtFirstName;
    private javax.swing.JTextField txtLastName;
    private javax.swing.JTextField txtPass;
    private javax.swing.JTextField txtPermanent;
    // End of variables declaration//GEN-END:variables
}
