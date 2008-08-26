/*
 * Midlet.java
 *
 * Created on July 18, 2007, 7:11 AM
 */

import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;

 
public class Midlet extends MIDlet {
    private NewClass a;
    private Thread b;
    public void startApp() {
        a= new NewClass();
        Display.getDisplay(this).setCurrent(a);
        try{
        b = new Thread(a);
        b.start();
     
        
        }
        catch (Exception e)
        {
            System.out.println("Error");
        }
              
    }
    
    public void pauseApp() {
    }
    
    public void destroyApp(boolean unconditional) {
    }
}
