/*
 * Copyright (c) 2015 Michael Winkler & Philip Parvaneh
 */
package edu.elon.controllers;

import edu.elon.business.FutureValue;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AppController", urlPatterns = {"/calculate"})
public class AppController extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    doPost (request, response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    
    String url = "/index.jsp";
    String action = request.getParameter("action");
    if (action != null){
      url = "/result.jsp";
      double investmentAmount;
      double yearlyInterestRate;
      int numOfYears;
      if (request.getParameter("investmentAmountSmall") != ""){
        investmentAmount = Double.parseDouble(request.getParameter("investmentAmountSmall"));
        yearlyInterestRate = Double.parseDouble(request.getParameter("interestRateSmall"));
        numOfYears = Integer.parseInt(request.getParameter("yearsSmall"));
      }
      
      else{
        investmentAmount = Double.parseDouble(request.getParameter("investmentAmountLarge"));
        yearlyInterestRate = Double.parseDouble(request.getParameter("interestRateLarge"));
        numOfYears = Integer.parseInt(request.getParameter("yearsLarge"));
      }
      FutureValue futureValue = new FutureValue(investmentAmount, yearlyInterestRate, numOfYears);
      
      request.setAttribute("futureValue", futureValue);
    }  
  
  getServletContext().getRequestDispatcher(url).forward(request, response);
  
  }
}
