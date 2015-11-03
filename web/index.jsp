<%@ include file="/includes/header.html" %>
  <!--
  Copyright (c) 2015 Michael Winkler & Philip Parvaneh
  -->    
    <main>
      <h1>Future Value Calculator</h1>
      <form id="flexible" action="calculate" method="POST">
        <input name="action" type="hidden" value="calculate">
        <div id="labels">
          <label>Investment Amount: </label><br>
          <input name="investmentAmountSmall" type="text" pattern="[0-9]*" class="small-screen"><br class="small-screen">          
          <label>Yearly Interest Rate: </label><br>
          <input name="interestRateSmall" type="text" pattern="[0-9]*" class="small-screen"><br class="small-screen">
          <label> Number of Years: </label><br>
          <input name="yearsSmall" placeholder="Integer number of years" type="number" min="0" step="1" class="small-screen"><br class="small-screen">          
          <input type="submit" value="Calculate" class="calculate small-screen">
        </div>       
        <div class = "large-screen">
          <input name="investmentAmountLarge" type="text" pattern="[0-9]*" value="${lastEntry.investmentAmount}"><br>
          <input name="interestRateLarge" type="text" pattern="[0-9]*" value="${lastEntry.yearlyInterestRate}"><br>
          <input name="yearsLarge" placeholder="Integer number of years" type="number" min="0" step="1" value = ${lastEntry.numOfYears}><br>
          <input type="submit" value="Calculate" class="calculate">
        </div>
      </form>
    </main>
  <%@ include file="/includes/footer.html" %>
