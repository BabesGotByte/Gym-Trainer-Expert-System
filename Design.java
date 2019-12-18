package firstpro;

import javax.swing.*;
import java.awt.*;
import java.awt.geom.RoundRectangle2D;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.geom.RoundRectangle2D;

public class Design extends JPanel {
    Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();

    Design(GridBagLayout g) {
        super(g);
    }

    public void drawing(){
        repaint();
    }
    public void paintComponent(Graphics g) {
        super.paintComponent(g);
        Graphics2D graphics1 = (Graphics2D) g;
        RoundRectangle2D roundedRectangle1 = new RoundRectangle2D.Float(0, 0,screenSize.width,((screenSize.height*25)/30) , 20, 20);
        graphics1.draw(roundedRectangle1);
        g.setColor(Color.LIGHT_GRAY);
        graphics1.fillRoundRect(0, 0,screenSize.width ,((screenSize.height*25)/30), 20, 20);

        Graphics2D graphics2 = (Graphics2D) g;
        RoundRectangle2D roundedRectangle2 = new RoundRectangle2D.Float(50, ((screenSize.height * 10) / 32), (screenSize.width - 100), ((screenSize.height * 10) / 32), 50, 50);
        graphics2.draw(roundedRectangle2);
        g.setColor(Color.white);
        graphics2.fillRoundRect(100, ((screenSize.height * 10) / 32), (screenSize.width - 200), ((screenSize.height * 10) / 32), 50, 50);

    }
}
