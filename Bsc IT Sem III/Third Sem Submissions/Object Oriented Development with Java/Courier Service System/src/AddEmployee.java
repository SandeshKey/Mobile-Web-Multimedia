import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class AddEmployee extends javax.swing.JFrame {

    /**
     * Creates new form AddEmployee
     */
    public AddEmployee() {
        
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
        java.awt.GridBagConstraints gridBagConstraints;

        buttonGroup = new javax.swing.ButtonGroup();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        txtFirstName = new javax.swing.JTextField();
        txtLastName = new javax.swing.JTextField();
        txtAge = new javax.swing.JTextField();
        txtJob = new javax.swing.JTextField();
        txtSal = new javax.swing.JTextField();
        jLabel15 = new javax.swing.JLabel();
        txtNationality = new javax.swing.JTextField();
        jLabel17 = new javax.swing.JLabel();
        txtMail = new javax.swing.JTextField();
        txtTel = new javax.swing.JTextField();
        txtMob = new javax.swing.JTextField();
        male = new javax.swing.JRadioButton();
        female = new javax.swing.JRadioButton();
        delBtn = new javax.swing.JButton();
        searchBtn = new javax.swing.JButton();
        addBtn = new javax.swing.JButton();
        updateBtn = new javax.swing.JButton();
        txtAdd = new javax.swing.JTextField();
        clearBtn = new javax.swing.JButton();
        backBtn = new javax.swing.JButton();
        jLabel10 = new javax.swing.JLabel();
        txtSearch = new javax.swing.JTextField();
        jLabel14 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setLocation(new java.awt.Point(250, 130));
        setResizable(false);
        getContentPane().setLayout(new java.awt.GridBagLayout());

        jPanel1.setBackground(new java.awt.Color(40, 44, 43));
        jPanel1.setForeground(new java.awt.Color(255, 255, 255));
        jPanel1.setLayout(null);

        jLabel1.setBackground(new java.awt.Color(255, 153, 0));
        jLabel1.setFont(new java.awt.Font("MADE TOMMY", 1, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(240, 240, 240));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("EMPLOYEE DETAILS");
        jPanel1.add(jLabel1);
        jLabel1.setBounds(320, 20, 250, 40);

        jLabel2.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(255, 255, 255));
        jLabel2.setText("First Name");
        jPanel1.add(jLabel2);
        jLabel2.setBounds(60, 160, 70, 20);

        jLabel3.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(255, 255, 255));
        jLabel3.setText("Last Name");
        jPanel1.add(jLabel3);
        jLabel3.setBounds(60, 200, 80, 20);

        jLabel4.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(255, 255, 255));
        jLabel4.setText("Age");
        jPanel1.add(jLabel4);
        jLabel4.setBounds(60, 240, 64, 20);

        jLabel5.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(255, 255, 255));
        jLabel5.setText("Gender");
        jPanel1.add(jLabel5);
        jLabel5.setBounds(60, 280, 59, 20);

        jLabel6.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(255, 255, 255));
        jLabel6.setText("Job Title");
        jPanel1.add(jLabel6);
        jLabel6.setBounds(60, 320, 52, 20);

        jLabel7.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(255, 255, 255));
        jLabel7.setText("Salary");
        jPanel1.add(jLabel7);
        jLabel7.setBounds(60, 360, 59, 20);

        jLabel8.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        jLabel8.setForeground(new java.awt.Color(255, 255, 255));
        jLabel8.setText("Mobile no");
        jPanel1.add(jLabel8);
        jLabel8.setBounds(450, 200, 64, 20);

        jLabel9.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        jLabel9.setForeground(new java.awt.Color(255, 255, 255));
        jLabel9.setText("E-Mali");
        jPanel1.add(jLabel9);
        jLabel9.setBounds(450, 290, 64, 20);
        jPanel1.add(txtFirstName);
        txtFirstName.setBounds(230, 160, 163, 25);
        jPanel1.add(txtLastName);
        txtLastName.setBounds(230, 200, 163, 25);
        jPanel1.add(txtAge);
        txtAge.setBounds(230, 240, 163, 25);

        txtJob.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtJobActionPerformed(evt);
            }
        });
        jPanel1.add(txtJob);
        txtJob.setBounds(230, 320, 163, 25);
        jPanel1.add(txtSal);
        txtSal.setBounds(230, 360, 163, 25);

        jLabel15.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        jLabel15.setForeground(new java.awt.Color(255, 255, 255));
        jLabel15.setText("Nationality");
        jPanel1.add(jLabel15);
        jLabel15.setBounds(450, 160, 69, 20);
        jPanel1.add(txtNationality);
        txtNationality.setBounds(570, 160, 163, 25);

        jLabel17.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        jLabel17.setForeground(new java.awt.Color(255, 255, 255));
        jLabel17.setText("Telephone");
        jPanel1.add(jLabel17);
        jLabel17.setBounds(450, 240, 66, 20);
        jPanel1.add(txtMail);
        txtMail.setBounds(570, 280, 163, 25);
        jPanel1.add(txtTel);
        txtTel.setBounds(570, 240, 163, 25);
        jPanel1.add(txtMob);
        txtMob.setBounds(570, 200, 163, 25);

        buttonGroup.add(male);
        male.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        male.setForeground(new java.awt.Color(255, 255, 255));
        male.setText("Male");
        male.setContentAreaFilled(false);
        male.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                maleActionPerformed(evt);
            }
        });
        jPanel1.add(male);
        male.setBounds(220, 280, 70, 25);

        buttonGroup.add(female);
        female.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        female.setForeground(new java.awt.Color(255, 255, 255));
        female.setText("Female");
        female.setContentAreaFilled(false);
        jPanel1.add(female);
        female.setBounds(310, 280, 80, 25);

        delBtn.setBackground(new java.awt.Color(40, 44, 43));
        delBtn.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        delBtn.setForeground(new java.awt.Color(255, 255, 255));
        delBtn.setText("Delete");
        delBtn.setToolTipText("Delete Information of Employee from Database");
        delBtn.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        delBtn.setContentAreaFilled(false);
        delBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                delBtnActionPerformed(evt);
            }
        });
        jPanel1.add(delBtn);
        delBtn.setBounds(520, 420, 90, 50);

        searchBtn.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        searchBtn.setForeground(new java.awt.Color(255, 255, 255));
        searchBtn.setText("Search");
        searchBtn.setToolTipText("Search Infomation by Name");
        searchBtn.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        searchBtn.setContentAreaFilled(false);
        searchBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                searchBtnActionPerformed(evt);
            }
        });
        jPanel1.add(searchBtn);
        searchBtn.setBounds(420, 90, 90, 30);

        addBtn.setBackground(new java.awt.Color(40, 44, 43));
        addBtn.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        addBtn.setForeground(new java.awt.Color(255, 255, 255));
        addBtn.setText("Add");
        addBtn.setToolTipText("Add data of Employee to database");
        addBtn.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        addBtn.setContentAreaFilled(false);
        addBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                addBtnActionPerformed(evt);
            }
        });
        jPanel1.add(addBtn);
        addBtn.setBounds(400, 420, 90, 50);

        updateBtn.setBackground(new java.awt.Color(40, 44, 43));
        updateBtn.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        updateBtn.setForeground(new java.awt.Color(255, 255, 255));
        updateBtn.setText("Update");
        updateBtn.setToolTipText("Update Information of Employee");
        updateBtn.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        updateBtn.setContentAreaFilled(false);
        updateBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                updateBtnActionPerformed(evt);
            }
        });
        jPanel1.add(updateBtn);
        updateBtn.setBounds(630, 420, 90, 50);
        jPanel1.add(txtAdd);
        txtAdd.setBounds(570, 320, 163, 30);

        clearBtn.setBackground(new java.awt.Color(40, 44, 43));
        clearBtn.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        clearBtn.setForeground(new java.awt.Color(255, 255, 255));
        clearBtn.setText("Clear");
        clearBtn.setToolTipText("Back to Reception Page");
        clearBtn.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        clearBtn.setContentAreaFilled(false);
        clearBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                clearBtnActionPerformed(evt);
            }
        });
        jPanel1.add(clearBtn);
        clearBtn.setBounds(730, 420, 90, 50);

        backBtn.setBackground(new java.awt.Color(0, 0, 0));
        backBtn.setForeground(new java.awt.Color(255, 255, 255));
        backBtn.setText("<<");
        backBtn.setBorderPainted(false);
        backBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                backBtnActionPerformed(evt);
            }
        });
        jPanel1.add(backBtn);
        backBtn.setBounds(0, 0, 32, 23);

        jLabel10.setBackground(new java.awt.Color(255, 153, 0));
        jLabel10.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 2));
        jPanel1.add(jLabel10);
        jLabel10.setBounds(40, 10, 790, 60);
        jPanel1.add(txtSearch);
        txtSearch.setBounds(300, 90, 100, 30);

        jLabel14.setFont(new java.awt.Font("Futura", 0, 14)); // NOI18N
        jLabel14.setForeground(new java.awt.Color(255, 255, 255));
        jLabel14.setText("Address");
        jPanel1.add(jLabel14);
        jLabel14.setBounds(450, 330, 60, 20);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipadx = 841;
        gridBagConstraints.ipady = 482;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        getContentPane().add(jPanel1, gridBagConstraints);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void txtJobActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtJobActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtJobActionPerformed

    private void addBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_addBtnActionPerformed
        
        if ( txtFirstName.getText().equals("") || txtLastName.getText().equals("") || txtAge.getText().equals("") || txtJob.getText().equals("") || txtSal.getText().equals("") || txtNationality.getText().equals("") || txtMob.getText().equals("") || txtTel.getText().equals("") || txtMail.getText().equals("") || txtAdd.getText().equals(""))
        {
            JOptionPane.showMessageDialog(this, "Please, Fill all the Boxes");
        }
        else
        {
            
        Random rand = new Random(); //instance of random class
        int upperbound = 999;
        int autoGenerateId = rand.nextInt(upperbound);
        b:
        if ( txtFirstName.getText().equals("") || txtLastName.getText().equals("") || txtAge.getText().equals("") || txtJob.getText().equals("") || txtSal.getText().equals("") || txtNationality.getText().equals("") || txtMob.getText().equals("") || txtTel.getText().equals("") || txtMail.getText().equals("") || txtAdd.getText().equals(""))
        {
            JOptionPane.showMessageDialog(this, "Fill all the fields");
        }
       
        else
        {
            
        try
        {
            
            FileWriter writer = new FileWriter("/Users/sandeshkey/Desktop/Courier Service System/Files/Employees.txt",true);
            PrintWriter printData = new PrintWriter(writer);

            printData.println(autoGenerateId+"");
            printData.println(txtFirstName.getText());
            printData.println(txtLastName.getText());
            printData.println(txtAge.getText());
            if(male.isSelected())
            {
                printData.println(male.getText());
            }
            else
            {
                printData.println(female.getText());
            }
            
            printData.println(txtJob.getText());
            printData.println(txtSal.getText());
            printData.println(txtNationality.getText());
            printData.println(txtMob.getText());
            printData.println(txtTel.getText());
            printData.println(txtMail.getText());
            printData.println(txtAdd.getText()+"\r\n");

            printData.close();
        }catch (IOException ex)
        {
            ex.printStackTrace();
        }
        
        
        JOptionPane.showMessageDialog(this, "Data is inserted Successfully");
        
        }
        
            
        }
        
    }//GEN-LAST:event_addBtnActionPerformed

    private void searchBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_searchBtnActionPerformed

        if (txtSearch.getText().equals(""))
        {
            JOptionPane.showMessageDialog(this, "Please enter the correct ID No");
        }
        else
        {
            try
            {              
            BufferedReader br = new BufferedReader(new FileReader("/Users/sandeshkey/Desktop/Courier Service System/Files/Employees.txt"));
            String s;
            b:
            while((s=br.readLine()) != null)
            {
                if(s.equals(txtSearch.getText()))
                {
                    txtFirstName.setText(br.readLine());
                    txtLastName.setText(br.readLine());
                    txtAge.setText(br.readLine());
                    br.readLine();
                    txtJob.setText(br.readLine());
                    txtSal.setText(br.readLine());
                    txtNationality.setText(br.readLine());
                    txtMob.setText(br.readLine());
                    txtTel.setText(br.readLine());
                    txtMail.setText(br.readLine());
                    txtAdd.setText(br.readLine());
                    break b;
                }
            }
            }catch(Exception ex)
            {
                 ex.printStackTrace();
            }
               
        }
    }//GEN-LAST:event_searchBtnActionPerformed

    private void delBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_delBtnActionPerformed
        
        ArrayList<String> dataList = new ArrayList<String>();
        
        if (txtSearch.getText().equals(""))
        {
            JOptionPane.showMessageDialog(this, "Please enter the correct ID No");
        }
        else
        {
            
            
            try
            {
                
    
            BufferedReader br = new BufferedReader(new FileReader("/Users/sandeshkey/Desktop/Courier Service System/Files/Employees.txt"));
            String s;
           
            int c=0;
            while((s=br.readLine()) != null)
            {
                if(s.equals(txtSearch.getText()))
                {
                    for (int i = 0; i < 11; i++)
                    {
                        br.readLine();
                    }
                }
                
               dataList.add(s);
            }
                b:
                for (int i = 0; i < dataList.size(); i++)
                {
                    if(dataList.get(i).equals(txtSearch.getText()))
                    {
                        dataList.remove(i);
                        break b;
                    }
                }
            
            br.close();
            
            FileWriter writer = new FileWriter("/Users/sandeshkey/Desktop/Courier Service System/Files/Employees.txt");
            
            for (int i = 0; i < dataList.size(); i++)
                {
                    writer.write(dataList.get(i)+"\n");
                }
                
                writer.close();
                
                JOptionPane.showMessageDialog(this, "Data is deleted successfully");
            }
            catch(Exception ex)
            {
                ex.printStackTrace();
            }
            
        }
    }//GEN-LAST:event_delBtnActionPerformed

    private void maleActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_maleActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_maleActionPerformed

    private void updateBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_updateBtnActionPerformed


        ArrayList<String> dataList = new ArrayList<String>();
        
        if (txtSearch.getText().equals(""))
        {
            JOptionPane.showMessageDialog(this, "Please enter the correct ID No");
        }
        else
        {
            if ( txtFirstName.getText().equals("") || txtLastName.getText().equals("") || txtAge.getText().equals("") || txtJob.getText().equals("") || txtSal.getText().equals("") || txtNationality.getText().equals("") || txtMob.getText().equals("") || txtTel.getText().equals("") || txtMail.getText().equals("") || txtAdd.getText().equals(""))
            {
                JOptionPane.showMessageDialog(this, "Fill all the fields");
            }

            else
            {
            try
            {
                
    
            BufferedReader br = new BufferedReader(new FileReader("/Users/sandeshkey/Desktop/Courier Service System/Files/Employees.txt"));
            String s;
            
           
            while((s=br.readLine()) != null)
            {
  
               dataList.add(s);
           
            }
                b: 
                for (int i = 0; i < dataList.size(); i++)
                {
                    if(dataList.get(i).equals(txtSearch.getText()))
                    {
                        dataList.set(i+1, txtFirstName.getText());
                        dataList.set(i+2, txtLastName.getText());
                        dataList.set(i+3, txtAge.getText());
                        if(male.isSelected())
                        {
                            dataList.set(i+4, male.getText());
                        }
                        else 
                        {
                            dataList.set(i+4, female.getText());
                        }
                        dataList.set(i+5, txtJob.getText());
                        dataList.set(i+6, txtSal.getText());
                        dataList.set(i+7, txtNationality.getText());
                        dataList.set(i+8, txtMob.getText());
                        dataList.set(i+9, txtTel.getText());
                        dataList.set(i+10, txtMail.getText());
                        dataList.set(i+11, txtAdd.getText());
                        
                        break b;
                    }
                }
                
            
            
            br.close();
            
            
            
            
            
            FileWriter writer = new FileWriter("/Users/sandeshkey/Desktop/Courier Service System/Files/Employees.txt");
            
            for (int i = 0; i < dataList.size(); i++)
                {
                    writer.write(dataList.get(i)+"\n");
                }
                
                writer.close();
                JOptionPane.showMessageDialog(this, "Data is successfully updated");
            }
            catch(Exception ex)
            {
                ex.printStackTrace();
            }
            
            }
        }
        
    }//GEN-LAST:event_updateBtnActionPerformed

    private void clearBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_clearBtnActionPerformed
        txtFirstName.setText("");
        txtLastName.setText("");
        txtAge.setText("");
        
        txtJob.setText("");
        txtSal.setText("");
        txtNationality.setText("");
        txtMob.setText("");
        txtTel.setText("");
        txtMail.setText("");
        txtAdd.setText("");
    }//GEN-LAST:event_clearBtnActionPerformed

    private void backBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_backBtnActionPerformed
        
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
            java.util.logging.Logger.getLogger(AddEmployee.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(AddEmployee.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(AddEmployee.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(AddEmployee.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new AddEmployee().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton addBtn;
    private javax.swing.JButton backBtn;
    private javax.swing.ButtonGroup buttonGroup;
    private javax.swing.JButton clearBtn;
    private javax.swing.JButton delBtn;
    private javax.swing.JRadioButton female;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JRadioButton male;
    private javax.swing.JButton searchBtn;
    private javax.swing.JTextField txtAdd;
    private javax.swing.JTextField txtAge;
    private javax.swing.JTextField txtFirstName;
    private javax.swing.JTextField txtJob;
    private javax.swing.JTextField txtLastName;
    private javax.swing.JTextField txtMail;
    private javax.swing.JTextField txtMob;
    private javax.swing.JTextField txtNationality;
    private javax.swing.JTextField txtSal;
    private javax.swing.JTextField txtSearch;
    private javax.swing.JTextField txtTel;
    private javax.swing.JButton updateBtn;
    // End of variables declaration//GEN-END:variables
}
