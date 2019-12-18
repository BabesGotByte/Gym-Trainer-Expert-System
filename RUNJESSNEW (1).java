package firstpro;


import jess.*;
public class RUNJESSNEW {

	public void calljess(int age,float height,int weight,String gender,String pref)
	{
		
		float bmi=(float)weight/(height*height);
		String agestr=null;
		String combo=" ";
		String bmistr=null;
		if(age>16 && age<=25)
		{
			agestr="young";
		}
		if(age>25 && age<=35)
		{
			agestr="oldadult";
		}
		if(age>35 && age<=50)
		{
			agestr="old";
		}
		if(bmi>10 && bmi<=30)
		{
			bmistr="low";
		}
		if(bmi>30 && bmi<=60)
		{
			bmistr="high";
		}
		if(gender.equals("M")&&pref.equals("slim"))
		{
			combo="MS";
		}
		else if(gender.equals("F")&&pref.equals("slim"))
		{
			combo="FS";
		}
		else if(gender.equals("M")&&pref.equals("heavy"))
		{
			combo="mh";
		}
		else if(gender.equals("F")&&pref.equals("heavy"))
		{
			combo="fh";
		}
		System.out.println(age+" "+bmi+" "+combo);
		 Rete r = new Rete();
		 try {
		 r.batch("hello.clp");
		 Value v = r.eval("(some ass)");
		 //System.out.println("here is v");
		 //System.out.println(v);
		 String to_eval="(initial "+agestr+" "+bmistr+" "+combo+")";
		 //System.out.println("here is string"+to_eval);
		 r.eval(to_eval);
		 
		// System.out.println(r.eval("(facts)"));
		 }
		 catch(Exception e)
		 {
			 e.printStackTrace();
		 }
	}
}
