/*
 * orderlist.java
 *
 * Created on April 1, 2006, 3:17 AM
 */

package phs_project;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.JComboBox;
import java.util.*;
/**
 *
 * @author  Administrator
 */
public class orderlist extends javax.swing.JFrame {
    
    /** Creates new form orderlist */
    public orderlist() {
        initComponents();
        addItemToTable(OrderList,"select * from orderofcus");
        OrderList.getColumnModel().setColumnMargin(0);
        
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        OrderList = new javax.swing.JTable();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane19 = new javax.swing.JScrollPane();
        CustomerInorder = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder("Danh sach don hang"));
        OrderList.setModel(new javax.swing.table.DefaultTableModel(
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
        OrderList.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                OrderListMouseClicked(evt);
            }
        });

        jScrollPane1.setViewportView(OrderList);

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(24, Short.MAX_VALUE)
                .add(jScrollPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 532, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .add(19, 19, 19)
                .add(jScrollPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 110, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(26, Short.MAX_VALUE))
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder("Danh sach khach hang di theo"));
        CustomerInorder.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane19.setViewportView(CustomerInorder);

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jScrollPane19, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 108, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jScrollPane19, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 97, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(47, Short.MAX_VALUE))
        );

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(22, 22, 22)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(layout.createSequentialGroup()
                        .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap())
                    .add(layout.createSequentialGroup()
                        .add(jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addContainerGap(445, Short.MAX_VALUE))))
        );
        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void OrderListMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_OrderListMouseClicked
// TODO add your handling code here:
      String  Madonhang = SelectedRowToString(OrderList,0);
      addItemToTable(CustomerInorder,"select FirstName +' '+ lastname as [Ten khach hang] from CusInOrder  where orderId='"+Madonhang+"'");
        
        
    }//GEN-LAST:event_OrderListMouseClicked
    
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new orderlist().setVisible(true);
            }
        });
    }
     // COPY Tu day di tat ca cac form
                                  /* import cac goi nay
                                    import java.sql.Connection;
                                    import java.sql.ResultSet;
                                    import java.sql.ResultSetMetaData;
                                    import java.sql.Statement;
                                    import javax.swing.JOptionPane;
                                    import javax.swing.JTable;
                                    import javax.swing.JTextField;
                                   
                                   */
    public void SQLRUN(String SQLTEXT) // Ham de chay cau truy van
    {
        try{
            Connection   conn = new connectDatabase().getConnection();
            Statement stm = conn.createStatement();
            stm.execute(SQLTEXT);
            conn.close();
            stm.close();
            System.out.println(SQLTEXT);
        } catch(Exception e){
            e.printStackTrace();
        }
    }
    public String  SelectedRowToString(JTable TableName, int CollNumb ) // Lay va In ten truong thu CollNumb ra  bietn ReturnValua, lay 1 bien
    {
        //int CollNumb ;
        //CollNumb=0;
        int  RowSelected;
        String ReturnValue;
        RowSelected = TableName.getSelectedRow();
        ReturnValue=TableName.getValueAt(RowSelected,CollNumb).toString();
        System.out.println(ReturnValue+" ");
        return ReturnValue;
        //System.out.println(TableName.getValueAt(RowSelected,CollNumb));
        
    }
    public void addItemTooCombobox(JComboBox ComboboxName,String sqlcb,String Firstchoice) // Dua du lieu tu cau truy van vao combobox, chi co 1 truong trong du lieu
    {
        //String sqlcb = "select TenTruogn from TenBang";
        //ComboboxName.addItem("Chon 1");
        if (Firstchoice !=""){
            ComboboxName.addItem(Firstchoice);
        }
        new sqlDatabase().addDataCombobox(sqlcb,ComboboxName);
    }
    
    public void addItemToTable(JTable TableName,String sqltb )// Lay du lieu tu cau truy van dua vao tabe, nhieu ten bang
    {
        
        //String sqltb=  "select * from Tenbang";
        new sqlDatabase().addDataTable(sqltb,TableName);
        
    }
    
    public void addDataToTextField(String sql,String rsName,JTextField TexFiedName) // dua du lieu tu trong cau truy van vao bang
    {
        //Connection con =null;
        if(con == null){
            con = new connectDatabase().getConnection();
        }
        try{
            Statement sttm = con.createStatement();
            ResultSet rs = sttm.executeQuery(sql);
            while(rs.next()){
                TexFiedName.setText(rs.getString(rsName));
            }
            sttm.close();
            rs.close();
        } catch(Exception e){
            e.printStackTrace();
        }
    }
    public String selectDateToString(String sql,String rsName) // dua du lieu tu trong cau truy van ra bien string
    {
        String returnvl ="" ;
        //Connection con =null;
        if(con == null){
            con = new connectDatabase().getConnection();
        }
        try{
            Statement sttm = con.createStatement();
            ResultSet rs = sttm.executeQuery(sql);
            while(rs.next()){
                System.err.println(rs.getString(rsName));
                returnvl = rs.getString(rsName);
            }
            sttm.close();
            rs.close();
        } catch(Exception e){
            e.printStackTrace();
        }
        return returnvl;
    }
    
    
    //  Copy tu day di tat ca cac form
    Connection con ;
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTable CustomerInorder;
    private javax.swing.JRadioButton Khachcu;
    private javax.swing.JRadioButton Khachcu1;
    private javax.swing.JRadioButton Khachcu2;
    private javax.swing.JRadioButton Khachcu3;
    private javax.swing.JRadioButton Khachcu4;
    private javax.swing.JRadioButton Khachcu5;
    private javax.swing.JRadioButton Khachmoi;
    private javax.swing.JRadioButton Khachmoi1;
    private javax.swing.JRadioButton Khachmoi2;
    private javax.swing.JRadioButton Khachmoi3;
    private javax.swing.JRadioButton Khachmoi4;
    private javax.swing.JRadioButton Khachmoi5;
    private javax.swing.JTable OrderList;
    private javax.swing.JPanel PanelKhachmoi;
    private javax.swing.JPanel PanelKhachmoi1;
    private javax.swing.JPanel PanelKhachmoi2;
    private javax.swing.JPanel PanelKhachmoi3;
    private javax.swing.JPanel PanelKhachmoi4;
    private javax.swing.JPanel PanelKhachmoi5;
    private javax.swing.JTextArea SelectedRoom;
    private javax.swing.JTextArea SelectedRoom1;
    private javax.swing.JTextArea SelectedRoom2;
    private javax.swing.JTextArea SelectedRoom3;
    private javax.swing.JTextArea SelectedRoom4;
    private javax.swing.JTextArea SelectedRoom5;
    private javax.swing.JTextArea address;
    private javax.swing.JTextArea address1;
    private javax.swing.JTextArea address2;
    private javax.swing.JTextArea address3;
    private javax.swing.JTextArea address4;
    private javax.swing.JTextArea address5;
    private javax.swing.JTextField age;
    private javax.swing.JTextField age1;
    private javax.swing.JTextField age2;
    private javax.swing.JTextField age3;
    private javax.swing.JTextField age4;
    private javax.swing.JTextField age5;
    private javax.swing.JTextField begindate;
    private javax.swing.JTextField begindate1;
    private javax.swing.JTextField begindate2;
    private javax.swing.JTextField begindate3;
    private javax.swing.JTextField begindate4;
    private javax.swing.JTextField begindate5;
    private javax.swing.JTextField country;
    private javax.swing.JTextField country1;
    private javax.swing.JTextField country2;
    private javax.swing.JTextField country3;
    private javax.swing.JTextField country4;
    private javax.swing.JTextField country5;
    private javax.swing.JTextField cusName;
    private javax.swing.JTextField cusName1;
    private javax.swing.JTextField cusName2;
    private javax.swing.JTextField cusName3;
    private javax.swing.JTextField cusName4;
    private javax.swing.JTextField cusName5;
    private javax.swing.JTextField customerId;
    private javax.swing.JTextField customerId1;
    private javax.swing.JTextField customerId2;
    private javax.swing.JTextField customerId3;
    private javax.swing.JTextField customerId4;
    private javax.swing.JTextField customerId5;
    private javax.swing.JTextArea detail;
    private javax.swing.JTextArea detail1;
    private javax.swing.JTextArea detail2;
    private javax.swing.JTextArea detail3;
    private javax.swing.JTextArea detail4;
    private javax.swing.JTextArea detail5;
    private javax.swing.JTextField email;
    private javax.swing.JTextField email1;
    private javax.swing.JTextField email2;
    private javax.swing.JTextField email3;
    private javax.swing.JTextField email4;
    private javax.swing.JTextField email5;
    private javax.swing.JTextField enddate;
    private javax.swing.JTextField enddate1;
    private javax.swing.JTextField enddate2;
    private javax.swing.JTextField enddate3;
    private javax.swing.JTextField enddate4;
    private javax.swing.JTextField enddate5;
    private javax.swing.JTextField idCardNumb;
    private javax.swing.JTextField idCardNumb1;
    private javax.swing.JTextField idCardNumb2;
    private javax.swing.JTextField idCardNumb3;
    private javax.swing.JTextField idCardNumb4;
    private javax.swing.JTextField idCardNumb5;
    private javax.swing.JButton insertnew;
    private javax.swing.JButton insertnew1;
    private javax.swing.JButton insertnew2;
    private javax.swing.JButton insertnew3;
    private javax.swing.JButton insertnew4;
    private javax.swing.JButton insertnew5;
    private javax.swing.JButton jButton10;
    private javax.swing.JButton jButton11;
    private javax.swing.JButton jButton12;
    private javax.swing.JButton jButton13;
    private javax.swing.JButton jButton14;
    private javax.swing.JButton jButton15;
    private javax.swing.JButton jButton16;
    private javax.swing.JButton jButton17;
    private javax.swing.JButton jButton18;
    private javax.swing.JButton jButton19;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JButton jButton8;
    private javax.swing.JButton jButton9;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel23;
    private javax.swing.JLabel jLabel24;
    private javax.swing.JLabel jLabel25;
    private javax.swing.JLabel jLabel26;
    private javax.swing.JLabel jLabel27;
    private javax.swing.JLabel jLabel28;
    private javax.swing.JLabel jLabel29;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel30;
    private javax.swing.JLabel jLabel31;
    private javax.swing.JLabel jLabel32;
    private javax.swing.JLabel jLabel33;
    private javax.swing.JLabel jLabel34;
    private javax.swing.JLabel jLabel35;
    private javax.swing.JLabel jLabel36;
    private javax.swing.JLabel jLabel37;
    private javax.swing.JLabel jLabel38;
    private javax.swing.JLabel jLabel39;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel40;
    private javax.swing.JLabel jLabel41;
    private javax.swing.JLabel jLabel42;
    private javax.swing.JLabel jLabel43;
    private javax.swing.JLabel jLabel44;
    private javax.swing.JLabel jLabel45;
    private javax.swing.JLabel jLabel46;
    private javax.swing.JLabel jLabel47;
    private javax.swing.JLabel jLabel48;
    private javax.swing.JLabel jLabel49;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel50;
    private javax.swing.JLabel jLabel51;
    private javax.swing.JLabel jLabel52;
    private javax.swing.JLabel jLabel53;
    private javax.swing.JLabel jLabel54;
    private javax.swing.JLabel jLabel55;
    private javax.swing.JLabel jLabel56;
    private javax.swing.JLabel jLabel57;
    private javax.swing.JLabel jLabel58;
    private javax.swing.JLabel jLabel59;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel60;
    private javax.swing.JLabel jLabel61;
    private javax.swing.JLabel jLabel62;
    private javax.swing.JLabel jLabel63;
    private javax.swing.JLabel jLabel64;
    private javax.swing.JLabel jLabel65;
    private javax.swing.JLabel jLabel66;
    private javax.swing.JLabel jLabel67;
    private javax.swing.JLabel jLabel68;
    private javax.swing.JLabel jLabel69;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel70;
    private javax.swing.JLabel jLabel71;
    private javax.swing.JLabel jLabel72;
    private javax.swing.JLabel jLabel73;
    private javax.swing.JLabel jLabel74;
    private javax.swing.JLabel jLabel75;
    private javax.swing.JLabel jLabel76;
    private javax.swing.JLabel jLabel77;
    private javax.swing.JLabel jLabel78;
    private javax.swing.JLabel jLabel79;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel80;
    private javax.swing.JLabel jLabel81;
    private javax.swing.JLabel jLabel82;
    private javax.swing.JLabel jLabel83;
    private javax.swing.JLabel jLabel84;
    private javax.swing.JLabel jLabel85;
    private javax.swing.JLabel jLabel86;
    private javax.swing.JLabel jLabel87;
    private javax.swing.JLabel jLabel88;
    private javax.swing.JLabel jLabel89;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JLabel jLabel90;
    private javax.swing.JLabel jLabel91;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane10;
    private javax.swing.JScrollPane jScrollPane11;
    private javax.swing.JScrollPane jScrollPane12;
    private javax.swing.JScrollPane jScrollPane13;
    private javax.swing.JScrollPane jScrollPane14;
    private javax.swing.JScrollPane jScrollPane15;
    private javax.swing.JScrollPane jScrollPane16;
    private javax.swing.JScrollPane jScrollPane17;
    private javax.swing.JScrollPane jScrollPane18;
    private javax.swing.JScrollPane jScrollPane19;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JScrollPane jScrollPane5;
    private javax.swing.JScrollPane jScrollPane6;
    private javax.swing.JScrollPane jScrollPane7;
    private javax.swing.JScrollPane jScrollPane8;
    private javax.swing.JScrollPane jScrollPane9;
    private javax.swing.JToggleButton jToggleButton1;
    private javax.swing.JToggleButton jToggleButton2;
    private javax.swing.JToggleButton jToggleButton3;
    private javax.swing.JToggleButton jToggleButton4;
    private javax.swing.JToggleButton jToggleButton5;
    private javax.swing.JToggleButton jToggleButton6;
    private javax.swing.JTextField phone;
    private javax.swing.JTextField phone1;
    private javax.swing.JTextField phone2;
    private javax.swing.JTextField phone3;
    private javax.swing.JTextField phone4;
    private javax.swing.JTextField phone5;
    private javax.swing.JRadioButton sexFemale;
    private javax.swing.JRadioButton sexFemale1;
    private javax.swing.JRadioButton sexFemale2;
    private javax.swing.JRadioButton sexFemale3;
    private javax.swing.JRadioButton sexFemale4;
    private javax.swing.JRadioButton sexFemale5;
    private javax.swing.JRadioButton sexMale;
    private javax.swing.JRadioButton sexMale1;
    private javax.swing.JRadioButton sexMale2;
    private javax.swing.JRadioButton sexMale3;
    private javax.swing.JRadioButton sexMale4;
    private javax.swing.JRadioButton sexMale5;
    private javax.swing.JComboBox type;
    private javax.swing.JComboBox type1;
    private javax.swing.JComboBox type2;
    private javax.swing.JComboBox type3;
    private javax.swing.JComboBox type4;
    private javax.swing.JComboBox type5;
    private javax.swing.JTextField visaCardNumb;
    private javax.swing.JTextField visaCardNumb1;
    private javax.swing.JTextField visaCardNumb2;
    private javax.swing.JTextField visaCardNumb3;
    private javax.swing.JTextField visaCardNumb4;
    private javax.swing.JTextField visaCardNumb5;
    // End of variables declaration//GEN-END:variables
    
}