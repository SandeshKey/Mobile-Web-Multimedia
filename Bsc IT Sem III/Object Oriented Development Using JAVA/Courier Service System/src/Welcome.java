/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import javax.swing.JOptionPane;

/**
 *
 * @author user
 */
public class Welcome extends javax.swing.JFrame {

    /**
     * Creates new form Welcome
     */
    public Welcome() {
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

        Backgroundpanal = new javax.swing.JPanel();
        gif = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        loadinglevel = new javax.swing.JLabel();
        loadingpercentages = new javax.swing.JLabel();
        loadingbar = new javax.swing.JProgressBar();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);

        Backgroundpanal.setBackground(new java.awt.Color(153, 153, 255));
        Backgroundpanal.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new java.awt.Color(0, 0, 0)));
        Backgroundpanal.setForeground(new java.awt.Color(255, 255, 255));

        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/delivery.gif"))); // NOI18N

        jLabel1.setFont(new java.awt.Font("Book Antiqua", 1, 18)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("WELCOME TO");

        jLabel3.setFont(new java.awt.Font("MADE TOMMY", 1, 36)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(255, 255, 255));
        jLabel3.setText("COURIER SERVICE SYSTEM");

        loadinglevel.setForeground(new java.awt.Color(255, 255, 255));
        loadinglevel.setText("LOADING..");

        loadingpercentages.setText("0% Loading");

        loadingbar.setBackground(new java.awt.Color(40, 44, 43));
        loadingbar.setForeground(new java.awt.Color(0, 204, 0));

        javax.swing.GroupLayout BackgroundpanalLayout = new javax.swing.GroupLayout(Backgroundpanal);
        Backgroundpanal.setLayout(BackgroundpanalLayout);
        BackgroundpanalLayout.setHorizontalGroup(
            BackgroundpanalLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, BackgroundpanalLayout.createSequentialGroup()
                .addContainerGap(144, Short.MAX_VALUE)
                .addComponent(jLabel3)
                .addGap(152, 152, 152))
            .addGroup(BackgroundpanalLayout.createSequentialGroup()
                .addGroup(BackgroundpanalLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(BackgroundpanalLayout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(loadinglevel)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(loadingpercentages))
                    .addGroup(BackgroundpanalLayout.createSequentialGroup()
                        .addGap(95, 95, 95)
                        .addComponent(gif)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
            .addComponent(loadingbar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, BackgroundpanalLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
            .addGroup(BackgroundpanalLayout.createSequentialGroup()
                .addGap(206, 206, 206)
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 384, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        BackgroundpanalLayout.setVerticalGroup(
            BackgroundpanalLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(BackgroundpanalLayout.createSequentialGroup()
                .addGap(16, 16, 16)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 294, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel3)
                .addGap(7, 7, 7)
                .addGroup(BackgroundpanalLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(loadinglevel, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(loadingpercentages))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(loadingbar, javax.swing.GroupLayout.PREFERRED_SIZE, 18, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(59, 59, 59)
                .addComponent(gif)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(Backgroundpanal, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(Backgroundpanal, javax.swing.GroupLayout.PREFERRED_SIZE, 455, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        Welcome wel = new Welcome();
        wel.setVisible(true);
        
        MainPage log = new MainPage();
        try {
            for(int i = 0; i<=100; i++)
            {
                Thread.sleep(100);
                wel.loadingpercentages.setText(i +"%");
                
                if(i==10)
                {
                    wel.loadinglevel.setText("Turning on Modules...");
                }
                if(i==20)
                {
                    wel.loadinglevel.setText("Loading Modules...");
                }
                if(i==50)
                {
                    wel.loadinglevel.setText("Connecting Files...");
                }
                if(i==70)
                {
                    wel.loadinglevel.setText("Connection successfully...");
                }
                if(i==80)
                {
                    wel.loadinglevel.setText("Launching Application...");
                }
                wel.loadingbar.setValue(i);
            }
        }
        catch (InterruptedException e) {
            JOptionPane.showMessageDialog(null, e);
        }
        
        wel.setVisible(false);
        log.setVisible(true);
        
        wel.dispose();
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel Backgroundpanal;
    private javax.swing.JLabel gif;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JProgressBar loadingbar;
    private javax.swing.JLabel loadinglevel;
    private javax.swing.JLabel loadingpercentages;
    // End of variables declaration//GEN-END:variables
}