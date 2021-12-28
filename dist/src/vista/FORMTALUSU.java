package vista;

import java.awt.event.KeyEvent;
import javax.swing.JOptionPane;

/**
 *
 * @author jony
 */
public class FORMTALUSU extends javax.swing.JFrame {

    /**
     * Creates new form FORMTALUSU
     */
    public FORMTALUSU() {
        initComponents();
        this.setLocationRelativeTo(null);
        inicializa_controles();
        cerrar_ventan_talonaus();
    }
private void cerrar_ventan_talonaus() {
        setDefaultCloseOperation(FORMTALUSU.DO_NOTHING_ON_CLOSE);
        addWindowListener(new java.awt.event.WindowAdapter() {
            @Override
            public void windowClosing(java.awt.event.WindowEvent evt) { 
               cerrar_ventanatalonus();
            }
        });
    }
   public void cerrar_ventanatalonus(){
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

        ventana_error = new javax.swing.JDialog();
        jPanel15 = new javax.swing.JPanel();
        jPanel16 = new javax.swing.JPanel();
        jScrollPane8 = new javax.swing.JScrollPane();
        txt_error = new javax.swing.JTextArea();
        btn_volver_err = new javax.swing.JButton();
        ventana_sucursal = new javax.swing.JDialog();
        jPanel3 = new javax.swing.JPanel();
        jPanel4 = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        tbl_sucursal = new javax.swing.JTable();
        btn_agreg_suc = new javax.swing.JButton();
        ventana_usuario = new javax.swing.JDialog();
        jPanel5 = new javax.swing.JPanel();
        jPanel6 = new javax.swing.JPanel();
        jScrollPane3 = new javax.swing.JScrollPane();
        tbl_usuario = new javax.swing.JTable();
        btn_agreg_us = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();
        jToolBar1 = new javax.swing.JToolBar();
        btn_nuevo = new javax.swing.JButton();
        btnguardar = new javax.swing.JButton();
        btnactualizar = new javax.swing.JButton();
        btneliminar = new javax.swing.JButton();
        btncancelar = new javax.swing.JButton();
        btn_busqueda = new javax.swing.JButton();
        btn_ejecutar = new javax.swing.JButton();
        btn_imprimir = new javax.swing.JButton();
        btn_error = new javax.swing.JButton();
        btn_salir = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbl_tal_usuario = new javax.swing.JTable();
        txt_cod_sucursal = new javax.swing.JTextField();
        txt_desc_sucursal = new javax.swing.JTextField();
        txt_serie = new javax.swing.JTextField();
        txt_nro_talonario = new javax.swing.JTextField();
        cmb_tipo_comp = new javax.swing.JComboBox<>();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        txt_cod_usuario = new javax.swing.JTextField();
        txt_desc_usuario = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        btn_suc = new javax.swing.JButton();
        btn_usu = new javax.swing.JButton();

        ventana_error.setTitle("VENTANA DE ERROR DEL SISTEMA");
        ventana_error.setResizable(false);
        ventana_error.getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel15.setBackground(new java.awt.Color(51, 51, 51));
        jPanel15.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel16.setBackground(new java.awt.Color(0, 102, 102));
        jPanel16.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        txt_error.setEditable(false);
        txt_error.setColumns(20);
        txt_error.setLineWrap(true);
        txt_error.setRows(5);
        txt_error.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        jScrollPane8.setViewportView(txt_error);

        jPanel16.add(jScrollPane8, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 550, 250));

        btn_volver_err.setText("Volver");
        jPanel16.add(btn_volver_err, new org.netbeans.lib.awtextra.AbsoluteConstraints(250, 270, 80, -1));

        jPanel15.add(jPanel16, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 570, 310));

        ventana_error.getContentPane().add(jPanel15, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 600, 330));

        ventana_sucursal.setTitle("Busqueda Sucursal");
        ventana_sucursal.setResizable(false);
        ventana_sucursal.getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel3.setBackground(new java.awt.Color(51, 51, 51));
        jPanel3.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel4.setBackground(new java.awt.Color(0, 102, 102));
        jPanel4.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        tbl_sucursal = new javax.swing.JTable(){
            public boolean isCellEditable(int rowIndex, int colIndex){
                return false;
            }
        };
        tbl_sucursal.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane2.setViewportView(tbl_sucursal);

        jPanel4.add(jScrollPane2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 360, 210));

        btn_agreg_suc.setText("Agregar");
        btn_agreg_suc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_agreg_sucActionPerformed(evt);
            }
        });
        jPanel4.add(btn_agreg_suc, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 230, -1, -1));

        jPanel3.add(jPanel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 380, 260));

        ventana_sucursal.getContentPane().add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 400, 280));

        ventana_usuario.setTitle("Busqueda Usuario");
        ventana_usuario.setResizable(false);
        ventana_usuario.getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel5.setBackground(new java.awt.Color(51, 51, 51));
        jPanel5.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel6.setBackground(new java.awt.Color(0, 102, 102));
        jPanel6.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        tbl_usuario = new javax.swing.JTable(){
            public boolean isCellEditable(int rowIndex, int colIndex){
                return false;
            }
        };
        tbl_usuario.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane3.setViewportView(tbl_usuario);

        jPanel6.add(jScrollPane3, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 370, 230));

        btn_agreg_us.setText("Agregar");
        jPanel6.add(btn_agreg_us, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 250, 100, 25));

        jPanel5.add(jPanel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 390, 280));

        ventana_usuario.getContentPane().add(jPanel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 410, 300));

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("CARGA TALONARIO USUARIO(FORMTALUSU)");
        setResizable(false);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(51, 51, 51));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jToolBar1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jToolBar1.setFloatable(false);

        btn_nuevo.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btn_nuevo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/nuevo.png"))); // NOI18N
        btn_nuevo.setToolTipText("Nuevo");
        btn_nuevo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_nuevoActionPerformed(evt);
            }
        });
        btn_nuevo.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                btn_nuevoKeyPressed(evt);
            }
        });
        jToolBar1.add(btn_nuevo);

        btnguardar.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btnguardar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/guardar.png"))); // NOI18N
        btnguardar.setToolTipText("GRABAR");
        btnguardar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnguardarActionPerformed(evt);
            }
        });
        jToolBar1.add(btnguardar);

        btnactualizar.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btnactualizar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/actualizar.png"))); // NOI18N
        btnactualizar.setToolTipText("Modificar");
        jToolBar1.add(btnactualizar);

        btneliminar.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btneliminar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/borrar.png"))); // NOI18N
        btneliminar.setToolTipText("Eliminar");
        btneliminar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btneliminarActionPerformed(evt);
            }
        });
        jToolBar1.add(btneliminar);

        btncancelar.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btncancelar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/cancelar.png"))); // NOI18N
        btncancelar.setToolTipText("Cancelar");
        btncancelar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btncancelarActionPerformed(evt);
            }
        });
        jToolBar1.add(btncancelar);

        btn_busqueda.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btn_busqueda.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/busqueda.png"))); // NOI18N
        btn_busqueda.setToolTipText("Buscar");
        btn_busqueda.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_busquedaActionPerformed(evt);
            }
        });
        jToolBar1.add(btn_busqueda);

        btn_ejecutar.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btn_ejecutar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/6.png"))); // NOI18N
        btn_ejecutar.setToolTipText("Buscar");
        btn_ejecutar.setFocusable(false);
        btn_ejecutar.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btn_ejecutar.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btn_ejecutar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_ejecutarActionPerformed(evt);
            }
        });
        jToolBar1.add(btn_ejecutar);

        btn_imprimir.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btn_imprimir.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/imprimir.png"))); // NOI18N
        btn_imprimir.setToolTipText("Imprimir");
        btn_imprimir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_imprimirActionPerformed(evt);
            }
        });
        jToolBar1.add(btn_imprimir);

        btn_error.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btn_error.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/if_error.png"))); // NOI18N
        btn_error.setToolTipText("Ver Error");
        btn_error.setFocusable(false);
        btn_error.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btn_error.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btn_error.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_errorActionPerformed(evt);
            }
        });
        jToolBar1.add(btn_error);

        btn_salir.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btn_salir.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/salir2.png"))); // NOI18N
        btn_salir.setToolTipText("Salir");
        btn_salir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_salirActionPerformed(evt);
            }
        });
        jToolBar1.add(btn_salir);

        jPanel1.add(jToolBar1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 460, 54));

        jPanel2.setBackground(new java.awt.Color(0, 102, 102));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        tbl_tal_usuario = new javax.swing.JTable(){
            public boolean isCellEditable(int rowIndex, int colIndex){
                return false;
            }
        };
        tbl_tal_usuario.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(tbl_tal_usuario);

        jPanel2.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 180, 660, 140));
        jPanel2.add(txt_cod_sucursal, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 20, 50, 20));
        jPanel2.add(txt_desc_sucursal, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 20, 150, 20));

        txt_serie.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txt_serieKeyTyped(evt);
            }
        });
        jPanel2.add(txt_serie, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 80, 100, 20));

        txt_nro_talonario.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txt_nro_talonarioKeyTyped(evt);
            }
        });
        jPanel2.add(txt_nro_talonario, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 110, 50, 20));

        cmb_tipo_comp.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        jPanel2.add(cmb_tipo_comp, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 50, 230, 20));

        jLabel1.setFont(new java.awt.Font("Noto Sans", 1, 12)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(204, 204, 0));
        jLabel1.setText("Cod Sucursal:");
        jPanel2.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 20, -1, -1));

        jLabel2.setFont(new java.awt.Font("Noto Sans", 1, 12)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(204, 204, 0));
        jLabel2.setText("Tipo Comp:");
        jPanel2.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 50, -1, -1));

        jLabel3.setFont(new java.awt.Font("Noto Sans", 1, 12)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(204, 204, 0));
        jLabel3.setText("Serie:");
        jPanel2.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 80, -1, -1));

        jLabel4.setFont(new java.awt.Font("Noto Sans", 1, 12)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(204, 204, 0));
        jLabel4.setText("Nro Talon:");
        jPanel2.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 110, -1, -1));
        jPanel2.add(txt_cod_usuario, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 140, 50, 20));
        jPanel2.add(txt_desc_usuario, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 140, 150, 20));

        jLabel5.setFont(new java.awt.Font("Noto Sans", 1, 12)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(204, 204, 0));
        jLabel5.setText("Cod Usuario:");
        jPanel2.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 140, -1, -1));

        btn_suc.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/search.png"))); // NOI18N
        btn_suc.setToolTipText("Buscar");
        jPanel2.add(btn_suc, new org.netbeans.lib.awtextra.AbsoluteConstraints(153, 20, 25, 20));

        btn_usu.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/search.png"))); // NOI18N
        btn_usu.setToolTipText("Buscar");
        jPanel2.add(btn_usu, new org.netbeans.lib.awtextra.AbsoluteConstraints(153, 140, 25, 20));

        jPanel1.add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 60, 680, 330));

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 700, 400));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_nuevoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_nuevoActionPerformed

    }//GEN-LAST:event_btn_nuevoActionPerformed

    private void btn_nuevoKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_btn_nuevoKeyPressed

    }//GEN-LAST:event_btn_nuevoKeyPressed

    private void btnguardarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnguardarActionPerformed

    }//GEN-LAST:event_btnguardarActionPerformed

    private void btneliminarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btneliminarActionPerformed

    }//GEN-LAST:event_btneliminarActionPerformed

    private void btncancelarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btncancelarActionPerformed

    }//GEN-LAST:event_btncancelarActionPerformed

    private void btn_busquedaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_busquedaActionPerformed

    }//GEN-LAST:event_btn_busquedaActionPerformed

    private void btn_ejecutarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_ejecutarActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btn_ejecutarActionPerformed

    private void btn_imprimirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_imprimirActionPerformed

        //imprimir_comprobante();
    }//GEN-LAST:event_btn_imprimirActionPerformed

    private void btn_errorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_errorActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btn_errorActionPerformed

    private void btn_salirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_salirActionPerformed

    }//GEN-LAST:event_btn_salirActionPerformed

    private void btn_agreg_sucActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_agreg_sucActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btn_agreg_sucActionPerformed

    private void txt_serieKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txt_serieKeyTyped
        int num = 1;
        if (txt_serie.getText().length() >= num) {
            evt.consume();
        }
        char charecter = evt.getKeyChar();
        if (Character.isLowerCase(charecter)) {
            evt.setKeyChar(Character.toUpperCase(charecter));
        }
    }//GEN-LAST:event_txt_serieKeyTyped

    private void txt_nro_talonarioKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txt_nro_talonarioKeyTyped
        char tecla;
        int num = 2;
        tecla = evt.getKeyChar();
        if (!Character.isDigit(tecla) && tecla != KeyEvent.VK_BACK_SPACE) {
            evt.consume();
            getToolkit().beep();
        }
        if (txt_nro_talonario.getText().length() >= num) {
            evt.consume();
        }
    }//GEN-LAST:event_txt_nro_talonarioKeyTyped

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
            java.util.logging.Logger.getLogger(FORMTALUSU.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(FORMTALUSU.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(FORMTALUSU.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(FORMTALUSU.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FORMTALUSU().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.JButton btn_agreg_suc;
    public javax.swing.JButton btn_agreg_us;
    public javax.swing.JButton btn_busqueda;
    public javax.swing.JButton btn_ejecutar;
    public javax.swing.JButton btn_error;
    public javax.swing.JButton btn_imprimir;
    public javax.swing.JButton btn_nuevo;
    public javax.swing.JButton btn_salir;
    public javax.swing.JButton btn_suc;
    public javax.swing.JButton btn_usu;
    public javax.swing.JButton btn_volver_err;
    public javax.swing.JButton btnactualizar;
    public javax.swing.JButton btncancelar;
    public javax.swing.JButton btneliminar;
    public javax.swing.JButton btnguardar;
    public javax.swing.JComboBox<String> cmb_tipo_comp;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel15;
    private javax.swing.JPanel jPanel16;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane8;
    private javax.swing.JToolBar jToolBar1;
    public javax.swing.JTable tbl_sucursal;
    public javax.swing.JTable tbl_tal_usuario;
    public javax.swing.JTable tbl_usuario;
    public javax.swing.JTextField txt_cod_sucursal;
    public javax.swing.JTextField txt_cod_usuario;
    public javax.swing.JTextField txt_desc_sucursal;
    public javax.swing.JTextField txt_desc_usuario;
    public javax.swing.JTextArea txt_error;
    public javax.swing.JTextField txt_nro_talonario;
    public javax.swing.JTextField txt_serie;
    private javax.swing.JDialog ventana_error;
    private javax.swing.JDialog ventana_sucursal;
    private javax.swing.JDialog ventana_usuario;
    // End of variables declaration//GEN-END:variables

    public void inicializa_controles() {
        bloquea_campos();
        bloquea_botones();
    }

    private void bloquea_campos() {
        txt_cod_sucursal.setEditable(false);
        btn_suc.setEnabled(false);
        txt_desc_sucursal.setEnabled(false);
        txt_cod_usuario.setEditable(false);
        btn_usu.setEnabled(false);
        txt_desc_usuario.setEditable(false);
        txt_nro_talonario.setEditable(false);
        txt_serie.setEditable(false);
        cmb_tipo_comp.setEnabled(false);
    }

    private void bloquea_botones() {
        btn_imprimir.setEnabled(false);
        btnactualizar.setEnabled(false);
        btneliminar.setEnabled(false);
        btnguardar.setEnabled(false);
        btn_ejecutar.setEnabled(false);
        btn_busqueda.setEnabled(true);
        btn_nuevo.setEnabled(true);
        btn_nuevo.requestFocus();
    }

    public void habilita_campos() {
        txt_cod_sucursal.setEditable(true);
        btn_suc.setEnabled(true);
        txt_desc_sucursal.setEnabled(true);
        txt_cod_usuario.setEditable(true);
        btn_usu.setEnabled(true);
        txt_desc_usuario.setEditable(true);
        txt_nro_talonario.setEditable(true);
        txt_serie.setEditable(true);
        cmb_tipo_comp.setEnabled(true);
        txt_cod_sucursal.requestFocus();
    }

    public void limpia_campos() {
        txt_cod_sucursal.setText(null);
        txt_desc_sucursal.setText(null);
        txt_cod_usuario.setText(null);
        txt_desc_usuario.setText(null);
        txt_nro_talonario.setText(null);
        txt_serie.setText(null);
        txt_cod_sucursal.setText(null);
    }
    public void ventana_error(){
        FORMTALUSU bus = new FORMTALUSU();
        ventana_error.setVisible(true);
        ventana_error.setSize(590,355);
        ventana_error.setLocationRelativeTo(bus);
    }
    public void cerrar_ventana_error(){
        ventana_error.dispose();
    }
     public void ventana_sucursal(){
        FORMTALUSU bus = new FORMTALUSU();
        ventana_sucursal.setVisible(true);
        ventana_sucursal.setSize(400,310);
        ventana_sucursal.setLocationRelativeTo(bus);
    }
    public void cerrar_ventana_sucursal(){
        ventana_sucursal.dispose();
    }
     public void ventana_usuario(){
        FORMTALUSU bus = new FORMTALUSU();
        ventana_usuario.setVisible(true);
        ventana_usuario.setSize(410,320);
        ventana_usuario.setLocationRelativeTo(bus);
    }
    public void cerrar_ventana_usuario(){
        ventana_usuario.dispose();
    }
}
