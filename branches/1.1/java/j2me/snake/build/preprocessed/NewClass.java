import javax.microedition.lcdui.Canvas;
import javax.microedition.lcdui.Graphics;
/*
 * NewClass.java
 *
 * Created on July 18, 2007, 6:57 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

/**
 *
 * @author Nhoc
 */
public class NewClass extends Canvas implements  Runnable {

    private int x;
    private boolean canMove;
    private int dir = 2;
    private int y;
    private Graphics G ;
    
    private int unit = 15;
    
    /** Creates a new instance of NewClass */
    public NewClass()  {
        x= 50;
        y = 50;
    }

    protected void keyPressed(int keyCode) {
         int k = getGameAction(keyCode);
        
        if (k== Canvas.UP && dir != 3)
        {
            dir = 1;
            System.out.println("Up");
        }
        else if (k == Canvas.DOWN && dir != 1)
        {
            dir = 3;
        }
        else if (k== Canvas.LEFT && dir != 2)
        {
            dir = 4;
        }
        else if (k == Canvas.RIGHT && dir != 4)
        {
            dir = 2;
        }
    }

    /*public void keyPressed(int keyCode)
    {
        
        int k = getGameAction(keyCode);
        
        if (k== Canvas.UP && dir != 3)
        {
            dir = 1;
        }
        else if (k == Canvas.DOWN && dir != 1)
        {
            dir = 3;
        }
        else if (k== Canvas.LEFT && dir != 2)
        {
            dir = 4;
        }
        else if (k == Canvas.RIGHT && dir != 4)
        {
            dir = 2;
        }
    }
     **/
    //private void clear(gra)
    protected void paint(Graphics graphics) {
        graphics.setColor(0x00000000);
        graphics.fillRect(x,y,2,2);
         
    }
    public void setX(int x)
    {
        this.x = x;
    }
      public void setY(int y)
    {
        this.y = y;
    }

    public void settoado( ) {
     
    if (dir == 1)
    {
         y = y -2;
    }
    else if (dir == 2)
    {
        x = x + 2;
    }
    else if (dir ==3)
    {
        y = y+ 2;
    }
    else if (dir == 4)
    {
        x = x -2;
    }
    repaint() ;
    }
    

    public void run() {
      
      try{
            
            while (true) {
              Thread.sleep(100);
           //dir=4;//huong sang phai
         
            settoado();//di chuyen
                 
            }
            
      }
      catch (InterruptedException e)
      {
          System.out.println("loi roi");
      }
       //repaint();;
    
    }
   
}
