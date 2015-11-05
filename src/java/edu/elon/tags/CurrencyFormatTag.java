/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.elon.tags;

import java.io.IOException;
import java.text.NumberFormat;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author Michael
 */
public class CurrencyFormatTag extends TagSupport {
 
    private double futureValue;
    

    public void setFutureValue (double futureValue) {
        this.futureValue = futureValue;
    }
    
    NumberFormat currency = NumberFormat.getCurrencyInstance();
    
    
    @Override
    public int doStartTag() throws JspException {
        try {
            JspWriter out = pageContext.getOut();
            if (futureValue != 0)
                out.print(currency.format(futureValue));        
        }
        catch (IOException ioe){
            System.out.println(ioe);
        }
    return SKIP_BODY;
    }
}
