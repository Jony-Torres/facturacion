/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vista;

import java.awt.event.KeyEvent;
import javax.swing.JOptionPane;

/**
 *
 * @author jonathan.torres
 */
public class REPEXISART extends javax.swing.JFrame {

    /**
     * Creates new form FORMEXISAR
     */
    public REPEXISART() {
        initComponents();
        this.setLocationRelativeTo(null);
        cerrar_ventana();
    }
public void cerrar_ventana() {
        setDefaultCloseOperation(REPEXISART.DO_NOTHING_ON_CLOSE);
        addWindowListener(new java.awt.event.WindowAdapter() {
            @Override
            public void windowClosing(java.awt.event.WindowEvent evt) { 
               cerrar_ventan();
            }
        });
    }
   public void cerrar_ventan(){
       int opc = JOptionPane.showConfirmDialog(null, "Esta seguro de que quiere cerrar esta ventana ?", "Mensaje del sistema", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
               if (opc == JOptionPane.YES_OPTION) {
                   this.dispose();
               }
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
        jPanel2 = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();
        txt_cod_sucursal = new javax.swing.JTextField();
        txt_cod_deposito = new javax.swing.JTextField();
        txt_cod_articulo = new javax.swing.JTextField();
        txt_nro_lote = new javax.swing.JTextField();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        btn_suc = new javax.swing.JButton();
        btn_dep = new javax.swing.JButton();
        txt_desc_suc = new javax.swing.JTextField();
        txt_desc_dep = new javax.swing.JTextField();
        btn_ejecutar = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("REPORTE EXISTENCIA ARTICULO(FORMEXISAR)");
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(153, 153, 153));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel2.setBackground(new java.awt.Color(255, 255, 255));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel5.setFont(new java.awt.Font("Noto Sans", 1, 14)); // NOI18N
        jLabel5.setText("PARAMETROS");
        jPanel2.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(190, 30, -1, -1));
        jPanel2.add(txt_cod_sucursal, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 100, 40, 25));
        jPanel2.add(txt_cod_deposito, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 150, 40, 25));

        txt_cod_articulo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txt_cod_articuloActionPerformed(evt);
            }
        });
        txt_cod_articulo.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txt_cod_articuloKeyTyped(evt);
            }
        });
        jPanel2.add(txt_cod_articulo, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 200, 150, 25));

        txt_nro_lote.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txt_nro_loteKeyTyped(evt);
            }
        });
        jPanel2.add(txt_nro_lote, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 250, 150, 25));

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(0, 153, 0));
        jLabel1.setText("Nro Lote:");
        jPanel2.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 250, -1, -1));

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(0, 153, 0));
        jLabel2.setText("Cod Sucursal:");
        jPanel2.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 100, -1, -1));

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(0, 153, 0));
        jLabel3.setText("Cod Deposito:");
        jPanel2.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 150, -1, -1));

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(0, 153, 0));
        jLabel4.setText("Cod Articulo:");
        jPanel2.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 200, -1, -1));

        btn_suc.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/search.png"))); // NOI18N
        btn_suc.setToolTipText("Buscar");
        jPanel2.add(btn_suc, new org.netbeans.lib.awtextra.AbsoluteConstraints(195, 100, 25, 25));

        btn_dep.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/search.png"))); // NOI18N
        btn_dep.setToolTipText("Buscar");
        jPanel2.add(btn_dep, new org.netbeans.lib.awtextra.AbsoluteConstraints(195, 150, 25, 25));
        jPanel2.add(txt_desc_suc, new org.netbeans.lib.awtextra.AbsoluteConstraints(225, 100, 200, 25));

        txt_desc_dep.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txt_desc_depActionPerformed(evt);
            }
        });
        jPanel2.add(txt_desc_dep, new org.netbeans.lib.awtextra.AbsoluteConstraints(225, 150, 200, 25));

        btn_ejecutar.setBackground(new java.awt.Color(0, 153, 0));
        btn_ejecutar.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        btn_ejecutar.setForeground(new java.awt.Color(255, 255, 255));
        btn_ejecutar.setText("EJECUTAR");
        btn_ejecutar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_ejecutarActionPerformed(evt);
            }
        });
        jPanel2.add(btn_ejecutar, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 360, 100, 30));

        jPanel1.add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 480, 430));

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 500, 450));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void txt_cod_articuloActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txt_cod_articuloActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txt_cod_articuloActionPerformed

    private void txt_desc_depActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txt_desc_depActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txt_desc_depActionPerformed

    private void btn_ejecutarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_ejecutarActionPerformed

    }//GEN-LAST:event_btn_ejecutarActionPerformed

    private void txt_cod_articuloKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txt_cod_articuloKeyTyped
        int num=20;
        if(txt_cod_articulo.getText().length()>=num){
            evt.consume();
        }
        char charecter = evt.getKeyChar();
            if (Character.isLowerCase(charecter)) {
		evt.setKeyChar(Character.toUpperCase(charecter));
	}
    }//GEN-LAST:event_txt_cod_articuloKeyTyped

    private void txt_nro_loteKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txt_nro_loteKeyTyped
        char tecla;
        int num=20;
        tecla=evt.getKeyChar();
        if (!Character.isDigit(tecla)&&tecla!=KeyEvent.VK_BACK_SPACE) {
           evt.consume();
           getToolkit().beep();
        } 
        if(txt_nro_lote.getText().length()>=num){
            evt.consume();
        }
    }//GEN-LAST:event_txt_nro_loteKeyTyped

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
            java.util.logging.Logger.getLogger(REPEXISART.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(REPEXISART.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(REPEXISART.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(REPEXISART.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new REPEXISART().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.JButton btn_dep;
    public javax.swing.JButton btn_ejecutar;
    public javax.swing.JButton btn_suc;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    public javax.swing.JTextField txt_cod_articulo;
    public javax.swing.JTextField txt_cod_deposito;
    public javax.swing.JTextField txt_cod_sucursal;
    public javax.swing.JTextField txt_desc_dep;
    public javax.swing.JTextField txt_desc_suc;
    public javax.swing.JTextField txt_nro_lote;
    // End of variables declaration//GEN-END:variables
}