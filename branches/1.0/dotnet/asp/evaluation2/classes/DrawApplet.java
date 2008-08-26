import java.awt.*;
import java.applet.*;

public class DrawApplet extends java.applet.Applet
{
    public void init() 
    {
        try 
        {
            java.awt.EventQueue.invokeAndWait(new Runnable() 
            {
                public void run() 
                {
                    initComponents();
                    
                    textField1.setText(getParameter("T") );
                    textField2.setText(getParameter("H") );
                    textField3.setText(getParameter("I") );
                    textField4.setText(getParameter("O") );
                    button1ActionPerformed(new java.awt.event.ActionEvent(button1, 1, "button1") );
                }
            });
        } 
        catch (Exception ex) 
        {
            ex.printStackTrace();
        }
    }
    
    public void paint(Graphics g){
        g.drawLine(0, 100, 200, 100); // Tr?c Ox
        g.drawLine(100, 0, 100, 200); // Tr?c Oy
        
        g.setColor(Color.RED);
        g.drawLine(100, 0, 0, 100); // ???ng ch�o th? nh?t n?m trong g�c ph?n t? th? t? (k�o t? tr?c T xu?ng tr?c H)
        g.drawLine(0, 100, 100, 200); //???ng ch�o th? hai n?m trong g�c ph?n t? th? ba (k�o t? tr?c H xu?ng tr?c I)
        g.drawLine(100, 200, 200, 100); // ???ng ch�o th? ba n?m trong g�c ph?n t? th? hai (k�o t? tr?c I l�n tr?c O)
        g.drawLine(200, 100, 100, 0); // ???ng ch�o th? t? n?m trong g�c ph?n t? th? nh?t (k�o t? tr?c O l�n tr?c T)
        
        //ve chu T,H,I,O:
        g.drawString("T", 85, 10);
        g.drawString("O", 205, 100);
        g.drawString("I", 100, 215);
        g.drawString("H", 0, 90);
        
        if(Tmark == 0 && 
            Hmark == 0 && 
            Imark == 0 && 
            Omark == 0)
        {
            //do nothing
        }
        else
        {
            g.setColor(Color.blue);
            
            //ve duong TO:
            g.drawLine(100, 100-Tmark, 100+Omark, 100);
            //ve toa do T:
            if(Tmark==100)
                g.drawString("1", 110, 10);
            else
                g.drawString(""+(float)Tmark/100, 105, 100-Tmark);
            
            //ve duong OI:
            g.drawLine(100+Omark, 100, 100, 100+Imark);
            //ve toa do O:
            if(Omark==100)
                g.drawString("1", 100+Omark, 115);
            else
                g.drawString(""+(float)Omark/100, 100+Omark, 90);
            
            //ve duong IH:
            g.drawLine(100, 100+Imark, 100-Hmark, 100);
             //ve toa do I:
            if(Imark==100)
                g.drawString("1", 110, 110+Imark);
            else
                g.drawString(""+(float)Imark/100, 100, 110+Imark);
            
            //ve duong HT:
            g.drawLine(100-Hmark, 100, 100, 100-Tmark);
            //ve toa do H:
            if(Hmark==100)
                g.drawString("1", 2, 115);
            else
                g.drawString(""+(float)Hmark/100, 85-Hmark, 120);
        }

    }
    
	public void start()
	{
		repaint();
	}

	public void stop()
	{
	}
	
    private void initComponents() 
    {
        label1 = new java.awt.Label();
        label2 = new java.awt.Label();
        label3 = new java.awt.Label();
        label4 = new java.awt.Label();
        textField1 = new java.awt.TextField();
        textField2 = new java.awt.TextField();
        textField3 = new java.awt.TextField();
        textField4 = new java.awt.TextField();
        button1 = new java.awt.Button();
        
		newlb = new Label("Percentage : ");
		newtf = new TextField("", 7);
		newtf.setEditable(false);

        label1.setText("Technoware");

        label2.setText("Humanware");

        label3.setText("Infoware");

        label4.setText("Orgaware");

        textField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                textField1KeyTyped(evt);
            }
        });

        textField2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                textField2KeyTyped(evt);
            }
        });

        textField3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                textField3KeyTyped(evt);
            }
        });

        textField4.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                textField4KeyTyped(evt);
            }
        });

        button1.setLabel("Xem");
        button1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                button1ActionPerformed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                .addContainerGap(274, Short.MAX_VALUE)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, button1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, label1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, label2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, label3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, label4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, newlb, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(textField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 125, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(textField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 125, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(textField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 125, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(textField4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 125, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(newtf, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 125, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        layout.linkSize(new java.awt.Component[] {textField1, textField2, textField3, textField4, newtf}, org.jdesktop.layout.GroupLayout.HORIZONTAL);

        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(label1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(textField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(label2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(textField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(label3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(textField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(label4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(textField4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
               .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
               .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(newlb, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(newtf, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(button1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(50, Short.MAX_VALUE))
        );

        layout.linkSize(new java.awt.Component[] {textField1, textField2, textField3, textField4}, org.jdesktop.layout.GroupLayout.VERTICAL);

        /*Panel p1 = new Panel();
        p1.setLayout(new FlowLayout() );
        p1.add(newlb);
        p1.add(newtf);
        this.add(p1, java.awt.BorderLayout.PAGE_END);
        
        setSize(800,800);*/
    }

    private void textField4KeyTyped(java.awt.event.KeyEvent evt)
     {
        if(evt.getKeyChar() == evt.VK_ENTER)
        {
            this.button1ActionPerformed(new java.awt.event.ActionEvent(button1, 1, "button1") );
        }
    }

    private void textField3KeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_textField3KeyTyped
// TODO add your handling code here:
        if(evt.getKeyChar() == evt.VK_ENTER)
        {
            textField4.selectAll();
            textField4.requestFocus();
        }
    }//GEN-LAST:event_textField3KeyTyped

    private void textField2KeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_textField2KeyTyped
// TODO add your handling code here:
        if(evt.getKeyChar() == evt.VK_ENTER)
        {
            textField3.selectAll();
            textField3.requestFocus();
        }
    }//GEN-LAST:event_textField2KeyTyped

    private void textField1KeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_textField1KeyTyped
// TODO add your handling code here:
        if(evt.getKeyChar() == evt.VK_ENTER)
        {
            textField2.selectAll();
            textField2.requestFocus();
        }
    }//GEN-LAST:event_textField1KeyTyped

    private void button1ActionPerformed(java.awt.event.ActionEvent evt) 
    {
    	try
    	{
	        if(textField1.getText().length() == 0 && 
	                textField2.getText().length() == 0 && 
	                textField3.getText().length() == 0 && 
	                textField4.getText().length() == 0)
	            javax.swing.JOptionPane.showMessageDialog(this, "Xin bạn nhập đầy đủ thông số.");
	        else if(Float.parseFloat(textField1.getText()) > 1 || Float.parseFloat(textField1.getText()) < 0 || 
	                Float.parseFloat(textField2.getText()) > 1 || Float.parseFloat(textField2.getText()) < 0 || 
	                Float.parseFloat(textField3.getText()) > 1 || Float.parseFloat(textField3.getText()) < 0 || 
	                Float.parseFloat(textField4.getText()) > 1 || Float.parseFloat(textField4.getText()) < 0
	                )
	            javax.swing.JOptionPane.showMessageDialog(this, "Số bạn vừa nhập nằm ngoài dải số cho phép.\nXin bạn vui lòng nhập lại.\nDải số cho phép nằm trong khoảng từ 0 đến 1.");
	        else
	        {
	            Hmark = (int)(Float.parseFloat(textField2.getText())*100);
	            Imark = (int)(Float.parseFloat(textField3.getText())*100);
	            Tmark = (int)(Float.parseFloat(textField1.getText())*100);
	            Omark = (int)(Float.parseFloat(textField4.getText())*100);
	            
	            //double dientich = (((Hmark + Omark)*(Tmark + Imark))/2);
	            
				int dienTich1 = (Tmark * (Hmark + Omark ) )/2;
				int dienTich2 = (Imark * (Hmark + Omark ) )/2;
				float dienTichTong = (dienTich1 + dienTich2)*0.0050F;
	            
	            //javax.swing.JOptionPane.showMessageDialog(null, ""+dienTichTong);
	            
	            newtf.setText( dienTichTong+"" );
	            //javax.swing.JOptionPane.showMessageDialog(this, "T="+Tmark+"\nH="+Hmark+"\nI="+Imark+"\nO="+Omark);
	            repaint();
	        }
	    }
	    catch(Exception e)
	    {
	    	javax.swing.JOptionPane.showMessageDialog(this, "Xin bạn vui lòng nhập số.");
	    }
    }
    
    private int Hmark = 0;
    private int Tmark = 0;
    private int Imark = 0;
    private int Omark = 0;
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private java.awt.Button button1;
    private java.awt.Label label1;
    private java.awt.Label label2;
    private java.awt.Label label3;
    private java.awt.Label label4;
    private java.awt.TextField textField1;
    private java.awt.TextField textField2;
    private java.awt.TextField textField3;
    private java.awt.TextField textField4;
    // End of variables declaration//GEN-END:variables
    
    private Label newlb;
    private TextField newtf;
    
}
