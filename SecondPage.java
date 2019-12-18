package firstpro;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


class Check3 {
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static boolean isValid(String s) {
        Pattern p = Pattern.compile("[0-9][0-9]*");
        Matcher m = p.matcher(s);
        return (m.find() && m.group().equals(s));
    }
}

public class SecondPage extends JFrame {
    public void SecondPage(String a){
        SecondPage frame = new SecondPage();
        Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
        frame.setBounds(0,0,screenSize.width, screenSize.height);
        frame.setVisible(true);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        ////////////////////////////////////COMBO BOX 1////////////////////////////////////////////////////
        String[] stock_name = {"Select --", "F" , "M"};

        JComboBox combo1 = new JComboBox(stock_name);
        add(combo1);
        combo1.setBounds(((screenSize.width*14)/32),((screenSize.height*11)/32),((screenSize.width*4)/32),((screenSize.height*2)/32));
        ///////////////////////////////////COMBO BOX 2//////////////////////////////////////////////////////////////////////////////////////
        String[] scheme_name = {"Select --","slim", "heavy"};

        JComboBox combo2 = new JComboBox(scheme_name);
        add(combo2);
        combo2.setBounds(((screenSize.width*19)/32),((screenSize.height*11)/32),((screenSize.width*4)/32),((screenSize.height*2)/32));
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        JLabel l1 = new JLabel("    Age    ");
        JLabel l2 = new JLabel("      Gender      ");
        JLabel l3 = new JLabel("    Height(m)     ");
        JLabel l4 = new JLabel("      Weight(kg)    ");
        JLabel l5 = new JLabel("Preference");

        JTextField age = new JTextField(15);
        JTextField height = new JTextField(15);
        JTextField weight = new JTextField(15);
//        JTextField amount = new JTextField(15);

        JButton submit = new JButton("Submit");

        submit.setFont(new Font("Serif", Font.PLAIN, ((screenSize.width*5)/320)));

        l1.setFont(new Font("Serif", Font.PLAIN, ((screenSize.width*4)/320)));
        l2.setFont(new Font("Serif", Font.PLAIN, ((screenSize.width*4)/320)));
        l3.setFont(new Font("Serif", Font.PLAIN, ((screenSize.width*4)/320)));
        l4.setFont(new Font("Serif", Font.PLAIN, ((screenSize.width*4)/320)));
        l5.setFont(new Font("Serif", Font.PLAIN, ((screenSize.width*4)/320)));




        submit.addActionListener(new ActionListener(){
            @Override
            public void actionPerformed(ActionEvent e){

                String v= age.getText();
                String w = height .getText();
                String x = combo1.getSelectedItem().toString();
                String y = weight.getText();
                String z = combo2.getSelectedItem().toString();
                Check3 c = new Check3();
                if(!(c.isValid(v))){
                    JOptionPane.showMessageDialog(null,"Invalid age");
                }
                if(!(c.isValid(y))){
                    JOptionPane.showMessageDialog(null,"Invalid weight");
                }
                int ag,weigh;
                float heigh;
//                System.out.println(v+" "+w+" "+x+" "+y+" "+z);
                if(c.isValid(v) && c.isValid(y))
                {	 
                	ag=Integer.parseInt(v);
                	weigh=Integer.parseInt(y);
                	heigh=Float.parseFloat(w);
                	RUNJESSNEW call=new RUNJESSNEW();
                	call.calljess(ag, heigh, weigh, x, z);
                }
                
                frame.dispose();
            }
        });

        Design obj = new Design(new GridBagLayout());
        obj.drawing();

        GridBagConstraints constraints1 = new GridBagConstraints();
        constraints1.anchor = GridBagConstraints.WEST;
        constraints1.gridx = 3;
        constraints1.gridy = 0;

        GridBagConstraints constraints2 = new GridBagConstraints();
        constraints2.anchor = GridBagConstraints.CENTER;
        constraints2.gridx = 0;
        constraints2.gridy = 1;

        GridBagConstraints constraints3 = new GridBagConstraints();
        constraints3.anchor = GridBagConstraints.CENTER;
        constraints3.gridx =2;
        constraints3.gridy = 1;

        GridBagConstraints constraints4 = new GridBagConstraints();
        constraints4.anchor = GridBagConstraints.CENTER;
        constraints4.gridx = 4;
        constraints4.gridy = 1;

        GridBagConstraints constraints5 = new GridBagConstraints();
        constraints5.anchor = GridBagConstraints.CENTER;
        constraints5.gridx = 6;
        constraints5.gridy = 1;

        GridBagConstraints constraints6 = new GridBagConstraints();
        constraints6.anchor = GridBagConstraints.CENTER;
        //constraints6.insets = new Insets(10, 10, 10, 10);
        constraints6.gridx = 8;
        constraints6.gridy = 1;

        GridBagConstraints constraints7 = new GridBagConstraints();
        constraints7.anchor = GridBagConstraints.CENTER;
        //constraints7.insets = new Insets(10, 10, 10, 10);
        constraints7.gridx = 0;
        constraints7.gridy = 3;

        GridBagConstraints constraints8 = new GridBagConstraints();
        constraints8.anchor = GridBagConstraints.CENTER;
        //constraints8.insets = new Insets(10, 10, 10, 10);
        constraints8.gridx = 2;
        constraints8.gridy = 3;

        GridBagConstraints constraints9 = new GridBagConstraints();
        constraints9.anchor = GridBagConstraints.CENTER;
        //constraints9.insets = new Insets(10, 10, 10, 10);
        constraints9.gridx = 4;
        constraints9.gridy = 3;

        GridBagConstraints constraints10 = new GridBagConstraints();
        constraints10.anchor = GridBagConstraints.CENTER;
        //constraints10.insets = new Insets(10, 10, 10, 10);
        constraints10.gridx = 6;
        constraints10.gridy = 3;

        GridBagConstraints constraints11 = new GridBagConstraints();
        constraints11.anchor = GridBagConstraints.CENTER;
        //constraints11.insets = new Insets(10, 10, 10, 10);
        constraints11.gridx = 8;
        constraints11.gridy = 3;

        GridBagConstraints constraints12 = new GridBagConstraints();
        constraints12.anchor = GridBagConstraints.CENTER;
        //constraints12.insets = new Insets(10, 10, 10, 10);
        constraints12.gridx = 2;
        constraints12.gridy = 5;

        GridBagConstraints constraints13 = new GridBagConstraints();
        constraints13.anchor = GridBagConstraints.CENTER;
        //constraints13.insets = new Insets(10, 10, 10, 10);
        constraints13.gridx = 4;
        constraints13.gridy = 5;

        GridBagConstraints constraints14 = new GridBagConstraints();
        constraints14.anchor = GridBagConstraints.CENTER;
        //constraints14.insets = new Insets(10, 10, 10, 10);
        constraints14.gridx = 6;
        constraints14.gridy = 5;

        //obj.add(L, constraints1);
        obj.add(l1, constraints2);
        obj.add(l2, constraints3);
        obj.add(l3, constraints4);
        obj.add(l4, constraints5);
        obj.add(l5, constraints6);

        obj.add(age, constraints7);
        obj.add(combo1, constraints8);
        obj.add(height, constraints9);
        obj.add(weight, constraints10);
        obj.add(combo2, constraints11);

//        obj.add(submit, constraints12);
        obj.add(submit, constraints13);
//        obj.add(exit, constraints14);

        frame.add(obj);
    }
}
