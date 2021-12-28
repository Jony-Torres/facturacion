/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vista;

import javax.swing.DefaultComboBoxModel;
import javax.swing.JOptionPane;

/**
 *
 * @author JONY
 */
public class FORMUSUARI extends javax.swing.JFrame {

    /**
     * Creates new form Formusuari
     */
    public FORMUSUARI() {
        initComponents();
        incializa_controles();
        this.setLocationRelativeTo(null);
        cerrar_ventan_usuari();
    }
private void cerrar_ventan_usuari() {
        setDefaultCloseOperation(FORMUSUARI.DO_NOTHING_ON_CLOSE);
        addWindowListener(new java.awt.event.WindowAdapter() {
            @Override
            public void windowClosing(java.awt.event.WindowEvent evt) { 
               cerrar_ventanausuario();
            }
        });
    }
   public void cerrar_ventanausuario(){
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

        ventana_persona = new javax.swing.JDialog();
        jPanel4 = new javax.swing.JPanel();
        jPanel5 = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        tbl_bpersona = new javax.swing.JTable();
        txt_bdesc_pers = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        txt_bnrodoc_pers = new javax.swing.JTextField();
        btn_apersona = new javax.swing.JButton();
        ventana_grupo = new javax.swing.JDialog();
        jPanel6 = new javax.swing.JPanel();
        jPanel7 = new javax.swing.JPanel();
        jScrollPane3 = new javax.swing.JScrollPane();
        tbl_bgrupo = new javax.swing.JTable();
        btn_agre_grup = new javax.swing.JButton();
        ventana_suscursal = new javax.swing.JDialog();
        jPanel8 = new javax.swing.JPanel();
        jPanel9 = new javax.swing.JPanel();
        jScrollPane5 = new javax.swing.JScrollPane();
        tbl_bsucursal = new javax.swing.JTable();
        btn_agre_suc = new javax.swing.JButton();
        ventana_error = new javax.swing.JDialog();
        jPanel10 = new javax.swing.JPanel();
        jPanel11 = new javax.swing.JPanel();
        jScrollPane6 = new javax.swing.JScrollPane();
        txt_error = new javax.swing.JTextArea();
        btn_volver_err = new javax.swing.JButton();
        ventana_deposito = new javax.swing.JDialog();
        jPanel19 = new javax.swing.JPanel();
        jPanel20 = new javax.swing.JPanel();
        jScrollPane9 = new javax.swing.JScrollPane();
        tbl_bdeposito = new javax.swing.JTable();
        btn_agreg_deposito = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbl_usuario = new javax.swing.JTable();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        txt_cod_usuario = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        txt_clave = new javax.swing.JPasswordField();
        jLabel3 = new javax.swing.JLabel();
        txt_cod_persona = new javax.swing.JTextField();
        txt_desc_persona = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        txt_cod_grupo = new javax.swing.JTextField();
        txt_desc_grupo = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        txt_cod_sucursal = new javax.swing.JTextField();
        txt_desc_sucursal = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        cmb_estado = new javax.swing.JComboBox<>();
        btn_pers = new javax.swing.JButton();
        btn_grup = new javax.swing.JButton();
        btn_suc = new javax.swing.JButton();
        txt_cod_deposito = new javax.swing.JTextField();
        btn_dep = new javax.swing.JButton();
        txt_desc_deposito = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
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

        ventana_persona.setTitle("Persona");
        ventana_persona.setResizable(false);
        ventana_persona.getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel4.setBackground(new java.awt.Color(51, 51, 51));
        jPanel4.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel5.setBackground(new java.awt.Color(0, 102, 102));
        jPanel5.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        tbl_bpersona = new javax.swing.JTable(){
            public boolean isCellEditable(int rowIndex, int colIndex){
                return false;
            }
        };
        tbl_bpersona.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane2.setViewportView(tbl_bpersona);

        jPanel5.add(jScrollPane2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 70, 390, 250));
        jPanel5.add(txt_bdesc_pers, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 40, 120, -1));

        jLabel7.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(204, 204, 0));
        jLabel7.setText("NOMBRE");
        jPanel5.add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 10, -1, -1));

        jLabel8.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel8.setForeground(new java.awt.Color(204, 204, 0));
        jLabel8.setText("CI/RUC");
        jPanel5.add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 10, -1, -1));
        jPanel5.add(txt_bnrodoc_pers, new org.netbeans.lib.awtextra.AbsoluteConstraints(250, 40, 120, -1));

        btn_apersona.setText("Agregar");
        jPanel5.add(btn_apersona, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 330, -1, -1));

        jPanel4.add(jPanel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 410, 360));

        ventana_persona.getContentPane().add(jPanel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 430, 380));

        ventana_grupo.setTitle("GRUPO");
        ventana_grupo.setResizable(false);
        ventana_grupo.getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel6.setBackground(new java.awt.Color(51, 51, 51));
        jPanel6.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel7.setBackground(new java.awt.Color(0, 102, 102));
        jPanel7.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        tbl_bgrupo = new javax.swing.JTable(){
            public boolean isCellEditable(int rowIndex, int colIndex){
                return false;
            }
        };
        tbl_bgrupo.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane3.setViewportView(tbl_bgrupo);

        jPanel7.add(jScrollPane3, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 400, 270));

        btn_agre_grup.setText("Agregar");
        jPanel7.add(btn_agre_grup, new org.netbeans.lib.awtextra.AbsoluteConstraints(190, 290, -1, -1));

        jPanel6.add(jPanel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 420, 320));

        ventana_grupo.getContentPane().add(jPanel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 440, 340));

        ventana_suscursal.setResizable(false);
        ventana_suscursal.getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel8.setBackground(new java.awt.Color(51, 51, 51));
        jPanel8.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel9.setBackground(new java.awt.Color(0, 102, 102));
        jPanel9.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        tbl_bsucursal = new javax.swing.JTable(){
            public boolean isCellEditable(int rowIndex, int colIndex){
                return false;
            }
        };
        tbl_bsucursal.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane5.setViewportView(tbl_bsucursal);

        jPanel9.add(jScrollPane5, new org.netbeans.lib.awtextra.AbsoluteConstraints(11, 10, 370, 190));

        btn_agre_suc.setText("Agregar");
        jPanel9.add(btn_agre_suc, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 210, -1, -1));

        jPanel8.add(jPanel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 20, 390, 240));

        ventana_suscursal.getContentPane().add(jPanel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 410, 270));

        ventana_error.setTitle("VENTANA DE ERROR DEL SISTEMA");
        ventana_error.setResizable(false);
        ventana_error.getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel10.setBackground(new java.awt.Color(51, 51, 51));
        jPanel10.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel11.setBackground(new java.awt.Color(0, 102, 102));
        jPanel11.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        txt_error.setEditable(false);
        txt_error.setColumns(20);
        txt_error.setLineWrap(true);
        txt_error.setRows(5);
        txt_error.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        jScrollPane6.setViewportView(txt_error);

        jPanel11.add(jScrollPane6, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 550, 250));

        btn_volver_err.setText("Volver");
        jPanel11.add(btn_volver_err, new org.netbeans.lib.awtextra.AbsoluteConstraints(250, 270, 80, -1));

        jPanel10.add(jPanel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 570, 310));

        ventana_error.getContentPane().add(jPanel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 600, 330));

        ventana_deposito.setTitle("Busqueda Deposito");
        ventana_deposito.setResizable(false);
        ventana_deposito.getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel19.setBackground(new java.awt.Color(51, 51, 51));
        jPanel19.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel20.setBackground(new java.awt.Color(0, 102, 102));
        jPanel20.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        tbl_bdeposito = new javax.swing.JTable(){
            public boolean isCellEditable(int rowIndex, int colIndex){
                return false;
            }
        };
        tbl_bdeposito.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane9.setViewportView(tbl_bdeposito);

        jPanel20.add(jScrollPane9, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 350, 240));

        btn_agreg_deposito.setText("Agregar");
        jPanel20.add(btn_agreg_deposito, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 280, -1, -1));

        jPanel19.add(jPanel20, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 370, 320));

        ventana_deposito.getContentPane().add(jPanel19, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 400, 350));

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("REGISTRO USUARIOS(FORMUSUARI)");
        setResizable(false);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel3.setBackground(new java.awt.Color(51, 51, 51));
        jPanel3.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel2.setBackground(new java.awt.Color(0, 102, 102));
        jPanel2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 102, 51)));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

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
        jScrollPane1.setViewportView(tbl_usuario);

        jPanel2.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 430, 270));

        jPanel3.add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(490, 60, 450, 290));

        jPanel1.setBackground(new java.awt.Color(0, 102, 102));
        jPanel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 102, 51)));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(204, 204, 0));
        jLabel1.setText("Nombre Usuario:");
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 20, -1, -1));

        txt_cod_usuario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txt_cod_usuarioActionPerformed(evt);
            }
        });
        jPanel1.add(txt_cod_usuario, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 20, 120, -1));

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(204, 204, 0));
        jLabel2.setText("Contraseña:");
        jPanel1.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 60, -1, -1));
        jPanel1.add(txt_clave, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 60, 120, -1));

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(204, 204, 0));
        jLabel3.setText("Cod persona:");
        jPanel1.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 100, -1, -1));
        jPanel1.add(txt_cod_persona, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 100, 70, -1));

        txt_desc_persona.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txt_desc_personaActionPerformed(evt);
            }
        });
        jPanel1.add(txt_desc_persona, new org.netbeans.lib.awtextra.AbsoluteConstraints(235, 100, 230, -1));

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(204, 204, 0));
        jLabel4.setText("Cod Grupo:");
        jPanel1.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 140, -1, -1));
        jPanel1.add(txt_cod_grupo, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 140, 70, -1));
        jPanel1.add(txt_desc_grupo, new org.netbeans.lib.awtextra.AbsoluteConstraints(235, 140, 230, -1));

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(204, 204, 0));
        jLabel5.setText("Cod sucursal:");
        jPanel1.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 180, -1, -1));
        jPanel1.add(txt_cod_sucursal, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 180, 70, -1));

        txt_desc_sucursal.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txt_desc_sucursalActionPerformed(evt);
            }
        });
        jPanel1.add(txt_desc_sucursal, new org.netbeans.lib.awtextra.AbsoluteConstraints(235, 180, 230, -1));

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(204, 204, 0));
        jLabel6.setText("Estado:");
        jPanel1.add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 260, -1, -1));

        cmb_estado.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        jPanel1.add(cmb_estado, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 260, 168, -1));

        btn_pers.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/search.png"))); // NOI18N
        btn_pers.setToolTipText("Buscar");
        jPanel1.add(btn_pers, new org.netbeans.lib.awtextra.AbsoluteConstraints(205, 100, 25, 20));

        btn_grup.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/search.png"))); // NOI18N
        btn_grup.setToolTipText("Buscar");
        jPanel1.add(btn_grup, new org.netbeans.lib.awtextra.AbsoluteConstraints(205, 140, 25, 20));

        btn_suc.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/search.png"))); // NOI18N
        btn_suc.setToolTipText("Buscar");
        jPanel1.add(btn_suc, new org.netbeans.lib.awtextra.AbsoluteConstraints(205, 180, 25, 20));
        jPanel1.add(txt_cod_deposito, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 220, 70, -1));

        btn_dep.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/search.png"))); // NOI18N
        btn_dep.setToolTipText("Buscar");
        jPanel1.add(btn_dep, new org.netbeans.lib.awtextra.AbsoluteConstraints(205, 220, 25, 20));

        txt_desc_deposito.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txt_desc_depositoActionPerformed(evt);
            }
        });
        jPanel1.add(txt_desc_deposito, new org.netbeans.lib.awtextra.AbsoluteConstraints(235, 220, 230, -1));

        jLabel9.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel9.setForeground(new java.awt.Color(204, 204, 0));
        jLabel9.setText("Cod deposito:");
        jPanel1.add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 220, -1, -1));

        jPanel3.add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 60, 470, 290));

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

        jPanel3.add(jToolBar1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 460, 54));

        getContentPane().add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 950, 360));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void txt_desc_personaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txt_desc_personaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txt_desc_personaActionPerformed

    private void txt_desc_sucursalActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txt_desc_sucursalActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txt_desc_sucursalActionPerformed

    private void txt_cod_usuarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txt_cod_usuarioActionPerformed
        
    }//GEN-LAST:event_txt_cod_usuarioActionPerformed

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

    private void txt_desc_depositoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txt_desc_depositoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txt_desc_depositoActionPerformed

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
            java.util.logging.Logger.getLogger(FORMUSUARI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(FORMUSUARI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(FORMUSUARI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(FORMUSUARI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FORMUSUARI().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.JButton btn_agre_grup;
    public javax.swing.JButton btn_agre_suc;
    public javax.swing.JButton btn_agreg_deposito;
    public javax.swing.JButton btn_apersona;
    public javax.swing.JButton btn_busqueda;
    public javax.swing.JButton btn_dep;
    public javax.swing.JButton btn_ejecutar;
    public javax.swing.JButton btn_error;
    public javax.swing.JButton btn_grup;
    public javax.swing.JButton btn_imprimir;
    public javax.swing.JButton btn_nuevo;
    public javax.swing.JButton btn_pers;
    public javax.swing.JButton btn_salir;
    public javax.swing.JButton btn_suc;
    public javax.swing.JButton btn_volver_err;
    public javax.swing.JButton btnactualizar;
    public javax.swing.JButton btncancelar;
    public javax.swing.JButton btneliminar;
    public javax.swing.JButton btnguardar;
    public javax.swing.JComboBox<String> cmb_estado;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel10;
    private javax.swing.JPanel jPanel11;
    private javax.swing.JPanel jPanel19;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel20;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JPanel jPanel8;
    private javax.swing.JPanel jPanel9;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane5;
    private javax.swing.JScrollPane jScrollPane6;
    private javax.swing.JScrollPane jScrollPane9;
    private javax.swing.JToolBar jToolBar1;
    public javax.swing.JTable tbl_bdeposito;
    public javax.swing.JTable tbl_bgrupo;
    public javax.swing.JTable tbl_bpersona;
    public javax.swing.JTable tbl_bsucursal;
    public javax.swing.JTable tbl_usuario;
    public javax.swing.JTextField txt_bdesc_pers;
    public javax.swing.JTextField txt_bnrodoc_pers;
    public javax.swing.JPasswordField txt_clave;
    public javax.swing.JTextField txt_cod_deposito;
    public javax.swing.JTextField txt_cod_grupo;
    public javax.swing.JTextField txt_cod_persona;
    public javax.swing.JTextField txt_cod_sucursal;
    public javax.swing.JTextField txt_cod_usuario;
    public javax.swing.JTextField txt_desc_deposito;
    public javax.swing.JTextField txt_desc_grupo;
    public javax.swing.JTextField txt_desc_persona;
    public javax.swing.JTextField txt_desc_sucursal;
    public javax.swing.JTextArea txt_error;
    private javax.swing.JDialog ventana_deposito;
    private javax.swing.JDialog ventana_error;
    private javax.swing.JDialog ventana_grupo;
    private javax.swing.JDialog ventana_persona;
    private javax.swing.JDialog ventana_suscursal;
    // End of variables declaration//GEN-END:variables

    public void incializa_controles() {
        Object tpd[] = new Object[2];
        tpd[0] ="ACTIVO";
        tpd[1] ="INACTIVO";
        DefaultComboBoxModel dcb = new DefaultComboBoxModel(tpd);
        this.cmb_estado.setModel(dcb);
        //cmb_estado.addItem("Seleccione Estado");
        //String std = "Seleccione Estado";
        //this.cmb_estado.setSelectedItem(std);
        bloquea_campos();
        blouea_botones();
    }

    private void bloquea_campos() {
        txt_clave.setEditable(false);
        txt_cod_grupo.setEditable(false);
        txt_cod_persona.setEditable(false);
        txt_cod_sucursal.setEditable(false);
        txt_cod_deposito.setEditable(false);
        txt_cod_usuario.setEditable(false);
        txt_desc_grupo.setEditable(false);
        txt_desc_persona.setEditable(false);
        txt_desc_sucursal.setEditable(false);
        txt_desc_deposito.setEditable(false);
        btn_pers.setEnabled(false);
        btn_grup.setEnabled(false);
        btn_suc.setEnabled(false);
        btn_dep.setEnabled(false);
        cmb_estado.setEnabled(false);
    }
    public void habilita_campos(){
        txt_clave.setEditable(true);
        txt_cod_grupo.setEditable(true);
        txt_cod_persona.setEditable(true);
        txt_cod_sucursal.setEditable(true);
        txt_cod_deposito.setEditable(true);
        txt_cod_usuario.setEditable(true);
        /*txt_desc_grupo.setEditable(true);
        txt_desc_persona.setEditable(true);
        txt_desc_sucursal.setEditable(true);*/
        cmb_estado.setEnabled(true);
        btn_pers.setEnabled(true);
        btn_grup.setEnabled(true);
        btn_suc.setEnabled(true);
        btn_dep.setEnabled(true);
        txt_cod_usuario.requestFocus();
    }
    public void ventana_persona(){
        FORMUSUARI bus = new FORMUSUARI();
        ventana_persona.setVisible(true);
        ventana_persona.setSize(435,405);
        ventana_persona.setLocationRelativeTo(bus);
    }
    public void cerrar_ventana_persona(){
        ventana_persona.dispose();
    }
    public void ventana_grupo(){
        FORMUSUARI bus = new FORMUSUARI();
        ventana_grupo.setVisible(true);
        ventana_grupo.setSize(440,365);
        ventana_grupo.setLocationRelativeTo(bus);
    }
    public void cerrar_ventana_grupo(){
        ventana_grupo.dispose();
    }
    public void ventana_suscursal(){
        FORMUSUARI bus = new FORMUSUARI();
        ventana_suscursal.setVisible(true);
        ventana_suscursal.setSize(415,295);
        ventana_suscursal.setLocationRelativeTo(bus);
    }
    public void cerrar_ventana_suscursal(){
        ventana_suscursal.dispose();
    }
    public void ventana_error(){
    FORMUSUARI bus = new FORMUSUARI();
        ventana_error.setVisible(true);
        ventana_error.setSize(590,355);
        ventana_error.setLocationRelativeTo(bus);
    }
    public void cerrar_ventana_error(){
        ventana_error.dispose();    
}
    public void ventana_deposito(){
        FORMUSUARI bus = new FORMUSUARI();
        ventana_deposito.setVisible(true);
        ventana_deposito.setSize(400,370);
        ventana_deposito.setLocationRelativeTo(bus);
    }
    public void cerrar_ventana_deposito(){
        ventana_deposito.dispose();
    }
    private void blouea_botones() {
        btn_imprimir.setEnabled(false);
        btnactualizar.setEnabled(false);
        btneliminar.setEnabled(false);
        btnguardar.setEnabled(false);
        btn_ejecutar.setEnabled(false);
        btn_busqueda.setEnabled(true);
        btn_nuevo.setEnabled(true);
        btn_nuevo.requestFocus();
    }
}
