/**
 * Copyright (c) 2015 Michael Winkler & Philip Parvaneh
 */
package edu.elon.business;

import java.io.Serializable;
public class FutureValue implements Serializable{
  
  private double investmentAmount;
  private double yearlyInterestRate;
  private int numOfYears;
  private double futureValue;
  
  public FutureValue(){
    investmentAmount = 0;
    yearlyInterestRate = 0;
    numOfYears = 0;
    futureValue = 0;
  }
  
  public FutureValue (double investmentAmount, double yearlyInterestRate,
          int numOfYears){
    
    this.investmentAmount = investmentAmount;
    this.yearlyInterestRate = yearlyInterestRate;
    this.numOfYears = numOfYears;
    futureValue = calculateFutureValue();
  }
  
  private double calculateFutureValue(){
    double tempVal = investmentAmount;
    for (int i = 1; i <= numOfYears; i++){
      tempVal += (.01 * yearlyInterestRate)*tempVal;
      System.out.println("tempval = " + tempVal);
    }
    return tempVal;
  }
  
  public double getInvestmentAmount(){
    return investmentAmount;
  }
  
  public void setInvestmentAmount(double investmentAmount){
    this.investmentAmount=investmentAmount;
  }
  
  public double getYearlyInterestRate () {
    return yearlyInterestRate;
  }
  
  public void setYearlyInterestRate (double yearlyInterestRate) {
    this.yearlyInterestRate = yearlyInterestRate;
  }
  
  public int getNumOfYears () {
    return numOfYears;
  }
  
  public void setNumOfYears(int numOfYears){
    this.numOfYears = numOfYears;
  }
  
  public double getFutureValue(){
    return futureValue;
  }
  
  public void setFutureValue(double futureValue){
    this.futureValue = futureValue;
  }
}
