package mypack;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.PageContext;
import jakarta.servlet.jsp.tagext.Tag;
import jakarta.servlet.jsp.tagext.TagSupport;

public class  MyHandler extends TagSupport {

	 private int num1;
	private int num2;

	public void setNum1(String num1) {
		this.num1 = Integer.parseInt(num1);
	}

	public void setNum2(String num2) {
		this.num2 = Integer.parseInt(num2);
	}
	
	
	public int doStartTag() {
		int res = num1+num2;
		try {
			JspWriter out = pageContext.getOut();
			out.println("Addition is: "+res);
		}catch(Exception e) {
			System.out.println(e);
		}
		return Tag.EVAL_BODY_INCLUDE;
		
	}
	
	
}
