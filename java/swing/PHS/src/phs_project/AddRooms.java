/*
 * AddRooms.java
 *
 * Created on April 8, 2006, 12:26 AM
 */

package phs_project;

import java.awt.Frame;
import javax.swing.JOptionPane;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.JTextField;

/**
 *
 * @author  Administrator
 */
public class AddRooms extends javax.swing.JDialog {
    
    /** Creates new form AddRooms */
    public AddRooms(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        addRoomsType();
        ViewRooms();
        ResetFields();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    private void ViewRooms(){
        if(typename == null){
             sql  = "Select roomNumb as 'Tên phòng',roomId,name as 'Loại phòng', price as 'Giá phòng' from rooms join roomstype on rooms.type = roomstype.roomtypeId";
             new sqlDatabase().addDataTable(sql,table,2);        
        }
        else{
            sql  = "Select roomNumb as 'Tên phòng',roomId,name as 'Loại phòng' , price as 'Giá phòng' from rooms join roomstype on rooms.type = roomstype.roomtypeId ";
            sql = sql + "Where roomstype.name = N'"+typename+"'";
            new sqlDatabase().addDataTable(sql,table,2);
        }      
        if(table.getRowCount()!= 0){
            table.setRowSelectionInterval(rowselect,rowselect);        
        }
        new publicClass().hiddencol(table,1);
    }
    private void seashRooms(){
        String roomN = txtRoomName.getText();
        String  sql  = "Select roomNumb as 'Tên phòng',roomId, name as 'Loại phòng' , price as 'Giá phòng' from rooms join roomstype on rooms.type = roomstype.roomtypeId ";
              sql = sql + "Where rooms.roomNumb like N'%"+roomN+"%'";
        new sqlDatabase().addDataTable(sql,table,2);
        new publicClass().hiddencol(table,1);
    }
    private void addRoomsType(){
        String sql = "select name from roomstype";
        new sqlDatabase().addDataCombobox(sql,cboRoomType,"----- Chọn loại phòng------");
    }
    
    private void ResetFields(){
        txtRoomName.setText("");
        txtRoomName.requestFocus();
        roomname = null; 
        roomId=null;
        rowselect = 0;
    }
    
    private void editRoom(){
        String newroomname = txtRoomName.getText();
        String sql = "update rooms set roomNumb = N'"+newroomname+"'";
                sql = sql + "where roomNumb = N'"+roomname+"' ";
        int result = new sqlDatabase().runSql(sql);          
    }
    private void deleterooms(){
        String sql = "delete rooms where roomNumb  = N'"+roomname+"'";
        if(roomname !=null){
            int result = new sqlDatabase().runSql(sql);            
            rowselect = 0;
        }
        else{
            JOptionPane.showMessageDialog(this,"Bạn phải chọn phòng muốn xóa");
        }        
    }
    private void updatePrices ()
    {  
         new publicClass().SQLRUN("Update roomStype set  price='"+txtPrice.getText()+"'  where name=N'"+cboRoomType.getSelectedItem().toString()+"'");
        
    }
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        txtRoomName = new javax.swing.JTextField();
        btnSeach = new javax.swing.JButton();
        cboRoomType = new javax.swing.JComboBox();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        txtPrice = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        table = new javax.swing.JTable();
        jPanel3 = new javax.swing.JPanel();
        btnAdd = new javax.swing.JButton();
        btnUpdate = new javax.swing.JButton();
        btnDelete = new javax.swing.JButton();
        btnExit = new javax.swing.JButton();
        jPanel4 = new javax.swing.JPanel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Th\u00eam ph\u00f2ng");
        setAlwaysOnTop(true);
        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        btnSeach.setText(".");
        btnSeach.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSeachActionPerformed(evt);
            }
        });

        cboRoomType.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cboRoomTypeItemStateChanged(evt);
            }
        });

        jLabel1.setText("T\u00ean Ph\u00f2ng ");

        jLabel2.setText("Lo\u1ea1i ph\u00f2ng");

        jLabel3.setText("Gi\u00e1 ph\u00f2ng");

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jLabel1)
                    .add(jLabel2)
                    .add(jLabel3))
                .add(55, 55, 55)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                        .add(jPanel1Layout.createSequentialGroup()
                            .add(txtRoomName)
                            .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                            .add(btnSeach, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 24, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .add(org.jdesktop.layout.GroupLayout.LEADING, cboRoomType, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 204, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(txtPrice, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 181, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(38, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel1)
                    .add(txtRoomName, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(btnSeach, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 18, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 30, Short.MAX_VALUE)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel2)
                    .add(cboRoomType, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(4, 4, 4)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel3)
                    .add(txtPrice, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        table.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null},
                {null, null},
                {null, null},
                {null, null}
            },
            new String [] {
                "Title 1", "Title 2"
            }
        ));
        table.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tableMouseClicked(evt);
            }
        });

        jScrollPane1.setViewportView(table);

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jScrollPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 514, Short.MAX_VALUE)
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jScrollPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 164, Short.MAX_VALUE)
                .addContainerGap())
        );

        jPanel3.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        btnAdd.setMnemonic('T');
        btnAdd.setText("Th\u00eam");
        btnAdd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAddActionPerformed(evt);
            }
        });

        btnUpdate.setMnemonic('S');
        btnUpdate.setText("S\u1eeda");
        btnUpdate.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnUpdateActionPerformed(evt);
            }
        });

        btnDelete.setMnemonic('X');
        btnDelete.setText("X\u00f3a");
        btnDelete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDeleteActionPerformed(evt);
            }
        });

        btnExit.setMnemonic('h');
        btnExit.setText("Tho\u00e1t");
        btnExit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnExitActionPerformed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel3Layout.createSequentialGroup()
                .addContainerGap(183, Short.MAX_VALUE)
                .add(btnAdd)
                .add(18, 18, 18)
                .add(btnUpdate, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 65, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(19, 19, 19)
                .add(btnDelete, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 67, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(22, 22, 22)
                .add(btnExit)
                .add(20, 20, 20))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(btnExit)
                    .add(btnDelete)
                    .add(btnUpdate)
                    .add(btnAdd))
                .addContainerGap())
        );

        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 143, Short.MAX_VALUE)
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 105, Short.MAX_VALUE)
        );

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(layout.createSequentialGroup()
                        .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-546)/2, (screenSize.height-416)/2, 546, 416);
    }// </editor-fold>//GEN-END:initComponents

    private void btnSeachActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSeachActionPerformed
// TODO add your handling code here:
        seashRooms();
    }//GEN-LAST:event_btnSeachActionPerformed

    private void btnExitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnExitActionPerformed
// TODO add your handling code here:
        this.dispose();
    }//GEN-LAST:event_btnExitActionPerformed

    private void btnDeleteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDeleteActionPerformed
// TODO add your handling code here:
        deleterooms();
        ViewRooms();
        ResetFields();
    }//GEN-LAST:event_btnDeleteActionPerformed

    private void btnUpdateActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnUpdateActionPerformed
// TODO add your handling code here:
        if(roomname != null){
             if (txtPrice.getText().equals("")){
            JOptionPane.showMessageDialog(this,"Giá không được bỏ trống  !");
        }
        else
        {
            updatePrices ();
            editRoom();
            ViewRooms();
            ResetFields();
        }
        }
        else{
            JOptionPane.showMessageDialog(this,"Bạn phải chọn phòng muốn thay đổi");
        }             
    }//GEN-LAST:event_btnUpdateActionPerformed

    private void tableMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tableMouseClicked
// TODO add your handling code here:
        rowselect = table.getSelectedRow();        
        roomname = table.getValueAt(rowselect,0).toString();
        roomId=table.getValueAt(rowselect,1).toString();
        
        String selectRoomType=table.getValueAt(rowselect,2).toString();
        String  roomprice= table.getValueAt(rowselect,3).toString();
        txtPrice.setText(roomprice);
        txtRoomName.setText(roomname);
        txtRoomName.requestFocus();
        txtRoomName.selectAll();        
        
        cboRoomType.removeAllItems();
       new publicClass().addItemTooCombobox(cboRoomType,"select name from roomstype where name=N'"+selectRoomType+"'","");
       new publicClass().addItemTooCombobox(cboRoomType,"select name from roomstype where name <> N'"+selectRoomType+"'","");
    }//GEN-LAST:event_tableMouseClicked

    private void cboRoomTypeItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cboRoomTypeItemStateChanged
// TODO add your handling code here:
        /*
        if(cboRoomType.getSelectedIndex()!= 0){
            typename = cboRoomType.getSelectedItem().toString(); 
            String typeId1 =selectDateToString("select * from roomstype where name=N'"+cboRoomType.getSelectedItem().toString()+"'","roomtypeId");
            addDataToTextField("select price from roomstype where roomtypeId= '"+typeId1+"'","price",txtPrice);
        }
        else{
            typename = null;
            txtPrice.setText("");
        }
        ViewRooms();        
         */
    }//GEN-LAST:event_cboRoomTypeItemStateChanged

    private void btnAddActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAddActionPerformed
// TODO add your handling code here:
        if (txtRoomName.getText().equals("")) {
        JOptionPane.showMessageDialog(this,"Bạn phải nhập tên phòng");
        }
        else {
            String CheckName=new publicClass().selectDateToString("select count(roomNumb) countName from rooms where upper(roomnumb)=upper(N'"+txtRoomName.getText()+"')","countName");
            if (new Integer(CheckName)>0)
            {
                JOptionPane.showMessageDialog(this,"Tên phòng đã có, nhập tên khác !");
            }
            else
            {
            String typeId =selectDateToString("select * from roomstype where name=N'"+cboRoomType.getSelectedItem().toString()+"'","roomtypeId");
            String sqlinsert ="insert into rooms (roomnumb,type) values ('"+txtRoomName.getText()+"','"+typeId+"')";
            int Result = new sqlDatabase().runSql(sqlinsert);
            ViewRooms();
            }
        }

    }//GEN-LAST:event_btnAddActionPerformed
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
    
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new AddRooms(new javax.swing.JFrame(), true).setVisible(true);
            }
        });
    }
    private int rowselect = 0;
    private String typename = null;
    private String roomname = null;
    private String sql;
    private Connection con;
    private String roomId;
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnAdd;
    private javax.swing.JButton btnDelete;
    private javax.swing.JButton btnExit;
    private javax.swing.JButton btnSeach;
    private javax.swing.JButton btnUpdate;
    private javax.swing.JComboBox cboRoomType;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable table;
    private javax.swing.JTextField txtPrice;
    private javax.swing.JTextField txtRoomName;
    // End of variables declaration//GEN-END:variables

    private Frame hotelForm;
    
}
